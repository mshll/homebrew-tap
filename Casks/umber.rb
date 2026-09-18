cask "umber" do
  version "0.1.0-beta.5,5"
  sha256 "333da5ee5bc16bf6b8376919d9dc8df641a22ee78a6e0afae47f9804c4d9af70"

  url "https://github.com/mshll/umber-releases/releases/download/downloads/Umber-#{version.csv.first}.dmg"
  name "Umber"
  desc "Floating markdown notes"
  homepage "https://umber.mshl.me"

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
