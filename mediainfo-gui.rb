class MediainfoGui < Formula
  desc "Unified display of technical and tag data for audio/video"
  homepage "https://mediaarea.net/"
  url "https://mediaarea.net/download/binary/mediainfo-gui/23.11/MediaInfo_GUI_23.11_GNU_FromSource.tar.xz"
  sha256 "00c51a600f8134a9f41726977461d6d8c44dfa99b4fc4ee6a22135a924b71d8c"

  depends_on "pkg-config" => :build
  # fails to build against Leopard's older libcurl
  depends_on "curl" if MacOS.version < :snow_leopard
  depends_on "wxwidgets"

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
    assert_predicate "#{bin}/mediainfo-gui", :exist?
  end
end
