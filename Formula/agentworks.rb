class Agentworks < Formula
  desc "Vendor-agnostic tool for building and exporting AI agent artifacts (agents, skills, tools, hooks, workflows)"
  homepage "https://github.com/mtfuller/agentworks"
  version "0.0.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mtfuller/agentworks/releases/download/v0.0.3/agentworks_v0.0.3_darwin_arm64.tar.gz"
      sha256 "81946f87b30fd4ba06f2f26513ef0ebddb3e5352b3e3c606ab2722317c6f28df"
    end
    on_intel do
      url "https://github.com/mtfuller/agentworks/releases/download/v0.0.3/agentworks_v0.0.3_darwin_amd64.tar.gz"
      sha256 "30d9a276d6e64cefcb329bb42ee405a604f82712fc9b95e6056cabc12d1cda84"
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
