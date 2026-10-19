cask "lantern" do
  version "0.2.0"
  sha256 "2594bc3c296b91b8f9987753bcdab5ef9836595cd532464a0277dee2b28f3424"

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
