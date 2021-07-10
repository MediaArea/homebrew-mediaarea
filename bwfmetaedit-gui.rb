class BwfmetaeditGui < Formula
  desc "Embed, validate and export Broadcast WAVE Format (BWF) metadata"
  homepage "https://mediaarea.net/BWFMetaEdit"
  url "https://mediaarea.net/download/binary/bwfmetaedit-gui/21.07/BWFMetaEdit_GUI_21.07_GNU_FromSource.tar.bz2"
  sha256 "7432782b4bf06d20a8fdb7b362e11c51c220d5c55043887a19f53acd9a3a4b63"

  depends_on "qt@5"

  def install
    cd "Project/QtCreator" do
      system "#{Formula["qt@5"].bin}/qmake"
      system "make"

      prefix.install "BWF MetaEdit.app"

      bin.mkpath
      ln "#{prefix}/BWF MetaEdit.app/Contents/MacOS/BWF MetaEdit", "#{bin}/bwfmetaedit-gui"
    end
  end

  test do
    assert_predicate "#{bin}/bwfmetaedit-gui", :exist?
  end
end
