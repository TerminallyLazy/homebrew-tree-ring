class TreeRing < Formula
  desc "Local-first memory lifecycle CLI for AI agents"
  homepage "https://terminallylazy.github.io/Tree-Ring-Memory/"
  url "https://github.com/TerminallyLazy/Tree-Ring-Memory/releases/download/v0.14.0/tree-ring-memory-0.14.0-darwin-arm64.tar.gz"
  sha256 "c4957720633a747e9d82c07ca759920f4c6fb6d9a57b134c90d55cb4f8ee8420"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "tree-ring"
    prefix.install "LICENSE"
    prefix.install "README.md"
  end

  test do
    assert_match "tree-ring 0.14.0", shell_output("#{bin}/tree-ring --version")
  end
end
