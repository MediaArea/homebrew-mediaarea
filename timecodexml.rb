class Timecodexml < Formula
  desc "Convert MediaTimecode XML from MediaInfo into MediaTimecode VTT"
  homepage "https://github.com/MediaArea/timecodexml"
  url "https://github.com/MediaArea/timecodexml/archive/refs/tags/v0.1.tar.gz"
  sha256 "88123b13fd92fa73c1c433421d0018cb7158a01c761930ae2bd8ac93add853d9"
  head "https://github.com/MediaArea/timecodexml.git", branch: "main"

  def install
    system "make"

    bin.install "timecodexml2webvtt"
  end

  test do
    assert_path_exists bin/"timecodexml2webvtt"
  end
end
