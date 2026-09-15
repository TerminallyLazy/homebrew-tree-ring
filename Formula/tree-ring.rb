class TreeRing < Formula
  desc "Local-first memory lifecycle CLI for AI agents"
  homepage "https://terminallylazy.github.io/Tree-Ring-Memory/"
  url "https://github.com/TerminallyLazy/Tree-Ring-Memory/releases/download/v0.15.9/tree-ring-memory-0.15.9-darwin-arm64.tar.gz"
  sha256 "880584bfa1dc8d9dd2df1b57d9e77b22b1a955337f0698f4c882f509e070e7e2"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "tree-ring"
    prefix.install "LICENSE"
    prefix.install "README.md"
  end

  test do
    assert_match "tree-ring 0.15.9", shell_output("#{bin}/tree-ring --version")
  end
end
