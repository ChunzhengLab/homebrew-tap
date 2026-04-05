class Unpack < Formula
  desc "Universal archive packer and unpacker with header-based format detection"
  homepage "https://github.com/ChunzhengLab/sure-unpack"
  version "0.3.1"
  license "MIT"

  depends_on "xz"
  depends_on "zstd"
  depends_on "sevenzip" => :optional

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChunzhengLab/sure-unpack/releases/download/v0.3.1/sure-unpack-v0.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "36ff3e669baa87647b9c1fcd3b3cebef66353bb4997b6a21ab0a55860a9b2ac9"
    else
      url "https://github.com/ChunzhengLab/sure-unpack/releases/download/v0.3.1/sure-unpack-v0.3.1-x86_64-apple-darwin.tar.gz"
      sha256 "06740d7c0edd9e6d588d21d6b979dc21a55809e65956e7e9de5f67ad98c5a229"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ChunzhengLab/sure-unpack/releases/download/v0.3.1/sure-unpack-v0.3.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3cc2f2f6d68eb3fdbb7dd57b0242bdea9aa44de8dc1934bcfce1e338c9ab6d89"
    else
      url "https://github.com/ChunzhengLab/sure-unpack/releases/download/v0.3.1/sure-unpack-v0.3.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "eda6f666343174076b5074c0ef2382b2ac9d2a048bbd708e87b6422f6f388f26"
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
