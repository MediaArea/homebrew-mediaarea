class Rawcooked < Formula
  desc "Losless RAW audio-visual data to MKV encoder"
  homepage "https://mediaarea.net/RAWcooked"
  url "https://mediaarea.net/download/binary/rawcooked/18.10.1/RAWcooked_CLI_18.10.1_GNU_FromSource.tar.xz"
  version "18.10.1"
  sha256 "4c0a090a0bec13ac70ef5eebfeed3d6b228f47d90068ec6cd4ca991944b5d3a3"

  def install
    cd "Project/GNU/CLI" do
      system "./configure", "--disable-debug",
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
