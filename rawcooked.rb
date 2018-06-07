class Rawcooked < Formula
  desc "Losless RAW audio-visual data to MKV encoder"
  homepage "https://mediaarea.net/RAWCooked"
  url "https://mediaarea.net/download/binary/rawcooked/18.06alpha1/RAWcooked_CLI_18.06alpha1_GNU_FromSource.tar.xz"
  version "18.06alpha1"
  sha256 "ed226fc2909244472ce9646cfdbff7c1ead98d3d94fcab131cd4680c969ec3fe"

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
