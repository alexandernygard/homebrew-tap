cask "glimpse" do
  version "0.2.0"
  sha256 "fab53f7fc60ffd1e3b002938d9787db08ad04d95b14f37e8c35cb072db6675ca"

  url "https://github.com/alexandernygard/glimpse/releases/download/v#{version}/Glimpse.zip"
  name "Glimpse"
  desc "Capture screenshots and notes with hotkeys, organised by Claude"
  homepage "https://github.com/alexandernygard/glimpse"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Glimpse.app"

  uninstall quit: "dev.glimpse.app"

  zap trash: [
    "~/Library/Application Support/Glimpse",
    "~/Library/Preferences/dev.glimpse.app.plist",
  ]
end
