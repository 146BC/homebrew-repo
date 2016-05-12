class Romebuild < Formula
  desc "A CLI tool that uses Carthage dependency resolution and building to deliver pre-built dependencies through Rome Server"
  homepage "https://github.com/146BC/RomeBuild"
  head "https://github.com/146BC/RomeBuild.git", :branch => "develop"
  url "https://github.com/146BC/RomeBuild/archive/0.1.1.tar.gz"
  sha256 "de70de2cd4a52ba47c1d2d18f48b2e638950a1e598573b5f60ffb2ba5e4c8dcd"

  depends_on :xcode => ["7.3", :build]
  depends_on "carthage"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "#{bin}/romebuild", "-h"
  end
end
