class CargoRigtest < Formula
  desc "Cargo subcommand for acceptance/integration testing with rigtest"
  homepage "https://github.com/anthonyoteri/cargo-rigtest"
  version "0.1.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/anthonyoteri/cargo-rigtest/releases/download/v#{version}/cargo-rigtest-macos-aarch64.tar.gz"
      sha256 "fafe2b0f9157ea62a6e53a7a72ee1cf91894b990398ca6ea30a083d5972b9e0e"
    end
    on_intel do
      url "https://github.com/anthonyoteri/cargo-rigtest/releases/download/v#{version}/cargo-rigtest-macos-x86_64.tar.gz"
      sha256 "5b95d30930f58b808e4b632ee0afe77fe73eb1e0540ab1bde1c822be644575df"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/anthonyoteri/cargo-rigtest/releases/download/v#{version}/cargo-rigtest-linux-x86_64.tar.gz"
      sha256 "3c1f6d12f108231c6ead8cc1ca3051e9debc53b6d9dca546adb229af188410e7"
    end
    on_arm do
      url "https://github.com/anthonyoteri/cargo-rigtest/releases/download/v#{version}/cargo-rigtest-linux-aarch64.tar.gz"
      sha256 "c5db147ee076d8ffa0941ae49acd0bdb37a310e6b3549b8f119e789730898d7e"
    end
  end

  def install
    bin.install "cargo-rigtest"
  end

  test do
    assert_match "cargo-rigtest", shell_output("#{bin}/cargo-rigtest --help")
  end
end
