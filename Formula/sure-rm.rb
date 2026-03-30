class SureRm < Formula
  desc "Safer rm replacement that moves files to a recoverable trash store"
  homepage "https://github.com/ChunzhengLab/sure-rm"
  version "0.2.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChunzhengLab/sure-rm/releases/download/v0.2.2/sure-rm-v0.2.2-aarch64-apple-darwin.tar.gz"
      sha256 "a4212a8469673feb7e6c6112d6a61fc699c3bd04927a1a2679ba4c99f678c5dd"
    else
      url "https://github.com/ChunzhengLab/sure-rm/releases/download/v0.2.2/sure-rm-v0.2.2-x86_64-apple-darwin.tar.gz"
      sha256 "41bd113fca0e935dccdf2ca75d7ed936270f03b2d68daf1f0a9e21d0d147b80f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ChunzhengLab/sure-rm/releases/download/v0.2.2/sure-rm-v0.2.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2a9d37cc9cd0b0777309448cb70104864849bf80143d35b4e7e09a4cc7d96c6e"
    else
      url "https://github.com/ChunzhengLab/sure-rm/releases/download/v0.2.2/sure-rm-v0.2.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8fd490ccc51d0eae94aa15ae44d5624505a9a0cb5528fff03c3be2bcb5a227cc"
    end
  end

  def install
    bin.install "sure-rm"
  end

  test do
    assert_match "sure-rm", shell_output("#{bin}/sure-rm --help")
  end
end
