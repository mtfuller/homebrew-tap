class Agentworks < Formula
  desc "Vendor-agnostic tool for building and exporting AI agent artifacts (agents, skills, tools, hooks, workflows)"
  homepage "https://github.com/mtfuller/agentworks"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mtfuller/agentworks/releases/download/v0.8.0/agentworks_v0.8.0_darwin_arm64.tar.gz"
      sha256 "3301287cc0acd4887a44b6449cece22b4afec7214fb6fa168d0484db82b052a1"
    end
    on_intel do
      url "https://github.com/mtfuller/agentworks/releases/download/v0.8.0/agentworks_v0.8.0_darwin_amd64.tar.gz"
      sha256 "54285a4a99b9e1cd72624958e61815e123c2e5a3f47b1cb1dfd13131065aca5f"
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
