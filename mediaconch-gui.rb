class MediaconchGui < Formula
  desc "Conformance checker and technical metadata reporter (GUI)"
  homepage "https://mediaarea.net/MediaConch"
  url "https://mediaarea.net/download/binary/mediaconch-gui/17.11/MediaConch_GUI_17.11_GNU_FromSource.tar.bz2"
  version "17.11"
  sha256 "743231503716747600603a2c4e5c4ad5a51b158eda197df941553b6f6c49015f"

  depends_on "pkg-config" => :build
  depends_on "jansson"
  depends_on "libevent"
  depends_on "libxml2"
  depends_on "sqlite"
  depends_on "qt"
  # fails to build against Leopard's older libcurl
  depends_on "curl" if MacOS.version < :snow_leopard

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

    cd "MediaConch/Project/Qt" do
      system "#{Formula["qt"].bin}/qmake", "STATIC_LIBS=1", "-after", "QMAKE_MACOSX_DEPLOYMENT_TARGET=10.7"

      system "make"

      prefix.install "MediaConch.app"

      system "mkdir", "-p", "#{prefix}/bin"
      system "ln", "-s", "#{prefix}/MediaConch.app/Contents/MacOS/MediaConch", "#{prefix}/bin/mediaconch-gui"
    end
  end
end

__END__
diff --git a/MediaConch/Project/Qt/MediaConch.pro b/MediaConch/Project/Qt/MediaConch.pro
index 829e261..00707e1 100644
--- a/MediaConch/Project/Qt/MediaConch.pro
+++ b/MediaConch/Project/Qt/MediaConch.pro
@@ -52,7 +52,10 @@ TEMPLATE = app
 CONFIG += qt release
 CONFIG += no_keywords
 
-unix:CONFIG += link_pkgconfig
+macx:QT_CONFIG -= no-pkg-config
+macx:PKG_CONFIG = pkg-config
+
+unix:CONFIG += link_pkgconfig c++11
 
 DEFINES          +=  _UNICODE
 
