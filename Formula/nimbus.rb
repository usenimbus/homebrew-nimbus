class Nimbus < Formula
  desc "Nimbus Client"
  homepage "https://usenimbus.com/"
  url "https://github.com/usenimbus/homebrew-nimbus/releases/download/v0.1.0/nimbus-macos-x64.tar.gz"
  sha256 "89a622e2208ae762a281f9e8e05c61463e7554bd4a4912853b00b5df76a5de7d"
  version "0.1.0"
  def install
    bin.install "nimbus"
  end
end
