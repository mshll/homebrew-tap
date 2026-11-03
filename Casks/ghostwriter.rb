cask "ghostwriter" do
  version "1.0.1"
  sha256 "161158c9508dee46bbf82445b4996f94ed233132d5775abbc802bae38fda5085"

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
