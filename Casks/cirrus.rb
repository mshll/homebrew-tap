cask "cirrus" do
  version "0.3.0,14"
  sha256 "ac6c0581344cb2092d62d4923fe2d657f9753f3017cfee4f907e0ae6231debb6"

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
