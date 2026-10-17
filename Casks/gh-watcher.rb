cask "gh-watcher" do
  version "1.0.0"
  sha256 "1f7d763902cb235ee7a11be5861115042ffc01205332f2af03b6ae773ff53aa5"

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
