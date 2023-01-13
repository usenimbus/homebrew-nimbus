require "formula"
require "language/go"
require 'erb'

class Nimbus < Formula
  desc "Nimbus Client"
  homepage "https://usenimbus.com/"
  version "1.0.1"


  if Hardware::CPU.arm?
    url "https://github.com/usenimbus/homebrew-nimbus/releases/download/v1.0.1/nimbus-1.0.1-darwin-arm64.tar.gz"
    sha256 "b23e729a5b73883eb77c5a481ff8ec4a754e32d556577b49e7a930018183f599"

    def install
      bin.install buildpath/"nimbus"
    end
  end

  if Hardware::CPU.intel?
    url "https://github.com/usenimbus/homebrew-nimbus/releases/download/v1.0.1/nimbus-1.0.1-darwin-amd64.tar.gz"
    sha256 "761ae26ba9171a822a6f23b0d3e56b0c6eb977f4180ee190d762e341fbde1506"
  
    def install
      bin.install buildpath/"nimbus"
    end
  end
  
  test do
    system "#{bin}/nimbus version"
  end

end
