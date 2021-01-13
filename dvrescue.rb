class Dvrescue < Formula
  desc "Data migration from DV tapes into files for long-term preservation"
  homepage "https://mediaarea.net/dvrescue"
  url "https://mediaarea.net/download/binary/dvrescue/0.20.06/dvrescue_CLI_0.20.06_GNU_FromSource.tar.xz"
  sha256 "259fced760add16fc5153819b9e13bcd0374c616af768ef838b9d4bd9df86530"

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
