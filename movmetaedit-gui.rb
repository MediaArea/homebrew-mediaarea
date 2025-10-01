class MovmetaeditGui < Formula
  desc "Embed, validate and export MOV (QuickTime) or MP4 files metadata"
  homepage "https://mediaarea.net/MOVMetaEdit"
  url "https://mediaarea.net/download/binary/movmetaedit-gui/25.09/MOVMetaEdit_GUI_25.09_GNU_FromSource.tar.xz"
  sha256 "18d42a4c043990df40e5398ea189d940381fd5756902b7c8a47e04c1966d2d40"

  depends_on "qt@5"

  def install
    cd "Project/Qt" do
      system "#{Formula["qt@5"].bin}/qmake"
      system "make"

      prefix.install "MOV MetaEdit.app"

      bin.mkpath
      ln_s prefix / "MOV MetaEdit.app/Contents/MacOS/MOV MetaEdit", bin / "movmetaedit-gui", relative: true
    end
  end

  test do
    assert_path_exists bin / "movmetaedit-gui"
  end
end
