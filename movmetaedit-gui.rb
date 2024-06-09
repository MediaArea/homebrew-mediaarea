class MovmetaeditGui < Formula
  desc "Embed, validate and export MOV (QuickTime) or MP4 files metadata"
  homepage "https://mediaarea.net/MOVMetaEdit"
  url "https://mediaarea.net/download/binary/movmetaedit-gui/24.06/MOVMetaEdit_GUI_24.06_GNU_FromSource.tar.xz"
  sha256 "d743baa9963ea67c9ecdf5a2a01368fffabbef989da493ded978a5d12f01244a"

  depends_on "qt@5"

  def install
    cd "Project/Qt" do
      system "#{Formula["qt@5"].bin}/qmake"
      system "make"

      prefix.install "MOV MetaEdit.app"

      bin.mkpath
      ln "#{prefix}/MOV MetaEdit.app/Contents/MacOS/MOV MetaEdit", "#{bin}/movmetaedit-gui"
    end
  end

  test do
    assert_predicate "#{bin}/movmetaedit-gui", :exist?
  end
end
