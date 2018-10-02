class Rawcooked < Formula
  desc "Losless RAW audio-visual data to MKV encoder"
  homepage "https://mediaarea.net/RAWcooked"
  url "https://mediaarea.net/download/binary/rawcooked/18.07alpha2/RAWcooked_CLI_18.07alpha2_GNU_FromSource.tar.xz"
  version "18.07alpha2"
  sha256 "dba8fbf49841a9a89c66b53176f54ba00598124ceb802758fe293f1c6061e567"

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
