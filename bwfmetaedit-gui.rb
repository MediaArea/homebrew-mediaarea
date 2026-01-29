class BwfmetaeditGui < Formula
  desc "Embed, validate and export Broadcast WAVE Format (BWF) metadata"
  homepage "https://mediaarea.net/BWFMetaEdit"
  url "https://mediaarea.net/download/binary/bwfmetaedit-gui/26.01/BWFMetaEdit_GUI_26.01_GNU_FromSource.tar.xz"
  sha256 "b670b196397d7d94c83b97b50f4704a66e01de113f1f68e7922e3d45e4fab4d8"

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
