class ToderoAm < Formula
  desc "Todero Artifact Manager CLI"
  homepage "https://github.com/shellaia/todero-artifact-repository-manager"
  version "0.0.20"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://brew.social100.com/todero-am/channels/stable/tarballs/todero-am_0.0.20_darwin_arm64.tar.gz"
      sha256 "323077217e21026f54b3f94cfa1b1f6ad2ebb5ce9db9fd5862d7847cd079a5db"
    else
      url "https://brew.social100.com/todero-am/channels/stable/tarballs/todero-am_0.0.20_darwin_amd64.tar.gz"
      sha256 "36c82cd995eb39f82158123acc9dd25d4e7524396e6fecd84b906e9e27b8221f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://brew.social100.com/todero-am/channels/stable/tarballs/todero-am_0.0.20_linux_arm64.tar.gz"
      sha256 "1a94865bf595fc2c48810265a2b7eee72fc42c239574c3577e4f36e3ad873738"
    else
      url "https://brew.social100.com/todero-am/channels/stable/tarballs/todero-am_0.0.20_linux_amd64.tar.gz"
      sha256 "f46f482bc001b8927028fcfa99e7fe471c130774d723680d1fab5ab220044243"
    end
  end

  def install
    bin.install "todero-am"
  end

  test do
    assert_match "todero-artifact-manager", shell_output("#{bin}/todero-am --help 2>&1", 2)
  end
end
