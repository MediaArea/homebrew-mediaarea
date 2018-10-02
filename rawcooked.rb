class Rawcooked < Formula
  desc "Losless RAW audio-visual data to MKV encoder"
  homepage "https://mediaarea.net/RAWCooked"
  url "https://mediaarea.net/download/binary/rawcooked/18.09beta1/RAWcooked_CLI_18.09beta1_GNU_FromSource.tar.xz"
  version "18.09beta1"
  sha256 "d5be71a09f4c036de6860d88f32f16d1ff7945f093d0b3939139500a9d15c25b"

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
