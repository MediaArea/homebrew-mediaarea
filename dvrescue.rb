class Dvrescue < Formula
  desc "Data migration from DV tapes into files for long-term preservation"
  homepage "https://mediaarea.net/dvrescue"
  url "https://mediaarea.net/download/binary/dvrescue/24.04/dvrescue_CLI_24.04_GNU_FromSource.tar.xz"
  sha256 "5f3f1bd869860a8cfa88c9d0a3e44aa139d4ce5a6a9d029e750b6a0402d40126"

  depends_on "xmlstarlet"

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
    system "#{bin}/dvrescue", "--help"
  end
end
