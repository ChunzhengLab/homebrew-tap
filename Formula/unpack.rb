class Unpack < Formula
  desc "Universal archive packer and unpacker with header-based format detection"
  homepage "https://github.com/ChunzhengLab/sure-unpack"
  version "0.3.6"
  license "MIT"

  depends_on "xz"
  depends_on "lz4"
  depends_on "zstd"
  depends_on "sevenzip" => :optional

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChunzhengLab/sure-unpack/releases/download/v0.3.6/sure-unpack-v0.3.6-aarch64-apple-darwin.tar.gz"
      sha256 "11c899647b438cb9fb498971e4c7408d5d14e32bd4748c8b0219aba9801da4cb"
    else
      url "https://github.com/ChunzhengLab/sure-unpack/releases/download/v0.3.6/sure-unpack-v0.3.6-x86_64-apple-darwin.tar.gz"
      sha256 "da4f631db77f78ddb24815cfc61436dfc012a6d47cf5976d3f47caada65c77bc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ChunzhengLab/sure-unpack/releases/download/v0.3.6/sure-unpack-v0.3.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "940da9bfcd26f557c286fd51df9be6e29e9b9cec58be91027ed964135a06678a"
    else
      url "https://github.com/ChunzhengLab/sure-unpack/releases/download/v0.3.6/sure-unpack-v0.3.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7b9f74c67b0861b95649cf47cc8d816f598e7b71b27f96b6cc6a2863297a8f43"
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
