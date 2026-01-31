class Todero < Formula
  desc "Todero CLI, server, and admin tools"
  homepage "https://github.com/biblip/todero"
  url "https://github.com/biblip/todero/releases/download/v0.1.27/todero-0.1.27.tar.gz"
  sha256 "f3a702de9268c7db910c496f01930f6191653fb4c7278bb18d37173181bddd89"
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
