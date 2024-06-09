class Movmetaedit < Formula
  desc "Embed, validate and export MOV (QuickTime) or MP4 files metadata"
  homepage "https://mediaarea.net/MOVMetaEdit"
  url "https://mediaarea.net/download/binary/movmetaedit/24.06/MOVMetaEdit_CLI_24.06_GNU_FromSource.tar.xz"
  sha256 "51c74eb5db845e9436f3e82f37ea1a9c8c8f8a00ddacd6f5087696081b74ba2a"

  def install
    cd "Project/GNU/CLI" do
      system "./configure", "--disable-debug",
                            "--disable-dependency-tracking",
                            "--disable-silent-rules",
                            "--prefix=#{prefix}"
      system "make", "install"
    end
  end

  test do
    system "#{bin}/movmetaedit", "--help"
  end
end
