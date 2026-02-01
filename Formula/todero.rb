class Todero < Formula
  desc "Todero CLI, server, and admin tools"
  homepage "https://github.com/biblip/todero"
  url "https://github.com/biblip/todero/releases/download/v0.1.42/todero-0.1.42.tar.gz"
  sha256 "c9daf910a286cb8f39e018763fbe5b3b3a0266694f2b0922a9caaf9bf0c9df43"
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
