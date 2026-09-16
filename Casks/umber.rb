cask "umber" do
  version "0.1.0-beta.3"
  sha256 "6870708c1db923d3427bdb70f49c07994f2784082b7fce656d25f2b181903021"

  url "https://github.com/mshll/umber-releases/releases/download/downloads/Umber-#{version}.dmg"
  name "Umber"
  desc "Floating markdown notes"
  homepage "https://umber.mshl.me"

  livecheck do
    url "https://raw.githubusercontent.com/mshll/umber-releases/main/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :tahoe"

  app "Umber.app"

  zap trash: [
    "~/Library/Caches/com.mshl.umber",
    "~/Library/HTTPStorages/com.mshl.umber",
    "~/Library/Preferences/com.mshl.umber.plist",
    "~/Library/Saved Application State/com.mshl.umber.savedState",
  ]
end
