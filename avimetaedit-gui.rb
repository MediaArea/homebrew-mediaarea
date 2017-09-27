class AvimetaeditGui < Formula
  desc "A tool that supports embedding, validating, and exporting of metadata in AVI (Standard and OpenDML) files (GUI)"
  homepage "https://mediaarea.net/AVIMetaEdit"
  version "1.0.1"
  url "https://mediaarea.net/download/binary/avimetaedit-gui/#{version}/AVIMetaEdit_GUI_#{version}_GNU_FromSource.tar.bz2"
  sha256 "9e383f4a4a3246d2539c0ffa58ace5b38f6869ad0ac7ffa96ed96aa8188f6fb4"

  bottle do
    cellar :any
    sha256 "8fef9f03fff1925ab9c5279fb1ac52470139add4b4e2f2adf5a10df08a70d96d" => :sierra
    sha256 "1dab3eb4b641bd231a7526bec9907cbde1f1c71b651c63d8d7dc83b2683cc406" => :el_capitan
    sha256 "c9a7da28d09c2fee2a7c412652f7f564b2c976b8e7207918c301881ed255d912" => :yosemite
  end

  depends_on "qt"

  def install
    cd "Project/QtCreator" do
      system "#{Formula["qt"].bin}/qmake"
      system "make"

      prefix.install "AVI MetaEdit.app"

      bin.mkpath
      ln "#{prefix}/AVI MetaEdit.app/Contents/MacOS/AVI MetaEdit", "#{bin}/avimetaedit-gui"
    end
  end
end
