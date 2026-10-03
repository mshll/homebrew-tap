cask "cirrus-notes" do
  version "0.6.1"
  sha256 "4e82875e82f733a5216458ede70d41ee19a7616e5cfcf70e06a321f98098dfa5"

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
