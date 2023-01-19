require "formula"
require "language/go"
require 'erb'

class Nimbus < Formula
  desc "Nimbus Client"
  homepage "https://usenimbus.com/"
  version "1.0.3"


  if Hardware::CPU.arm?
    url "https://github.com/usenimbus/homebrew-nimbus/releases/download/v1.0.3/nimbus-1.0.3-darwin-arm64.tar.gz"
    sha256 "ab31e04a9248fecc54afee3a363ea1dc7863aebf39ceac5dab2d4f74c056928f"

    def install
      bin.install buildpath/"nimbus"
    end
  end

  if Hardware::CPU.intel?
    url "https://github.com/usenimbus/homebrew-nimbus/releases/download/v1.0.3/nimbus-1.0.3-darwin-amd64.tar.gz"
    sha256 "b8cd7ad17105efd3ee60f61a9dd224e74d63932cd435fe5e31afebd25cf8400d"
  
    def install
      bin.install buildpath/"nimbus"
    end
  end
  
  test do
    system "#{bin}/nimbus version"
  end

end
