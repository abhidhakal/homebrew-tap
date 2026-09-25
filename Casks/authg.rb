cask "authg" do
  version "1.1.3"

  if Hardware::CPU.arm?
    url "https://github.com/abhidhakal/authg-app/releases/download/v#{version}/AuthG_#{version}_aarch64.dmg"
    sha256 "d1d14c34ea1851693b246f0816c0e6641ac2d159f15fec997ce31bf41a175a07"
  else
    url "https://github.com/abhidhakal/authg-app/releases/download/v#{version}/AuthG_#{version}_x64.dmg"
    sha256 "a8715a27a86078b354584097f37bb41386eabf496cfe4ee8aad5a38c407e24df"
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
