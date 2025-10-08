class Movmetaedit < Formula
  desc "Embed, validate and export MOV (QuickTime) or MP4 files metadata"
  homepage "https://mediaarea.net/MOVMetaEdit"
  url "https://mediaarea.net/download/binary/movmetaedit/25.09/MOVMetaEdit_CLI_25.09_GNU_FromSource.tar.xz"
  sha256 "8f850fdbbe87e6a29769d3ecaff95e961ae1aba68f36661ff4a3383bf85dfc30"

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
    system "bin/movmetaedit", "--help"
  end
end
