class Todero < Formula
  desc "Todero CLI, server, and admin tools"
  homepage "https://github.com/biblip/todero"
  url "https://github.com/biblip/todero/releases/download/v0.1.41/todero-0.1.41.tar.gz"
  sha256 "b860e7c29162004ab79380756494964bf496c0482ffc7fd44725d61746cb81ef"
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
