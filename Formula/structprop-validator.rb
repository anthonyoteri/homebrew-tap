class StructpropValidator < Formula
  desc "Validator for structprop configuration files"
  homepage "https://github.com/anthonyoteri/serde-structprop"
  version "0.2.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/anthonyoteri/serde-structprop/releases/download/v#{version}/structprop-validator-macos-aarch64.tar.gz"
      sha256 "23222996ce6ae787f0f34ef9328e23798b8f917bd11b38034d2b32b53b948480"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/anthonyoteri/serde-structprop/releases/download/v#{version}/structprop-validator-linux-x86_64.tar.gz"
      sha256 "70d722f68cc1a1ac26676f309de2a7796976856070a610ee2f4fc31760892808"
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
