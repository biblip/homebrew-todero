class ToderoJvmRunner < Formula
  desc "Todero component runner"
  homepage "https://github.com/biblip/todero"
  url "https://github.com/biblip/todero/releases/download/v0.1.40/todero-jvm-runner-0.1.40.tar.gz"
  sha256 "26e11d592f8904f928c8d255dc174c1152074e9f7d74b18bdbd9a98b58ea2e48"
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
