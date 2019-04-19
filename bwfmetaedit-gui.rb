class BwfmetaeditGui < Formula
  desc "Embed, validate and export Broadcast WAVE Format (BWF) metadata"
  homepage "https://mediaarea.net/BWFMetaEdit"
  url "https://mediaarea.net/download/binary/bwfmetaedit-gui/1.3.7/BWFMetaEdit_GUI_1.3.7_GNU_FromSource.tar.bz2"
  version "1.3.7"
  sha256 "cfca26c109f65448863d9f9d1ba57cc25ce4339c1a4b3a20ab15df1391f301e6"

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
