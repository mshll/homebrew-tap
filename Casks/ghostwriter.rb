cask "ghostwriter" do
  version "1.1.1"
  sha256 "292196ba7115b8574ae44692fc68ddc1c6b340ae27429ea9474426a8b125206f"

  url "https://github.com/mshll/ghostwriter/releases/download/v#{version}/Ghostwriter.dmg"
  name "Ghostwriter"
  desc "On-device AI autocomplete for every app"
  homepage "https://github.com/mshll/ghostwriter"

  livecheck do
    url "https://mshll.github.io/ghostwriter/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Ghostwriter.app"

  uninstall quit: "com.mshl.ghostwriter"

  zap trash: [
    "~/Library/Application Support/com.mshl.ghostwriter",
    "~/Library/Caches/com.mshl.ghostwriter",
    "~/Library/HTTPStorages/com.mshl.ghostwriter",
    "~/Library/Preferences/com.mshl.ghostwriter.plist",
  ]
end
