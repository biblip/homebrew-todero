class Todero < Formula
  desc "Todero CLI, server, and admin tools"
  homepage "https://github.com/biblip/todero"
  url "https://brew.social100.com/todero/channels/stable/todero-0.1.105.tar.gz"
  sha256 "5b5b8cf1a7763dc4802f1736360d7f2b33e22f9baa19e14ab48a71140e7f7a2f"
  license "Apache-2.0"
  depends_on "openjdk@17"
  uses_from_macos "unzip"
  depends_on "unzip" if OS.linux?

  def install
    libexec.install Dir["libexec/*"]
    bin.install Dir["bin/*"]
    if Dir.exist?("usr/share")
      share.install Dir["usr/share/*"]
    end
  end

  def post_install
    templates_src = libexec/"scripts/templates"
    templates_dst = Pathname.new(Dir.home)/".todero/etc/templates"
    return unless templates_src.directory?
    templates_dst.mkpath
    cp_r templates_src.children, templates_dst
  end

  test do
    system "#{bin}/todero", "--help"
  end
end
