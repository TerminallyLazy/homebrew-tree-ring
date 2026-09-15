class TreeRing < Formula
  desc "Local-first memory lifecycle CLI for AI agents"
  homepage "https://terminallylazy.github.io/Tree-Ring-Memory/"
  url "https://github.com/TerminallyLazy/Tree-Ring-Memory/releases/download/v0.15.8/tree-ring-memory-0.15.8-darwin-arm64.tar.gz"
  sha256 "3ec4e43be8a04f925fea50172cf41e9a80d352d336ccbc523d4f9c21c1b0d902"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "tree-ring"
    prefix.install "LICENSE"
    prefix.install "README.md"
  end

  test do
    assert_match "tree-ring 0.15.8", shell_output("#{bin}/tree-ring --version")
  end
end
