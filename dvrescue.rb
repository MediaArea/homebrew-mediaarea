class Dvrescue < Formula
  desc "Data migration from DV tapes into files for long-term preservation"
  homepage "https://mediaarea.net/dvrescue"
  url "https://mediaarea.net/download/binary/dvrescue/24.01/dvrescue_CLI_24.01_GNU_FromSource.tar.xz"
  sha256 "4549d5a60e999f5471c4fee5080d212c326f96f9d448d72974637046aa66fe76"

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
