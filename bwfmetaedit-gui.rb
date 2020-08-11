class BwfmetaeditGui < Formula
  desc "Embed, validate and export Broadcast WAVE Format (BWF) metadata"
  homepage "https://mediaarea.net/BWFMetaEdit"
  url "https://mediaarea.net/download/binary/bwfmetaedit-gui/20.08/BWFMetaEdit_GUI_20.08_GNU_FromSource.tar.bz2"
  version "20.08"
  sha256 "bd3cc783b4e3021e39d10bf87abdcfea1cf4b3b8ab24baa06e135340d31ad887"

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
