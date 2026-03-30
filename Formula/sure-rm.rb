class SureRm < Formula
  desc "Safer rm replacement that moves files to a recoverable trash store"
  homepage "https://github.com/ChunzhengLab/sure-rm"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChunzhengLab/sure-rm/releases/download/v0.2.1/sure-rm-v0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "a90851e3e9239f1fd7a34ca49638907b5a57e19d38fd7a3f312025824ee45b7f"
    else
      url "https://github.com/ChunzhengLab/sure-rm/releases/download/v0.2.1/sure-rm-v0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "f349d36721f5b1ba6b69729d3d17def13abac115f98c78be99caeb1aa37dec68"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ChunzhengLab/sure-rm/releases/download/v0.2.1/sure-rm-v0.2.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e9bd1cefd58e0749c058acc0d430a0db813a75ee33d953e6defb5adc40ebb941"
    else
      url "https://github.com/ChunzhengLab/sure-rm/releases/download/v0.2.1/sure-rm-v0.2.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ab8a0ac6ce10b33b387d2a1102d7055fa90f9da5018117a159a71e98647a6dd4"
    end
  end

  def install
    bin.install "sure-rm"
  end

  test do
    assert_match "sure-rm", shell_output("#{bin}/sure-rm --help")
  end
end
