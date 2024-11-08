class MediainfoGui < Formula
  desc "Unified display of technical and tag data for audio/video"
  homepage "https://mediaarea.net/"
  url "https://mediaarea.net/download/binary/mediainfo-gui/24.11/MediaInfo_GUI_24.11_GNU_FromSource.tar.xz"
  sha256 "e48003f8a347e12675ea47fb1a5e1bf4e98c5858afe80d3bda040046ca1fbd57"

  depends_on "pkg-config" => :build
  # fails to build against Leopard's older libcurl
  depends_on "curl"
  depends_on "wxwidgets"

  patch :DATA

  def install
    cd "ZenLib/Project/GNU/Library" do
      args = ["--disable-debug",
              "--enable-static",
              "--disable-shared"]
      system "./configure", *args
      system "make"
    end

    cd "MediaInfoLib/Project/GNU/Library" do
      args = ["--disable-debug",
              "--with-libcurl=runtime",
              "--enable-static",
              "--disable-shared"]
      system "./configure", *args
      system "make"
    end

    cd "MediaInfo/Project/GNU/GUI" do
      system "./configure", "--disable-debug", "--enable-staticlibs", "--prefix=#{prefix}"
      system "make", "install"
    end
  end

  test do
    assert_predicate `bin/mediainfo-gui`, :exist?
  end
end

__END__
diff --git a/ZenLib/Source/ZenLib/Conf.h b/ZenLib/Source/ZenLib/Conf.h
index 792f313..735aa33 100644
--- a/ZenLib/Source/ZenLib/Conf.h
+++ b/ZenLib/Source/ZenLib/Conf.h
@@ -208,7 +208,7 @@
 //---------------------------------------------------------------------------
 //(-1) is known to be the MAX of an unsigned int but GCC complains about it
 #ifdef __cplusplus
-    #include <new> //for size_t
+    #include <cstddef> //for size_t
 #else /* __cplusplus */
     #include <stddef.h> //for size_t
 #endif /* __cplusplus */
