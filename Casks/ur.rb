cask "ur" do
  version "1.1.0"
  sha256 "c8ea27422b00a7d985de66adf13345aec6aece04299007968679c620a76f049a"

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
