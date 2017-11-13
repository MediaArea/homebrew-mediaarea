class MovmetaeditGui < Formula
  desc "A tool that supports embedding, validating, and exporting of metadata in  MOV (Apple QuickTime) or MP4 (ISO/IEC 14496-14) files (GUI)"
  homepage "https://mediaarea.net/MOVMetaEdit"
  version "17.10.1"
  url "https://mediaarea.net/download/binary/movmetaedit-gui/#{version}/MOVMetaEdit_GUI_#{version}_GNU_FromSource.tar.bz2"
  sha256 "97d82567b6ef8d00b7d1c35659175ccd5cb0f5770de3c704383d6e3df364ff2c"

  depends_on "qt"

  def install
    cd "Project/Qt" do
      system "#{Formula["qt"].bin}/qmake"
      system "make"

      prefix.install "MOV MetaEdit.app"

      bin.mkpath
      ln "#{prefix}/MOV MetaEdit.app/Contents/MacOS/MOV MetaEdit", "#{bin}/movmetaedit-gui"
    end
  end
end
