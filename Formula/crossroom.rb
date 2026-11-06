class Crossroom < Formula
  desc "Put your AI agents in one room. Crossroom keeps the recap"
  homepage "https://crossroom.dev"
  url "https://registry.npmjs.org/crossroom/-/crossroom-0.2.0.tgz"
  sha256 "df7b0f59070542261749d9b385073e6ff02cc688c3fcbf9eefe8eefad596934f"
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
