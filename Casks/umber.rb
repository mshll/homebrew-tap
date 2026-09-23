cask "umber" do
  version "0.2.0,11"
  sha256 "cc82f8a53a15592ebc9062a5a88f3aae7d91d08577d61ed223cb0521587d9f21"

  url "https://github.com/mshll/umber/releases/download/v#{version.csv.first}/Umber.dmg"
  name "Umber"
  desc "Floating markdown notes"
  homepage "https://tryumber.app"

  livecheck do
    url "https://raw.githubusercontent.com/mshll/umber/main/updates.xml"
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
