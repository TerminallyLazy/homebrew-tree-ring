class TreeRing < Formula
  desc "Local-first memory lifecycle CLI for AI agents"
  homepage "https://terminallylazy.github.io/Tree-Ring-Memory/"
  url "https://github.com/TerminallyLazy/Tree-Ring-Memory/releases/download/v0.15.13/tree-ring-memory-0.15.13-darwin-arm64.tar.gz"
  sha256 "f0cdeab61d29ee40380a99e0dd6c16e21cb3fecf56489d58b2d1c94693da0e21"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "tree-ring"
    prefix.install "LICENSE"
    prefix.install "README.md"
  end

  test do
    assert_match "tree-ring 0.15.13", shell_output("#{bin}/tree-ring --version")
  end
end
