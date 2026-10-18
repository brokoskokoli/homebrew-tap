cask "altswitch" do
  version "1.0.2"
  sha256 "479219e0b1e6dcdba081c195591c16f77ce22965a5e1c2604b5074c8885f9540"

  url "https://github.com/brokoskokoli/altswitch/releases/download/v#{version}/AltSwitch-#{version}.dmg"
  name "AltSwitch"
  desc "Windows-style Alt-Tab window switcher with live previews"
  homepage "https://github.com/brokoskokoli/altswitch"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "AltSwitch.app"

  uninstall quit: "com.stefanrichter.altswitch"

  zap trash: [
    "~/Library/Preferences/com.stefanrichter.altswitch.plist",
    "~/Library/Saved Application State/com.stefanrichter.altswitch.savedState",
  ]
end
