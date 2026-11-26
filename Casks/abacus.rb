cask "abacus" do
  version "0.1.5"
  sha256 "903800954de4f734c919439234c2cd4c6ce68678664b6a128007e140b0ed718f"

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
