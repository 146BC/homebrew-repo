class Romebuild < Formula
  desc "A CLI tool that uses Carthage dependency resolution and building to deliver pre-built dependencies through Rome Server"
  homepage "https://github.com/146BC/RomeBuild"
  head "https://github.com/146BC/RomeBuild.git", :branch => "develop"
  url "https://github.com/146BC/RomeBuild/archive/0.3.0.tar.gz"
  sha256 "d55cc013ffd1fdf720dafa9f6749f69d1223879b602d2961bebecb42638c6028"

  depends_on :xcode => ["7.3", :build]
  depends_on "carthage"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "#{bin}/romebuild", "-h"
  end
end
