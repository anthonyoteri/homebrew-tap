class CargoRigtest < Formula
  desc "Cargo subcommand for acceptance/integration testing with rigtest"
  homepage "https://github.com/anthonyoteri/cargo-rigtest"
  version "0.4.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/anthonyoteri/cargo-rigtest/releases/download/v#{version}/cargo-rigtest-macos-aarch64.tar.gz"
      sha256 "4a8b838c64c78c965272eebfa6d31d4eb1e30c6b07ab43d179f8671a4c61e55c"
    end
    on_intel do
      url "https://github.com/anthonyoteri/cargo-rigtest/releases/download/v#{version}/cargo-rigtest-macos-x86_64.tar.gz"
      sha256 "7ad119cbf0d6822877314d3ebe8eb01f3e0c2b384260395964c996a96b1eb383"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/anthonyoteri/cargo-rigtest/releases/download/v#{version}/cargo-rigtest-linux-x86_64.tar.gz"
      sha256 "c643bbc84dd5d1e8041de8296a2e4d39f2d3ea53fb14b71d94b09f747718b4ce"
    end
    on_arm do
      url "https://github.com/anthonyoteri/cargo-rigtest/releases/download/v#{version}/cargo-rigtest-linux-aarch64.tar.gz"
      sha256 "81aa8463e203233846506903ac74410198652e9c114723e2c11ac1ce22ae8ea4"
    end
  end

  def install
    bin.install "cargo-rigtest"
  end

  test do
    assert_match "cargo-rigtest", shell_output("#{bin}/cargo-rigtest --help")
  end
end
