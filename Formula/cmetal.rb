class Cmetal < Formula
  desc "Small exercises to learn advanced C concepts - inspired by rustlings"
  homepage "https://github.com/cdelmonte-zg/cmetal"
  version "0.4.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cdelmonte-zg/cmetal/releases/download/v0.4.2/cmetal-v0.4.2-aarch64-apple-darwin.tar.gz"
      sha256 "f25e9294782943e6c7f7a0c0729bea97437ad868652fdea63c1fd35976226d6d"
    end
    on_intel do
      url "https://github.com/cdelmonte-zg/cmetal/releases/download/v0.4.2/cmetal-v0.4.2-x86_64-apple-darwin.tar.gz"
      sha256 "1e02cbecdf73826529b53b79875e1f45316d7c8606914a8339d0dca055094538"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cdelmonte-zg/cmetal/releases/download/v0.4.2/cmetal-v0.4.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9f460e60637d275dee6a2b37ea8f60b67b2282bd9f58c60ca277e633bf2c6bdd"
    end
    on_intel do
      url "https://github.com/cdelmonte-zg/cmetal/releases/download/v0.4.2/cmetal-v0.4.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c9d978abce5233a001d5fd7b3cb55e3e2950f8c062436f076cebabfeacaeefcf"
    end
  end

  def install
    bin.install "cmetal"
  end

  def caveats
    <<~EOS
      The curriculum is embedded in the binary. To get started:
        cmetal init my-c-exercises
        cd my-c-exercises && cmetal
      A C compiler with C11 support (gcc or clang) is also required.
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cmetal --version")
  end
end
