class SureRm < Formula
  desc "Safer rm replacement that moves files to a recoverable trash store"
  homepage "https://github.com/ChunzhengLab/sure-rm"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChunzhengLab/sure-rm/releases/download/v0.3.0/sure-rm-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "9b46a7dc4f37437f65f8352d6e42a2248780525b99c74eab14ae70f918105d5d"
    else
      url "https://github.com/ChunzhengLab/sure-rm/releases/download/v0.3.0/sure-rm-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "600fc3c5e817a8c9e0b209e1ed559eb32d3997eb2f28e07f8582487ab6701999"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ChunzhengLab/sure-rm/releases/download/v0.3.0/sure-rm-v0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "79fb4e2ac1752b68ace94bc5a834a355ad9f00a52d2a8fd1377e6337eb8d4fd1"
    else
      url "https://github.com/ChunzhengLab/sure-rm/releases/download/v0.3.0/sure-rm-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3ac2549edee46d92d0c93f16bc0c77b15a7c3b7f8929faaf33a488e774afda64"
    end
  end

  def install
    bin.install "sure-rm"
  end

  test do
    assert_match "sure-rm", shell_output("#{bin}/sure-rm --help")
  end
end
