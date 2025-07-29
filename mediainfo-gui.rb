class MediainfoGui < Formula
  desc "Unified display of technical and tag data for audio/video"
  homepage "https://mediaarea.net/"
  url "https://mediaarea.net/download/binary/mediainfo-gui/25.07/MediaInfo_GUI_25.07_GNU_FromSource.tar.xz"
  sha256 "eff17dc966290f3ee0f8be0abd279e98eb0d34e1799fbb8b1ec7b210ed624d88"

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
    assert_path_exists `bin/mediainfo-gui`
  end
end
