class BwfmetaeditGui < Formula
  desc "Embed, validate and export Broadcast WAVE Format (BWF) metadata"
  homepage "https://mediaarea.net/BWFMetaEdit"
  url "https://mediaarea.net/download/binary/bwfmetaedit-gui/22.11/BWFMetaEdit_GUI_22.11_GNU_FromSource.tar.bz2"
  sha256 "3717d0b6ddc7d99ff59d5790dffc64cff6f6b899b66ed11c680b4f1c2c7bd887"

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
