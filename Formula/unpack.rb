class Unpack < Formula
  desc "Universal archive packer and unpacker with header-based format detection"
  homepage "https://github.com/ChunzhengLab/sure-unpack"
  version "0.3.3"
  license "MIT"

  depends_on "xz"
  depends_on "zstd"
  depends_on "sevenzip" => :optional

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChunzhengLab/sure-unpack/releases/download/v0.3.3/sure-unpack-v0.3.3-aarch64-apple-darwin.tar.gz"
      sha256 "a2b59c9e40bc89b8553c6caadcd69a765a5277c042599dd1cf2fa4b2dcbb9023"
    else
      url "https://github.com/ChunzhengLab/sure-unpack/releases/download/v0.3.3/sure-unpack-v0.3.3-x86_64-apple-darwin.tar.gz"
      sha256 "c2cd94dda4a91425ea65b5efdaeec05df64217c2f1da886ccd7ae3a5cdeb5dbe"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ChunzhengLab/sure-unpack/releases/download/v0.3.3/sure-unpack-v0.3.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c4e99bcb2a059931d4c3345b64c78d27497ffb13698aa0ffdb9b18d6f8ee125b"
    else
      url "https://github.com/ChunzhengLab/sure-unpack/releases/download/v0.3.3/sure-unpack-v0.3.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ebcc4b5bc7f17942943369a79e42ae2d969f990c20224a4ea6eda59a7c2ab390"
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
