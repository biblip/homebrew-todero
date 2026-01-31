class ToderoJvmRunner < Formula
  desc "Todero component runner"
  homepage "https://github.com/biblip/todero"
  url "https://github.com/biblip/todero/releases/download/v0.1.31/todero-jvm-runner-0.1.31.tar.gz"
  sha256 "419bc12b00eafbe6bfd938645e8e9b52cb9e38a728acfaf42f854cf04acb111e"
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
