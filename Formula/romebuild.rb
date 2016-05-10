class Romebuild < Formula
  desc "A CLI tool that uses Carthage dependency resolution and building to deliver pre-built dependencies through Rome Server"
  homepage "https://github.com/146BC/RomeBuild"
  head "https://github.com/146BC/RomeBuild.git", :branch => "develop"
  url "https://github.com/146BC/RomeBuild/archive/0.1.0.tar.gz"
  sha256 "ba3b6da5d583850babf3b9e010f15229685919486b59ce6e3d5dc8347117f46a"

  depends_on :xcode => ["7.3", :build]
  depends_on "carthage"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "#{bin}/romebuild", "-h"
  end
end
