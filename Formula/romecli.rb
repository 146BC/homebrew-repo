class Romecli < Formula
  desc "CLI tool for Rome Server written in Swift"
  homepage "https://github.com/ypopovych/RomeCLI"
  url "https://github.com/ypopovych/RomeCLI/archive/0.3.1.tar.gz"
  sha256 "098f16784eea8c58d2a294b5d8f61e5dcd4242c4618ddc15aa253b8b9a527a31"

  depends_on :xcode => ["9.0", :build]

  def install
    system "make", "install", "PREFIX=#{prefix}", "BUILDPATH=#{buildpath}"
  end

  test do
    system "#{bin}/romecli", "-h"
  end
end
