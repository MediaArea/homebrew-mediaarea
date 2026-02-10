class FfmpegMa < Formula
  desc "FFmpeg binaries with MediaArea's patches"
  homepage "https://github.com/MediaArea/ffmpeg-ma-patch"
  revision 5

  stable do
    url "https://ffmpeg.org/releases/ffmpeg-8.0.tar.xz"
    sha256 "b2751fccb6cc4c77708113cd78b561059b6fa904b24162fa0be2d60273d27b8e"

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/8afd7ed31fbf773302a2c0c6be3c1a12b963036d/0000-libavdevice-decklink-add-support-for-DeckLink-SDK-14.patch"
      sha256 "8e14ffe76c93b69d6eb32c985a7a0eeee865e4119b3c553026cd2e68fa048c37"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/8afd7ed31fbf773302a2c0c6be3c1a12b963036d/0001-EXR_consider_float16_as_uint16.patch"
      sha256 "5549ebab36311b28d0e74a91dcde0ddf3bc3035b5b11671aa86ff911f8a59e38"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/8afd7ed31fbf773302a2c0c6be3c1a12b963036d/0002-libavcodec-flacenc-force-32-bit-output-for-32-bit-in.patch"
      sha256 "ab90e9c1e0c89d78daeaa77b3577eea8d8cf70974a16719b624b56fa6b929210"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/8afd7ed31fbf773302a2c0c6be3c1a12b963036d/0003-avcodec-jpeg2000dec-support-of-2-fields-in-1-AVPacke.patch"
      sha256 "7ba4aeeda6ddf3f9636c2be14298eb37f48666d032873bbea1e3212fc29e51f6"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/8afd7ed31fbf773302a2c0c6be3c1a12b963036d/0004-avcodec-dpx-Fix-B-W-film-scans-from-DIAMANT-Film.patch"
      sha256 "b14413717d6393f5b6dee66bc9ce6f5549d67fd15d3181ed79513ed2f6ee57be"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/8afd7ed31fbf773302a2c0c6be3c1a12b963036d/0005-configure-evaluate-toolchain-to-determine-suffix.patch"
      sha256 "3e85c05cbce1aa876cca91e4e5c325eca3d29ef3c26c0cbb735978ce7562537b"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/8afd7ed31fbf773302a2c0c6be3c1a12b963036d/0006-DeckLink-SDK-15.3-public-headers.patch"
      sha256 "e4f7c8a7ac75d3a4e1e36c87a7d0aa28bab2fcad06f441ae479c617f95ba9bbf"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/8afd7ed31fbf773302a2c0c6be3c1a12b963036d/0007-matroskaenc-remove-unused-MaxBlockAdditionID.patch"
      sha256 "070ac10b52f2c5de392638e0a41c1872e7028d37a466b07c7d46dca7424bfe7b"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/8afd7ed31fbf773302a2c0c6be3c1a12b963036d/0008-matroskaenc-reserve_video_track_space-option.patch"
      sha256 "41c1ae1480140ea01f233245b0f4d40a51277667fe9a96c204ad6fe962a2cc6a"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/8afd7ed31fbf773302a2c0c6be3c1a12b963036d/0009-matroskaenc-increase-default-for-reserved-bytes-in-v.patch"
      sha256 "4c45168ad06f752e0f51f111b7ff640a2fc6766aabd2fc207fe5c3739f6b907f"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/8afd7ed31fbf773302a2c0c6be3c1a12b963036d/0010-32-bit-timecode-to-64-bit-RFC-5484-timecode-function.patch"
      sha256 "bbfa499cdf5c61a544d5e53a55031545cd40a02e6f6019eb219407139c61fb27"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/8afd7ed31fbf773302a2c0c6be3c1a12b963036d/0011-decklink_dec-store-timecode-in-64-bit-RFC-5484-forma.patch"
      sha256 "8221ee2ec1c717d9251e01bbdf890ad6aa76c97086f70ec63a98119a586f4da3"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/8afd7ed31fbf773302a2c0c6be3c1a12b963036d/0012-matroskadec-read-timecode-in-BlockAddition.patch"
      sha256 "e821f11ccd5696197125fda29f6803f1a1a07e857174978997b9c4f4911a003b"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/8afd7ed31fbf773302a2c0c6be3c1a12b963036d/0013-matroskaenc-write-timecode-in-BlockAddition.patch"
      sha256 "9097ad16c59ea6d7ca6d38be79b34d6578405fdd0690b832cfb55826568e1c72"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/8afd7ed31fbf773302a2c0c6be3c1a12b963036d/0014-mux-keep-AV_PKT_DATA_S12M_TIMECODE-during-transcode.patch"
      sha256 "8bef14d13611614f6e2a6a68088ab21f16d8eb3eca9733e8f20eb5de5f512a16"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/8afd7ed31fbf773302a2c0c6be3c1a12b963036d/0015-decklink_dec-support-readout-of-all-timecodes.patch"
      sha256 "748bfe1398f34f5edde0b38082c6034d99a3002e43ec0ad63104d2d9a12bb087"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/8afd7ed31fbf773302a2c0c6be3c1a12b963036d/0016-matroskadec-enc-support-of-TimeCodeXml-input.patch"
      sha256 "98781f40ad99261e75c9ff3796e04caa0b4f8096bbb1da3c2632b5057bcab664"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/8afd7ed31fbf773302a2c0c6be3c1a12b963036d/0017-decklink_dec-support-of-timecode-also-with-multiple-.patch"
      sha256 "a02bafd57eaca2e8316b2176463affc277a46139184a9466c1775789da04e16a"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/8afd7ed31fbf773302a2c0c6be3c1a12b963036d/0018-decklink_dec-support-labels.patch"
      sha256 "0dcbdef6ead3beb26f22950802c29bcf522b2a736bca08e167ca9de7c7fa3d25"
    end
  end

  livecheck do
    url "https://ffmpeg.org/download.html"
    regex(/href=.*?ffmpeg[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end

  head do
    url "git://git.ffmpeg.org/ffmpeg.git", branch: "master"

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/d9bf14430b70133e201dae8783734eeea4af2d48/0001-EXR_consider_float16_as_uint16.patch"
      sha256 "e0387e4237ebd997336506b6b3a58c3827a64871e7bbaf17f5993d9858847a18"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/d9bf14430b70133e201dae8783734eeea4af2d48/0002-libavcodec-flacenc-force-32-bit-output-for-32-bit-in.patch"
      sha256 "83871729ade1b3fc998d487e27cc60d2ab5a42d8421917f2b2354148ab438392"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/d9bf14430b70133e201dae8783734eeea4af2d48/0003-avcodec-jpeg2000dec-support-of-2-fields-in-1-AVPacke.patch"
      sha256 "cf9506c7a0dc92cf7858b3f877934959ea170ea880d71adfcf91dbaea2392e8d"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/d9bf14430b70133e201dae8783734eeea4af2d48/0004-avcodec-dpx-Fix-B-W-film-scans-from-DIAMANT-Film.patch"
      sha256 "326abad5d394cf157798953166a7331ab58b48dd532ae4d2ca6b583094e1d31a"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/d9bf14430b70133e201dae8783734eeea4af2d48/0005-configure-evaluate-toolchain-to-determine-suffix.patch"
      sha256 "7246ead5449673a5b84b1a974358db1298cdc3e13d4e30aa8ae7e87ced83827a"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/d9bf14430b70133e201dae8783734eeea4af2d48/0006-DeckLink-SDK-15.3-public-headers.patch"
      sha256 "266a508fc5a75b768228f947db2a5b7ba4f91b108180792714e23d280d0df444"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/d9bf14430b70133e201dae8783734eeea4af2d48/0007-matroskaenc-remove-unused-MaxBlockAdditionID.patch"
      sha256 "73cf5cfd1cf38885b5e4dfaa49fb8f0c527caead177ec5307b21df6b949c96a7"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/d9bf14430b70133e201dae8783734eeea4af2d48/0008-matroskaenc-reserve_video_track_space-option.patch"
      sha256 "c4094b052f13342c56f243ec65f400013d557965046d37cd10118fb635789b26"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/d9bf14430b70133e201dae8783734eeea4af2d48/0009-matroskaenc-increase-default-for-reserved-bytes-in-v.patch"
      sha256 "8b620ba200fe0b53c559600a7e5a31e706b38d34aa68d0fdae4674674a08b09e"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/d9bf14430b70133e201dae8783734eeea4af2d48/0010-32-bit-timecode-to-64-bit-RFC-5484-timecode-function.patch"
      sha256 "ef48a139b1e9d34d58c62d23a8e5320330b9af0bb4a55d795263d3c67ef7e06e"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/d9bf14430b70133e201dae8783734eeea4af2d48/0011-decklink_dec-store-timecode-in-64-bit-RFC-5484-forma.patch"
      sha256 "564c2b7079fef576f522f394a8b45f205970642395c56533e006fa1db8bac7d0"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/d9bf14430b70133e201dae8783734eeea4af2d48/0012-matroskadec-read-timecode-in-BlockAddition.patch"
      sha256 "3478aab8f678885653a1ede23f08d77520db275c413932e5e90fe7ff13a923cc"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/d9bf14430b70133e201dae8783734eeea4af2d48/0013-matroskaenc-write-timecode-in-BlockAddition.patch"
      sha256 "a283c4194b99baf99ea12d6045d8e679956a712ea042b743199f8e44f544c65e"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/d9bf14430b70133e201dae8783734eeea4af2d48/0014-mux-keep-AV_PKT_DATA_S12M_TIMECODE-during-transcode.patch"
      sha256 "9be10ace9b7f968cc4cdccc7e7b303b4ee059702e00958c7aaa9c8153c03898d"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/d9bf14430b70133e201dae8783734eeea4af2d48/0015-decklink_dec-support-readout-of-all-timecodes.patch"
      sha256 "79af0a6c07e25ca0e04fe01f382ce9c9e292a59bf8096122a7afbbc9e98ff90f"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/d9bf14430b70133e201dae8783734eeea4af2d48/0016-decklink-fix-missing-IID_IUnknown.patch"
      sha256 "8c20db91a8ceaa08662bf45ad1dbdaf093f0ae9f3235b3e85604470695f957e6"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/d9bf14430b70133e201dae8783734eeea4af2d48/0017-matroskadec-enc-support-of-TimeCodeXml-input.patch"
      sha256 "1e47b627219ac05c64dcd93cc7f7eeab03cda2eb6e43b99e3b622a2415757e19"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/d9bf14430b70133e201dae8783734eeea4af2d48/0018-decklink_dec-support-of-timecode-also-with-multiple-.patch"
      sha256 "3300ffd6f11e02aa1fac81e372a9f3936991b383087d07443a3197fd2ed4656b"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/d9bf14430b70133e201dae8783734eeea4af2d48/0019-decklink_dec-support-labels.patch"
      sha256 "5eb1f98925cbfd74adb57d680d3569b78cef57b2b2efe309e71fb9173e2b8a3a"
    end
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

  on_linux do
    depends_on "alsa-lib"
  end

  on_intel do
    depends_on "nasm" => :build
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
    args << "--enable-avfoundation" if OS.mac?
    args << "--extra-cflags=-IDeckLinkSDK/Mac/include" if OS.mac?
    args << "--extra-cxxflags=-IDeckLinkSDK/Mac/include" if OS.mac?
    args << "--extra-cflags=-IDeckLinkSDK/Linux/include" if OS.linux?
    args << "--extra-cxxflags=-IDeckLinkSDK/Linux/include" if OS.linux?
    args << "--enable-alsa" if OS.linux?
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
