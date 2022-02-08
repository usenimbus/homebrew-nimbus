class Nimbus < Formula
  desc "Nimbus Client"
  homepage "https://usenimbus.com/"
  url "https://github.com/usenimbus/homebrew-nimbus/releases/download/v0.1.2/nimbus-macos-x64.tar.gz"
  sha256 "8f9fb975770c2a271d5ba74b3caa19eb570e2bb188f755a685f39207807b8ead"
  version "0.1.2"
  def install
    bin.install "nimbus"
  end
end
