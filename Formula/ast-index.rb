class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.21.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.21.0/ast-index-v3.21.0-darwin-arm64.tar.gz"
      sha256 "d4c72a5db0531006abe0a9f40003d2310a03c667172335c6222303546f0ca82b"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.21.0/ast-index-v3.21.0-darwin-x86_64.tar.gz"
      sha256 "b73fe05bbffb748cf43018297c5ab97bbad126a00a47245a5d163c8df51d3170"
    end
  end

  on_linux do
    url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.21.0/ast-index-v3.21.0-linux-x86_64.tar.gz"
    sha256 "90c39484b00e7e6621b8011606180742bbc40c568df14b787f9c2b6c7f988d5e"
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.21.0", shell_output("#{bin}/ast-index version")
  end
end
