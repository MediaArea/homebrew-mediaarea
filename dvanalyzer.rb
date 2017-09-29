class Dvanalyzer < Formula
  desc "A technical quality control and reporting tool that examines DV streams in order to report errors in the tape-to-file transfer process"
  homepage "https://mediaarea.net/DVAnalyzer"
  url "https://mediaarea.net/download/binary/dvanalyzer/1.4.2/DVAnalyzer_CLI_1.4.2_GNU_FromSource.tar.bz2"
  version "1.4.2"
  sha256 "d2f3fdd98574f7db648708e1e46b0e2fa5f9e6e12ca14d2dfaa77c13c165914c"

  bottle do
    cellar :any
    sha256 "8fef9f03fff1925ab9c5279fb1ac52470139add4b4e2f2adf5a10df08a70d96d" => :sierra
    sha256 "1dab3eb4b641bd231a7526bec9907cbde1f1c71b651c63d8d7dc83b2683cc406" => :el_capitan
    sha256 "c9a7da28d09c2fee2a7c412652f7f564b2c976b8e7207918c301881ed255d912" => :yosemite
  end

  depends_on "pkg-config" => :build

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

    cd "AVPS_DV_Analyzer/Project/GNU/CLI" do
      system "./configure",  "--disable-debug", "--enable-staticlibs", "--prefix=#{prefix}"
      system "make", "install"
    end
  end

  test do
    pipe_output("#{bin}/dvanalyzer", "--help")
  end
end
