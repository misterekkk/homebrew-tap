cask "lantern" do
  version "0.2.4"
  sha256 "1f38b9e6539ce35aee2761ed15ce916f8a9026005c389a197f7af048d6d60ebb"

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
