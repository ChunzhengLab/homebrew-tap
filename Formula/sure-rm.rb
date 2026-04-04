class SureRm < Formula
  desc "Safer rm replacement that moves files to a recoverable trash store"
  homepage "https://github.com/ChunzhengLab/sure-rm"
  version "0.3.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChunzhengLab/sure-rm/releases/download/v0.3.5/sure-rm-v0.3.5-aarch64-apple-darwin.tar.gz"
      sha256 "b40b82276f7467fd76d606fd0383773b515abf75068560e7129a5324d04692e0"
    else
      url "https://github.com/ChunzhengLab/sure-rm/releases/download/v0.3.5/sure-rm-v0.3.5-x86_64-apple-darwin.tar.gz"
      sha256 "10e52708a310e0a9965158c6ba9eb0f84bf97a296d1dcb4143151badb1a52bce"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ChunzhengLab/sure-rm/releases/download/v0.3.5/sure-rm-v0.3.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "deb78ec939b85ffa21609faf020af924c64004a6270c16fc94754a2259c45444"
    else
      url "https://github.com/ChunzhengLab/sure-rm/releases/download/v0.3.5/sure-rm-v0.3.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "aa2ab618456cf4059ddd9f40cc65b38d9fcc14558f108ce77f52fd237c929edf"
    end
  end

  def install
    bin.install "sure-rm"
  end

  test do
    assert_match "sure-rm", shell_output("#{bin}/sure-rm --help")
  end
end
