class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.25.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.25.0/ast-index-v3.25.0-darwin-arm64.tar.gz"
      sha256 "edcdcaf253a7efbf889863fce79706d80c1b81851d9b789a342be39cc98212cc"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.25.0/ast-index-v3.25.0-darwin-x86_64.tar.gz"
      sha256 "235a9ba8d30f39ad37c7198d8bb9022fb87dc8b88da6a48a9b0548cd9a565959"
    end
  end

  on_linux do
    url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.25.0/ast-index-v3.25.0-linux-x86_64.tar.gz"
    sha256 "c5dfbf368ce838f40e93751becf25392c05f9b0d872ca985ef4ff43491204c5b"
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.25.0", shell_output("#{bin}/ast-index version")
  end
end
