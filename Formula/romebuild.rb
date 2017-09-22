class Romebuild < Formula
  desc "A CLI tool that uses Carthage dependency resolution and building to deliver pre-built dependencies through Rome Server"
  homepage "https://github.com/ypopovych/RomeBuild"
  head "https://github.com/ypopovych/RomeBuild.git", :branch => "develop"
  url "https://github.com/ypopovych/RomeBuild/archive/0.5.1.tar.gz"
  sha256 "4068d6563a3a54f9d4a45c051c628d99108fd956219c82ac3e580a48027a3dc3"

  depends_on :xcode => ["9.0", :build]
  depends_on "carthage"

  def install
      system "make", "install", "PREFIX=#{prefix}", "BUILDPATH=#{buildpath}"
  end

  test do
    system "#{bin}/romebuild", "-h"
  end
end
