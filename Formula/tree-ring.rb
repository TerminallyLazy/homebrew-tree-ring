class TreeRing < Formula
  desc "Local-first memory lifecycle CLI for AI agents"
  homepage "https://terminallylazy.github.io/Tree-Ring-Memory/"
  url "https://github.com/TerminallyLazy/Tree-Ring-Memory/releases/download/v0.15.12/tree-ring-memory-0.15.12-darwin-arm64.tar.gz"
  sha256 "b5259b603b65e3f3d305c1f8ca7fb494a0d381b36d72611cb82fd02e88754f02"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "tree-ring"
    prefix.install "LICENSE"
    prefix.install "README.md"
  end

  test do
    assert_match "tree-ring 0.15.12", shell_output("#{bin}/tree-ring --version")
  end
end
