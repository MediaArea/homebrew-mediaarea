class MediaconchGui < Formula
  desc "Conformance checker and technical metadata reporter (GUI)"
  homepage "https://mediaarea.net/MediaConch"
  url "https://mediaarea.net/download/binary/mediaconch-gui/17.07/MediaConch_GUI_17.07_GNU_FromSource.tar.bz2"
  version "17.07"
  sha256 "f9a485ad2b8198f45a3d2c332badfe028b56f7f1d8627e8060b37c52faac13b6"

  bottle do
    cellar :any
    sha256 "8fef9f03fff1925ab9c5279fb1ac52470139add4b4e2f2adf5a10df08a70d96d" => :sierra
    sha256 "1dab3eb4b641bd231a7526bec9907cbde1f1c71b651c63d8d7dc83b2683cc406" => :el_capitan
    sha256 "c9a7da28d09c2fee2a7c412652f7f564b2c976b8e7207918c301881ed255d912" => :yosemite
  end

  depends_on "pkg-config" => :build
  depends_on "jansson"
  depends_on "libevent"
  depends_on "sqlite"
  depends_on "qt5"
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
      system "#{Formula["qt5"].bin}/qmake", "STATIC_LIBS=1"

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
 
@@ -312,7 +315,7 @@ contains(NO_LIBEVENT, yes|1) {
     }
 }
 
-macx:QMAKE_MACOSX_DEPLOYMENT_TARGET = 10.5
+macx:QMAKE_MACOSX_DEPLOYMENT_TARGET = 10.7
 LIBS             += -lz
 !macx:LIBS       += -ldl -lrt
 
