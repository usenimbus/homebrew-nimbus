require "formula"
require "language/go"
require 'erb'

class Nimbus < Formula
  desc "Nimbus Client"
  homepage "https://usenimbus.com/"
  version "1.0.6"


  if Hardware::CPU.arm?
    url "https://github.com/usenimbus/homebrew-nimbus/releases/download/v1.0.6/nimbus-1.0.6-darwin-arm64.tar.gz"
    sha256 "9e92c378dcb0906b6d360471a10fb0c84558e75d352ceb624a4981761c389b58"

    def install
      bin.install buildpath/"nimbus"
    end
  end

  if Hardware::CPU.intel?
    url "https://github.com/usenimbus/homebrew-nimbus/releases/download/v1.0.6/nimbus-1.0.6-darwin-amd64.tar.gz"
    sha256 "faaf33f2bcd790b3a3e3110b0c0636867eaf5e3a985326479e7503a2332825d5"
  
    def install
      bin.install buildpath/"nimbus"
    end
  end
  
end
