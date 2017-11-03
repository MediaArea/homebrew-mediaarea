class BwfmetaeditGui < Formula
  desc "A tool that supports embedding, validating, and exporting of metadata in Broadcast WAVE Format (BWF) files (GUI)"
  homepage "https://mediaarea.net/BWFMetaEdit"
  version "1.3.2"
  url "https://mediaarea.net/download/binary/bwfmetaedit-gui/#{version}/BWFMetaEdit_GUI_#{version}_GNU_FromSource.tar.bz2"
  sha256 "6d6117dce0716f3dcefe906cd909c9c51549aaa7513bd33cffa34caf9890fd97"

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
