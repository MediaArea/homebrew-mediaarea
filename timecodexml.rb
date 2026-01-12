class Timecodexml < Formula
  desc "Convert MediaTimecode XML from MediaInfo into MediaTimecode VTT"
  homepage "https://github.com/MediaArea/timecodexml"
  url "https://github.com/MediaArea/timecodexml/archive/refs/tags/v0.2.tar.gz"
  sha256 "5041dba96511d033df2069450115a58f9f171fb2590372dd35ed6895bc38977b"
  head "https://github.com/MediaArea/timecodexml.git", branch: "main"
  revision 1

  def install
    system "make"

    bin.install "timecodexml2webvtt"
  end

  test do
    assert_path_exists bin/"timecodexml2webvtt"
  end
end
