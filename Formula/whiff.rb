# Homebrew Formula for whiff
#
class Whiff < Formula
  desc "Describe any file as one JSON document for people and LLMs"
  homepage "https://github.com/SinAnima/whiff"
  version "0.8.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SinAnima/whiff/releases/download/v#{version}/whiff-v#{version}-macos-aarch64.tar.gz"
      sha256 "83eb824c2012882bf3e4147cdf7b3b6f447b6d6b0dbda46ede9ebc8bb7f64b46"
    end
    on_intel do
      url "https://github.com/SinAnima/whiff/releases/download/v#{version}/whiff-v#{version}-macos-x86_64.tar.gz"
      sha256 "7811fa26e2920ed9abfb87b25fcb22d0b6675e4c85c9fc374dbc9f12b437e305"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SinAnima/whiff/releases/download/v#{version}/whiff-v#{version}-linux-aarch64.tar.gz"
      sha256 "df855e25a3f84de20ffa75b1dc1fbc5a7d7b5bce5be0df0f02290ebc885103cd"
    end
    on_intel do
      url "https://github.com/SinAnima/whiff/releases/download/v#{version}/whiff-v#{version}-linux-x86_64.tar.gz"
      sha256 "bb3ec52992e85c4177992270f7fe2d5600ada1caf6f44a68b76e2a5e3333b9a4"
    end
  end

  def install
    bin.install "whiff"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/whiff --version")
  end
end
