class SureRm < Formula
  desc "Safer rm replacement that moves files to a recoverable trash store"
  homepage "https://github.com/ChunzhengLab/sure-rm"
  version "0.2.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChunzhengLab/sure-rm/releases/download/v0.2.4/sure-rm-v0.2.4-aarch64-apple-darwin.tar.gz"
      sha256 "3fbb4d643cf18b8be8a57a838d75a283d6fdcb47bb4f854d1f10d46b4ef69a9b"
    else
      url "https://github.com/ChunzhengLab/sure-rm/releases/download/v0.2.4/sure-rm-v0.2.4-x86_64-apple-darwin.tar.gz"
      sha256 "3e088575047a1c890864a9f9200de959af7766d45c69c7fe92bcccd4d5ea484c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ChunzhengLab/sure-rm/releases/download/v0.2.4/sure-rm-v0.2.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ec52b5c0d73c6f771ceed4e7719830c0bf707be93e808e4051f7c40b538939fd"
    else
      url "https://github.com/ChunzhengLab/sure-rm/releases/download/v0.2.4/sure-rm-v0.2.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "14d71ffe7e1a0cbd7c2c5cfcaee719a2731584d7b0ae2114fa6b3a41431d164d"
    end
  end

  def install
    bin.install "sure-rm"
  end

  test do
    assert_match "sure-rm", shell_output("#{bin}/sure-rm --help")
  end
end
