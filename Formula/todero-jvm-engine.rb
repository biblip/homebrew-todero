class ToderoJvmEngine < Formula
  desc "Todero JVM reference engine"
  homepage "https://github.com/biblip/todero"
  url "https://github.com/biblip/todero/releases/download/v0.1.42/todero-jvm-engine-0.1.42.tar.gz"
  sha256 "958927928380290ec61faea02bcb2112a8a3038d9e70dcc82f2d8504bd5e657e"
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
