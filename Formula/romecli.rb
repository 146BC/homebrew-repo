class Romecli < Formula
  desc "CLI tool for Rome Server written in Swift"
  homepage "https://github.com/146BC/RomeCLI"
  url "https://github.com/146BC/RomeCLI/archive/0.2.1.tar.gz"
  sha256 "246f3ed89c9a90062cfdd3d8f1d71232ab93e7e207b7499034b044c69be4e480"

  depends_on :xcode => ["7.3", :build]
  depends_on "carthage"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "#{bin}/romecli", "-h"
  end
end
