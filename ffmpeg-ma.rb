class FfmpegMa < Formula
  desc "FFmpeg binaries with MediaArea's patches"
  homepage "https://github.com/MediaArea/ffmpeg-ma-patch"
  revision 7

  stable do
    url "https://ffmpeg.org/releases/ffmpeg-8.1.1.tar.xz"
    sha256 "b6863adde98898f42602017462871b5f6333e65aec803fdd7a6308639c52edf3"

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/3d31b95dbd2893864346bc014108aff50b2cc800/0001-EXR_consider_float16_as_uint16.patch"
      sha256 "e0387e4237ebd997336506b6b3a58c3827a64871e7bbaf17f5993d9858847a18"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/3d31b95dbd2893864346bc014108aff50b2cc800/0002-libavcodec-flacenc-force-32-bit-output-for-32-bit-in.patch"
      sha256 "83871729ade1b3fc998d487e27cc60d2ab5a42d8421917f2b2354148ab438392"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/3d31b95dbd2893864346bc014108aff50b2cc800/0003-avcodec-jpeg2000dec-support-of-2-fields-in-1-AVPacke.patch"
      sha256 "cf9506c7a0dc92cf7858b3f877934959ea170ea880d71adfcf91dbaea2392e8d"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/3d31b95dbd2893864346bc014108aff50b2cc800/0004-avcodec-dpx-Fix-B-W-film-scans-from-DIAMANT-Film.patch"
      sha256 "326abad5d394cf157798953166a7331ab58b48dd532ae4d2ca6b583094e1d31a"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/3d31b95dbd2893864346bc014108aff50b2cc800/0005-configure-evaluate-toolchain-to-determine-suffix.patch"
      sha256 "7246ead5449673a5b84b1a974358db1298cdc3e13d4e30aa8ae7e87ced83827a"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/3d31b95dbd2893864346bc014108aff50b2cc800/0006-DeckLink-SDK-15.3-public-headers.patch"
      sha256 "266a508fc5a75b768228f947db2a5b7ba4f91b108180792714e23d280d0df444"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/3d31b95dbd2893864346bc014108aff50b2cc800/0007-matroskaenc-remove-unused-MaxBlockAdditionID.patch"
      sha256 "73cf5cfd1cf38885b5e4dfaa49fb8f0c527caead177ec5307b21df6b949c96a7"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/3d31b95dbd2893864346bc014108aff50b2cc800/0008-matroskaenc-reserve_video_track_space-option.patch"
      sha256 "e5efdd894bb9af306c4ef04e5e57280dc8fde7da01fd9d2b74dd1e1f39290fdc"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/3d31b95dbd2893864346bc014108aff50b2cc800/0009-matroskaenc-increase-default-for-reserved-bytes-in-v.patch"
      sha256 "8b620ba200fe0b53c559600a7e5a31e706b38d34aa68d0fdae4674674a08b09e"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/3d31b95dbd2893864346bc014108aff50b2cc800/0010-32-bit-timecode-to-64-bit-RFC-5484-timecode-function.patch"
      sha256 "ef48a139b1e9d34d58c62d23a8e5320330b9af0bb4a55d795263d3c67ef7e06e"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/3d31b95dbd2893864346bc014108aff50b2cc800/0011-decklink_dec-store-timecode-in-64-bit-RFC-5484-forma.patch"
      sha256 "564c2b7079fef576f522f394a8b45f205970642395c56533e006fa1db8bac7d0"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/3d31b95dbd2893864346bc014108aff50b2cc800/0012-matroskadec-read-timecode-in-BlockAddition.patch"
      sha256 "c36b909e5dfeac34f1e9bdd7973d1b0490462d3dc15f6ac84ee026c796849131"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/3d31b95dbd2893864346bc014108aff50b2cc800/0013-matroskaenc-write-timecode-in-BlockAddition.patch"
      sha256 "d2c3e063f0edb7d964d9958eac5fbac88f64492c0b2fca605d7e488964e4695c"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/3d31b95dbd2893864346bc014108aff50b2cc800/0014-mux-keep-AV_PKT_DATA_S12M_TIMECODE-during-transcode.patch"
      sha256 "9be10ace9b7f968cc4cdccc7e7b303b4ee059702e00958c7aaa9c8153c03898d"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/3d31b95dbd2893864346bc014108aff50b2cc800/0015-decklink_dec-support-readout-of-all-timecodes.patch"
      sha256 "79af0a6c07e25ca0e04fe01f382ce9c9e292a59bf8096122a7afbbc9e98ff90f"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/3d31b95dbd2893864346bc014108aff50b2cc800/0016-decklink-fix-missing-IID_IUnknown.patch"
      sha256 "8c20db91a8ceaa08662bf45ad1dbdaf093f0ae9f3235b3e85604470695f957e6"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/3d31b95dbd2893864346bc014108aff50b2cc800/0017-matroskadec-enc-support-of-TimeCodeXml-input.patch"
      sha256 "1e47b627219ac05c64dcd93cc7f7eeab03cda2eb6e43b99e3b622a2415757e19"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/3d31b95dbd2893864346bc014108aff50b2cc800/0018-decklink_dec-support-of-timecode-also-with-multiple-.patch"
      sha256 "3300ffd6f11e02aa1fac81e372a9f3936991b383087d07443a3197fd2ed4656b"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/3d31b95dbd2893864346bc014108aff50b2cc800/0019-decklink_dec-support-labels.patch"
      sha256 "392063537b55972eeb94b537e9b978562ce7c204580c6d9c0ed0a3cba727dbd4"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/3d31b95dbd2893864346bc014108aff50b2cc800/0020-avformat-add-DAT-demuxer.patch"
      sha256 "7408437bbb33505e4c37a17c04d2ed9585e21ad6392d7687e434a4330a8d6f2c"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/3d31b95dbd2893864346bc014108aff50b2cc800/0021-Add-a-helper-message-when-the-Vulkan-wrapper-is-not-.patch"
      sha256 "0fcb8b6d035f80073b45706e1636bd5ed10440aee194c9018d6b6f06720430ff"
    end
  end

  livecheck do
    url "https://ffmpeg.org/download.html"
    regex(/href=.*?ffmpeg[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end

  head do
    url "git://git.ffmpeg.org/ffmpeg.git", branch: "master"

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/aa2963ff5d377322c2f1690e6a3e1e9c67a7dd06/0001-EXR_consider_float16_as_uint16.patch"
      sha256 "e0387e4237ebd997336506b6b3a58c3827a64871e7bbaf17f5993d9858847a18"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/aa2963ff5d377322c2f1690e6a3e1e9c67a7dd06/0002-libavcodec-flacenc-force-32-bit-output-for-32-bit-in.patch"
      sha256 "83871729ade1b3fc998d487e27cc60d2ab5a42d8421917f2b2354148ab438392"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/aa2963ff5d377322c2f1690e6a3e1e9c67a7dd06/0003-avcodec-jpeg2000dec-support-of-2-fields-in-1-AVPacke.patch"
      sha256 "cf9506c7a0dc92cf7858b3f877934959ea170ea880d71adfcf91dbaea2392e8d"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/aa2963ff5d377322c2f1690e6a3e1e9c67a7dd06/0004-avcodec-dpx-Fix-B-W-film-scans-from-DIAMANT-Film.patch"
      sha256 "326abad5d394cf157798953166a7331ab58b48dd532ae4d2ca6b583094e1d31a"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/aa2963ff5d377322c2f1690e6a3e1e9c67a7dd06/0005-configure-evaluate-toolchain-to-determine-suffix.patch"
      sha256 "7246ead5449673a5b84b1a974358db1298cdc3e13d4e30aa8ae7e87ced83827a"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/aa2963ff5d377322c2f1690e6a3e1e9c67a7dd06/0006-DeckLink-SDK-15.3-public-headers.patch"
      sha256 "266a508fc5a75b768228f947db2a5b7ba4f91b108180792714e23d280d0df444"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/aa2963ff5d377322c2f1690e6a3e1e9c67a7dd06/0007-matroskaenc-remove-unused-MaxBlockAdditionID.patch"
      sha256 "73cf5cfd1cf38885b5e4dfaa49fb8f0c527caead177ec5307b21df6b949c96a7"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/aa2963ff5d377322c2f1690e6a3e1e9c67a7dd06/0008-matroskaenc-reserve_video_track_space-option.patch"
      sha256 "c4094b052f13342c56f243ec65f400013d557965046d37cd10118fb635789b26"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/aa2963ff5d377322c2f1690e6a3e1e9c67a7dd06/0009-matroskaenc-increase-default-for-reserved-bytes-in-v.patch"
      sha256 "8b620ba200fe0b53c559600a7e5a31e706b38d34aa68d0fdae4674674a08b09e"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/aa2963ff5d377322c2f1690e6a3e1e9c67a7dd06/0010-32-bit-timecode-to-64-bit-RFC-5484-timecode-function.patch"
      sha256 "ef48a139b1e9d34d58c62d23a8e5320330b9af0bb4a55d795263d3c67ef7e06e"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/aa2963ff5d377322c2f1690e6a3e1e9c67a7dd06/0011-decklink_dec-store-timecode-in-64-bit-RFC-5484-forma.patch"
      sha256 "564c2b7079fef576f522f394a8b45f205970642395c56533e006fa1db8bac7d0"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/aa2963ff5d377322c2f1690e6a3e1e9c67a7dd06/0012-matroskadec-read-timecode-in-BlockAddition.patch"
      sha256 "3478aab8f678885653a1ede23f08d77520db275c413932e5e90fe7ff13a923cc"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/aa2963ff5d377322c2f1690e6a3e1e9c67a7dd06/0013-matroskaenc-write-timecode-in-BlockAddition.patch"
      sha256 "a283c4194b99baf99ea12d6045d8e679956a712ea042b743199f8e44f544c65e"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/aa2963ff5d377322c2f1690e6a3e1e9c67a7dd06/0014-mux-keep-AV_PKT_DATA_S12M_TIMECODE-during-transcode.patch"
      sha256 "9be10ace9b7f968cc4cdccc7e7b303b4ee059702e00958c7aaa9c8153c03898d"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/aa2963ff5d377322c2f1690e6a3e1e9c67a7dd06/0015-decklink_dec-support-readout-of-all-timecodes.patch"
      sha256 "79af0a6c07e25ca0e04fe01f382ce9c9e292a59bf8096122a7afbbc9e98ff90f"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/aa2963ff5d377322c2f1690e6a3e1e9c67a7dd06/0016-decklink-fix-missing-IID_IUnknown.patch"
      sha256 "8c20db91a8ceaa08662bf45ad1dbdaf093f0ae9f3235b3e85604470695f957e6"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/aa2963ff5d377322c2f1690e6a3e1e9c67a7dd06/0017-matroskadec-enc-support-of-TimeCodeXml-input.patch"
      sha256 "1e47b627219ac05c64dcd93cc7f7eeab03cda2eb6e43b99e3b622a2415757e19"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/aa2963ff5d377322c2f1690e6a3e1e9c67a7dd06/0018-decklink_dec-support-of-timecode-also-with-multiple-.patch"
      sha256 "3300ffd6f11e02aa1fac81e372a9f3936991b383087d07443a3197fd2ed4656b"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/aa2963ff5d377322c2f1690e6a3e1e9c67a7dd06/0019-decklink_dec-support-labels.patch"
      sha256 "5eb1f98925cbfd74adb57d680d3569b78cef57b2b2efe309e71fb9173e2b8a3a"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/aa2963ff5d377322c2f1690e6a3e1e9c67a7dd06/0020-avformat-add-DAT-demuxer.patch"
      sha256 "7408437bbb33505e4c37a17c04d2ed9585e21ad6392d7687e434a4330a8d6f2c"
    end
  end

  option "with-iec61883", "Enable DV device (Linux)" if OS.linux?

  depends_on "pkgconf" => :build
  depends_on "freetype"
  depends_on "harfbuzz"
  depends_on "libass"
  depends_on "openh264"
  depends_on "sdl2-compat"
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
      --enable-libass
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
