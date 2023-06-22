cask "dvrescue-gui" do
  version "22.12"
  sha256 "a4ba0e4e91e1159b845b4d591ddf4d333fa4dd14ad72ee32f809fcd3a44159f1"

  url "https://mediaarea.net/download/binary/dvrescue-gui/#{version}/dvrescue_GUI_#{version}_Mac.dmg"
  name "DV Rescue"
  desc "Capture, analyze, and package DV for archival preservation"
  homepage "https://mediaarea.net/DVRescue"

  livecheck do
    url "https://mediaarea.net/DVRescue/Download/Mac_OS"
    regex(/href=.*?dvrescue_GUI_(\d+(?:\.\d+)+)_Mac\.dmg/i)
  end

  depends_on macos: ">= :high_sierra"

  app "DVRescue.app"

  zap trash: [
    "~/Library/Caches/dvrescue",
    "~/Library/Preferences/net.mediaarea.dvrescue-gui.mac.plist",
    "~/Library/Saved Application State/net.mediaarea.dvrescue-gui.mac.savedState",
  ]
end
