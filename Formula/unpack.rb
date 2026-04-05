class Unpack < Formula
  desc "Universal archive packer and unpacker with header-based format detection"
  homepage "https://github.com/ChunzhengLab/sure-unpack"
  version "0.3.2"
  license "MIT"

  depends_on "xz"
  depends_on "zstd"
  depends_on "sevenzip" => :optional

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChunzhengLab/sure-unpack/releases/download/v0.3.2/sure-unpack-v0.3.2-aarch64-apple-darwin.tar.gz"
      sha256 "bb4e0a5791679fa9901e4f00e3649ad54364c8f32b5c47738f97cb59ed907222"
    else
      url "https://github.com/ChunzhengLab/sure-unpack/releases/download/v0.3.2/sure-unpack-v0.3.2-x86_64-apple-darwin.tar.gz"
      sha256 "57c0a9a51dfc5aaf3826f881c094dfbd480cde37102afc68a1990a6f825b8877"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ChunzhengLab/sure-unpack/releases/download/v0.3.2/sure-unpack-v0.3.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d7f62179920a70b038e26e5690d400b014e19859758f6bd4cb225135a38c62c2"
    else
      url "https://github.com/ChunzhengLab/sure-unpack/releases/download/v0.3.2/sure-unpack-v0.3.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f5940481f515e38e334143f89898fac825ba8af3be46f2ba003060f7f2e7280d"
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
