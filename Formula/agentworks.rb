class Agentworks < Formula
  desc "Vendor-agnostic tool for building and exporting AI agent artifacts (agents, skills, tools, hooks, workflows)"
  homepage "https://github.com/mtfuller/agentworks"
  version "0.12.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mtfuller/agentworks/releases/download/v0.12.0/agentworks_v0.12.0_darwin_arm64.tar.gz"
      sha256 "4c6c27f75a4ee8e177ddb57c4c0ae99c1bb5a1e82c11754ecbba046404e7a072"
    end
    on_intel do
      url "https://github.com/mtfuller/agentworks/releases/download/v0.12.0/agentworks_v0.12.0_darwin_amd64.tar.gz"
      sha256 "5685a645b42c1204089300a146924b35ee673348cb399d9aaad50d5737588317"
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
