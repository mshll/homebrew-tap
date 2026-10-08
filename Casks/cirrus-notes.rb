cask "cirrus-notes" do
  version "0.8.0"
  sha256 "70ac76eb3aae1b9759c3765fd5ec3b06001d38691fb8725ce69c574929f75ee9"

  url "https://github.com/mshll/cirrus/releases/download/v#{version}/Cirrus.dmg"
  name "Cirrus"
  desc "Floating markdown notes"
  homepage "https://trycirrus.app/"

  livecheck do
    url "https://raw.githubusercontent.com/mshll/cirrus/main/updates.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Cirrus.app"

  zap trash: [
    "~/Library/Caches/com.mshl.umber",
    "~/Library/HTTPStorages/com.mshl.umber",
    "~/Library/Preferences/com.mshl.umber.plist",
    "~/Library/Saved Application State/com.mshl.umber.savedState",
  ]
end
