class BwfmetaeditGui < Formula
  desc "A tool that supports embedding, validating, and exporting of metadata in Broadcast WAVE Format (BWF) files (GUI)"
  homepage "https://mediaarea.net/BWFMetaEdit"
  version "1.3.5"
  url "https://mediaarea.net/download/binary/bwfmetaedit-gui/#{version}/BWFMetaEdit_GUI_#{version}_GNU_FromSource.tar.bz2"
  sha256 "36c7b5fe4c313a0bd3567afbbbf80825ecf41446d86fba0eab39346283f6f376"

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
