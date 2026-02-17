class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.17.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.17.4/ast-index-v3.17.4-darwin-arm64.tar.gz"
      sha256 "3c9c8b3e5284c5c7cf080c8b427f895bdc4b9df1ee391df11cf52e7824728979"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.17.4/ast-index-v3.17.4-darwin-x86_64.tar.gz"
      sha256 "d9155f25b50c2fa57ec5246f0fee9782efeca2740715a51c7e3775dc2ac0aa2f"
    end
  end

  on_linux do
    url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.17.4/ast-index-v3.17.4-linux-x86_64.tar.gz"
    sha256 "f00c0519f5d3aa82f5632bdf952b2edd94ccfbdf62909559fb782ae0daa652f2"
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.17.4", shell_output("#{bin}/ast-index version")
  end
end
