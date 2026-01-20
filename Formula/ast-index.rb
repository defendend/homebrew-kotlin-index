class AstIndex < Formula
  desc "Fast code search CLI for Android/Kotlin/Java, iOS/Swift/ObjC, and Perl projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.6.2/ast-index-3.6.2-darwin-arm64.tar.gz"
  sha256 "de26767984706c73e27c78dce2c45bb7b65e90878211c3ec3ce70009ee3b8fb1"
  license "MIT"
  version "3.6.2"

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index-rs v3.6.2", shell_output("#{bin}/ast-index version")
  end
end
