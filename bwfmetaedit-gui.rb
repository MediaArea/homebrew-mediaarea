class BwfmetaeditGui < Formula
  desc "Embed, validate and export Broadcast WAVE Format (BWF) metadata"
  homepage "https://mediaarea.net/BWFMetaEdit"
  url "https://mediaarea.net/download/binary/bwfmetaedit-gui/25.03/BWFMetaEdit_GUI_25.03_GNU_FromSource.tar.xz"
  sha256 "999ab147a768ab68660ac0ec7a790f534f5ce16fb50c9f8fea6bd4723babf1ef"

  depends_on "qt"

  def install
    cd "Project/QtCreator" do
      system "#{Formula["qt"].bin}/qmake"
      system "make"

      prefix.install "BWF MetaEdit.app"

      bin.mkpath
      ln "#{prefix}/BWF MetaEdit.app/Contents/MacOS/BWF MetaEdit", bin/"bwfmetaedit-gui"
    end
  end

  test do
    assert_path_exists bin/"bwfmetaedit-gui"
  end
end
