cask "ur" do
  version "2.0.0"
  sha256 "cc665de55ff6a32483ab2d15765887f40ca6261af91258325949f4f2ae337762"

  url "https://github.com/alexandernygard/ur/releases/download/v#{version}/Ur.zip"
  name "Ur"
  desc "Keyboard-first time tracker for the work day"
  homepage "https://github.com/alexandernygard/ur"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Ur.app"

  uninstall quit: "no.nygard.ur"

  zap trash: [
    "~/Library/Application Support/Ur",
    "~/Library/Caches/no.nygard.ur",
    "~/Library/Preferences/no.nygard.ur.plist",
    "~/Library/Saved Application State/no.nygard.ur.savedState",
    "~/Library/WebKit/no.nygard.ur",
  ]
end
