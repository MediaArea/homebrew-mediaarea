class Rawcooked < Formula
  desc "Lossless RAW audio-visual data to MKV encoder and decoder"
  homepage "https://mediaarea.net/RAWcooked"
  url "https://mediaarea.net/download/binary/rawcooked/25.12/RAWcooked_CLI_25.12_GNU_FromSource.tar.xz"
  sha256 "c8fe218fae6e3ec0a74b72588759da64425343a42b78af099b6b8359329fe065"

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
