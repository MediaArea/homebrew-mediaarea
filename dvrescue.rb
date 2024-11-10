class Dvrescue < Formula
  desc "Data migration from DV tapes into files for long-term preservation"
  homepage "https://mediaarea.net/dvrescue"
  url "https://mediaarea.net/download/binary/dvrescue/24.07/dvrescue_CLI_24.07_GNU_FromSource.tar.xz"
  sha256 "c3ff012d0cf6c0bd5c82771f4cb19d2b57a97dfc71e7cef30d04fc65ec071038"

  depends_on "xmlstarlet"

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
              "--enable-static",
              "--disable-shared"]
      system "./configure", *args
      system "make"
    end

    cd "dvrescue/Project/GNU/CLI" do
      system "./configure", "--disable-debug",
                            "--enable-staticlibs",
                            "--disable-dependency-tracking",
                            "--disable-silent-rules",
                            "--prefix=#{prefix}"
      system "make", "install"
    end
  end

  test do
    system "bin/dvrescue", "--help"
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
