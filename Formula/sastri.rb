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
      sha256 "7d697246ec8fef5110cc65bada7ea5708b2f6735f831e2968f817291c6a4c211"
    end
    on_intel do
      url "https://github.com/baoulo/sastri/releases/download/v#{version}/sastri-v#{version}-macos-x86_64.tar.gz"
      sha256 "89fd85c9f225e63dc4f554b795b08715ee3d6fe9c659402c384f81cd4f2f903a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/baoulo/sastri/releases/download/v#{version}/sastri-v#{version}-linux-aarch64.tar.gz"
      sha256 "6be15bc4880a26f04432f3e4c9e9ab7a8ed9a9c562d53a51cf0240e99385199a"
    end
    on_intel do
      url "https://github.com/baoulo/sastri/releases/download/v#{version}/sastri-v#{version}-linux-x86_64.tar.gz"
      sha256 "eccc4fc2fa5398b2b523e848acaa5019acdc0893e0f66422d97f79a5c0a334e4"
    end
  end

  def install
    bin.install "sastri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sastri --version")
  end
end
