class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.24.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.24.0/ast-index-v3.24.0-darwin-arm64.tar.gz"
      sha256 "683fad13cffbd552f7446f9496315867884169146598de69cd140018027dee8b"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.24.0/ast-index-v3.24.0-darwin-x86_64.tar.gz"
      sha256 "28aee2f764320257f4d19e772ca39e96708e83c0ebc7a07711bfbd7e1381f61d"
    end
  end

  on_linux do
    url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.24.0/ast-index-v3.24.0-linux-x86_64.tar.gz"
    sha256 "f7c6073e5e6a3f685162c839e6ce5429d7dfa12235da467ee0ba715f1b846f45"
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.24.0", shell_output("#{bin}/ast-index version")
  end
end
