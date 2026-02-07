class Todero < Formula
  desc "Todero CLI, server, and admin tools"
  homepage "https://github.com/biblip/todero"
  url "https://brew.social100.com/brew/todero-0.1.50.tar.gz"
  sha256 "0a95b73922e578b68cea08b76544f1b4df11a40f45b53afd1b2c2994691dba33"
  license "Apache-2.0"
  depends_on "openjdk@17"

  def install
    libexec.install Dir["libexec/*"]
    bin.install Dir["bin/*"]
  end

  test do
    system "#{bin}/todero", "--help"
  end
end
