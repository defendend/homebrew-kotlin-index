class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.17.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.17.2/ast-index-v3.17.2-darwin-arm64.tar.gz"
      sha256 "16e7587501132ff9c4986045be67a2cf35dfb6c6363c7e81f1c97d1e137b3c49"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.17.2/ast-index-v3.17.2-darwin-x86_64.tar.gz"
      sha256 "a715621ca640d53115662ec229b03066b51347b8e22ec482e69b1fea2c0464ce"
    end
  end

  on_linux do
    url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.17.2/ast-index-v3.17.2-linux-x86_64.tar.gz"
    sha256 "0853658bb1f53474c888a7d4ae991a99f999b8199a5ea43b1d31d2b4dfe98e2a"
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.17.2", shell_output("#{bin}/ast-index version")
  end
end
