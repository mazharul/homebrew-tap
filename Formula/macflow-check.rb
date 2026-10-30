class MacflowCheck < Formula
  desc "Read-only scan of your Mac's developer setup: AI agent configs, secrets, risky packages"
  homepage "https://github.com/mazharul/macflow-check"
  url "https://github.com/mazharul/macflow-check/releases/download/v0.1.2/macflow-check-0.1.2-macos-universal.tar.gz"
  sha256 "5ede25322c69c1e3dd48428d443997eabf3d4b2e704e660590404b8019bac145"
  license "MIT"
  version "0.1.2"

  depends_on :macos

  def install
    bin.install "macflow-check"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/macflow-check --version")
  end
end
