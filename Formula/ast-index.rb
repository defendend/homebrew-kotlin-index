class AstIndex < Formula
  desc "Fast code search CLI for Android/Kotlin/Java, iOS/Swift/ObjC, Perl, Python, Go, Proto, WSDL, and C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.8.1/ast-index-3.8.1-darwin-arm64.tar.gz"
  sha256 "e0611887e0426b43dbe8ecb1deb76d86e1a6b37b678e206773fa3be2b9cc5216"
  license "MIT"
  version "3.8.1"

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.8.1", shell_output("#{bin}/ast-index version")
  end
end
