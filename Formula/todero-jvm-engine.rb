class ToderoJvmEngine < Formula
  desc "Todero JVM reference engine"
  homepage "https://github.com/biblip/todero"
  url "https://github.com/biblip/todero/releases/download/v0.1.28/todero-jvm-engine-0.1.28.tar.gz"
  sha256 "50b8b207b1e3edbf34afaa3a0ba45b1070a29ba50a16dda8aaf7389f0ce57a8d"
  license "Apache-2.0"
  depends_on "openjdk@17"

  def install
    libexec.install Dir["libexec/*"]
    bin.install Dir["bin/*"]
  end

  test do
    system "#{bin}/todero-jvm-engine", "--help"
  end
end
