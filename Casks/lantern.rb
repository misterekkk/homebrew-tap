cask "lantern" do
  version "0.1.3"
  sha256 "36a71f2d05936613bcfb54a8a57bda9290e35a8df94269d8fef4015921fb8a78"

  url "https://github.com/misterekkk/lantern/releases/download/v#{version}/Lantern.dmg"
  name "Lantern"
  desc "Local-first multimodal semantic search for macOS"
  homepage "https://github.com/misterekkk/lantern"

  depends_on macos: :tahoe # 26.2+ in fact: the bundled MLX libraries need it (Lantern.app checks it)
  depends_on arch: :arm64

  app "Lantern.app"

  zap trash: [
    "~/Library/Application Support/Lantern",
    "~/Library/Caches/com.lantern.app",
    "~/Library/Caches/Lantern",
    "~/Library/Preferences/com.lantern.app.plist",
  ]
end
