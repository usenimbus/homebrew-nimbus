class Nimbus < Formula
  desc "Nimbus Client"
  homepage "https://usenimbus.com/"
  url "https://github.com/usenimbus/homebrew-nimbus/releases/download/v0.1.4/nimbus-macos-x64.tar.gz"
  sha256 "40179867cf7cefc3346dfb219b331d67915fb4f2449f52814022c0198c7d9a39"
  version "0.1.4"
  def install
    bin.install "nimbus"
  end
end
