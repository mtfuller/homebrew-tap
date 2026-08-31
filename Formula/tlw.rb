class Tlw < Formula
  desc "Local workbench for training, running & evaluating agents backed by tiny LLMs"
  homepage "https://github.com/mtfuller/tiny-llm-workbench"
  url "https://github.com/mtfuller/tiny-llm-workbench/releases/download/v0.1.0/tlw_v0.1.0_darwin_arm64.tar.gz"
  sha256 "997904f8b55a973bb804d473222f967825df4ed33af2946a5552ad40bbf602e6"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  # mlx-lm (the model runtime) is Apple-Silicon-only, so is this build.
  depends_on arch: :arm64
  depends_on :macos

  def install
    # The release tarball contains: tlw, LICENSE, README.md (at the archive root).
    bin.install "tlw"
  end

  def caveats
    <<~EOS
      Training and running models require `mlx-lm` on PATH (Apple Silicon only):
        brew install mlx-lm      # or: pip install mlx-lm

      `tlw serve` works without it; model-backed features (Training, Agents,
      dataset generation) fail with a clear "not found on PATH" error until
      mlx-lm is installed.

      The registry lives at ~/.tlw (override with TLW_HOME).
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tlw version --short")
  end
end
