class AvimetaeditGui < Formula
  desc "A tool that supports embedding, validating, and exporting of metadata in AVI (Standard and OpenDML) files (GUI)"
  homepage "https://mediaarea.net/AVIMetaEdit"
  version "1.0.1"
  url "https://mediaarea.net/download/binary/avimetaedit-gui/#{version}/AVIMetaEdit_GUI_#{version}_GNU_FromSource.tar.bz2"
  sha256 "9e383f4a4a3246d2539c0ffa58ace5b38f6869ad0ac7ffa96ed96aa8188f6fb4"

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
