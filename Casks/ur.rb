cask "ur" do
  version "1.2.0"
  sha256 "e22212070eb5a400897372aa34501fbc53bb8634e6c9881665c20e84006f5eb8"

  url "https://github.com/alexandernygard/ur/releases/download/v#{version}/Ur.zip"
  name "Ur"
  desc "Keyboard-first time tracker for the work day"
  homepage "https://github.com/alexandernygard/ur"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Ur.app"

  uninstall quit: "no.nygard.ur"

  zap trash: [
    "~/Library/Application Support/Ur",
    "~/Library/Preferences/no.nygard.ur.plist",
  ]
end
