# Homebrew Formula for whiff
#
class Whiff < Formula
  desc "Describe any file as one JSON document for people and LLMs"
  homepage "https://github.com/baoulo/whiff"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/baoulo/whiff/releases/download/v#{version}/whiff-v#{version}-macos-aarch64.tar.gz"
      sha256 "6c32a7867bbfc603b9c99670d3b7e9ed78eb2df47ed0e2caec628d9af34dd23b"
    end
    on_intel do
      url "https://github.com/baoulo/whiff/releases/download/v#{version}/whiff-v#{version}-macos-x86_64.tar.gz"
      sha256 "93e13878db82e132c8fd6cbb1f94eb2b8290be8c4925b16963b24cbec602824a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/baoulo/whiff/releases/download/v#{version}/whiff-v#{version}-linux-aarch64.tar.gz"
      sha256 "adb4da3a97a91da7901e3e730017e9c6f9d9bb15fd4497852c44359911e7a78d"
    end
    on_intel do
      url "https://github.com/baoulo/whiff/releases/download/v#{version}/whiff-v#{version}-linux-x86_64.tar.gz"
      sha256 "d11eec44a906b14e4d8974fcce704a2415d478de6c9ef4d4de15b21ada9c41ba"
    end
  end

  def install
    bin.install "whiff"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/whiff --version")
  end
end
