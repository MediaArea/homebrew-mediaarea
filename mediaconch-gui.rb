class MediaconchGui < Formula
  desc "Conformance checker and technical metadata reporter (GUI)"
  homepage "https://mediaarea.net/MediaConch"
  url "https://mediaarea.net/download/binary/mediaconch-gui/24.06/MediaConch_GUI_24.06_GNU_FromSource.tar.xz"
  sha256 "4330ebd0708ba6bc6c8a59e84299956186bd686839dd6f99ba689bcd778a5c99"

  depends_on "pkg-config" => :build
  depends_on "jansson"
  depends_on "libevent"
  depends_on "libxml2"
  depends_on "qt@5"
  depends_on "sqlite"

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
      system "#{Formula["qt@5"].bin}/qmake", "STATIC_LIBS=1"

      system "make"

      prefix.install "MediaConch.app"

      mkdir bin.to_s
      ln "#{prefix}/MediaConch.app/Contents/MacOS/MediaConch", "#{bin}/mediaconch-gui"
    end
  end
  test do
    assert_predicate "#{bin}/mediaconch-gui", :exist?
  end
end
