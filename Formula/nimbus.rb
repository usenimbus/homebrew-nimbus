class Nimbus < Formula
  desc "Nimbus Client"
  homepage "https://usenimbus.com/"
  url "https://github.com/usenimbus/homebrew-nimbus/releases/download/v0.0.2/nimbus-macos-x64.tar.gz"
  sha256 "4ff0bc3febc8f972ad0aeedb03daa080afac229a21d576c5e6523c718926aab4"
  version "0.0.2"
  def install
    bin.install "nimbus"
  end
end
