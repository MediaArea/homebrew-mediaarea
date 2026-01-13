class FfmpegMa < Formula
  desc "FFmpeg binaries with MediaArea's patches"
  homepage "https://github.com/MediaArea/ffmpeg-ma-patch"
  revision 3

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
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/e52e91fa033c809efebcc606c28f470d1cd36709/0001-EXR_consider_float16_as_uint16.patch"
      sha256 "f3c9bc81bfdb38ad1eeb21748b3859f46c573b71d17264dbe8b1c10aed9ac186"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/e52e91fa033c809efebcc606c28f470d1cd36709/0002-libavcodec-flacenc-force-32-bit-output-for-32-bit-in.patch"
      sha256 "ed4bd90d21a83008a92cc8e09ca492a0ee6aefc8fc5f3477d3ff9257e66a780e"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/e52e91fa033c809efebcc606c28f470d1cd36709/0003-avcodec-jpeg2000dec-support-of-2-fields-in-1-AVPacke.patch"
      sha256 "d488952376eb39a0358c416bf7eb29cead85118c15dd306eef6bb785b6df71aa"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/e52e91fa033c809efebcc606c28f470d1cd36709/0004-avcodec-dpx-Fix-B-W-film-scans-from-DIAMANT-Film.patch"
      sha256 "a01c76a4d057689b0b532d4307869437d26d67cf536039ade803590834c2b0cd"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/e52e91fa033c809efebcc606c28f470d1cd36709/0005-configure-evaluate-toolchain-to-determine-suffix.patch"
      sha256 "614807695034ae96da63e0b77996d4bc230a213829a48ad8b4c531aaa6a6c89f"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/e52e91fa033c809efebcc606c28f470d1cd36709/0006-DeckLink-SDK-15.3-public-headers.patch"
      sha256 "207503348a92897d9fb71e32d3ba35b39c17ae641128a143ea80619eb6253161"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/e52e91fa033c809efebcc606c28f470d1cd36709/0007-matroskaenc-remove-unused-MaxBlockAdditionID.patch"
      sha256 "4695328145f5e4eec9cf2b903272bab7e3253203d08b8d9f5de8838d53f497ab"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/e52e91fa033c809efebcc606c28f470d1cd36709/0008-matroskaenc-reserve_video_track_space-option.patch"
      sha256 "5717dba172b6d33c48542f0046b006b3fc221149b741a638c9421133ea35ed63"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/e52e91fa033c809efebcc606c28f470d1cd36709/0009-matroskaenc-increase-default-for-reserved-bytes-in-v.patch"
      sha256 "0ef44cdf289b574e1fe8427ce7edc149ccf2513cc3954a4eb72210d8d14f2def"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/e52e91fa033c809efebcc606c28f470d1cd36709/0010-32-bit-timecode-to-64-bit-RFC-5484-timecode-function.patch"
      sha256 "e4664785db836566f058b366977c4dec5a08f63b07011abd3e751d36b51b8b27"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/e52e91fa033c809efebcc606c28f470d1cd36709/0011-decklink_dec-store-timecode-in-64-bit-RFC-5484-forma.patch"
      sha256 "b042132782249b870d189cae698adfac23680f8368fa6ab8560202147ad50d61"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/e52e91fa033c809efebcc606c28f470d1cd36709/0012-matroskadec-read-timecode-in-BlockAddition.patch"
      sha256 "4a8a94432803b881e07798660a9bf2e17c180c61f3b8fcf8ee0966c7a0a16673"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/e52e91fa033c809efebcc606c28f470d1cd36709/0013-matroskaenc-write-timecode-in-BlockAddition.patch"
      sha256 "3e686d6d6506d58dcc72381e2cbfebefd4d4529b553abd43d082e8d980bb438a"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/e52e91fa033c809efebcc606c28f470d1cd36709/0014-mux-keep-AV_PKT_DATA_S12M_TIMECODE-during-transcode.patch"
      sha256 "07d251da51ee801b7bb205773e335e82e65e56d9657602e3d71386e7efc1f35f"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/e52e91fa033c809efebcc606c28f470d1cd36709/0015-decklink_dec-support-readout-of-all-timecodes.patch"
      sha256 "299aadf0325f29433534100f8557242e7a761059def79fa48d39589371399970"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/e52e91fa033c809efebcc606c28f470d1cd36709/0016-decklink-fix-missing-IID_IUnknown.patch"
      sha256 "e706433e53bcdc4b00638f694359a529985b2343b2c52164bf78e1152271ffb3"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/e52e91fa033c809efebcc606c28f470d1cd36709/0017-matroskadec-enc-support-of-TimeCodeXml-input.patch"
      sha256 "ac328a6b96547eceecc418c1f825159b15eb1a68273770cebb6436551d2b0fab"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/e52e91fa033c809efebcc606c28f470d1cd36709/0018-decklink_dec-support-labels.patch"
      sha256 "3be0a7d36017eb5f72a9ed3958adedadf9a4e85eb1ee9aa7409b7625038fcda3"
    end

    patch do
      url "https://raw.githubusercontent.com/MediaArea/ffmpeg-ma-patch/e52e91fa033c809efebcc606c28f470d1cd36709/0019-decklink_dec-support-of-timecode-also-with-multiple-.patch"
      sha256 "b943c68bed8abb930af4c1244c2b88d9fbee58702fd5bbd18c7e69aa24b13c9b"
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
