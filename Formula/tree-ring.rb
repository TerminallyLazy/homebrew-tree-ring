class TreeRing < Formula
  desc "Local-first memory lifecycle CLI for AI agents"
  homepage "https://terminallylazy.github.io/Tree-Ring-Memory/"
  url "https://github.com/TerminallyLazy/Tree-Ring-Memory/releases/download/v0.15.3/tree-ring-memory-0.15.3-darwin-arm64.tar.gz"
  sha256 "423a4e7aa88952c57ea814eaec11ef163155bb848edc63ea416af2d1d7362a16"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "tree-ring"
    prefix.install "LICENSE"
    prefix.install "README.md"
  end

  test do
    assert_match "tree-ring 0.15.3", shell_output("#{bin}/tree-ring --version")
  end
end
