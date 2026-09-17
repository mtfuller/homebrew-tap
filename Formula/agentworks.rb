class Agentworks < Formula
  desc "Vendor-agnostic tool for building and exporting AI agent artifacts (agents, skills, tools, hooks, workflows)"
  homepage "https://github.com/mtfuller/agentworks"
  version "0.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mtfuller/agentworks/releases/download/v0.0.2/agentworks_v0.0.2_darwin_arm64.tar.gz"
      sha256 "7ec123d34aaa0ac78aba7792ce6cba0ea9a912ff6bdc4a9e2b86265a9329f34a"
    end
    on_intel do
      url "https://github.com/mtfuller/agentworks/releases/download/v0.0.2/agentworks_v0.0.2_darwin_amd64.tar.gz"
      sha256 "99b3652dbecc1c287e4c0ca21c2a8eb210cbbebe9ba7b7a5bc96169ed6cfce3b"
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
