class Cmetal < Formula
  desc "Small exercises to learn advanced C concepts - inspired by rustlings"
  homepage "https://github.com/cdelmonte-zg/cmetal"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cdelmonte-zg/cmetal/releases/download/v0.4.0/cmetal-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "f6eeb1e562879375455d79208190a02e01444bc8aa4e492fea64c27d61945afd"
    end
    on_intel do
      url "https://github.com/cdelmonte-zg/cmetal/releases/download/v0.4.0/cmetal-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "7e746e08c1e25b473ac35b4e8fbe146f1b3e76c3491d083c5d3ec6e407a01bb2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cdelmonte-zg/cmetal/releases/download/v0.4.0/cmetal-v0.4.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c46a1cb9201d9642178da6793193c7f2926f58b41ce26b529267031353ee7582"
    end
    on_intel do
      url "https://github.com/cdelmonte-zg/cmetal/releases/download/v0.4.0/cmetal-v0.4.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "df589386bec37fb0ca370a23634d06134b77f4ed6cc22b88b0586d79a6a9e207"
    end
  end

  def install
    bin.install "cmetal"
  end

  def caveats
    <<~EOS
      cmetal needs the exercises repository to run:
        git clone https://github.com/cdelmonte-zg/cmetal.git
        cd cmetal && cmetal
      A C compiler with C11 support (gcc or clang) is also required.
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cmetal --version")
  end
end
