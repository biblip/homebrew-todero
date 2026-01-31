class ToderoJvmRunner < Formula
  desc "Todero component runner"
  homepage "https://github.com/biblip/todero"
  url "https://github.com/biblip/todero/releases/download/v0.1.26/todero-jvm-runner-0.1.26.tar.gz"
  sha256 "4fe9ccf8aed10f7c004ef69fc11657cfd4d00f781123a1562297c56100e67d28"
  license "Apache-2.0"
  depends_on "openjdk@17"

  def install
    libexec.install Dir["libexec/*"]
    bin.install Dir["bin/*"]
  end

  test do
    system "#{bin}/todero-jvm-runner", "--help"
  end
end
