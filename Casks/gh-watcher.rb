cask "gh-watcher" do
  version "2.0.1"
  sha256 "c9e04a951c6dc17916b1f6f55490042046a7fe9ae3e048a9176fc8676b618b8c"

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
    "~/Library/Saved Application State/com.nyggis.gh-watcher.savedState",
    "~/Library/WebKit/com.nyggis.gh-watcher",
    # GH Watcher v1 (SwiftUI)
    "~/Library/Preferences/dev.nygard.GHWatcher.plist",
  ]
end
