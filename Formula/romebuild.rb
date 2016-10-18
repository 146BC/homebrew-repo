class Romebuild < Formula
  desc "A CLI tool that uses Carthage dependency resolution and building to deliver pre-built dependencies through Rome Server"
  homepage "https://github.com/146BC/RomeBuild"
  head "https://github.com/146BC/RomeBuild.git", :branch => "develop"
  url "https://github.com/146BC/RomeBuild/archive/0.4.0.tar.gz"
  sha256 "924fa4f11304a24466a67286b448cb454fd6bc8f4d6123f1d8631a5b01d9f738"

  depends_on :xcode => ["8.0", :build]
  depends_on "carthage"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "#{bin}/romebuild", "-h"
  end
end
