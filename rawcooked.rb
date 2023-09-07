class Rawcooked < Formula
  desc "Lossless RAW audio-visual data to MKV encoder and decoder"
  homepage "https://mediaarea.net/RAWcooked"
  url "https://mediaarea.net/download/binary/rawcooked/23.09/RAWcooked_CLI_23.09_GNU_FromSource.tar.xz"
  sha256 "9860b3d044c63548b8df9d72db67268351582460dfed50425bba0716c1af96d0"

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
