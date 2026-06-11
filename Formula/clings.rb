class Clings < Formula
  desc "Small exercises to learn advanced C concepts - inspired by rustlings"
  homepage "https://github.com/cdelmonte-zg/clings"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cdelmonte-zg/clings/releases/download/v0.1.1/clings-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "4ee60e86fb3f882dfd3cf9151d42f0cbe52a6cdd47272e730a902d74f0739573"
    end
    on_intel do
      url "https://github.com/cdelmonte-zg/clings/releases/download/v0.1.1/clings-v0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "3faf450aa34123a71410f4f718af3a9357008bb4faab5447cd1571e8668b3639"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cdelmonte-zg/clings/releases/download/v0.1.1/clings-v0.1.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ccc876ad706cca1a25aa85574b2e1e5979d009567394d2ff04d9f0670024e674"
    end
    on_intel do
      url "https://github.com/cdelmonte-zg/clings/releases/download/v0.1.1/clings-v0.1.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "895fab88c1095a21f8f86372e6c9d50bf0bac9ffe706a847bab6ec48f0cf78ff"
    end
  end

  def install
    bin.install "clings"
  end

  def caveats
    <<~EOS
      clings needs the exercises repository to run:
        git clone https://github.com/cdelmonte-zg/clings.git
        cd clings && clings
      A C compiler with C11 support (gcc or clang) is also required.
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clings --version")
  end
end
