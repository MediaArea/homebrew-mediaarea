class DvanalyzerGui < Formula
  desc "A technical quality control and reporting tool that examines DV streams in order to report errors in the tape-to-file transfer process (GUI)"
  homepage "https://mediaarea.net/DVAnalyzer"
  version "1.4.2"
  url "https://mediaarea.net/download/binary/dvanalyzer-gui/#{version}/DVAnalyzer_GUI_#{version}_GNU_FromSource.tar.bz2"
  sha256 "2f62289a7c51a3ad2096ed4c62868a3376c1391480118038da5681216d96b322"

  depends_on "pkg-config" => :build
  depends_on "qt"

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

    cd "AVPS_DV_Analyzer/Project/GNU/GUI" do
      system("env CXXFLAGS=-std=c++11 LDFLAGS='-framework ApplicationServices' ./configure --disable-debug --enable-staticlibs --prefix=#{prefix}")
      system "make", "install"
    end
  end
end
