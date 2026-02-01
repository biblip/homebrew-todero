class ToderoJvmRunner < Formula
  desc "Todero component runner"
  homepage "https://github.com/biblip/todero"
  url "https://github.com/biblip/todero/releases/download/v0.1.43/todero-jvm-runner-0.1.43.tar.gz"
  sha256 "1f52913a968f4a059a9bdbb0564809625d53dd55e5b7b1a51941c4ad8288f84f"
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
