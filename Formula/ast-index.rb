class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.29.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.29.1/ast-index-v3.29.1-darwin-arm64.tar.gz"
      sha256 "b436f062d993b188fd7a4ca56b4e073984ee0da8536b189997d1e8f4cd5858ab"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.29.1/ast-index-v3.29.1-darwin-x86_64.tar.gz"
      sha256 "ffeb199979e81ec3e8b69729de2a0b7dc33aed45c8029f44badfa77cef0d9ab7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.29.1/ast-index-v3.29.1-linux-arm64.tar.gz"
      sha256 "512b2c607d2310a1223c0c2aaf91a7cbf687d408f2b4ed1f56a691a35a581c05"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.29.1/ast-index-v3.29.1-linux-x86_64.tar.gz"
      sha256 "2b0e9b9cb973d566ccf9c84061c2648fd8c8ff32194afc10961861011efc5017"
    end
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.29.1", shell_output("#{bin}/ast-index version")
  end
end
