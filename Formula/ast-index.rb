class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.16.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.16.3/ast-index-v3.16.3-darwin-arm64.tar.gz"
      sha256 "bcd983f05ccdf167ff18905ae380d920d4c4999788408b8826d96faee6d461cf"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.16.3/ast-index-v3.16.3-darwin-x86_64.tar.gz"
      sha256 "0d82e2f1a0c338d092c8de06da5d3db5bf798163a23aecc0d75ff1ac1aba5e3d"
    end
  end

  on_linux do
    url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.16.3/ast-index-v3.16.3-linux-x86_64.tar.gz"
    sha256 "1bb761bac659016e2bfccc2e74a54ab00848bd77e0b819ca3140df26889bbcf5"
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.16.3", shell_output("#{bin}/ast-index version")
  end
end
