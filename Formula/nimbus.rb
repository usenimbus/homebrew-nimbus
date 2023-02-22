require "formula"
require "language/go"
require 'erb'

class Nimbus < Formula
  desc "Nimbus Client"
  homepage "https://usenimbus.com/"
  version "1.0.10"


  if Hardware::CPU.arm?
    url "https://d1sn0nbc82p4fc.cloudfront.net/nimbus-cli/cli_v1.0.10/nimbus-1.0.10-darwin-arm64.tar.gz"
    sha256 "8584978ecd5e57241b9d6ee44e2bc857ff6002ef91c72c1b232b1ed4b181aa3e"

    def install
      bin.install buildpath/"nimbus"
    end
  end

  if Hardware::CPU.intel?
    url "https://d1sn0nbc82p4fc.cloudfront.net/nimbus-cli/cli_v1.0.10/nimbus-1.0.10-darwin-amd64.tar.gz"
    sha256 "a0fafcaeb3cbf233b12c394a49d50d664a4b889aac6299468e4962c020779bae"
  
    def install
      bin.install buildpath/"nimbus"
    end
  end
  
end
