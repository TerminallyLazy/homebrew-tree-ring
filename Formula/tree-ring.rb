class TreeRing < Formula
  desc "Local-first memory lifecycle CLI for AI agents"
  homepage "https://terminallylazy.github.io/Tree-Ring-Memory/"
  url "https://github.com/TerminallyLazy/Tree-Ring-Memory/releases/download/v0.12.0/tree-ring-memory-0.12.0-darwin-arm64.tar.gz"
  version "0.12.0"
  sha256 "1435391ec784cc94d470c09091728023fd40354c21c1a8ae31e3e79a2704f5fc"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "tree-ring"
    prefix.install "LICENSE"
    prefix.install "README.md"
  end

  test do
    assert_match "tree-ring 0.12.0", shell_output("#{bin}/tree-ring --version")
  end
end
