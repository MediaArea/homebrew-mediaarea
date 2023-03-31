class Rawcooked < Formula
  desc "Lossless RAW audio-visual data to MKV encoder and decoder"
  homepage "https://mediaarea.net/RAWcooked"
  url "https://mediaarea.net/download/binary/rawcooked/23.03/RAWcooked_CLI_23.03_GNU_FromSource.tar.xz"
  sha256 "efd0015c4869f6b8ea90e462fb49164ffe26ab5e20fa967fac7a9ce23e04b800"

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
    system "#{bin}/rawcooked", "-h"
  end
end
