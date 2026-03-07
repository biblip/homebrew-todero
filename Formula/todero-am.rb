class ToderoAm < Formula
  desc "Todero Artifact Manager CLI"
  homepage "https://github.com/shellaia/todero-artifact-repository-manager"
  version "0.0.17"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://brew.social100.com/todero-am/channels/stable/tarballs/todero-am_0.0.17_darwin_arm64.tar.gz"
      sha256 "5a9e59bf75b63aa783a131a57620af9f260e2752add5998c9e30ee3d5378c421"
    else
      url "https://brew.social100.com/todero-am/channels/stable/tarballs/todero-am_0.0.17_darwin_amd64.tar.gz"
      sha256 "26dd7818daaaf87390a75292d8d8ec02dbd5318770fa0fd60ba043503e3a2724"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://brew.social100.com/todero-am/channels/stable/tarballs/todero-am_0.0.17_linux_arm64.tar.gz"
      sha256 "213d712cd819692c967035b226ca0af2d4190702872e26ad1786226dcbfc9023"
    else
      url "https://brew.social100.com/todero-am/channels/stable/tarballs/todero-am_0.0.17_linux_amd64.tar.gz"
      sha256 "96061ef49314a8e8d3c6b780a7506d6e98e13b9b6615dd900e0fe161fcbc4499"
    end
  end

  def install
    bin.install "todero-am"
  end

  test do
    assert_match "todero-artifact-manager", shell_output("#{bin}/todero-am --help 2>&1", 2)
  end
end
