cask "lumaflip" do
  version "1.2.2"
  sha256 "ab35173191d76e33edeba6a439720ef8ffdf8cd248c3530d20f01f264adfbe03"

  url "https://github.com/brokoskokoli/lumaflip/releases/download/v#{version}/Lumaflip-#{version}.dmg"
  name "Lumaflip"
  desc "Fast image viewer that browses the whole folder in Finder order"
  homepage "https://brokoskokoli.github.io/lumaflip/"

  livecheck do
    url "https://brokoskokoli.github.io/lumaflip/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Lumaflip.app"

  uninstall quit: "io.github.brokoskokoli.lumaflip"

  zap trash: [
    "~/Library/Application Support/Lumaflip",
    "~/Library/Caches/io.github.brokoskokoli.lumaflip",
    "~/Library/Caches/Lumaflip",
    "~/Library/HTTPStorages/io.github.brokoskokoli.lumaflip",
    "~/Library/Preferences/io.github.brokoskokoli.lumaflip.plist",
    "~/Library/Saved Application State/io.github.brokoskokoli.lumaflip.savedState",
  ]
end
