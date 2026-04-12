class Unpack < Formula
  desc "Universal archive packer and unpacker with header-based format detection"
  homepage "https://github.com/ChunzhengLab/sure-unpack"
  version "0.3.7"
  license "MIT"

  depends_on "xz"
  depends_on "lz4"
  depends_on "zstd"
  depends_on "sevenzip" => :optional

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChunzhengLab/sure-unpack/releases/download/v0.3.7/sure-unpack-v0.3.7-aarch64-apple-darwin.tar.gz"
      sha256 "4d8037763acb600159b404170840ca3ddfbf84695c47df47be340b4de3d394e8"
    else
      url "https://github.com/ChunzhengLab/sure-unpack/releases/download/v0.3.7/sure-unpack-v0.3.7-x86_64-apple-darwin.tar.gz"
      sha256 "6b58ec002c1155b00f450af7b2be916d1f36b086fe93a84d2b539f6abde9cc71"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ChunzhengLab/sure-unpack/releases/download/v0.3.7/sure-unpack-v0.3.7-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0674741a6cd43e42e09c30197396436710c415b5b11460ecaa47e2aff53eb00b"
    else
      url "https://github.com/ChunzhengLab/sure-unpack/releases/download/v0.3.7/sure-unpack-v0.3.7-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "38c07947370b2aea91fe687f16aaec5ed512b48a661b846ce62106c540b8aff4"
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
