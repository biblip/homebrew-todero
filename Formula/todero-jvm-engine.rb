class ToderoJvmEngine < Formula
  desc "Todero JVM reference engine"
  homepage "https://github.com/biblip/todero"
  url "https://github.com/biblip/todero/releases/download/v0.1.29/todero-jvm-engine-0.1.29.tar.gz"
  sha256 "528abd358b3e57e1ede39e8d7f4feb5e48ba40e37698cfa1d4663bbb5b8c1e0d"
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
