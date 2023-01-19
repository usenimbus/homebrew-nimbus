require "formula"
require "language/go"
require 'erb'

class Nimbus < Formula
  desc "Nimbus Client"
  homepage "https://usenimbus.com/"
  version "1.0.3"


  if Hardware::CPU.arm?
    url "https://github.com/usenimbus/homebrew-nimbus/releases/download/v1.0.3/nimbus-1.0.3-darwin-arm64.tar.gz"
    sha256 "3e781b6a0b0c91a38d7ae36ca4d9a8e3f4ba94b7a5964c742ff2aae09a5f821a"

    def install
      bin.install buildpath/"nimbus"
    end
  end

  if Hardware::CPU.intel?
    url "https://github.com/usenimbus/homebrew-nimbus/releases/download/v1.0.3/nimbus-1.0.3-darwin-amd64.tar.gz"
    sha256 "415c4fc4859f8cacc1d1be2d82052427ae4befe8779a6aace9fb6325a4ba9a32"
  
    def install
      bin.install buildpath/"nimbus"
    end
  end
  
  test do
    system "#{bin}/nimbus version"
  end

end
