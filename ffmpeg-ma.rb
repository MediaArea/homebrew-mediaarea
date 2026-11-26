class FfmpegMa < Formula
  desc "FFmpeg binaries with MediaArea's patches"
  homepage "https://github.com/MediaArea/ffmpeg-ma-patch"

  stable do
    url "https://ffmpeg.org/releases/ffmpeg-9.1.tar.xz"
    sha256 "1a4d394ae63d190a526cd052eb4415c156b5c5e2df37efab41a7de0b8fde2433"

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/e290acc4f55fb862a1074ebf3e9e094574a4ef40/0001-EXR_consider_float16_as_uint16.patch"
      sha256 "d49feec53ec58a10b58775e1616a079b92814806f35d96c98de7e33690410f9c"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/e290acc4f55fb862a1074ebf3e9e094574a4ef40/0002-libavcodec-flacenc-force-32-bit-output-for-32-bit-in.patch"
      sha256 "7e92b40c6d23be91997dc05e64ab7af592185fd8110aaf7edd34b1be939919e9"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/e290acc4f55fb862a1074ebf3e9e094574a4ef40/0003-avcodec-jpeg2000dec-support-of-2-fields-in-1-AVPacke.patch"
      sha256 "08d41d85861e3de7a7f231deaf4818bb1a61490a7c606691eb9ad2c529d4e75c"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/e290acc4f55fb862a1074ebf3e9e094574a4ef40/0004-avcodec-dpx-Fix-B-W-film-scans-from-DIAMANT-Film.patch"
      sha256 "3e40728ce52f781a5c373cf009efa8e59740ec7a1ce7b888829a886eae2e218f"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/e290acc4f55fb862a1074ebf3e9e094574a4ef40/0005-DeckLink-SDK-15.3-public-headers.patch"
      sha256 "fe3925bfb3978b8ed2892139f2b7b97ce2796d00a12587d0ac5866bb9b46e947"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/e290acc4f55fb862a1074ebf3e9e094574a4ef40/0006-matroskaenc-remove-unused-MaxBlockAdditionID.patch"
      sha256 "47643363f93627f756342cd5609d75d447d3815bb73521119fc243090aa9fafa"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/e290acc4f55fb862a1074ebf3e9e094574a4ef40/0007-matroskaenc-reserve_video_track_space-option.patch"
      sha256 "3368083fbafcc3971bc5cbc2061f4d14a22b7f5d7b07b7abeadbcbcc3f55dbec"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/e290acc4f55fb862a1074ebf3e9e094574a4ef40/0008-matroskaenc-increase-default-for-reserved-bytes-in-v.patch"
      sha256 "847df73634cd218692c3b85e01b5aae2c8a8343676ac38bf89a6dca319f89bdd"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/e290acc4f55fb862a1074ebf3e9e094574a4ef40/0009-32-bit-timecode-to-64-bit-RFC-5484-timecode-function.patch"
      sha256 "c1fccd52fb055a6247cc55cb41a3611be6bdf6f5c44430b69d717bfa60069d5b"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/e290acc4f55fb862a1074ebf3e9e094574a4ef40/0010-decklink_dec-store-timecode-in-64-bit-RFC-5484-forma.patch"
      sha256 "f7f2db16a49886b694f852dc6afe477ce7165e3d849c0d5ba246a3314cd8bf5c"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/e290acc4f55fb862a1074ebf3e9e094574a4ef40/0011-matroskadec-read-timecode-in-BlockAddition.patch"
      sha256 "6370dd26f055b7554fa20ac1c3d12f2d3d9be8724f815344e05a9dce6b1c84a8"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/e290acc4f55fb862a1074ebf3e9e094574a4ef40/0012-matroskaenc-write-timecode-in-BlockAddition.patch"
      sha256 "d0c7927d6521bca842a80f6c0ecddba6d7e1dda0ea97e1d458b726dc1b8431bd"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/e290acc4f55fb862a1074ebf3e9e094574a4ef40/0013-mux-keep-AV_PKT_DATA_S12M_TIMECODE-during-transcode.patch"
      sha256 "622ab66f99de186d4f3b5881a5b8ed7a5f4b1c543b760ca2c38f67eee4e106c8"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/e290acc4f55fb862a1074ebf3e9e094574a4ef40/0014-decklink_dec-support-readout-of-all-timecodes.patch"
      sha256 "f0a4e95af59840e61433f8676895c76e6cf99337bcc15a83794c28c097a078c0"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/e290acc4f55fb862a1074ebf3e9e094574a4ef40/0015-decklink-fix-missing-IID_IUnknown.patch"
      sha256 "4b2be26eda44692f234ba440ea6ab22fa4b820cdb79ebbb358e189784c870307"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/e290acc4f55fb862a1074ebf3e9e094574a4ef40/0016-matroskadec-enc-support-of-TimeCodeXml-input.patch"
      sha256 "fc20c9a23f27a81157f554b01d797ddeb1cf8f35b0b82de919bd7400b577101e"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/e290acc4f55fb862a1074ebf3e9e094574a4ef40/0017-decklink_dec-support-of-timecode-also-with-multiple-.patch"
      sha256 "c933935c595ffaf4a57307c07c0538c6c43d9d9c3dead1bc97090b8e5b6b99bc"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/e290acc4f55fb862a1074ebf3e9e094574a4ef40/0018-decklink_dec-support-labels.patch"
      sha256 "5e1108a8c8d75deeba2e3c8a558409a2b8684d90ac87ee2669664300b2643523"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/e290acc4f55fb862a1074ebf3e9e094574a4ef40/0019-avformat-add-DAT-demuxer.patch"
      sha256 "83014856fcfa48c643fd2d0670eba370ad7728591e2a8897d51833662cf1c477"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/e290acc4f55fb862a1074ebf3e9e094574a4ef40/0020-Add-a-helper-message-when-the-Vulkan-wrapper-is-not-.patch"
      sha256 "ee14dc3fa37e3c45dacb3232183499059385cc8266f716971c7dc42ef7aa2d76"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/e290acc4f55fb862a1074ebf3e9e094574a4ef40/0021-Allow-building-with-decklink-support-and-gpl-compone.patch"
      sha256 "b6429e7885cd3a5379883327554f9a02dfe86476904df9a6f536873e83fc645e"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/e290acc4f55fb862a1074ebf3e9e094574a4ef40/0022-hwcontext_vulkan-Use-HIC-only-for-host-cached-data.patch"
      sha256 "c8bbec9e04cb5bf322c08b1323a5f47ae435fd00c1f283febbb6b131fb299f23"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/e290acc4f55fb862a1074ebf3e9e094574a4ef40/0023-FFv1-vulkan-RGB-encoder.patch"
      sha256 "2bac26255b029994c67d05d7445700b86f7896a341fe39a2d394fa69647f94d7"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/e290acc4f55fb862a1074ebf3e9e094574a4ef40/0024-Set-KosmicKrisp-Vulkan-driver-for-macOS-tools.patch"
      sha256 "ddee055058ae90ad7459b9c541431f14693e5910484b2829a6a7bdab698bc15e"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/e290acc4f55fb862a1074ebf3e9e094574a4ef40/0025-avcodec-tiff-support-6-10-and-14-bit-gray-2-4-6-10-1.patch"
      sha256 "554e4bb7e419af21d46e3b2c0fbd1b5cf567207ff3224889f57f838a57fd889d"
    end
  end

  livecheck do
    url "https://ffmpeg.org/download.html"
    regex(/href=.*?ffmpeg[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end

  head do
    url "git://git.ffmpeg.org/ffmpeg.git", branch: "master"

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/c3c6e824787105228598b60d9ce32689d5ba7f15/0001-EXR_consider_float16_as_uint16.patch"
      sha256 "d49feec53ec58a10b58775e1616a079b92814806f35d96c98de7e33690410f9c"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/c3c6e824787105228598b60d9ce32689d5ba7f15/0002-libavcodec-flacenc-force-32-bit-output-for-32-bit-in.patch"
      sha256 "7e92b40c6d23be91997dc05e64ab7af592185fd8110aaf7edd34b1be939919e9"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/c3c6e824787105228598b60d9ce32689d5ba7f15/0003-avcodec-jpeg2000dec-support-of-2-fields-in-1-AVPacke.patch"
      sha256 "08d41d85861e3de7a7f231deaf4818bb1a61490a7c606691eb9ad2c529d4e75c"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/c3c6e824787105228598b60d9ce32689d5ba7f15/0004-avcodec-dpx-Fix-B-W-film-scans-from-DIAMANT-Film.patch"
      sha256 "3e40728ce52f781a5c373cf009efa8e59740ec7a1ce7b888829a886eae2e218f"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/c3c6e824787105228598b60d9ce32689d5ba7f15/0005-DeckLink-SDK-15.3-public-headers.patch"
      sha256 "fe3925bfb3978b8ed2892139f2b7b97ce2796d00a12587d0ac5866bb9b46e947"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/c3c6e824787105228598b60d9ce32689d5ba7f15/0006-matroskaenc-remove-unused-MaxBlockAdditionID.patch"
      sha256 "d20c0d61b0bfdf17ca146141222bfe68e72fc71853411531db75516f31d82383"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/c3c6e824787105228598b60d9ce32689d5ba7f15/0007-matroskaenc-reserve_video_track_space-option.patch"
      sha256 "d73057fa2356fea11bccb98062e9344280db81dfbe5b57fb24bdd5a4dc74e35a"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/c3c6e824787105228598b60d9ce32689d5ba7f15/0008-matroskaenc-increase-default-for-reserved-bytes-in-v.patch"
      sha256 "44a1bb5252d63aaf1d083a16dbf00332a9b91fd12fcae9118f74508559358780"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/c3c6e824787105228598b60d9ce32689d5ba7f15/0009-32-bit-timecode-to-64-bit-RFC-5484-timecode-function.patch"
      sha256 "c1fccd52fb055a6247cc55cb41a3611be6bdf6f5c44430b69d717bfa60069d5b"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/c3c6e824787105228598b60d9ce32689d5ba7f15/0010-decklink_dec-store-timecode-in-64-bit-RFC-5484-forma.patch"
      sha256 "f7f2db16a49886b694f852dc6afe477ce7165e3d849c0d5ba246a3314cd8bf5c"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/c3c6e824787105228598b60d9ce32689d5ba7f15/0011-matroskadec-read-timecode-in-BlockAddition.patch"
      sha256 "6370dd26f055b7554fa20ac1c3d12f2d3d9be8724f815344e05a9dce6b1c84a8"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/c3c6e824787105228598b60d9ce32689d5ba7f15/0012-matroskaenc-write-timecode-in-BlockAddition.patch"
      sha256 "01ee2df69b45bae49dcad636e9816b33109a3d844420adcc4a54eb2d29180506"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/c3c6e824787105228598b60d9ce32689d5ba7f15/0013-mux-keep-AV_PKT_DATA_S12M_TIMECODE-during-transcode.patch"
      sha256 "622ab66f99de186d4f3b5881a5b8ed7a5f4b1c543b760ca2c38f67eee4e106c8"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/c3c6e824787105228598b60d9ce32689d5ba7f15/0014-decklink_dec-support-readout-of-all-timecodes.patch"
      sha256 "f0a4e95af59840e61433f8676895c76e6cf99337bcc15a83794c28c097a078c0"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/c3c6e824787105228598b60d9ce32689d5ba7f15/0015-decklink-fix-missing-IID_IUnknown.patch"
      sha256 "4b2be26eda44692f234ba440ea6ab22fa4b820cdb79ebbb358e189784c870307"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/c3c6e824787105228598b60d9ce32689d5ba7f15/0016-matroskadec-enc-support-of-TimeCodeXml-input.patch"
      sha256 "f688ed684e8716472927d94bfd0d49736c93ab05eae88e01f73388b8fd4d81e6"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/c3c6e824787105228598b60d9ce32689d5ba7f15/0017-decklink_dec-support-of-timecode-also-with-multiple-.patch"
      sha256 "c933935c595ffaf4a57307c07c0538c6c43d9d9c3dead1bc97090b8e5b6b99bc"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/c3c6e824787105228598b60d9ce32689d5ba7f15/0018-decklink_dec-support-labels.patch"
      sha256 "2ddd7334eac5743a0868915f6a13a0286c56fb6c5c1081f2ef6dc42335bc6a6e"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/c3c6e824787105228598b60d9ce32689d5ba7f15/0019-avformat-add-DAT-demuxer.patch"
      sha256 "83014856fcfa48c643fd2d0670eba370ad7728591e2a8897d51833662cf1c477"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/c3c6e824787105228598b60d9ce32689d5ba7f15/0020-Add-a-helper-message-when-the-Vulkan-wrapper-is-not-.patch"
      sha256 "ee14dc3fa37e3c45dacb3232183499059385cc8266f716971c7dc42ef7aa2d76"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/c3c6e824787105228598b60d9ce32689d5ba7f15/0021-Allow-building-with-decklink-support-and-gpl-compone.patch"
      sha256 "b6429e7885cd3a5379883327554f9a02dfe86476904df9a6f536873e83fc645e"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/c3c6e824787105228598b60d9ce32689d5ba7f15/0022-hwcontext_vulkan-Use-HIC-only-for-host-cached-data.patch"
      sha256 "c8bbec9e04cb5bf322c08b1323a5f47ae435fd00c1f283febbb6b131fb299f23"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/c3c6e824787105228598b60d9ce32689d5ba7f15/0023-FFv1-vulkan-RGB-encoder.patch"
      sha256 "2bac26255b029994c67d05d7445700b86f7896a341fe39a2d394fa69647f94d7"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/c3c6e824787105228598b60d9ce32689d5ba7f15/0024-Set-KosmicKrisp-Vulkan-driver-for-macOS-tools.patch"
      sha256 "ddee055058ae90ad7459b9c541431f14693e5910484b2829a6a7bdab698bc15e"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/c3c6e824787105228598b60d9ce32689d5ba7f15/0025-avcodec-tiff-support-6-10-and-14-bit-gray-2-4-6-10-1.patch"
      sha256 "554e4bb7e419af21d46e3b2c0fbd1b5cf567207ff3224889f57f838a57fd889d"
    end
  end

  option "with-iec61883", "Enable DV device (Linux)" if OS.linux?

  depends_on "pkgconf" => :build
  depends_on "shaderc" => :build
  depends_on "vulkan-headers" => :build
  depends_on "freetype"
  depends_on "harfbuzz"
  depends_on "libass"
  depends_on "openh264"
  depends_on "sdl2"

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
      --build-suffix=-ma
      --prefix=#{prefix}
      --incdir=#{include}/ffmpeg-ma
      --datadir=#{share}/ffmpeg-ma
      --enable-gpl
      --disable-autodetect
      --disable-debug
      --enable-shared
      --disable-static
      --enable-pthreads
      --enable-libfreetype
      --enable-libharfbuzz
      --enable-libass
      --enable-libopenh264
      --enable-vulkan
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
    system "make", "install"
  end

  test do
    # Create an example mp4 file
    mp4out = testpath/"video.mp4"
    system bin/"ffmpeg-ma", "-filter_complex", "testsrc=rate=1:duration=1", mp4out
    assert_path_exists mp4out
  end
end
