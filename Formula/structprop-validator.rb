class StructpropValidator < Formula
  desc "Validator for structprop configuration files"
  homepage "https://github.com/anthonyoteri/serde-structprop"
  version "0.4.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/anthonyoteri/serde-structprop/releases/download/v#{version}/structprop-validator-macos-aarch64.tar.gz"
      sha256 "8bdc46295faa3329d2030182cceee96b6bd8eea12b9d85be3a2b329e0d41c4a5"
    end
    on_intel do
      url "https://github.com/anthonyoteri/serde-structprop/releases/download/v#{version}/structprop-validator-macos-x86_64.tar.gz"
      sha256 "f519fe9c7461540a5066a7b57882ff35603b6ffc44da6d59e312c8a8e1bb749d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/anthonyoteri/serde-structprop/releases/download/v#{version}/structprop-validator-linux-x86_64.tar.gz"
      sha256 "450d36b98357dc57dc678836c2dd31bfe67bde934d55351e58c3c3314c046f14"
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
