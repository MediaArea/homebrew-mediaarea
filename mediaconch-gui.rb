class MediaconchGui < Formula
  desc "Conformance checker and technical metadata reporter (GUI)"
  homepage "https://mediaarea.net/MediaConch"
  url "https://mediaarea.net/download/binary/mediaconch-gui/17.08/MediaConch_GUI_17.08_GNU_FromSource.tar.bz2"
  version "17.08"
  sha256 "3d9d8b154bb0c7111a158ce6b0a64fa2a168e4b610d61ada51df5044f90aabce"

  bottle do
    cellar :any
    sha256 "8fef9f03fff1925ab9c5279fb1ac52470139add4b4e2f2adf5a10df08a70d96d" => :sierra
    sha256 "1dab3eb4b641bd231a7526bec9907cbde1f1c71b651c63d8d7dc83b2683cc406" => :el_capitan
    sha256 "c9a7da28d09c2fee2a7c412652f7f564b2c976b8e7207918c301881ed255d912" => :yosemite
  end

  depends_on "pkg-config" => :build
  depends_on "jansson"
  depends_on "libevent"
  depends_on "libxml2"
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
      system "#{Formula["qt5"].bin}/qmake", "STATIC_LIBS=1", "-after", "QMAKE_MACOSX_DEPLOYMENT_TARGET=10.7"

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
 
