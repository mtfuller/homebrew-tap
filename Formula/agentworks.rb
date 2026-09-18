class Agentworks < Formula
  desc "Vendor-agnostic tool for building and exporting AI agent artifacts (agents, skills, tools, hooks, workflows)"
  homepage "https://github.com/mtfuller/agentworks"
  version "0.16.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mtfuller/agentworks/releases/download/v0.16.0/agentworks_v0.16.0_darwin_arm64.tar.gz"
      sha256 "61863a736b7d389b77d2aff2f852850f2cca55be81475c7f681417f2e097fa96"
    end
    on_intel do
      url "https://github.com/mtfuller/agentworks/releases/download/v0.16.0/agentworks_v0.16.0_darwin_amd64.tar.gz"
      sha256 "4934179d37badd6fcd27f9e5049acdfb6a1c0dfec9a1b39b87e95656cde2d747"
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
