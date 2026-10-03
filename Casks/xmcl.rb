cask "xmcl" do
  arch arm: "arm64", intel: "x64"

  version "0.71.0"
  sha256 :no_check

  url "https://github.com/Voxelum/x-minecraft-launcher/releases/download/v#{version}/xmcl-#{version}-#{arch}.dmg"
  name "X Minecraft Launcher"
  desc "Open source Minecraft launcher with mod, modpack, and resource management"
  homepage "https://xmcl.app"

  livecheck do
    url :url
  end

  auto_updates true
  depends_on macos: :monterey

  app "X Minecraft Launcher.app"

  zap trash: [
    "~/Library/Application Support/xmcl",
    "~/Library/Preferences/xmcl.plist",
    "~/Library/Saved Application State/xmcl.savedState",
  ]
end
