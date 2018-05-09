class AvimetaeditGui < Formula
  desc "A tool that supports embedding, validating, and exporting of metadata in AVI (Standard and OpenDML) files (GUI)"
  homepage "https://mediaarea.net/AVIMetaEdit"
  version "1.0.2"
  url "https://mediaarea.net/download/binary/avimetaedit-gui/#{version}/AVIMetaEdit_GUI_#{version}_GNU_FromSource.tar.bz2"
  sha256 "abe8a3e267211c6ce1c87eb3af79afee37b793f4e43057aa1104837b3813e978"

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
