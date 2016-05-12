class Romebuild < Formula
  desc "A CLI tool that uses Carthage dependency resolution and building to deliver pre-built dependencies through Rome Server"
  homepage "https://github.com/146BC/RomeBuild"
  head "https://github.com/146BC/RomeBuild.git", :branch => "develop"
  url "https://github.com/146BC/RomeBuild/archive/0.1.2.tar.gz"
  sha256 "bc78d74563dc8d2ae6ecfcd60b774b230ad972190220576b6360a7529efae071"

  depends_on :xcode => ["7.3", :build]
  depends_on "carthage"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "#{bin}/romebuild", "-h"
  end
end
