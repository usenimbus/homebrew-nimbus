class Nimbus < Formula
  desc "Nimbus Client"
  homepage "https://usenimbus.com/"
  url "https://github.com/usenimbus/homebrew-nimbus/releases/download/v0.1.1/nimbus-macos-x64.tar.gz"
  sha256 "f11238d91b09c52a1570631c1dae0833bb6a2fb4440cafec7e4f83e784e56263"
  version "0.1.1"
  def install
    bin.install "nimbus"
  end
end
