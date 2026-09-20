cask "umber" do
  version "0.1.0-beta.9,9"
  sha256 "273f549f6bfee00c2fdb31d1e8d77ff6d5b030ebcfc267036d89ee089b60cf20"

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
