# Homebrew Formula for whiff
#
class Whiff < Formula
  desc "Describe any file as one JSON document for people and LLMs"
  homepage "https://github.com/baoulo/whiff"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/baoulo/whiff/releases/download/v#{version}/whiff-v#{version}-macos-aarch64.tar.gz"
      sha256 "a494d552aae008a8ff76d310633270594363933346322a4021aa4aa0d364a855"
    end
    on_intel do
      url "https://github.com/baoulo/whiff/releases/download/v#{version}/whiff-v#{version}-macos-x86_64.tar.gz"
      sha256 "f2531ce464eeff10d58c2dec3b1bafba4f4c394c6d3f3513aa9d254d80429167"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/baoulo/whiff/releases/download/v#{version}/whiff-v#{version}-linux-aarch64.tar.gz"
      sha256 "c68a126e34d68a07f524cf357b48bf3f73c845371e706814dec1c65fd6b0ddea"
    end
    on_intel do
      url "https://github.com/baoulo/whiff/releases/download/v#{version}/whiff-v#{version}-linux-x86_64.tar.gz"
      sha256 "84df19fa1724c333fa735b60f69b7564198f9f686ccf234765ef642381791bb8"
    end
  end

  def install
    bin.install "whiff"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/whiff --version")
  end
end
