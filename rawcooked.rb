class Rawcooked < Formula
  desc "Losless RAW audio-visual data to MKV encoder"
  homepage "https://mediaarea.net/RAWcooked"
  url "https://mediaarea.net/download/binary/rawcooked/18.10/RAWcooked_CLI_18.10_GNU_FromSource.tar.xz"
  version "18.10"
  sha256 "f1a1a2226eedf109703009318cca54c4b47ee6d02b08a9fee4ccc022b9ec9c7e"

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
