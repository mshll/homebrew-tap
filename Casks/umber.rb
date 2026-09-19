cask "umber" do
  version "0.1.0-beta.6,6"
  sha256 "e2800939afbdbf2b02b8883e606c2e98e512a24c5a6f59facd0dab200152108d"

  url "https://github.com/mshll/umber-releases/releases/download/v#{version.csv.first}/Umber.dmg"
  name "Umber"
  desc "Floating markdown notes"
  homepage "https://tryumber.app"

  livecheck do
    url "https://raw.githubusercontent.com/mshll/umber-releases/main/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :tahoe

  app "Umber.app"

  zap trash: [
    "~/Library/Caches/com.mshl.umber",
    "~/Library/HTTPStorages/com.mshl.umber",
    "~/Library/Preferences/com.mshl.umber.plist",
    "~/Library/Saved Application State/com.mshl.umber.savedState",
  ]
end
