class TreeRing < Formula
  desc "Local-first memory lifecycle CLI for AI agents"
  homepage "https://terminallylazy.github.io/Tree-Ring-Memory/"
  url "https://github.com/TerminallyLazy/Tree-Ring-Memory/releases/download/v0.15.7/tree-ring-memory-0.15.7-darwin-arm64.tar.gz"
  sha256 "ae4abb161d8af57883cc061bdf699bb7e4864ecd773690e074d536ed33b2ee89"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "tree-ring"
    prefix.install "LICENSE"
    prefix.install "README.md"
  end

  test do
    assert_match "tree-ring 0.15.7", shell_output("#{bin}/tree-ring --version")
  end
end
