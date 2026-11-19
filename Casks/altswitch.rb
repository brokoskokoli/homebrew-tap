cask "altswitch" do
  version "1.2.2"
  sha256 "024b42968e03edfef4f00f00de5c8ac23d1aeacdb1eea74516b20a0f9c25272f"

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
