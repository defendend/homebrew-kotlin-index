class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.26.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.26.2/ast-index-v3.26.2-darwin-arm64.tar.gz"
      sha256 "748c1f9649c50942b97f98e0f06d5719c14af9cd0d8fffaca3382e5f077c34b7"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.26.2/ast-index-v3.26.2-darwin-x86_64.tar.gz"
      sha256 "6ca8d566d5ba1f84db48d0983da123b40a688bb820763651e4290bd2fe11e809"
    end
  end

  on_linux do
    url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.26.2/ast-index-v3.26.2-linux-x86_64.tar.gz"
    sha256 "2f1e1e77b751b65ecdd083cbe033f88a25e6cdec148f327dee3e36531fa7a400"
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.26.2", shell_output("#{bin}/ast-index version")
  end
end
