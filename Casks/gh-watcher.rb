cask "gh-watcher" do
  version "2.0.2"
  sha256 "4231a29406be7333ccff40681421497e5fd76dd0285ae1fec32afd69f91ade2d"

  url "https://github.com/alexandernygard/gh-watcher/releases/download/v#{version}/GH-Watcher.zip"
  name "GH Watcher"
  desc "Watches your GitHub workflows, pull requests and notifications"
  homepage "https://github.com/alexandernygard/gh-watcher"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "GH Watcher.app"

  uninstall quit: "com.nyggis.gh-watcher"

  zap trash: [
    "~/Library/Application Support/GH Watcher",
    "~/Library/Caches/com.nyggis.gh-watcher",
    "~/Library/Preferences/com.nyggis.gh-watcher.plist",
    # GH Watcher v1 (SwiftUI)
    "~/Library/Preferences/dev.nygard.GHWatcher.plist",
    "~/Library/Saved Application State/com.nyggis.gh-watcher.savedState",
    "~/Library/WebKit/com.nyggis.gh-watcher",
  ]
end
