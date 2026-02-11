class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.13.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.13.1/ast-index-v3.13.1-darwin-arm64.tar.gz"
      sha256 "56b66211879a7876ba68d16cf842f9b4a4b3b7ed87fd355f7cd9e9f5a971ed61"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.13.1/ast-index-v3.13.1-darwin-x86_64.tar.gz"
      sha256 "d537b6f9b249ed92b55aa51e74ba4e224d98e29a8896d8478c37e665c656827a"
    end
  end

  on_linux do
    url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.13.1/ast-index-v3.13.1-linux-x86_64.tar.gz"
    sha256 "c866a24cceff0ac3f37f1c3254f481fd1bd4436634ba87f4428e8ce70ead6370"
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.13.1", shell_output("#{bin}/ast-index version")
  end
end
