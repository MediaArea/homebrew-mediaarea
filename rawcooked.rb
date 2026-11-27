class Rawcooked < Formula
  desc "Lossless RAW audio-visual data to MKV encoder and decoder"
  homepage "https://mediaarea.net/RAWcooked"
  url "https://mediaarea.net/download/binary/rawcooked/26.11/RAWcooked_CLI_26.11_GNU_FromSource.tar.xz"
  sha256 "1736fba1e191dfdaecbb26ebea7c1bbebb69d6789e0bf6f005d0fd1749745ab5"

  depends_on "mediaarea/mediaarea/ffmpeg-ma"

  def install
    cd "Project/GNU/CLI" do
      system "./configure",
             "--disable-debug",
             "--disable-dependency-tracking",
             "--disable-silent-rules",
             "--prefix=#{prefix}"
      system "make", "install"
    end
  end

  test do
    system "bin/rawcooked", "-h"
  end
end
