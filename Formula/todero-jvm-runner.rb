class ToderoJvmRunner < Formula
  desc "Todero component runner"
  homepage "https://github.com/biblip/todero"
  url "https://github.com/biblip/todero/releases/download/v0.1.37/todero-jvm-runner-0.1.37.tar.gz"
  sha256 "5dbfa56b16e690c62e584cdd79c5b2e4ab5b1a888ccd0144dfdf0d49efb3d0aa"
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
