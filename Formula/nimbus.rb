class Nimbus < Formula
  desc "Nimbus Client"
  homepage "https://usenimbus.com/"
  url "https://github.com/usenimbus/homebrew-nimbus/releases/download/v1.0.0/nimbus-amd64"
  sha256 "44aba612de3a38c3c525abb194d7a13ed1c5cb0acd1021395d0814f39382d60b"
  version "1.0.0"
  def install
    bin.install "nimbus"
  end
end
