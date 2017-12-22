class MediainfoGui < Formula
  desc "Unified display of technical and tag data for audio/video"
  homepage "https://mediaarea.net/"
  url "https://mediaarea.net/download/binary/mediainfo-gui/17.12/MediaInfo_GUI_17.12_GNU_FromSource.tar.bz2"
  version "17.12"
  sha256 "3a2628d5b636b8d87ace630bdee7a7bd25fb0c25427037c6f5c21c5335ae5dde"

  depends_on "pkg-config" => :build
  # fails to build against Leopard's older libcurl
  depends_on "curl" if MacOS.version < :snow_leopard
  depends_on "wxmac"

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
end
