class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.18.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.18.0/ast-index-v3.18.0-darwin-arm64.tar.gz"
      sha256 "ed787880dc0ca7baeef95c64fad7d0e40cef9ad0a698e34c4f9a4c5dc9abd266"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.18.0/ast-index-v3.18.0-darwin-x86_64.tar.gz"
      sha256 "d1ca66c5fd48578a480fc8a0dc3ac2181125376f068d2daeef630a95bca79cb7"
    end
  end

  on_linux do
    url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.18.0/ast-index-v3.18.0-linux-x86_64.tar.gz"
    sha256 "7314144119b6c03a493b9ca00b8c944ada900555e0dce2897821fd1888c5b4c7"
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.18.0", shell_output("#{bin}/ast-index version")
  end
end
