class Rawcooked < Formula
  desc "Losless RAW audio-visual data to MKV encoder"
  homepage "https://mediaarea.net/RAWCooked"
  url "https://mediaarea.net/download/snapshots/binary/rawcooked/20180514-2/RAWcooked_CLI_18.01.20180514_GNU_FromSource.tar.xz"
  version "18.01.20180514"
  sha256 "06e5b8ba848a2db843998de34c40c39ff9ff47cd50cd287014020140bdc2ad26"

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
