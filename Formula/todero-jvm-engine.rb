class ToderoJvmEngine < Formula
  desc "Todero JVM reference engine"
  homepage "https://github.com/biblip/todero"
  url "https://github.com/biblip/todero/releases/download/v0.1.40/todero-jvm-engine-0.1.40.tar.gz"
  sha256 "e88f6d62f4abbdcf6dc458a5c56d8c0f259388cb5db60ccd1b8bbf81367e14db"
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
