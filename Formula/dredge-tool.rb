class DredgeTool < Formula
  desc "Command-line tool for interacting with Docker Registry HTTP API V2"
  homepage "https://github.com/anthonyoteri/dredge"
  version "1.2.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/anthonyoteri/dredge/releases/download/v#{version}/dredge-macos-aarch64.tar.gz"
      sha256 "db474c1720883bf6c8c58c036166430f07dbbc2d17f5083109665e45cd4ccff2"
    end
    on_intel do
      url "https://github.com/anthonyoteri/dredge/releases/download/v#{version}/dredge-macos-x86_64.tar.gz"
      sha256 "ef4a23fdc2d1244058d3dcad2a6b237da297e26cec84e9f4e13373b3b223824a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/anthonyoteri/dredge/releases/download/v#{version}/dredge-linux-x86_64.tar.gz"
      sha256 "d13ce1e88a4c65342ec4132d4cd227e26a15ed97c6d1e621033e1b7e68953413"
    end
  end

  def install
    bin.install "dredge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dredge --version")
  end
end
