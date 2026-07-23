class TreeRing < Formula
  desc "Local-first memory lifecycle CLI for AI agents"
  homepage "https://terminallylazy.github.io/Tree-Ring-Memory/"
  url "https://github.com/TerminallyLazy/Tree-Ring-Memory/releases/download/v0.13.0/tree-ring-memory-0.13.0-darwin-arm64.tar.gz"
  version "0.13.0"
  sha256 "24305a4045732db4755b72b8f7a453ebfb6178394bd1bdd26671dd8121ac0dcd"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "tree-ring"
    prefix.install "LICENSE"
    prefix.install "README.md"
  end

  test do
    assert_match "tree-ring 0.13.0", shell_output("#{bin}/tree-ring --version")
  end
end
