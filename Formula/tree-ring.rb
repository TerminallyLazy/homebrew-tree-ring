class TreeRing < Formula
  desc "Local-first memory lifecycle CLI for AI agents"
  homepage "https://terminallylazy.github.io/Tree-Ring-Memory/"
  url "https://github.com/TerminallyLazy/Tree-Ring-Memory/releases/download/v0.11.0/tree-ring-memory-0.11.0-darwin-arm64.tar.gz"
  sha256 "9602603289173eeaf72386f0443be44f6b5a153b4e1a7342e65428ac1ea4ae39"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "tree-ring"
    prefix.install "LICENSE"
    prefix.install "README.md"
  end

  test do
    assert_match "tree-ring 0.11.0", shell_output("#{bin}/tree-ring --version")
  end
end
