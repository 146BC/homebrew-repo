class Romulus < Formula
	desc "A Carthage fork with Rome asset server support"
	homepage "https://github.com/146BC/Carthage"
	head "https://github.com/146BC/Carthage.git", :branch => "rome"

	depends_on :xcode => ["7.3", :build]

	def install
		system "make", "prefix_install", "PREFIX=#{prefix}"
	end

	test do
		(testpath/"Cartfile").write 'github "jspahrsummers/xcconfigs"'
		system "#{bin}/carthage", "update"
	end
end