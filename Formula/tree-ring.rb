class TreeRing < Formula
  desc "Local-first memory lifecycle CLI for AI agents"
  homepage "https://terminallylazy.github.io/Tree-Ring-Memory/"
  url "https://github.com/TerminallyLazy/Tree-Ring-Memory/releases/download/v0.15.0/tree-ring-memory-0.15.0-darwin-arm64.tar.gz"
  sha256 "d5d81a0c803f4f81683c2c0f14d4eada9f325cd34cbeb9c3d9d4292b8278a468"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "tree-ring"
    prefix.install "LICENSE"
    prefix.install "README.md"
  end

  test do
    assert_match "tree-ring 0.15.0", shell_output("#{bin}/tree-ring --version")
  end
end
