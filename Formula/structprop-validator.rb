class StructpropValidator < Formula
  desc "Validator for structprop configuration files"
  homepage "https://github.com/anthonyoteri/serde-structprop"
  version "0.3.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/anthonyoteri/serde-structprop/releases/download/v#{version}/structprop-validator-macos-aarch64.tar.gz"
      sha256 "01e111812a80113d8dd144f5b9f5537cb3c4c278b9bf7f46d6dccd9af2b276a7"
    end
    on_intel do
      url "https://github.com/anthonyoteri/serde-structprop/releases/download/v#{version}/structprop-validator-macos-x86_64.tar.gz"
      sha256 "ea318f005e612c7f34015f850aa10f374dd9d767abdd5ac254999a98199e7fab"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/anthonyoteri/serde-structprop/releases/download/v#{version}/structprop-validator-linux-x86_64.tar.gz"
      sha256 "1e0cbc4e1c198fe149f11e83faae05441fa64e9c4ecb3f3792a1c94aa64aa1ef"
    end
  end

  def install
    bin.install "structprop-validator"
  end

  test do
    (testpath/"empty.sp").write("")
    assert_match "", shell_output("#{bin}/structprop-validator #{testpath}/empty.sp")
  end
end
