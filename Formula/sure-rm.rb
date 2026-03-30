class SureRm < Formula
  desc "Safer rm replacement that moves files to a recoverable trash store"
  homepage "https://github.com/ChunzhengLab/sure-rm"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChunzhengLab/sure-rm/releases/download/v0.2.0/sure-rm-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "f37921004cefb5d84866b7df17c3a0957ea23fb219d1396add58b81db7b4ab9d"
    else
      url "https://github.com/ChunzhengLab/sure-rm/releases/download/v0.2.0/sure-rm-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "d4e35449fc0f5a4cf2a72122de15bf011bab9191be1f844aed28739ac0f43636"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ChunzhengLab/sure-rm/releases/download/v0.2.0/sure-rm-v0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "92a0c205242aa471eff4263e88bf3124a62506e1e645d7683d318e995ce257a2"
    else
      url "https://github.com/ChunzhengLab/sure-rm/releases/download/v0.2.0/sure-rm-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8efd498ac0fc57a25a5b6740fede2412da000cb7e273bebd15bdbc9a16f01823"
    end
  end

  def install
    bin.install "sure-rm"
  end

  test do
    assert_match "sure-rm", shell_output("#{bin}/sure-rm --help")
  end
end
