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
      sha256 "9333870cb16b5993afd60d974a3cc9c7c14cf52661c7f2fc66795a4f3e89da34"
    end
    on_intel do
      url "https://github.com/baoulo/sastri/releases/download/v#{version}/sastri-v#{version}-macos-x86_64.tar.gz"
      sha256 "bb97540e2c12c273a25b76047a4ccc83657a47d087a480037019a75766a98581"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/baoulo/sastri/releases/download/v#{version}/sastri-v#{version}-linux-aarch64.tar.gz"
      sha256 "f436f7e5267f6649050eafac6140d59fb8e37a3f72c1ef79fa9acd0f5fe84a9c"
    end
    on_intel do
      url "https://github.com/baoulo/sastri/releases/download/v#{version}/sastri-v#{version}-linux-x86_64.tar.gz"
      sha256 "80fd81f1b10b2c58810702c5e68b94a277d47f2e3cf73c0bd0915cdb112dba8a"
    end
  end

  def install
    bin.install "sastri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sastri --version")
  end
end
