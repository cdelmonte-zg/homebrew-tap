class Cmetal < Formula
  desc "Small exercises to learn advanced C concepts - inspired by rustlings"
  homepage "https://github.com/cdelmonte-zg/cmetal"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cdelmonte-zg/cmetal/releases/download/v0.4.1/cmetal-v0.4.1-aarch64-apple-darwin.tar.gz"
      sha256 "f5a789fcf46e8f769782974b498f69f6cab3167b6a91ca207ea66623560f3c77"
    end
    on_intel do
      url "https://github.com/cdelmonte-zg/cmetal/releases/download/v0.4.1/cmetal-v0.4.1-x86_64-apple-darwin.tar.gz"
      sha256 "e2811cb9c886f7db66a8c7a0b85b08f4742582ef99ca93ca51e1861638f1bcf0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cdelmonte-zg/cmetal/releases/download/v0.4.1/cmetal-v0.4.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bd9e6127539810fd7ed1ec3942bf74e4ea409f9ac6ebd017ba869425626d5809"
    end
    on_intel do
      url "https://github.com/cdelmonte-zg/cmetal/releases/download/v0.4.1/cmetal-v0.4.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5948d06f75efe5d9919e7a3e74b8cf9983df4e71392ba52fb9dbbac4b115d002"
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
