class FfmpegMa < Formula
  desc "FFmpeg binaries with MediaArea's patches"
  homepage "https://github.com/MediaArea/ffmpeg-ma-patch"

  stable do
    url "https://ffmpeg.org/releases/ffmpeg-9.0.1.tar.xz"
    sha256 "cf38e0e28c7e5605942c4a77755349b0145804a397af37eb1fb4c77cb237f635"

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/949155e32df416910526c4186809dfa271349b2f/0001-EXR_consider_float16_as_uint16.patch"
      sha256 "d49feec53ec58a10b58775e1616a079b92814806f35d96c98de7e33690410f9c"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/949155e32df416910526c4186809dfa271349b2f/0002-libavcodec-flacenc-force-32-bit-output-for-32-bit-in.patch"
      sha256 "7e92b40c6d23be91997dc05e64ab7af592185fd8110aaf7edd34b1be939919e9"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/949155e32df416910526c4186809dfa271349b2f/0003-avcodec-jpeg2000dec-support-of-2-fields-in-1-AVPacke.patch"
      sha256 "6a5289d0cc37fbb0dc126561ed5bf821bb476f7cd4aeaf0bac5e8cb2331b4476"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/949155e32df416910526c4186809dfa271349b2f/0004-avcodec-dpx-Fix-B-W-film-scans-from-DIAMANT-Film.patch"
      sha256 "495104b1bb94435de79ace4a1d686586c16ca05865adba4be0d9c94a82a482c3"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/949155e32df416910526c4186809dfa271349b2f/0005-configure-evaluate-toolchain-to-determine-suffix.patch"
      sha256 "596348c010e46e7a29859977e2b071fdcef8b61759d6339c437ec857cdd5291e"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/949155e32df416910526c4186809dfa271349b2f/0006-DeckLink-SDK-15.3-public-headers.patch"
      sha256 "fe3925bfb3978b8ed2892139f2b7b97ce2796d00a12587d0ac5866bb9b46e947"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/949155e32df416910526c4186809dfa271349b2f/0007-matroskaenc-remove-unused-MaxBlockAdditionID.patch"
      sha256 "360c7d448d18c2c32ae58f3a23f75266cfad48636bcd919928e7eda04046683b"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/949155e32df416910526c4186809dfa271349b2f/0008-matroskaenc-reserve_video_track_space-option.patch"
      sha256 "04996e6268bfb1a40d868aaccf173d596d81aa5681d0a653a8fbebda056caae5"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/949155e32df416910526c4186809dfa271349b2f/0009-matroskaenc-increase-default-for-reserved-bytes-in-v.patch"
      sha256 "2ce9139c54c95e5c1e1e3c89b598ff2c13bcbd8ca1e318d638f69e4a91ea4c69"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/949155e32df416910526c4186809dfa271349b2f/0010-32-bit-timecode-to-64-bit-RFC-5484-timecode-function.patch"
      sha256 "c1fccd52fb055a6247cc55cb41a3611be6bdf6f5c44430b69d717bfa60069d5b"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/949155e32df416910526c4186809dfa271349b2f/0011-decklink_dec-store-timecode-in-64-bit-RFC-5484-forma.patch"
      sha256 "f7f2db16a49886b694f852dc6afe477ce7165e3d849c0d5ba246a3314cd8bf5c"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/949155e32df416910526c4186809dfa271349b2f/0012-matroskadec-read-timecode-in-BlockAddition.patch"
      sha256 "6370dd26f055b7554fa20ac1c3d12f2d3d9be8724f815344e05a9dce6b1c84a8"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/949155e32df416910526c4186809dfa271349b2f/0013-matroskaenc-write-timecode-in-BlockAddition.patch"
      sha256 "d0c7927d6521bca842a80f6c0ecddba6d7e1dda0ea97e1d458b726dc1b8431bd"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/949155e32df416910526c4186809dfa271349b2f/0014-mux-keep-AV_PKT_DATA_S12M_TIMECODE-during-transcode.patch"
      sha256 "622ab66f99de186d4f3b5881a5b8ed7a5f4b1c543b760ca2c38f67eee4e106c8"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/949155e32df416910526c4186809dfa271349b2f/0015-decklink_dec-support-readout-of-all-timecodes.patch"
      sha256 "f0a4e95af59840e61433f8676895c76e6cf99337bcc15a83794c28c097a078c0"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/949155e32df416910526c4186809dfa271349b2f/0016-decklink-fix-missing-IID_IUnknown.patch"
      sha256 "4b2be26eda44692f234ba440ea6ab22fa4b820cdb79ebbb358e189784c870307"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/949155e32df416910526c4186809dfa271349b2f/0017-matroskadec-enc-support-of-TimeCodeXml-input.patch"
      sha256 "7cfbf05340f86ac9f082ef4121a607d2af17e8dff49aff84eae464ca37987eb4"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/949155e32df416910526c4186809dfa271349b2f/0018-decklink_dec-support-of-timecode-also-with-multiple-.patch"
      sha256 "c933935c595ffaf4a57307c07c0538c6c43d9d9c3dead1bc97090b8e5b6b99bc"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/949155e32df416910526c4186809dfa271349b2f/0019-decklink_dec-support-labels.patch"
      sha256 "3f5f51ebdcb55a0fbecdd5cdd8034a584a2052be92f9869ca0221a4a1b11afda"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/949155e32df416910526c4186809dfa271349b2f/0020-avformat-add-DAT-demuxer.patch"
      sha256 "83014856fcfa48c643fd2d0670eba370ad7728591e2a8897d51833662cf1c477"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/949155e32df416910526c4186809dfa271349b2f/0021-Add-a-helper-message-when-the-Vulkan-wrapper-is-not-.patch"
      sha256 "ee14dc3fa37e3c45dacb3232183499059385cc8266f716971c7dc42ef7aa2d76"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/949155e32df416910526c4186809dfa271349b2f/0022-Allow-building-with-decklink-support-and-gpl-compone.patch"
      sha256 "e25225dc4135903c1f7b32354f7ab31e6294efa7fd8981a660754927288ae608"
    end
  end

  livecheck do
    url "https://ffmpeg.org/download.html"
    regex(/href=.*?ffmpeg[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end

  head do
    url "git://git.ffmpeg.org/ffmpeg.git", branch: "master"

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/65d5fc460ae6bbef75e6346b541fa77ab4440049/0001-EXR_consider_float16_as_uint16.patch"
      sha256 "d49feec53ec58a10b58775e1616a079b92814806f35d96c98de7e33690410f9c"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/65d5fc460ae6bbef75e6346b541fa77ab4440049/0002-libavcodec-flacenc-force-32-bit-output-for-32-bit-in.patch"
      sha256 "7e92b40c6d23be91997dc05e64ab7af592185fd8110aaf7edd34b1be939919e9"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/65d5fc460ae6bbef75e6346b541fa77ab4440049/0003-avcodec-jpeg2000dec-support-of-2-fields-in-1-AVPacke.patch"
      sha256 "6a5289d0cc37fbb0dc126561ed5bf821bb476f7cd4aeaf0bac5e8cb2331b4476"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/65d5fc460ae6bbef75e6346b541fa77ab4440049/0004-avcodec-dpx-Fix-B-W-film-scans-from-DIAMANT-Film.patch"
      sha256 "495104b1bb94435de79ace4a1d686586c16ca05865adba4be0d9c94a82a482c3"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/65d5fc460ae6bbef75e6346b541fa77ab4440049/0005-configure-evaluate-toolchain-to-determine-suffix.patch"
      sha256 "596348c010e46e7a29859977e2b071fdcef8b61759d6339c437ec857cdd5291e"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/65d5fc460ae6bbef75e6346b541fa77ab4440049/0006-DeckLink-SDK-15.3-public-headers.patch"
      sha256 "fe3925bfb3978b8ed2892139f2b7b97ce2796d00a12587d0ac5866bb9b46e947"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/65d5fc460ae6bbef75e6346b541fa77ab4440049/0007-matroskaenc-remove-unused-MaxBlockAdditionID.patch"
      sha256 "810a38d5fabad62e07f46557e031a40a6faae1f5d90ae72a09f9fe1b3b061656"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/65d5fc460ae6bbef75e6346b541fa77ab4440049/0008-matroskaenc-reserve_video_track_space-option.patch"
      sha256 "3368083fbafcc3971bc5cbc2061f4d14a22b7f5d7b07b7abeadbcbcc3f55dbec"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/65d5fc460ae6bbef75e6346b541fa77ab4440049/0009-matroskaenc-increase-default-for-reserved-bytes-in-v.patch"
      sha256 "880c762ca141d0684de85e5b0cff5c34116cfa89ed27395ddaa0565bf033bc95"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/65d5fc460ae6bbef75e6346b541fa77ab4440049/0010-32-bit-timecode-to-64-bit-RFC-5484-timecode-function.patch"
      sha256 "c1fccd52fb055a6247cc55cb41a3611be6bdf6f5c44430b69d717bfa60069d5b"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/65d5fc460ae6bbef75e6346b541fa77ab4440049/0011-decklink_dec-store-timecode-in-64-bit-RFC-5484-forma.patch"
      sha256 "f7f2db16a49886b694f852dc6afe477ce7165e3d849c0d5ba246a3314cd8bf5c"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/65d5fc460ae6bbef75e6346b541fa77ab4440049/0012-matroskadec-read-timecode-in-BlockAddition.patch"
      sha256 "6370dd26f055b7554fa20ac1c3d12f2d3d9be8724f815344e05a9dce6b1c84a8"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/65d5fc460ae6bbef75e6346b541fa77ab4440049/0013-matroskaenc-write-timecode-in-BlockAddition.patch"
      sha256 "d0c7927d6521bca842a80f6c0ecddba6d7e1dda0ea97e1d458b726dc1b8431bd"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/65d5fc460ae6bbef75e6346b541fa77ab4440049/0014-mux-keep-AV_PKT_DATA_S12M_TIMECODE-during-transcode.patch"
      sha256 "622ab66f99de186d4f3b5881a5b8ed7a5f4b1c543b760ca2c38f67eee4e106c8"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/65d5fc460ae6bbef75e6346b541fa77ab4440049/0015-decklink_dec-support-readout-of-all-timecodes.patch"
      sha256 "f0a4e95af59840e61433f8676895c76e6cf99337bcc15a83794c28c097a078c0"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/65d5fc460ae6bbef75e6346b541fa77ab4440049/0016-decklink-fix-missing-IID_IUnknown.patch"
      sha256 "4b2be26eda44692f234ba440ea6ab22fa4b820cdb79ebbb358e189784c870307"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/65d5fc460ae6bbef75e6346b541fa77ab4440049/0017-matroskadec-enc-support-of-TimeCodeXml-input.patch"
      sha256 "fc20c9a23f27a81157f554b01d797ddeb1cf8f35b0b82de919bd7400b577101e"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/65d5fc460ae6bbef75e6346b541fa77ab4440049/0018-decklink_dec-support-of-timecode-also-with-multiple-.patch"
      sha256 "c933935c595ffaf4a57307c07c0538c6c43d9d9c3dead1bc97090b8e5b6b99bc"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/65d5fc460ae6bbef75e6346b541fa77ab4440049/0019-decklink_dec-support-labels.patch"
      sha256 "3f5f51ebdcb55a0fbecdd5cdd8034a584a2052be92f9869ca0221a4a1b11afda"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/65d5fc460ae6bbef75e6346b541fa77ab4440049/0020-avformat-add-DAT-demuxer.patch"
      sha256 "83014856fcfa48c643fd2d0670eba370ad7728591e2a8897d51833662cf1c477"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/65d5fc460ae6bbef75e6346b541fa77ab4440049/0021-Add-a-helper-message-when-the-Vulkan-wrapper-is-not-.patch"
      sha256 "ee14dc3fa37e3c45dacb3232183499059385cc8266f716971c7dc42ef7aa2d76"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/65d5fc460ae6bbef75e6346b541fa77ab4440049/0022-Allow-building-with-decklink-support-and-gpl-compone.patch"
      sha256 "e25225dc4135903c1f7b32354f7ab31e6294efa7fd8981a660754927288ae608"
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
      --prefix=#{prefix}
      --enable-gpl
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
