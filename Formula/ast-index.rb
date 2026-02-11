class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.13.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.13.0/ast-index-v3.13.0-darwin-arm64.tar.gz"
      sha256 "2d9c8609f2d8e5027866c555fece01f92f46acf641cf288834b130a657e80afc"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.13.0/ast-index-v3.13.0-darwin-x86_64.tar.gz"
      sha256 "b03af493c24884aa9e7c88b8ede958f5d7eac9fe8758b9152a9357016211ec55"
    end
  end

  on_linux do
    url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.13.0/ast-index-v3.13.0-linux-x86_64.tar.gz"
    sha256 "0978896bd5781d4fc0bf9341bcab89c33582404392d44571943cd3981ca9c565"
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.13.0", shell_output("#{bin}/ast-index version")
  end
end
