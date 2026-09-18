class Agentworks < Formula
  desc "Vendor-agnostic tool for building and exporting AI agent artifacts (agents, skills, tools, hooks, workflows)"
  homepage "https://github.com/mtfuller/agentworks"
  version "0.14.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mtfuller/agentworks/releases/download/v0.14.0/agentworks_v0.14.0_darwin_arm64.tar.gz"
      sha256 "2edeb296c1ad8cbd8045790543baedf2ec25ad9c2255f3cc3f9c3fd431f66135"
    end
    on_intel do
      url "https://github.com/mtfuller/agentworks/releases/download/v0.14.0/agentworks_v0.14.0_darwin_amd64.tar.gz"
      sha256 "40b79e9a56061234fedc4adbabfcb91516b610fb399e9063497afa3a1e405369"
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
