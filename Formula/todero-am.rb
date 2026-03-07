class ToderoAm < Formula
  desc "Todero Artifact Manager CLI"
  homepage "https://github.com/shellaia/todero-artifact-repository-manager"
  version "0.0.18"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://brew.social100.com/todero-am/channels/stable/tarballs/todero-am_0.0.18_darwin_arm64.tar.gz"
      sha256 "2fa64ff55ac516b70b03df74df61ff0f251fbc21d1dd56f6d29b7e53d8d61633"
    else
      url "https://brew.social100.com/todero-am/channels/stable/tarballs/todero-am_0.0.18_darwin_amd64.tar.gz"
      sha256 "777f43b758ceaa0b89ed80be6e794dd9a492f3ac09d355d57d0a4979ce141c2c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://brew.social100.com/todero-am/channels/stable/tarballs/todero-am_0.0.18_linux_arm64.tar.gz"
      sha256 "73281f2e82956527df5da6470ce79190721914a00f65b62afd092061d0482c49"
    else
      url "https://brew.social100.com/todero-am/channels/stable/tarballs/todero-am_0.0.18_linux_amd64.tar.gz"
      sha256 "c96be880d1c67c39ca76bce56e4b1568e6ed51516b6746af833d49044e05935b"
    end
  end

  def install
    bin.install "todero-am"
  end

  test do
    assert_match "todero-artifact-manager", shell_output("#{bin}/todero-am --help 2>&1", 2)
  end
end
