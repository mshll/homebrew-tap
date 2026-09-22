cask "umber" do
  version "0.1.0,10"
  sha256 "2dee2c1491e8eb1acab5eaab0bb924ec6b6b5f25cdcff37d914ee397cd8413c3"

  url "https://github.com/mshll/umber/releases/download/v#{version.csv.first}/Umber.dmg"
  name "Umber"
  desc "Floating markdown notes"
  homepage "https://tryumber.app"

  livecheck do
    url "https://raw.githubusercontent.com/mshll/umber/main/appcast.xml"
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
