class ToderoJvmRunner < Formula
  desc "Todero component runner"
  homepage "https://github.com/biblip/todero"
  url "https://github.com/biblip/todero/releases/download/v0.1.28/todero-jvm-runner-0.1.28.tar.gz"
  sha256 "e40f6f8cb14b358761393d37e2bf3a39561b1a8f28f1eadd859217ba1bdb58f8"
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
