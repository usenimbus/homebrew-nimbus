require "formula"
require "language/go"
require 'erb'

class Nimbus < Formula
  desc "Nimbus Client"
  homepage "https://usenimbus.com/"
  version "1.0.5"


  if Hardware::CPU.arm?
    url "https://github.com/usenimbus/homebrew-nimbus/releases/download/v1.0.5/nimbus-1.0.5-darwin-arm64.tar.gz"
    sha256 "02e89736e2b80dc16f0cc973b37e801f2f4a532bb011dd6a58188e30c9017f49"

    def install
      bin.install buildpath/"nimbus"
    end
  end

  if Hardware::CPU.intel?
    url "https://github.com/usenimbus/homebrew-nimbus/releases/download/v1.0.5/nimbus-1.0.5-darwin-amd64.tar.gz"
    sha256 "7a0b65193d280272f03d3896b14c0669db2fdb105771285b43aa423e90f91ee5"
  
    def install
      bin.install buildpath/"nimbus"
    end
  end
  
  test do
    system "#{bin}/nimbus version"
  end

end
