class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.26.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.26.1/ast-index-v3.26.1-darwin-arm64.tar.gz"
      sha256 "b9a4ff1d9a40c0bbb81e1b8841660704e11400b79e21bb240d1d0da97ea31fde"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.26.1/ast-index-v3.26.1-darwin-x86_64.tar.gz"
      sha256 "707f6af04e169674cdb442155f7130ab04a11d6dbd993f0b8d8e2107812a0d95"
    end
  end

  on_linux do
    url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.26.1/ast-index-v3.26.1-linux-x86_64.tar.gz"
    sha256 "f036495b36dbc75a19d21329187ad690ded7e24664faa7ea4adc7c1e3b006611"
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.26.1", shell_output("#{bin}/ast-index version")
  end
end
