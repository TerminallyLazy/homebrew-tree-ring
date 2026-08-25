class TreeRing < Formula
  desc "Local-first memory lifecycle CLI for AI agents"
  homepage "https://terminallylazy.github.io/Tree-Ring-Memory/"
  url "https://github.com/TerminallyLazy/Tree-Ring-Memory/releases/download/v0.15.1/tree-ring-memory-0.15.1-darwin-arm64.tar.gz"
  sha256 "8b4b407dd355c7e5cc1bb7302774dba0fbbec2a84163a5e3efa629663a22ef70"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "tree-ring"
    prefix.install "LICENSE"
    prefix.install "README.md"
  end

  test do
    assert_match "tree-ring 0.15.1", shell_output("#{bin}/tree-ring --version")
  end
end
