cask "lantern" do
  version "0.2.2"
  sha256 "3a6b0d9172c09975f87600f726d9f58556f1cee6f14e2aff120eadf304b40f89"

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
