class TreeRing < Formula
  desc "Local-first memory lifecycle CLI for AI agents"
  homepage "https://terminallylazy.github.io/Tree-Ring-Memory/"
  url "https://github.com/TerminallyLazy/Tree-Ring-Memory/releases/download/v0.15.2/tree-ring-memory-0.15.2-darwin-arm64.tar.gz"
  sha256 "088d6d3b1812fedc02a840380b3d9e4db5ffdc82e49bfa78aa5123ca319b462f"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "tree-ring"
    prefix.install "LICENSE"
    prefix.install "README.md"
  end

  test do
    assert_match "tree-ring 0.15.2", shell_output("#{bin}/tree-ring --version")
  end
end
