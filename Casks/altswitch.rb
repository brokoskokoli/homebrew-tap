cask "altswitch" do
  version "1.1.3"
  sha256 "9e0a764f0cd0c7f1133d47c0dabe5e6e0109ce5363201d0470a4aed6edd338cc"

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
