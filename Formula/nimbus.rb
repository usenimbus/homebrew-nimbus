require "formula"
require "language/go"
require 'erb'

class Nimbus < Formula
  desc "Nimbus Client"
  homepage "https://usenimbus.com/"
  version "1.0.7"


  if Hardware::CPU.arm?
    url "https://github.com/usenimbus/homebrew-nimbus/releases/download/v1.0.7/nimbus-1.0.7-darwin-arm64.tar.gz"
    sha256 "0f138ddc474441e08485eabc1b5c12875a246ce3f9dec18c5fd77dad59f50724"

    def install
      bin.install buildpath/"nimbus"
    end
  end

  if Hardware::CPU.intel?
    url "https://github.com/usenimbus/homebrew-nimbus/releases/download/v1.0.7/nimbus-1.0.7-darwin-amd64.tar.gz"
    sha256 "9f609a6ab2a8d63a152804c4410454350d360175a170381d7d1e1f7281d1ea80"
  
    def install
      bin.install buildpath/"nimbus"
    end
  end
  
end
