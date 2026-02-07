class ToderoJvmEngine < Formula
  desc "Todero JVM reference engine"
  homepage "https://github.com/biblip/todero"
  url "https://brew.social100.com/brew/todero-jvm-engine-0.1.52.tar.gz"
  sha256 "8eb5d92326f6c72df6b7148c53329a4e8922ca2a1b2a444fdf21153868ce9fe6"
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
