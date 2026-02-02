class FfmpegMa < Formula
  desc "FFmpeg binaries with MediaArea's patches"
  homepage "https://github.com/MediaArea/ffmpeg-ma-patch"
  revision 4

  stable do
    url "https://ffmpeg.org/releases/ffmpeg-8.0.tar.xz"
    sha256 "b2751fccb6cc4c77708113cd78b561059b6fa904b24162fa0be2d60273d27b8e"

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/02d55ecbf6d95006cbab1c96a857dbfd205de2fa/0001-EXR_consider_float16_as_uint16.patch"
      sha256 "f3c9bc81bfdb38ad1eeb21748b3859f46c573b71d17264dbe8b1c10aed9ac186"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/02d55ecbf6d95006cbab1c96a857dbfd205de2fa/0002-libavcodec-flacenc-force-32-bit-output-for-32-bit-in.patch"
      sha256 "ed4bd90d21a83008a92cc8e09ca492a0ee6aefc8fc5f3477d3ff9257e66a780e"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/02d55ecbf6d95006cbab1c96a857dbfd205de2fa/0003-avcodec-jpeg2000dec-support-of-2-fields-in-1-AVPacke.patch"
      sha256 "d488952376eb39a0358c416bf7eb29cead85118c15dd306eef6bb785b6df71aa"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/02d55ecbf6d95006cbab1c96a857dbfd205de2fa/0004-avcodec-dpx-Fix-B-W-film-scans-from-DIAMANT-Film.patch"
      sha256 "a01c76a4d057689b0b532d4307869437d26d67cf536039ade803590834c2b0cd"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/02d55ecbf6d95006cbab1c96a857dbfd205de2fa/0005-configure-evaluate-toolchain-to-determine-suffix.patch"
      sha256 "0e89b6f3fd7e86fad5c49521f4d3b313b46593e8a9cb0da87c8ac814338a9531"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/02d55ecbf6d95006cbab1c96a857dbfd205de2fa/0006-DeckLinkSDK-12.4.2-public-headers.patch"
      sha256 "4145f0d358660b7ad8427b549a7724a9df69e845e47c8792ee1eda4d5e2f548a"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/02d55ecbf6d95006cbab1c96a857dbfd205de2fa/0007-matroskaenc-remove-unused-MaxBlockAdditionID.patch"
      sha256 "4695328145f5e4eec9cf2b903272bab7e3253203d08b8d9f5de8838d53f497ab"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/02d55ecbf6d95006cbab1c96a857dbfd205de2fa/0008-matroskaenc-reserve_video_track_space-option.patch"
      sha256 "5717dba172b6d33c48542f0046b006b3fc221149b741a638c9421133ea35ed63"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/02d55ecbf6d95006cbab1c96a857dbfd205de2fa/0009-matroskaenc-increase-default-for-reserved-bytes-in-v.patch"
      sha256 "0ef44cdf289b574e1fe8427ce7edc149ccf2513cc3954a4eb72210d8d14f2def"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/02d55ecbf6d95006cbab1c96a857dbfd205de2fa/0010-32-bit-timecode-to-64-bit-RFC-5484-timecode-function.patch"
      sha256 "e4664785db836566f058b366977c4dec5a08f63b07011abd3e751d36b51b8b27"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/02d55ecbf6d95006cbab1c96a857dbfd205de2fa/0011-decklink_dec-store-timecode-in-64-bit-RFC-5484-forma.patch"
      sha256 "b042132782249b870d189cae698adfac23680f8368fa6ab8560202147ad50d61"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/02d55ecbf6d95006cbab1c96a857dbfd205de2fa/0012-matroskadec-read-timecode-in-BlockAddition.patch"
      sha256 "4a8a94432803b881e07798660a9bf2e17c180c61f3b8fcf8ee0966c7a0a16673"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/02d55ecbf6d95006cbab1c96a857dbfd205de2fa/0013-matroskaenc-write-timecode-in-BlockAddition.patch"
      sha256 "3e686d6d6506d58dcc72381e2cbfebefd4d4529b553abd43d082e8d980bb438a"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/02d55ecbf6d95006cbab1c96a857dbfd205de2fa/0014-mux-keep-AV_PKT_DATA_S12M_TIMECODE-during-transcode.patch"
      sha256 "07d251da51ee801b7bb205773e335e82e65e56d9657602e3d71386e7efc1f35f"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/02d55ecbf6d95006cbab1c96a857dbfd205de2fa/0015-decklink_dec-support-readout-of-all-timecodes.patch"
      sha256 "299aadf0325f29433534100f8557242e7a761059def79fa48d39589371399970"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/02d55ecbf6d95006cbab1c96a857dbfd205de2fa/0016-decklink-fix-missing-IID_IUnknown.patch"
      sha256 "e706433e53bcdc4b00638f694359a529985b2343b2c52164bf78e1152271ffb3"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/02d55ecbf6d95006cbab1c96a857dbfd205de2fa/0017-matroskadec-enc-support-of-TimeCodeXml-input.patch"
      sha256 "ac328a6b96547eceecc418c1f825159b15eb1a68273770cebb6436551d2b0fab"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/02d55ecbf6d95006cbab1c96a857dbfd205de2fa/0018-decklink_dec-support-labels.patch"
      sha256 "557df4e3872c4f895cd0db65f1fc9caa6dc16a068cfbfc2c4b62b0bf0fdc12f4"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/02d55ecbf6d95006cbab1c96a857dbfd205de2fa/0019-decklink_dec-support-of-timecode-also-with-multiple-.patch"
      sha256 "b943c68bed8abb930af4c1244c2b88d9fbee58702fd5bbd18c7e69aa24b13c9b"
    end
  end

  livecheck do
    url "https://ffmpeg.org/download.html"
    regex(/href=.*?ffmpeg[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end

  head do
    url "git://git.ffmpeg.org/ffmpeg.git", branch: "master"

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/c45c8f52fe2449a5ac5039a5ed8ed4198dbd776f/0001-EXR_consider_float16_as_uint16.patch"
      sha256 "e0387e4237ebd997336506b6b3a58c3827a64871e7bbaf17f5993d9858847a18"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/c45c8f52fe2449a5ac5039a5ed8ed4198dbd776f/0002-libavcodec-flacenc-force-32-bit-output-for-32-bit-in.patch"
      sha256 "83871729ade1b3fc998d487e27cc60d2ab5a42d8421917f2b2354148ab438392"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/c45c8f52fe2449a5ac5039a5ed8ed4198dbd776f/0003-avcodec-jpeg2000dec-support-of-2-fields-in-1-AVPacke.patch"
      sha256 "cf9506c7a0dc92cf7858b3f877934959ea170ea880d71adfcf91dbaea2392e8d"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/c45c8f52fe2449a5ac5039a5ed8ed4198dbd776f/0004-avcodec-dpx-Fix-B-W-film-scans-from-DIAMANT-Film.patch"
      sha256 "326abad5d394cf157798953166a7331ab58b48dd532ae4d2ca6b583094e1d31a"
    end
    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/c45c8f52fe2449a5ac5039a5ed8ed4198dbd776f/0005-configure-evaluate-toolchain-to-determine-suffix.patch"
      sha256 "7246ead5449673a5b84b1a974358db1298cdc3e13d4e30aa8ae7e87ced83827a"
    end
    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/c45c8f52fe2449a5ac5039a5ed8ed4198dbd776f/0006-DeckLink-SDK-15.3-public-headers.patch"
      sha256 "266a508fc5a75b768228f947db2a5b7ba4f91b108180792714e23d280d0df444"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/c45c8f52fe2449a5ac5039a5ed8ed4198dbd776f/0007-matroskaenc-remove-unused-MaxBlockAdditionID.patch"
      sha256 "f07f84713efc48a61d57816283968ca2ba86b5a16d42049d56205bf67c1ddc63"
    end
    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/c45c8f52fe2449a5ac5039a5ed8ed4198dbd776f/0008-matroskaenc-reserve_video_track_space-option.patch"
      sha256 "9360112c87abb9c8cdc1327c8ad331babc2e3c0457a66e75dceec68312ef725a"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/c45c8f52fe2449a5ac5039a5ed8ed4198dbd776f/0009-matroskaenc-increase-default-for-reserved-bytes-in-v.patch"
      sha256 "eb2b650525c590f6070429f9533926752c99f698dabe80d52ceb7e7c8d35b6f3"
    end
    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/c45c8f52fe2449a5ac5039a5ed8ed4198dbd776f/0010-32-bit-timecode-to-64-bit-RFC-5484-timecode-function.patch"
      sha256 "ef48a139b1e9d34d58c62d23a8e5320330b9af0bb4a55d795263d3c67ef7e06e"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/c45c8f52fe2449a5ac5039a5ed8ed4198dbd776f/0011-decklink_dec-store-timecode-in-64-bit-RFC-5484-forma.patch"
      sha256 "564c2b7079fef576f522f394a8b45f205970642395c56533e006fa1db8bac7d0"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/c45c8f52fe2449a5ac5039a5ed8ed4198dbd776f/0012-matroskadec-read-timecode-in-BlockAddition.patch"
      sha256 "3478aab8f678885653a1ede23f08d77520db275c413932e5e90fe7ff13a923cc"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/c45c8f52fe2449a5ac5039a5ed8ed4198dbd776f/0013-matroskaenc-write-timecode-in-BlockAddition.patch"
      sha256 "74eae5b602c3aa08f6e8cc76f8ba422b69419156f4b18604905b0e2321de9fc5"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/c45c8f52fe2449a5ac5039a5ed8ed4198dbd776f/0014-mux-keep-AV_PKT_DATA_S12M_TIMECODE-during-transcode.patch"
      sha256 "9be10ace9b7f968cc4cdccc7e7b303b4ee059702e00958c7aaa9c8153c03898d"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/c45c8f52fe2449a5ac5039a5ed8ed4198dbd776f/0015-decklink_dec-support-readout-of-all-timecodes.patch"
      sha256 "79af0a6c07e25ca0e04fe01f382ce9c9e292a59bf8096122a7afbbc9e98ff90f"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/c45c8f52fe2449a5ac5039a5ed8ed4198dbd776f/0016-decklink-fix-missing-IID_IUnknown.patch"
      sha256 "8c20db91a8ceaa08662bf45ad1dbdaf093f0ae9f3235b3e85604470695f957e6"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/c45c8f52fe2449a5ac5039a5ed8ed4198dbd776f/0017-matroskadec-enc-support-of-TimeCodeXml-input.patch"
      sha256 "1e47b627219ac05c64dcd93cc7f7eeab03cda2eb6e43b99e3b622a2415757e19"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/c45c8f52fe2449a5ac5039a5ed8ed4198dbd776f/0018-decklink_dec-support-of-timecode-also-with-multiple-.patch"
      sha256 "3300ffd6f11e02aa1fac81e372a9f3936991b383087d07443a3197fd2ed4656b"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/c45c8f52fe2449a5ac5039a5ed8ed4198dbd776f/0019-decklink_dec-support-labels.patch"
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
