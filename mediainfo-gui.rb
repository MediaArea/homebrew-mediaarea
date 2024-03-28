class MediainfoGui < Formula
  desc "Unified display of technical and tag data for audio/video"
  homepage "https://mediaarea.net/"
  url "https://mediaarea.net/download/binary/mediainfo-gui/24.03/MediaInfo_GUI_24.03_GNU_FromSource.tar.xz"
  sha256 "7a87105d84f1abcf712415495e5e3c6fe7da0f69065bc75c65fa6963ab8c5e1e"

  depends_on "pkg-config" => :build
  # fails to build against Leopard's older libcurl
  depends_on "curl"
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
