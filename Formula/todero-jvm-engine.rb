class ToderoJvmEngine < Formula
  desc "Todero JVM reference engine"
  homepage "https://github.com/biblip/todero"
  url "https://brew.social100.com/brew/todero-jvm-engine-0.1.51.tar.gz"
  sha256 "11bfed8860374e2b0757f28e062a9a754a3c014a4d508602533c3fd7e30fc5ab"
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
