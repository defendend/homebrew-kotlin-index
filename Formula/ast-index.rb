class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.10.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.10.4/ast-index-v3.10.4-darwin-arm64.tar.gz"
      sha256 "be859266438d3fa2f7cb043457a965c5a17eb6d6595e15b811da4191dfba764e"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.10.4/ast-index-v3.10.4-darwin-x86_64.tar.gz"
      sha256 "6c8f660205fa968ea41552a4745e860be55532367d759162e428d77708e6dcfc"
    end
  end

  on_linux do
    url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.10.4/ast-index-v3.10.4-linux-x86_64.tar.gz"
    sha256 "7c43c66a5c724ffc64606679f5b38961806c865adde63da3514742aebc53b3e6"
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.10.4", shell_output("#{bin}/ast-index version")
  end
end
