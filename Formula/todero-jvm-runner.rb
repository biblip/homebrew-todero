class ToderoJvmRunner < Formula
  desc "Todero component runner"
  homepage "https://github.com/biblip/todero"
  url "https://github.com/biblip/todero/releases/download/v0.1.42/todero-jvm-runner-0.1.42.tar.gz"
  sha256 "e0a01a21a8ce827a0de9b5d09fa8b536bbf22d8a2744f330de4f1516eec7fb0a"
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
