cask "gh-watcher" do
  version "1.0.1"
  sha256 "c8b30d896e38a244acc99eaa6457a1a9ab9a645564498d2c48dbbdd11ee58c87"

  url "https://github.com/alexandernygard/gh-watcher/releases/download/v#{version}/GH-Watcher.zip"
  name "GH Watcher"
  desc "Live monitor for GitHub repositories, pull requests and CI"
  homepage "https://github.com/alexandernygard/gh-watcher"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe

  app "GH Watcher.app"

  uninstall quit: "dev.nygard.GHWatcher"

  zap trash: "~/Library/Preferences/dev.nygard.GHWatcher.plist"
end
