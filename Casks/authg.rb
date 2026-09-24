cask "authg" do
  version "1.1.1"

  if Hardware::CPU.arm?
    url "https://github.com/abhidhakal/authg-app/releases/download/v#{version}/AuthG_#{version}_aarch64.dmg"
    sha256 "3f9f4b408decff8a114e8543f08ea5d451e65ecba5ecba79185e588c4f8d1e10"
  else
    url "https://github.com/abhidhakal/authg-app/releases/download/v#{version}/AuthG_#{version}_x64.dmg"
    sha256 "45de54c092f5ba08d5992a9748b036a3fc361e0ca1fcaa65297457d30ae51575"
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
