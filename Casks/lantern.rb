cask "lantern" do
  version "0.1.2"
  sha256 "8370cca9e51e46605eb94242645fde0e9a4724178503bf529002e1f64d6c9497"

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
