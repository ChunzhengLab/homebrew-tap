class SureRm < Formula
  desc "Safer rm replacement that moves files to a recoverable trash store"
  homepage "https://github.com/ChunzhengLab/sure-rm"
  version "0.2.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChunzhengLab/sure-rm/releases/download/v0.2.3/sure-rm-v0.2.3-aarch64-apple-darwin.tar.gz"
      sha256 "35d80d5c2c9cd502980008293f3a88a8fec9d2a7d6c07575dec9307a1d235337"
    else
      url "https://github.com/ChunzhengLab/sure-rm/releases/download/v0.2.3/sure-rm-v0.2.3-x86_64-apple-darwin.tar.gz"
      sha256 "b734a18a89fe3305f0fdbc3347a2c4da7f401b9aefa0acb9169b959854ecde0b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ChunzhengLab/sure-rm/releases/download/v0.2.3/sure-rm-v0.2.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c65a486f86312057976c5a02999336dc1d512b7eaba1209dcb3360dfd9d8272b"
    else
      url "https://github.com/ChunzhengLab/sure-rm/releases/download/v0.2.3/sure-rm-v0.2.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b14a04707f42fa9fe69217f2da549bb30e627afb83166d9cd5c07b35b3cea880"
    end
  end

  def install
    bin.install "sure-rm"
  end

  test do
    assert_match "sure-rm", shell_output("#{bin}/sure-rm --help")
  end
end
