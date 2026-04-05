class Unpack < Formula
  desc "Universal archive packer and unpacker with header-based format detection"
  homepage "https://github.com/ChunzhengLab/sure-unpack"
  version "0.3.4"
  license "MIT"

  depends_on "xz"
  depends_on "zstd"
  depends_on "sevenzip" => :optional

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChunzhengLab/sure-unpack/releases/download/v0.3.4/sure-unpack-v0.3.4-aarch64-apple-darwin.tar.gz"
      sha256 "54f4cce294f5b42c79ce447e2d5ea058e2224578545e1d8df7e26efb2c91349c"
    else
      url "https://github.com/ChunzhengLab/sure-unpack/releases/download/v0.3.4/sure-unpack-v0.3.4-x86_64-apple-darwin.tar.gz"
      sha256 "92e6f0859d38b82cd153b7572ad1149b3fb79c5ef844159c03c61a76b0fdf084"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ChunzhengLab/sure-unpack/releases/download/v0.3.4/sure-unpack-v0.3.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "32eb6873fe00d3fa0dc4303e3695869a9afb8aeb1637796f898a0f9df66878ae"
    else
      url "https://github.com/ChunzhengLab/sure-unpack/releases/download/v0.3.4/sure-unpack-v0.3.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d6f8a6ecba08516b5fefb12aa65ed31be750a07589837ec4f08197ffeb5f8285"
    end
  end

  def install
    bin.install "unpack"
    bin.install "pack"
  end

  test do
    assert_match "unpack", shell_output("#{bin}/unpack --help")
    assert_match "pack", shell_output("#{bin}/pack --help")
  end
end
