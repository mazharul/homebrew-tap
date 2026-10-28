class MacflowCheck < Formula
  desc "Read-only scan of your Mac's developer setup: AI agent configs, secrets, risky packages"
  homepage "https://github.com/mazharul/macflow-check"
  url "https://github.com/mazharul/macflow-check/releases/download/v0.1.0/macflow-check-0.1.0-macos-universal.tar.gz"
  sha256 "0a6c5bab57e0ae29380e57f7c13f7d18969eaf3f1e7f7bcbcb5a53554075e430"
  license "MIT"
  version "0.1.0"

  depends_on :macos

  def install
    bin.install "macflow-check"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/macflow-check --version")
  end
end
