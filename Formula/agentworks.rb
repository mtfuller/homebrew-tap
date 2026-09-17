class Agentworks < Formula
  desc "Vendor-agnostic tool for building and exporting AI agent artifacts (agents, skills, tools, hooks, workflows)"
  homepage "https://github.com/mtfuller/agentworks"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mtfuller/agentworks/releases/download/v0.1.0/agentworks_v0.1.0_darwin_arm64.tar.gz"
      sha256 "1457b88e2ed765eca7750a9dc666c1230fa1121b1990a6045fc265edcdaa218e"
    end
    on_intel do
      url "https://github.com/mtfuller/agentworks/releases/download/v0.1.0/agentworks_v0.1.0_darwin_amd64.tar.gz"
      sha256 "9d16034046ce74a4ca0c61ccaa347b2ad80da7aa8d1f9a00e4a43b810a12ff02"
    end
  end

  livecheck do
    url :stable
    strategy :github_latest
  end

  def install
    bin.install "agentworks"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentworks version --short")
  end
end
