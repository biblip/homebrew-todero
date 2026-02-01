class ToderoJvmEngine < Formula
  desc "Todero JVM reference engine"
  homepage "https://github.com/biblip/todero"
  url "https://github.com/biblip/todero/releases/download/v0.1.37/todero-jvm-engine-0.1.37.tar.gz"
  sha256 "386425bdc9dde033b99f6ad4246c13e374f8d0253b44d9cdee25685b878a6618"
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
