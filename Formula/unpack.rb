class Unpack < Formula
  desc "Universal archive unpacker that auto-detects format and calls the right tool"
  homepage "https://github.com/ChunzhengLab/sure-unpack"
  version "0.2.0"
  license "MIT"

  depends_on "xz"
  depends_on "zstd"
  depends_on "sevenzip" => :optional

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChunzhengLab/sure-unpack/releases/download/v0.2.0/sure-unpack-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "8727604f4a850eb74645a4b43a698cbb4202fba860454b9d7e3ace64b31e6cdf"
    else
      url "https://github.com/ChunzhengLab/sure-unpack/releases/download/v0.2.0/sure-unpack-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "1fc3efd14d3404bf7c44c532bedd99567f63b3b2b3753b449f1b73bbd7771ebf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ChunzhengLab/sure-unpack/releases/download/v0.2.0/sure-unpack-v0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b2e823b1e00dcf080f7c9e975ca77d83056e55c42f8b09f8cfce3eb13d855be7"
    else
      url "https://github.com/ChunzhengLab/sure-unpack/releases/download/v0.2.0/sure-unpack-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8460a070dc2ba5a65917e8503a22530ea4f79fde64a8561c542d0cb88bff4318"
    end
  end

  def install
    bin.install "unpack"
  end

  test do
    assert_match "unpack", shell_output("#{bin}/unpack --help")
  end
end
