require "formula"
require "language/go"
require 'erb'

class Nimbus < Formula
  desc "Nimbus Client"
  homepage "https://usenimbus.com/"
  url "https://github.com/usenimbus/homebrew-nimbus/releases/download/v1.0.1/nimbus-1.0.1-darwin-arm64.tar.gz"
  sha256 "be2630a7e178061b2956bea35a2d3e25b03fa8891fcc6f5c780d0e51eeae080f"
  version "1.0.1"
  def install
    bin.install buildpath/"nimbus"
  end
  
  test do
    system "#{bin}/nimbus version"
  end

end
