class MacflowCheck < Formula
  desc "Read-only scan of your Mac's developer setup: AI agent configs, secrets, risky packages"
  homepage "https://github.com/mazharul/macflow-check"
  url "https://github.com/mazharul/macflow-check/releases/download/v0.1.1/macflow-check-0.1.1-macos-universal.tar.gz"
  sha256 "e4a2789d618697e2fc2496c08d306760e83c429c419c71446cde2135a76046b2"
  license "MIT"
  version "0.1.1"

  depends_on :macos

  def install
    bin.install "macflow-check"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/macflow-check --version")
  end
end
