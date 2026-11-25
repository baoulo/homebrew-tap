# Homebrew Formula for ditch
#
# Copy to your tap as Formula/ditch.rb after release.
# Checksums are filled by `sastri release update` (scripts/update-packaging-checksums.sh is a fallback).
class Ditch < Formula
  desc "Delete regenerable build output from development projects."
  homepage "https://github.com/baoulo/ditch"
  version "0.2.0"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/baoulo/ditch/releases/download/v#{version}/ditch-v#{version}-macos-aarch64.tar.gz"
      sha256 "fac228cadc5cb9880ddaeb444babfcc979271f1404a9b35c00b05435ccc646aa"
    end
    on_intel do
      url "https://github.com/baoulo/ditch/releases/download/v#{version}/ditch-v#{version}-macos-x86_64.tar.gz"
      sha256 "ef4554a1c2ddbf4c200c09ae503007c6af73518705ca2623b071214cb9d4daf8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/baoulo/ditch/releases/download/v#{version}/ditch-v#{version}-linux-aarch64.tar.gz"
      sha256 "6d93121e24f3202bb14f4806067e9f71d4125512ed51500ad6ee83346ed395dc"
    end
    on_intel do
      url "https://github.com/baoulo/ditch/releases/download/v#{version}/ditch-v#{version}-linux-x86_64.tar.gz"
      sha256 "5b5dd3b8c1924f2801728a0000024a8dfd29b047f4041efa22ddd5b5257c342a"
    end
  end

  def install
    bin.install "ditch"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ditch --version")
  end
end
