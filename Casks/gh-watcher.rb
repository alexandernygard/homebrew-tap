cask "gh-watcher" do
  version "2.0.0"
  sha256 "96da5136d99707e13fe3ec7a2a01da9dca239e37db8e59de63f0f179904a01a5"

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
