class ToderoNative < Formula
  desc "Todero Protocol V3 native runtime library"
  homepage "https://shellaia.com"
  version "0.0.29"
  url "https://brew.social100.com/todero-native/channels/stable/todero-native-darwin-aarch64-0.0.29.tar.gz"
  sha256 "536c13b377ba67325b138a14cf5acb590ba49b06d1287c34723454b345b7f5ff"

  depends_on arch: :arm64

  def install
    source_dir = buildpath/"darwin-aarch64"
    odie "missing native payload directory: #{source_dir}" unless source_dir.directory?

    native_dir = libexec/"native/darwin-aarch64"
    native_dir.mkpath
    native_dir.install source_dir.children
    ln_sf "darwin-aarch64", libexec/"native/current"

    (bin/"tninfo").write <<~EOS
      #!/usr/bin/env bash
      set -euo pipefail
      if [[ "${1:-}" != "--libdir" ]]; then
        echo "usage: tninfo --libdir" >&2
        exit 2
      fi
      echo "#{libexec}/native/current"
    EOS
  end

  def caveats
    <<~EOS
      Set TODERO_V3_NATIVE_PATH to use this native runtime:
        export TODERO_V3_NATIVE_PATH="#{libexec}/native/current"
    EOS
  end

  test do
    assert_match "native/current", shell_output("#{bin}/tninfo --libdir")
  end
end
