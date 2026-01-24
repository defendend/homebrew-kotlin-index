class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.9.0/ast-index-3.9.0-darwin-arm64.tar.gz"
  sha256 "2d96fcff3209b026d24d19b82781ccbdca902838ecdf9f3835fba2711dc0d79d"
  license "MIT"
  version "3.9.0"

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.9.0", shell_output("#{bin}/ast-index version")
  end
end
