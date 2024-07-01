cask "mediaconch-gui" do
  version "24.06"
  sha256 "5845a2099fd941d26e23c591a49441496aebddc2df49dab58516a74db4ab768a"

  url "https://mediaarea.net/download/binary/mediaconch-gui/#{version}/MediaConch_GUI_#{version}_Mac.dmg"
  name "MediaConch"
  desc "Conformance checker and technical metadata reporter (GUI)"
  homepage "https://mediaarea.net/MediaConch"

  livecheck do
    url "https://mediaarea.net/MediaConch/Download/Mac_OS"
    regex(/href=.*?MediaConch_GUI_(\d+(?:\.\d+)+)_Mac\.dmg/i)
  end

  depends_on macos: ">= :high_sierra"

  app "MediaConch.app"

  zap trash: [
    "~/Library/Caches/mediaconch",
    "~/Library/Preferences/net.mediaarea.mediaconch-gui.mac.plist",
    "~/Library/Saved Application State/net.mediaarea.mediaconch-gui.mac.savedState",
  ]
end
