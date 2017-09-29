class Avimetaedit < Formula
  desc "A tool that supports embedding, validating, and exporting of metadata in AVI (Standard and OpenDML) files"
  homepage "https://mediaarea.net/AVIMetaEdit"
  url "https://mediaarea.net/download/binary/avimetaedit/1.0.1/AVIMetaEdit_CLI_1.0.1_GNU_FromSource.tar.bz2"
  version "1.0.1"
  sha256 "3aa4ca6aed51c71684f3fd1bd3b4defc2f9e50a8bd0bdf10e55e86c8ba24aafd"

  bottle do
    cellar :any
    sha256 "8fef9f03fff1925ab9c5279fb1ac52470139add4b4e2f2adf5a10df08a70d96d" => :sierra
    sha256 "1dab3eb4b641bd231a7526bec9907cbde1f1c71b651c63d8d7dc83b2683cc406" => :el_capitan
    sha256 "c9a7da28d09c2fee2a7c412652f7f564b2c976b8e7207918c301881ed255d912" => :yosemite
  end

  def install
    cd "Project/GNU/CLI" do
      system "./configure",  "--disable-debug", "--prefix=#{prefix}"
      system "make", "install"
    end
  end

  test do
    pipe_output("#{bin}/avimetaedit", test_fixtures("test.avi"))
  end
end
