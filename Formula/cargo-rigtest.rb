class CargoRigtest < Formula
  desc "Cargo subcommand for acceptance/integration testing with rigtest"
  homepage "https://github.com/anthonyoteri/cargo-rigtest"
  version "0.2.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/anthonyoteri/cargo-rigtest/releases/download/v#{version}/cargo-rigtest-macos-aarch64.tar.gz"
      sha256 "c1d5872fc7ea904e4e553d2700596775b02340c40b4591f0e13bd751b60637ea"
    end
    on_intel do
      url "https://github.com/anthonyoteri/cargo-rigtest/releases/download/v#{version}/cargo-rigtest-macos-x86_64.tar.gz"
      sha256 "b5cb79e39649517f2577861330f189ae540de4d138a839c8421d2075af81463b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/anthonyoteri/cargo-rigtest/releases/download/v#{version}/cargo-rigtest-linux-x86_64.tar.gz"
      sha256 "515d5d834cf26a4a9c61730d6185b18d4e3423891f8b8401d829fe6b82467778"
    end
    on_arm do
      url "https://github.com/anthonyoteri/cargo-rigtest/releases/download/v#{version}/cargo-rigtest-linux-aarch64.tar.gz"
      sha256 "9fb26923229b6f3d9fb1c4a697ff1419fa2e670978064a7f5849c5fafe3d693d"
    end
  end

  def install
    bin.install "cargo-rigtest"
  end

  test do
    assert_match "cargo-rigtest", shell_output("#{bin}/cargo-rigtest --help")
  end
end
