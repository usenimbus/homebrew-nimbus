require "formula"
require "language/go"
require 'erb'

class Nimbus < Formula
  desc "Nimbus Client"
  homepage "https://usenimbus.com/"
  version "1.0.1"


  if Hardware::CPU.arm?
    url "https://github.com/usenimbus/homebrew-nimbus/releases/download/v1.0.2/nimbus-1.0.2-darwin-arm64.tar.gz"
    sha256 "8f0b17e2511b6a255c141ff4f119694f5309d7ff8c72509cda9590edce9ef88d"

    def install
      bin.install buildpath/"nimbus"
    end
  end

  if Hardware::CPU.intel?
    url "https://github.com/usenimbus/homebrew-nimbus/releases/download/v1.0.2/nimbus-1.0.2-darwin-amd64.tar.gz"
    sha256 "ba4c86d70fc980c8c04060930aa7147a042fe036bbbd86f1c406d1101e5eddcb"
  
    def install
      bin.install buildpath/"nimbus"
    end
  end
  
  test do
    system "#{bin}/nimbus version"
  end

end
