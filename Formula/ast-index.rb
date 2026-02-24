class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.20.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.20.0/ast-index-v3.20.0-darwin-arm64.tar.gz"
      sha256 "f7a6a78bf3e82884cce46df030f83cb7c87bea7e86feca3954539718c89c24e4"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.20.0/ast-index-v3.20.0-darwin-x86_64.tar.gz"
      sha256 "95a76f1ec6fa7f20fe810b8a6a938437edf6acf24b5b6b4d4d32d30f62819667"
    end
  end

  on_linux do
    url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.20.0/ast-index-v3.20.0-linux-x86_64.tar.gz"
    sha256 "302433c95b92785c2c20113cc9b705467230927132fbce55cc82dc2c41f206cb"
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.20.0", shell_output("#{bin}/ast-index version")
  end
end
