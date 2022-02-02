class Nimbus < Formula
  desc "Nimbus Client"
  homepage "https://usenimbus.com/"
  url "https://github.com/usenimbus/homebrew-nimbus/releases/download/v0.0.1/nimbus-macos-x64.tar.gz"
  sha256 "466849e9202214caa72e70ce6ad617fb31920a8d6a56ad498c5d7de52b6493e2"
  version "0.0.1"
  def install
    bin.install "nimbus"
  end
end
