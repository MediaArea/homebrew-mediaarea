class Rawcooked < Formula
  desc "Lossless RAW audio-visual data to MKV encoder and decoder"
  homepage "https://mediaarea.net/RAWcooked"
  url "https://mediaarea.net/download/binary/rawcooked/24.11/RAWcooked_CLI_24.11_GNU_FromSource.tar.xz"
  sha256 "22eefe111c780bf955e3885a643078725c4a434e06f59ccb0f118dbce1601bc3"

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
