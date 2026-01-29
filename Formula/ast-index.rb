class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.9.1/ast-index-3.9.1-darwin-arm64.tar.gz"
  sha256 "9dabacf2cab5d1ff15e058c436d876b917bf17f148e9e83b8fecf1f40c89b7d2"
  license "MIT"
  version "3.9.1"

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.9.1", shell_output("#{bin}/ast-index version")
  end
end
