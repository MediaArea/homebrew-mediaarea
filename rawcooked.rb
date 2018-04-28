class Rawcooked < Formula
  desc "Losless RAW audio-visual data to MKV encoder"
  homepage "https://mediaarea.net/RAWCooked"
  url "https://mediaarea.net/download/snapshots/binary/rawcooked/20180421/RAWcooked_CLI_18.01.20180421_GNU_FromSource.tar.xz"
  version "18.01.20180421"
  sha256 "5f969894b41c1cbbc333e261f60b027db37df6a62985f578bbcfb7f3b91e3b54"

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
