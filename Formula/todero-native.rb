class ToderoNative < Formula
  desc "Todero native protocol runtime library"
  homepage "https://github.com/biblip/todero"
  url "https://brew.social100.com/brew/todero-native-0.1.67.tar.gz"
  sha256 "f5c43ab15429eb8f833b0c596f1c0b7d93d94fe6bafaaa57f75b18e0f1c5205b"
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
