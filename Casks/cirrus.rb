cask "cirrus" do
  version "0.3.1,15"
  sha256 "1d62824732751da8fd6485b743129b1d81767c649dcce3f3e68c6cc24fa51899"

  url "https://github.com/mshll/cirrus/releases/download/v#{version.csv.first}/Cirrus.dmg"
  name "Cirrus"
  desc "Floating markdown notes"
  homepage "https://trycirrus.app"

  livecheck do
    url "https://raw.githubusercontent.com/mshll/cirrus/main/updates.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :tahoe

  app "Cirrus.app"

  zap trash: [
    "~/Library/Caches/com.mshl.umber",
    "~/Library/HTTPStorages/com.mshl.umber",
    "~/Library/Preferences/com.mshl.umber.plist",
    "~/Library/Saved Application State/com.mshl.umber.savedState",
  ]
end
