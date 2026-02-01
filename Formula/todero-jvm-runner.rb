class ToderoJvmRunner < Formula
  desc "Todero component runner"
  homepage "https://github.com/biblip/todero"
  url "https://github.com/biblip/todero/releases/download/v0.1.45/todero-jvm-runner-0.1.45.tar.gz"
  sha256 "f664648df5cb7cd7ce9266b4b6116126b307326d2e39e3459091eb6801222cfd"
  license "Apache-2.0"
  depends_on "openjdk@17"

  def install
    libexec.install Dir["libexec/*"]
    bin.install Dir["bin/*"]
  end

  test do
    system "#{bin}/todero-runner", "--help"
  end
end
