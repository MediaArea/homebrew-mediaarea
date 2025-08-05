class FfmpegMa < Formula
  desc "FFmpeg binaries with MediaArea's patches"
  homepage "https://github.com/MediaArea/ffmpeg-ma-patch"
  url "https://ffmpeg.org/releases/ffmpeg-7.1.1.tar.xz"
  sha256 "733984395e0dbbe5c046abda2dc49a5544e7e0e1e2366bba849222ae9e3a03b1"
  head "git://git.ffmpeg.org/ffmpeg.git", branch: "master"

  livecheck do
    url "https://ffmpeg.org/download.html"
    regex(/href=.*?ffmpeg[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end

  option "with-iec61883", "Enable DV device (Linux)" if OS.linux?

  depends_on "pkgconf" => :build
  depends_on "freetype"
  depends_on "harfbuzz"
  depends_on "openh264"
  depends_on "sdl2"
  depends_on "shaderc"
  depends_on "vulkan-headers"

  uses_from_macos "zlib"

  on_intel do
    depends_on "nasm" => :build
  end

  patch do
    url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/eb736d062433c4220b18815a36c108a452274223/0001-EXR_consider_float16_as_uint16.patch"
    sha256 "22eeefe6fb84326ecc84caf3ac949287592d46c2332bd8891423b2f505b0b104"
  end

  patch do
    url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/eb736d062433c4220b18815a36c108a452274223/0002-libavcodec-flacenc-force-32-bit-output-for-32-bit-in.patch"
    sha256 "713c924fe0b8809912887982c76ca4e32c9d928949f728957bf56e862e572d6e"
  end

  patch do
    url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/eb736d062433c4220b18815a36c108a452274223/0003-matroskadec-enc-support-of-TimeCodeXml-input-add-mk-.patch"
    sha256 "82c56121ace8c35d5e7d0fb0a9b41b49b27d86ef53d995abd046a14f95d8d2e2"
  end

  patch do
    url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/eb736d062433c4220b18815a36c108a452274223/0004-avcodec-jpeg2000dec-support-of-2-fields-in-1-AVPacke.patch"
    sha256 "2901a5367e1882e4f0415b9b81049a06c240dfc642920426e6e691ab0cfd7fc1"
  end

  patch do
    url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/eb736d062433c4220b18815a36c108a452274223/0006-avformat-add-DAT-demuxer.patch"
    sha256 "2f19a29f7fa828d8c73aaf10f99a3daf7bbad0f4a8ec15b30463848d367bb514"
  end

  patch do
    url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/eb736d062433c4220b18815a36c108a452274223/0007-configure-evaluate-toolchain-to-determine-suffix.patch"
    sha256 "2e6beada9cb915be7d920aae0f9e1277415acdaa3652ec8f17e7df0afe2c36d2"
  end

  patch do
    url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/eb736d062433c4220b18815a36c108a452274223/0008-DeckLinkSDK-12.4.2-public-headers.patch"
    sha256 "4145f0d358660b7ad8427b549a7724a9df69e845e47c8792ee1eda4d5e2f548a"
  end

  def install
    args = %W[
      --progs-suffix=-ma
      --prefix=#{prefix}
      --disable-autodetect
      --disable-debug
      --disable-shared
      --enable-static
      --enable-pthreads
      --enable-libfreetype
      --enable-libharfbuzz
      --enable-libopenh264
      --enable-vulkan
      --enable-libshaderc
      --enable-decklink
      --enable-zlib
      --enable-sdl2
      --enable-ffplay
    ]

    args << "--enable-neon" if Hardware::CPU.arm?
    args << "--enable-videotoolbox" if OS.mac?
    args << "--enable-audiotoolbox" if OS.mac?
    args << "--extra-cflags=-IDeckLinkSDK/Mac/include" if OS.mac?
    args << "--extra-cflags=-IDeckLinkSDK/Linux/include" if OS.linux?
    args << "--enable-libiec61883" if (build.with? "iec61883") && OS.linux?

    system "./configure", *args
    # Remove this file, CFLAGS contains -I. and its confused with the C++ <version> standard header
    rm "version" if File.file?("version")
    system "make"

    bin.install buildpath.children.select { |f| f.file? && f.executable? && f.basename.to_s.end_with?("-ma") }
  end

  test do
    # Create an example mp4 file
    mp4out = testpath/"video.mp4"
    system bin/"ffmpeg-ma", "-filter_complex", "testsrc=rate=1:duration=1", mp4out
    assert_path_exists mp4out
  end
end
