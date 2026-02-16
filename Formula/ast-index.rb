class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.16.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.16.0/ast-index-v3.16.0-darwin-arm64.tar.gz"
      sha256 "5814b980c02d3336d6edcc124898a49b304e7bfb6833dfbc5cb63b07ef408dfa"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.16.0/ast-index-v3.16.0-darwin-x86_64.tar.gz"
      sha256 "4c8c0f0604450299fb25f7fa4e8b898aa4749fbb2c171b786069d3cb6386442a"
    end
  end

  on_linux do
    url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.16.0/ast-index-v3.16.0-linux-x86_64.tar.gz"
    sha256 "c48e223e91c93042ab18cbaa36f8894961a284c73dcdd2143389a8b1688d142f"
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.16.0", shell_output("#{bin}/ast-index version")
  end
end
