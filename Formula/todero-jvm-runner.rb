class ToderoJvmRunner < Formula
  desc "Todero component runner"
  homepage "https://github.com/biblip/todero"
  url "https://github.com/biblip/todero/releases/download/v0.1.27/todero-jvm-runner-0.1.27.tar.gz"
  sha256 "e2fbd42fb3276dcbe51fea56cce52bccddf4a6817b9de8fc519a67873c7143a7"
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
