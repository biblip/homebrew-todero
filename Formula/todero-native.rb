class ToderoNative < Formula
  desc "Todero native protocol runtime library"
  homepage "https://github.com/biblip/todero"
  url "https://brew.social100.com/brew/todero-native-0.1.68.tar.gz"
  sha256 "0e325cdfd640c0c8f8e24c970e9b49418b6a7c66aa66a39eec6ee118e05731b6"
  license "Apache-2.0"


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
    system "#{bin}/todero-native-info", "--help"
  end
end
