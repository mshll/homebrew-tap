cask "umber" do
  version "0.1.0-beta.7,7"
  sha256 "7b74f8357ab8ca973e12d4958dfa0b46e1449d8e272aa7d0ab8d0d1e9c1e0947"

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
