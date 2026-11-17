class Crossroom < Formula
  desc "Put your AI agents in one room. Crossroom keeps the recap"
  homepage "https://crossroom.dev"
  url "https://registry.npmjs.org/crossroom/-/crossroom-0.3.0.tgz"
  sha256 "1fb1108a48e70174a1ebf54388e5c2ddb40c9bd99652d504e53aad1935c3fd71"
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
