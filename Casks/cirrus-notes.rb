cask "cirrus-notes" do
  version "0.8.1"
  sha256 "154a14941a784b53f2e9193eb15352d2ab9366a87e19f043d6c4d343baaae3a9"

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
