class CargoRigtest < Formula
  desc "Cargo subcommand for acceptance/integration testing with rigtest"
  homepage "https://github.com/anthonyoteri/cargo-rigtest"
  version "0.2.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/anthonyoteri/cargo-rigtest/releases/download/v#{version}/cargo-rigtest-macos-aarch64.tar.gz"
      sha256 "f10f4f38809c2ac4540bb7aaec44783862126b2e267591a9847b785434c6a127"
    end
    on_intel do
      url "https://github.com/anthonyoteri/cargo-rigtest/releases/download/v#{version}/cargo-rigtest-macos-x86_64.tar.gz"
      sha256 "8018836c90582c9f6b571d0298c99dda391ad3acebeeb3a0b73992a056305ade"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/anthonyoteri/cargo-rigtest/releases/download/v#{version}/cargo-rigtest-linux-x86_64.tar.gz"
      sha256 "83c7751eed70420cff17b56aa8ddb503463353e98febcd976ea0f6b2cc3e7553"
    end
    on_arm do
      url "https://github.com/anthonyoteri/cargo-rigtest/releases/download/v#{version}/cargo-rigtest-linux-aarch64.tar.gz"
      sha256 "3340323966006cc08414e3d00d50deeeaa47a5be3d48bc54a57a32a98ba3f3c6"
    end
  end

  def install
    bin.install "cargo-rigtest"
  end

  test do
    assert_match "cargo-rigtest", shell_output("#{bin}/cargo-rigtest --help")
  end
end
