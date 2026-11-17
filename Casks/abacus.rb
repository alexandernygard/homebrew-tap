cask "abacus" do
  version "0.1.0"
  sha256 "94c50e2ebb0b05e7d0419c61cbced4c561735ff0bb43665e0fe84aa87af112d4"

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
