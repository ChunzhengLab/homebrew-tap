class SureRm < Formula
  desc "Safer rm replacement that moves files to a recoverable trash store"
  homepage "https://github.com/ChunzhengLab/sure-rm"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChunzhengLab/sure-rm/releases/download/v0.1.0/sure-rm-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "954f4cf510aa08038de543e3ebba0e02e0b6fce34d2aed8c771afeec402f9a59"
    else
      url "https://github.com/ChunzhengLab/sure-rm/releases/download/v0.1.0/sure-rm-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "01b156cea02f870b7fda1b4ceaf06cabb753a07903aec63e688ce6f4d310c29a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ChunzhengLab/sure-rm/releases/download/v0.1.0/sure-rm-v0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bf7580bac20f4ba47ea4c36cb25120740a8f92018d64bed44a889c111adef40c"
    else
      url "https://github.com/ChunzhengLab/sure-rm/releases/download/v0.1.0/sure-rm-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f96fd0761dad1a0b114ff685d55270cbbae899f6cd7a9b146b5e5f4a104d8781"
    end
  end

  def install
    bin.install "sure-rm"
  end

  test do
    assert_match "sure-rm", shell_output("#{bin}/sure-rm --help")
  end
end
