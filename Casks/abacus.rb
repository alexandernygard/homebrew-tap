cask "abacus" do
  version "0.1.2"
  sha256 "b9b22386225818b7fbcad0ccfba2c331e680342b2dbffeae22c301b397fbde36"

  url "https://github.com/alexandernygard/abacus/releases/download/v#{version}/Abacus.zip"
  name "Abacus"
  desc "Live view of the beads your agents are working on"
  homepage "https://github.com/alexandernygard/abacus"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Abacus.app"

  uninstall quit: "com.nyggis.abacus"

  zap trash: [
    "~/Library/Application Support/Abacus",
    "~/Library/Caches/com.nyggis.abacus",
    "~/Library/Preferences/com.nyggis.abacus.plist",
    "~/Library/Saved Application State/com.nyggis.abacus.savedState",
    "~/Library/WebKit/com.nyggis.abacus",
  ]
end
