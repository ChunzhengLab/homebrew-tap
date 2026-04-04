class Unpack < Formula
  desc "Universal archive unpacker that auto-detects format and calls the right tool"
  homepage "https://github.com/ChunzhengLab/sure-unpack"
  version "0.1.1"
  license "MIT"

  depends_on "xz"
  depends_on "zstd"
  depends_on "sevenzip" => :optional

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChunzhengLab/sure-unpack/releases/download/v0.1.1/sure-unpack-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "a83c0803f9952c91e384fe3171e156df2abfdbc6d9d16f57cc62e5d5d06c08d9"
    else
      url "https://github.com/ChunzhengLab/sure-unpack/releases/download/v0.1.1/sure-unpack-v0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "39140cad6e3179f7b25d0f99b12a81ef7e29d1cd2b7f2ab834924d74b6209ef9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ChunzhengLab/sure-unpack/releases/download/v0.1.1/sure-unpack-v0.1.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "81bf9cac881b6664507809810b83679b8476b76be279fbad7fcc09ec1066f2d9"
    else
      url "https://github.com/ChunzhengLab/sure-unpack/releases/download/v0.1.1/sure-unpack-v0.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0628c6fba9a9472620f7f12e556cbcfeda203c466c7807dc3636d8a719ff6ffc"
    end
  end

  def install
    bin.install "unpack"
  end

  test do
    assert_match "unpack", shell_output("#{bin}/unpack --help")
  end
end
