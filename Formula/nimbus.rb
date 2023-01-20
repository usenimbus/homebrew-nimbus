require "formula"
require "language/go"
require 'erb'

class Nimbus < Formula
  desc "Nimbus Client"
  homepage "https://usenimbus.com/"
  version "1.0.4"


  if Hardware::CPU.arm?
    url "https://github.com/usenimbus/homebrew-nimbus/releases/download/v1.0.3/nimbus-1.0.3-darwin-arm64.tar.gz"
    sha256 "11c1f4b8774235189ffed6c3f8abeb6751d63ca6c1aa1cbf4602cdaeda6e3cd6"

    def install
      bin.install buildpath/"nimbus"
    end
  end

  if Hardware::CPU.intel?
    url "https://github.com/usenimbus/homebrew-nimbus/releases/download/v1.0.3/nimbus-1.0.3-darwin-amd64.tar.gz"
    sha256 "2b367cc9d76559d8d18db02acaa630a0ee14406a949d94a2f9877f80a60d308a"
  
    def install
      bin.install buildpath/"nimbus"
    end
  end
  
  test do
    system "#{bin}/nimbus version"
  end

end
