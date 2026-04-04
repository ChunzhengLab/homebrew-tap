class SureUnpack < Formula
  desc "Universal archive unpacker that auto-detects format and calls the right tool"
  homepage "https://github.com/ChunzhengLab/sure-unpack"
  version "0.1.0"
  license "MIT"

  depends_on "xz"
  depends_on "zstd"
  depends_on "sevenzip" => :optional

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChunzhengLab/sure-unpack/releases/download/v0.1.0/sure-unpack-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "aeed9927234c5e0555e3b79c4a436db7d1fc80628b19338da9b9ac4d916caacf"
    else
      url "https://github.com/ChunzhengLab/sure-unpack/releases/download/v0.1.0/sure-unpack-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "40577f3b458e6d694f1be5585768f9a030c5450f9c5215f2e5b8ad2e4f36bbde"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ChunzhengLab/sure-unpack/releases/download/v0.1.0/sure-unpack-v0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0742a9b150634e23a67212cbc3f8b14668b9256245aaa042cfa1b8fdd2057405"
    else
      url "https://github.com/ChunzhengLab/sure-unpack/releases/download/v0.1.0/sure-unpack-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "22d3104ecb501f573faefad89be755f605c9486f27104952e8d96afea5449eaf"
    end
  end

  def install
    bin.install "sure-unpack"
  end

  test do
    assert_match "sure-unpack", shell_output("#{bin}/sure-unpack --help")
  end
end
