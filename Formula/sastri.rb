# Homebrew Formula for sastri
#
# Copy to your tap as Formula/sastri.rb and fill sha256 from Release SHA256SUMS.
class Sastri < Formula
  desc "Scaffold multi-ecosystem packaging and CI/CD for Rust CLIs"
  homepage "https://github.com/baoulo/sastri"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/baoulo/sastri/releases/download/v#{version}/sastri-v#{version}-macos-aarch64.tar.gz"
      sha256 "5c59f54f286feeddd737f6a111364d65ad9f501d10e3e036689cb80bd3586494"
    end
    on_intel do
      url "https://github.com/baoulo/sastri/releases/download/v#{version}/sastri-v#{version}-macos-x86_64.tar.gz"
      sha256 "eef12736084da4dee168d4e47d6dba5b7962b289f266b77383d387a6f01fafc3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/baoulo/sastri/releases/download/v#{version}/sastri-v#{version}-linux-aarch64.tar.gz"
      sha256 "cd9da69b1b46e0b9a6bdbe61fd4acd38844b8e493f4191bc73e4be518b506151"
    end
    on_intel do
      url "https://github.com/baoulo/sastri/releases/download/v#{version}/sastri-v#{version}-linux-x86_64.tar.gz"
      sha256 "cae0ceb96f0e774c2956dd7bf2c47ff6fcd520e3729f6cb7baf2d00767b4792d"
    end
  end

  def install
    bin.install "sastri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sastri --version")
  end
end
