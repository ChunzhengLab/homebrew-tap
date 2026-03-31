class SureRm < Formula
  desc "Safer rm replacement that moves files to a recoverable trash store"
  homepage "https://github.com/ChunzhengLab/sure-rm"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChunzhengLab/sure-rm/releases/download/v0.3.0/sure-rm-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "12d30585aba765d447afe9c55eabba576de5aacaefe8be7c8101c056e72ed595"
    else
      url "https://github.com/ChunzhengLab/sure-rm/releases/download/v0.3.0/sure-rm-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "209ae926f2a5b5b0458487ba44beb976dc345f95ffaeb49abdc9778474b1813a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ChunzhengLab/sure-rm/releases/download/v0.3.0/sure-rm-v0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6c407e393ecc8b678b95b7a9c31cf3614728c901d63d167104bf3e89aa14ad07"
    else
      url "https://github.com/ChunzhengLab/sure-rm/releases/download/v0.3.0/sure-rm-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "563c14602f679f205a16d6fff40bf590981f8af2ad5de051885fbde4b5ced89f"
    end
  end

  def install
    bin.install "sure-rm"
  end

  test do
    assert_match "sure-rm", shell_output("#{bin}/sure-rm --help")
  end
end
