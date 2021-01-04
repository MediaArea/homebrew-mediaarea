class Rawcooked < Formula
  desc "Lossless RAW audio-visual data to MKV encoder and decoder"
  homepage "https://mediaarea.net/RAWcooked"
  url "https://mediaarea.net/download/binary/rawcooked/21.01/RAWcooked_CLI_21.01_GNU_FromSource.tar.xz"
  sha256 "18ab216331526e9ac33bbf1e6b4cc3beec2822ed31f8bc80a48e0a599c7ce1dc"

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
