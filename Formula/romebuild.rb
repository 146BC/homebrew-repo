class Romebuild < Formula
  desc "A CLI tool that uses Carthage dependency resolution and building to deliver pre-built dependencies through Rome Server"
  homepage "https://github.com/ypopovych/RomeBuild"
  head "https://github.com/ypopovych/RomeBuild.git", :branch => "develop"
  url "https://github.com/ypopovych/RomeBuild/archive/0.5.0.tar.gz"
  sha256 "ba93e74a389a41ceca8d2bec7afe3910909a3644e47b1313db4c5e620e39d4fc"

  depends_on :xcode => ["9.0", :build]
  depends_on "carthage"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "#{bin}/romebuild", "-h"
  end
end
