class Movmetaedit < Formula
  desc "Embed, validate and export MOV (QuickTime) or MP4 files metadata"
  homepage "https://mediaarea.net/MOVMetaEdit"
  url "https://mediaarea.net/download/binary/movmetaedit/17.10.1/MOVMetaEdit_CLI_17.10.1_GNU_FromSource.tar.bz2"
  version "17.10.1"
  sha256 "dd7654f51c2cd5c41386fcd3b7ec2e2a722231f3da89872d0f7ba15e4f6a5cca"

  def install
    cd "Project/GNU/CLI" do
      system "./configure", "--disable-debug",
                            "--disable-dependency-tracking",
                            "--disable-silent-rules",
                            "--prefix=#{prefix}"
      system "make", "install"
    end
  end
end
