cask "ghostwriter" do
  version "1.0.0"
  sha256 "c8fd217a87e7f69622eb5630fd6a51c91a5c864692ceac84f570b8cf87b7f028"

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
