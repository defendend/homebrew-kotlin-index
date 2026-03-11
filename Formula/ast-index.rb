class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.29.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.29.0/ast-index-v3.29.0-darwin-arm64.tar.gz"
      sha256 "b5284d474b7763649418cd864667e3628f11e437da6e80bacf22cdcbf3f93689"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.29.0/ast-index-v3.29.0-darwin-x86_64.tar.gz"
      sha256 "e7f7298e44bf4a42cd73f781fce6e97dcd69cad3e71e1c61b9ce7de263d8a288"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.29.0/ast-index-v3.29.0-linux-arm64.tar.gz"
      sha256 "65660293488e5a12a9c9c59cb93ddc3c18ea52c054bedfbf54cf5b09d8804362"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.29.0/ast-index-v3.29.0-linux-x86_64.tar.gz"
      sha256 "b98132886220d027bd5eac260e0f9331eed2dba92b1d52cb093c9ef6fc504834"
    end
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.29.0", shell_output("#{bin}/ast-index version")
  end
end
