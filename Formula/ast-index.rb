class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.11.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.11.2/ast-index-v3.11.2-darwin-arm64.tar.gz"
      sha256 "f194fb9b7e7b075a598c812a5f4cda8f08ac0338a27329c6132b56b7cd34d913"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.11.2/ast-index-v3.11.2-darwin-x86_64.tar.gz"
      sha256 "effdb909fe95d21d1ef3b5d716b42d09234403b100fb449c25b17b2704b8a947"
    end
  end

  on_linux do
    url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.11.2/ast-index-v3.11.2-linux-x86_64.tar.gz"
    sha256 "518c7af34eb2bbfd78c4820390d36c491fd13b43c4b890045b27508f6c562d25"
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.11.2", shell_output("#{bin}/ast-index version")
  end
end
