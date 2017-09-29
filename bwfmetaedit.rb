class Bwfmetaedit < Formula
  desc "A tool that supports embedding, validating, and exporting of metadata in Broadcast WAVE Format (BWF) files"
  homepage "https://mediaarea.net/BWFMetaEdit"
  url "https://mediaarea.net/download/binary/bwfmetaedit/1.3.2/BWFMetaEdit_CLI_1.3.2_GNU_FromSource.tar.bz2"
  version "1.3.2"
  sha256 "2109d625cc834e38bf05641d550fcb0fe8c095f3fdc0fa69283d26410e4a9f74"

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
    pipe_output("#{bin}/bwfmetaedit", "--help")
  end
end
