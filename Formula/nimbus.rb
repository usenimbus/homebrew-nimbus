require "formula"
require "language/go"
require 'erb'

class Nimbus < Formula
  desc "Nimbus Client"
  homepage "https://usenimbus.com/"
  version "1.0.8"


  if Hardware::CPU.arm?
    url "https://github.com/usenimbus/homebrew-nimbus/releases/download/v1.0.8/nimbus-1.0.8-darwin-arm64.tar.gz"
    sha256 "3524005efb52cd868752195b09158a3c00ab5d19bd4f444a509be2e0cc8779e5"

    def install
      bin.install buildpath/"nimbus"
    end
  end

  if Hardware::CPU.intel?
    url "https://github.com/usenimbus/homebrew-nimbus/releases/download/v1.0.8/nimbus-1.0.8-darwin-amd64.tar.gz"
    sha256 "7451b2e7e13e92731ce3627cfb15dd9f7fea796dbeaa9d913c3ec945f32b57e3"
  
    def install
      bin.install buildpath/"nimbus"
    end
  end
  
end
