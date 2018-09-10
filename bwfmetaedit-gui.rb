class BwfmetaeditGui < Formula
  desc "A tool that supports embedding, validating, and exporting of metadata in Broadcast WAVE Format (BWF) files (GUI)"
  homepage "https://mediaarea.net/BWFMetaEdit"
  version "1.3.6"
  url "https://mediaarea.net/download/binary/bwfmetaedit-gui/#{version}/BWFMetaEdit_GUI_#{version}_GNU_FromSource.tar.bz2"
  sha256 "1685a2a492310f4cd86e040239b266b68b72c94f73d570961994f523ea4312ca"

  depends_on "qt"

  def install
    cd "Project/QtCreator" do
      system "#{Formula["qt"].bin}/qmake"
      system "make"

      prefix.install "BWF MetaEdit.app"

      bin.mkpath
      ln "#{prefix}/BWF MetaEdit.app/Contents/MacOS/BWF MetaEdit", "#{bin}/bwfmetaedit-gui"
    end
  end
end
