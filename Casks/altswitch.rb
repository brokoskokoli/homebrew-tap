cask "altswitch" do
  version "1.2.0"
  sha256 "2563ae8eade76bfeedbdd92958ca6b7ea0d2f646005852171afc6355f45383f4"

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
