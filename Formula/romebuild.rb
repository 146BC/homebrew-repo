class Romebuild < Formula
  desc "CLI tool for Carthage users to speed up their build times"
  homepage "https://github.com/146BC/RomeBuild"
  head "https://github.com/BernardGatt/RomeBuild.git", :branch => "feature/build"
  url "https://github.com/146BC/RomeBuild/archive/0.1.0.tar.gz"
  sha256 ""

  depends_on :xcode => ["7.3", :build]
  depends_on "carthage"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "#{bin}/romebuild", "-h"
  end
end
