class BwfmetaeditGui < Formula
  desc "Embed, validate and export Broadcast WAVE Format (BWF) metadata"
  homepage "https://mediaarea.net/BWFMetaEdit"
  url "https://mediaarea.net/download/binary/bwfmetaedit-gui/1.3.8/BWFMetaEdit_GUI_1.3.8_GNU_FromSource.tar.bz2"
  version "1.3.8"
  sha256 "3fbbb67d15c6c04343fcf946e0ecef06876e351b750a92941b27ebbab12d34b8"

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
