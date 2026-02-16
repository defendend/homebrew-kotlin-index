class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.16.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.16.2/ast-index-v3.16.2-darwin-arm64.tar.gz"
      sha256 "f9978f51364495b16a4978e2f7ea41cad4ff5ad5c6b57af1929a0fbd8bb46946"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.16.2/ast-index-v3.16.2-darwin-x86_64.tar.gz"
      sha256 "47ca8ad11e9b1cca8ca746c2e68dcdfb976a0d09a9ebba313eb9c2913963c3bb"
    end
  end

  on_linux do
    url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.16.2/ast-index-v3.16.2-linux-x86_64.tar.gz"
    sha256 "a738ce5574d4d1f616a17814e1410897becb88afaab8f17f251a713ab2b58486"
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.16.2", shell_output("#{bin}/ast-index version")
  end
end
