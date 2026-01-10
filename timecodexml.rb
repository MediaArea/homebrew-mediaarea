class Timecodexml < Formula
  desc "Convert MediaTimecode XML from MediaInfo into MediaTimecode VTT"
  homepage "https://github.com/MediaArea/timecodexml"
  url "https://github.com/MediaArea/timecodexml/archive/refs/tags/v0.2.tar.gz"
  sha256 "d59d4438d16f4d41fffdf255c85dcb74bd50ebb5e24f020d3b7f3da13ca9fa48"
  head "https://github.com/MediaArea/timecodexml.git", branch: "main"

  def install
    system "make"

    bin.install "timecodexml2webvtt"
  end

  test do
    assert_path_exists bin/"timecodexml2webvtt"
  end
end
