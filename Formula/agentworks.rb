class Agentworks < Formula
  desc "Vendor-agnostic tool for building and exporting AI agent artifacts (agents, skills, tools, hooks, workflows)"
  homepage "https://github.com/mtfuller/agentworks"
  url "https://github.com/mtfuller/agentworks/archive/refs/tags/v0.0.2.tar.gz"
  sha256 "cd8a801a42bf063710b814e0fb8d30201cda5e680220275c4fc96a38ccdc8b1a"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on "go" => :build

  def install
    ldflags = "-s -w -X github.com/mtfuller/agentworks/internal/version.Version=v#{version}"
    system "go", "build", *std_go_args(ldflags: ldflags), "./main.go"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentworks version --short")
  end
end
