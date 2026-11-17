class Crossroom < Formula
  desc "Put your AI agents in one room. Crossroom keeps the recap"
  homepage "https://crossroom.dev"
  url "https://registry.npmjs.org/crossroom/-/crossroom-0.3.1.tgz"
  sha256 "48f9207d9b78750858fe77e775002a6666304fc880a862a88f2ddbc631f7ac3d"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/crossroom --version").strip
  end
end
