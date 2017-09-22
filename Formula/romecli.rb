class Romecli < Formula
  desc "CLI tool for Rome Server written in Swift"
  homepage "https://github.com/ypopovych/RomeCLI"
  url "https://github.com/ypopovych/RomeCLI/archive/0.3.0.tar.gz"
  sha256 "aa2d5ded644840d58b637a1d04fc9472c2998c94a58344880d50d1e2954be4bd"

  depends_on :xcode => ["9.0", :build]

  def install
    system "make", "install", "PREFIX=#{prefix}", "BUILDPATH=#{buildpath}"
  end

  test do
    system "#{bin}/romecli", "-h"
  end
end
