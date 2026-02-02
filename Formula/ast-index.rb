class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.10.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.10.4/ast-index-v3.10.4-darwin-arm64.tar.gz"
      sha256 "bb64ac469faa005f91d64c0150ad3f87a9344b6e3530a0533189762075665b9b"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.10.4/ast-index-v3.10.4-darwin-x86_64.tar.gz"
      sha256 "6e3fc94bc67eddc5fcef4795a8c3de6e738562b7eeb551ed25057a9d5a46cea5"
    end
  end

  on_linux do
    url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.10.4/ast-index-v3.10.4-linux-x86_64.tar.gz"
    sha256 "53f96262b7642b94d48f59e0d845b04d118e2d4083e7041b539621be99917fda"
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.10.4", shell_output("#{bin}/ast-index version")
  end
end
