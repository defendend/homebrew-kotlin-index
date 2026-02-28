class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.22.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.22.1/ast-index-v3.22.1-darwin-arm64.tar.gz"
      sha256 "c5b287aa47095552b1cd4f56e3f964330c82b95eb189531484547e86b87185e9"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.22.1/ast-index-v3.22.1-darwin-x86_64.tar.gz"
      sha256 "9b350ca2212574a079a8a648e4b891c2bdfba87094a6d0e2fe96dd33a22a80ad"
    end
  end

  on_linux do
    url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.22.1/ast-index-v3.22.1-linux-x86_64.tar.gz"
    sha256 "b78bf23d0f4ecaf6f20fb153f38be7fc36a6a5c6ed2af987ee04895a57779895"
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.22.1", shell_output("#{bin}/ast-index version")
  end
end
