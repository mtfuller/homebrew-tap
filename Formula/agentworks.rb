class Agentworks < Formula
  desc "Vendor-agnostic tool for building and exporting AI agent artifacts (agents, skills, tools, hooks, workflows)"
  homepage "https://github.com/mtfuller/agentworks"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mtfuller/agentworks/releases/download/v0.5.0/agentworks_v0.5.0_darwin_arm64.tar.gz"
      sha256 "bf4dceac35dbdfffb2b7ed611fa0f83d00440280e5bd17909cb9088616d2c07c"
    end
    on_intel do
      url "https://github.com/mtfuller/agentworks/releases/download/v0.5.0/agentworks_v0.5.0_darwin_amd64.tar.gz"
      sha256 "815c629c412058748a699d1856c6576ffa6d32ea15adb2cf09cbd18debc536aa"
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
