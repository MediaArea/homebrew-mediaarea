class Rawcooked < Formula
  desc "Lossless RAW audio-visual data to MKV encoder and decoder"
  homepage "https://mediaarea.net/RAWcooked"
  url "https://mediaarea.net/download/source/rawcooked/21.09/rawcooked_21.09.tar.gz"
  sha256 "0bd58b10a97a87ccf7efb496f4b28457a0dfbe073b8a1abaed8a6f6460ab0f55"

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
