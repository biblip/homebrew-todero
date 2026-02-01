class Todero < Formula
  desc "Todero CLI, server, and admin tools"
  homepage "https://github.com/biblip/todero"
  url "https://github.com/biblip/todero/releases/download/v0.1.37/todero-0.1.37.tar.gz"
  sha256 "b6e7d13bece43df1b254afc67b9efcdf7d4fa0e142b57d4df04f7a47c1fe8e55"
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
