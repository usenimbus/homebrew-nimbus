class Nimbus < Formula
  desc "Nimbus Client"
  homepage "https://usenimbus.com/"
  url "https://github.com/usenimbus/homebrew-nimbus/releases/download/v0.1.3/nimbus-macos-x64.tar.gz"
  sha256 "f36dcc52b4a1048f626348512e2691a57551e75b6bba53ffe3da7cd0934e0aea"
  version "0.1.3"
  def install
    bin.install "nimbus"
  end
end
