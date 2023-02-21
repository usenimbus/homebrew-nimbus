require "formula"
require "language/go"
require 'erb'

class Nimbus < Formula
  desc "Nimbus Client"
  homepage "https://usenimbus.com/"
  version "1.0.9"


  if Hardware::CPU.arm?
    url "https://d1sn0nbc82p4fc.cloudfront.net/nimbus-cli/cli_v1.0.9/nimbus-1.0.9-darwin-arm64.tar.gz"
    sha256 "9fa0ae2c782643bcaa6623cb92615fefd4b2ddfd3be7a701e731089ed728453e"

    def install
      bin.install buildpath/"nimbus"
    end
  end

  if Hardware::CPU.intel?
    url "https://d1sn0nbc82p4fc.cloudfront.net/nimbus-cli/cli_v1.0.9/nimbus-1.0.9-darwin-amd64.tar.gz"
    sha256 "2678f0d837d1db86307f89c6e4ed18092d26bfcbd5040b0b827047919946d455"
  
    def install
      bin.install buildpath/"nimbus"
    end
  end
  
end
