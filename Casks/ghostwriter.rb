cask "ghostwriter" do
  version "1.0.0"
  sha256 "a01c44c296f2a1e59b9cc7bc59cb1e63df1cd060eea75775a5920f8dd75efa41"

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
