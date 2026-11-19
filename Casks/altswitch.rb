cask "altswitch" do
  version "1.3.0"
  sha256 "7f87c4ce69086d2793f7d440f15af673f05239e1c7ca22c482e44bc0f2c4d2d3"

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
