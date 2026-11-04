# Homebrew Formula for whiff
#
class Whiff < Formula
  desc "Describe any file as one JSON document for people and LLMs"
  homepage "https://github.com/baoulo/whiff"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/baoulo/whiff/releases/download/v#{version}/whiff-v#{version}-macos-aarch64.tar.gz"
      sha256 "e452063f3b57314ebeb165d655def49bea645a8a2f154d0084ba7aff5221ad53"
    end
    on_intel do
      url "https://github.com/baoulo/whiff/releases/download/v#{version}/whiff-v#{version}-macos-x86_64.tar.gz"
      sha256 "74f0a0bb76495fab4a69891e15109d11d4aa32f5f00ae5acaef92a525013cadc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/baoulo/whiff/releases/download/v#{version}/whiff-v#{version}-linux-aarch64.tar.gz"
      sha256 "1031f06edf5182236b9329f0c467a90de92a9f6177e286941f17735c562d6f23"
    end
    on_intel do
      url "https://github.com/baoulo/whiff/releases/download/v#{version}/whiff-v#{version}-linux-x86_64.tar.gz"
      sha256 "ab28b5e7bc7a1ca9c2e06fbce458a926924496a04458e0d97b9d37a684385ad5"
    end
  end

  def install
    bin.install "whiff"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/whiff --version")
  end
end
