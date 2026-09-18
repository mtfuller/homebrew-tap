class Agentworks < Formula
  desc "Vendor-agnostic tool for building and exporting AI agent artifacts (agents, skills, tools, hooks, workflows)"
  homepage "https://github.com/mtfuller/agentworks"
  version "0.11.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mtfuller/agentworks/releases/download/v0.11.0/agentworks_v0.11.0_darwin_arm64.tar.gz"
      sha256 "f3a418e2bec378ebb511b1561528aa67876a24ad251d2e14d4123be161f57be3"
    end
    on_intel do
      url "https://github.com/mtfuller/agentworks/releases/download/v0.11.0/agentworks_v0.11.0_darwin_amd64.tar.gz"
      sha256 "63758a46ea4acfff9a88223510083f31c62958981f5f282f40b9607e1c6a744b"
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
