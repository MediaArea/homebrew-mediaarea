class BwfmetaeditGui < Formula
  desc "Embed, validate and export Broadcast WAVE Format (BWF) metadata"
  homepage "https://mediaarea.net/BWFMetaEdit"
  url "https://mediaarea.net/download/binary/bwfmetaedit-gui/26.08.1/BWFMetaEdit_GUI_26.08.1_GNU_FromSource.tar.xz"
  sha256 "d89c6c6aac1ae344f7f7910603591351f2a9e5b50e9468f2c945f296ff77f334"

  depends_on "rust" => :build
  depends_on "qt"

  def install
    dylib = buildpath/"Source/ThirdParty/c2pa-rs/target/release/libc2pa_c.dylib"
    cd "Source/ThirdParty/c2pa-rs" do
      system "cargo", "build", "--release", "--lib", "--locked", "-p", "c2pa-c-ffi",
             "--no-default-features", "--features", "rust_native_crypto, http, file_io"

      MachO::Tools.change_dylib_id(dylib, "@rpath/libc2pa_c.dylib")
      MachO.codesign!(dylib) if Hardware::CPU.arm?
    end

    cd "Project/QtCreator" do
      system "#{Formula["qt"].bin}/qmake", "ENABLE_C2PA=dynamic",
             "-after", "QMAKE_APPLE_DEVICE_ARCHS=#{Hardware::CPU.arch}"
      system "make"

      frameworks = Pathname.pwd/"BWF MetaEdit.app/Contents/Frameworks"
      frameworks.mkpath
      cp dylib, frameworks/"libc2pa_c.dylib"

      prefix.install "BWF MetaEdit.app"

      bin.mkpath
      ln_s "#{prefix}/BWF MetaEdit.app/Contents/MacOS/BWF MetaEdit", bin/"bwfmetaedit-gui"
    end
  end

  test do
    assert_path_exists bin/"bwfmetaedit-gui"
    assert_path_exists prefix/"BWF MetaEdit.app/Contents/Frameworks/libc2pa_c.dylib"
  end
end
