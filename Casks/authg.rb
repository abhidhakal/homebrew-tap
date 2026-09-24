cask "authg" do
  version "1.1.2"

  if Hardware::CPU.arm?
    url "https://github.com/abhidhakal/authg-app/releases/download/v#{version}/AuthG_#{version}_aarch64.dmg"
    sha256 "322b77ee06129c688b7fb36b944857d5b7b14fd256d9be406458458708d7fb20"
  else
    url "https://github.com/abhidhakal/authg-app/releases/download/v#{version}/AuthG_#{version}_x64.dmg"
    sha256 "f62214b8821563d2ae1aefcf77d4ba88a63e56bedc874235e366ae8b4dd4bd8f"
  end

  name "AuthG"
  desc "Open-source, offline desktop 2FA authenticator for the menu bar"
  homepage "https://authg.abhinavdhakal.com"

  depends_on macos: :big_sur

  app "AuthG.app"

  zap trash: [
    "~/Library/Application Support/com.authg.desktop",
    "~/Library/Caches/com.authg.desktop",
    "~/Library/Preferences/com.authg.desktop.plist",
    "~/Library/WebKit/com.authg.desktop",
  ]
end
