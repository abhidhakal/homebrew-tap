cask "authg" do
  version "1.0.5"

  if Hardware::CPU.arm?
    url "https://github.com/abhidhakal/authg-app/releases/download/v#{version}/AuthG_#{version}_aarch64.dmg",
        verified: "github.com/abhidhakal/authg-app/"
    sha256 "dc2c36777aa54ac9caa48c7d2516dc350823212675b1c51b780cc7a6b2cf22c5"
  else
    url "https://github.com/abhidhakal/authg-app/releases/download/v#{version}/AuthG_#{version}_x64.dmg",
        verified: "github.com/abhidhakal/authg-app/"
    sha256 "fb36e4158f93c211bf3b8431411e7275c5f93bb74003e8c27e99ae9dc8a6e24a"
  end

  name "AuthG"
  desc "Open-source, offline desktop 2FA authenticator for the menu bar"
  homepage "https://authg.abhinavdhakal.com"

  depends_on macos: ">= :catalina"

  app "AuthG.app"

  zap trash: [
    "~/Library/Application Support/com.authg.desktop",
    "~/Library/Caches/com.authg.desktop",
    "~/Library/Preferences/com.authg.desktop.plist",
    "~/Library/WebKit/com.authg.desktop",
  ]
end
