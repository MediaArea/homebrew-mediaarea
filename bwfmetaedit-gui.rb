class BwfmetaeditGui < Formula
  desc "Embed, validate and export Broadcast WAVE Format (BWF) metadata"
  homepage "https://mediaarea.net/BWFMetaEdit"
  url "https://mediaarea.net/download/binary/bwfmetaedit-gui/25.04/BWFMetaEdit_GUI_25.04_GNU_FromSource.tar.xz"
  sha256 "281b76937cb1e20f563d1c84f0fa07982f90ae677d10bee23966e0948fed8de6"

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
