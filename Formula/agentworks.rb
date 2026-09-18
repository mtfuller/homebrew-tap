class Agentworks < Formula
  desc "Vendor-agnostic tool for building and exporting AI agent artifacts (agents, skills, tools, hooks, workflows)"
  homepage "https://github.com/mtfuller/agentworks"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mtfuller/agentworks/releases/download/v0.10.0/agentworks_v0.10.0_darwin_arm64.tar.gz"
      sha256 "e03ca17b8ec9a3c1b38b3c12f18910601276c6054904df625a3335e217de5ab2"
    end
    on_intel do
      url "https://github.com/mtfuller/agentworks/releases/download/v0.10.0/agentworks_v0.10.0_darwin_amd64.tar.gz"
      sha256 "7dd504f1858e43ef0fc5639f3ac4ee3a791210ac65da0eacaeece9e24b8598e1"
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
