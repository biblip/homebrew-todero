class ToderoAm < Formula
  desc "Todero Artifact Manager CLI"
  homepage "https://github.com/shellaia/todero-artifact-repository-manager"
  version "0.0.22"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://brew.social100.com/todero-am/channels/stable/tarballs/todero-am_0.0.22_darwin_arm64.tar.gz"
      sha256 "a740fa13ebecd09424ec12c1ab632461cd92074e63281804ff737b23de0fad69"
    else
      url "https://brew.social100.com/todero-am/channels/stable/tarballs/todero-am_0.0.22_darwin_amd64.tar.gz"
      sha256 "ef5948286181340010f53584497d22aea22d2ca3c0b5237feb8a7a8e877de94e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://brew.social100.com/todero-am/channels/stable/tarballs/todero-am_0.0.22_linux_arm64.tar.gz"
      sha256 "3966843e9a3f11ab897c4caaafb52bc21bc71453918e6d073b267be2620b705f"
    else
      url "https://brew.social100.com/todero-am/channels/stable/tarballs/todero-am_0.0.22_linux_amd64.tar.gz"
      sha256 "2cbc1db473e301265d9dd641620827a4f200035f5c61fb7a919eeb8f0aefd220"
    end
  end

  def install
    bin.install "todero-am"
  end

  test do
    assert_match "todero-artifact-manager", shell_output("#{bin}/todero-am --help 2>&1", 2)
  end
end
