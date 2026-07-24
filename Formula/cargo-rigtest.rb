class CargoRigtest < Formula
  desc "Cargo subcommand for acceptance/integration testing with rigtest"
  homepage "https://github.com/anthonyoteri/cargo-rigtest"
  version "0.6.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/anthonyoteri/cargo-rigtest/releases/download/v#{version}/cargo-rigtest-macos-aarch64.tar.gz"
      sha256 "33272faba283b067252b7b7163a52673bde8947d4822a3a9e9146b1aefffa5bd"
    end
    on_intel do
      url "https://github.com/anthonyoteri/cargo-rigtest/releases/download/v#{version}/cargo-rigtest-macos-x86_64.tar.gz"
      sha256 "5398c8d1bb0a7b8a4dac6bc0aad15b33b438e6e6a6a42dc06a807c82d1b34e79"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/anthonyoteri/cargo-rigtest/releases/download/v#{version}/cargo-rigtest-linux-x86_64.tar.gz"
      sha256 "c276524c75f9ebc645f32c6187f8971a7094ca2bf81926a940d41e3c70921c88"
    end
    on_arm do
      url "https://github.com/anthonyoteri/cargo-rigtest/releases/download/v#{version}/cargo-rigtest-linux-aarch64.tar.gz"
      sha256 "5309b091e15ba370d3e97023dea7ff749ecb585840e9415fdd29744aea0365f9"
    end
  end

  def install
    bin.install "cargo-rigtest"
  end

  test do
    assert_match "cargo-rigtest", shell_output("#{bin}/cargo-rigtest --help")
  end
end
