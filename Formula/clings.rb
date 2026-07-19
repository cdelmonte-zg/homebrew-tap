class Clings < Formula
  desc "Small exercises to learn advanced C concepts - inspired by rustlings"
  homepage "https://github.com/cdelmonte-zg/clings"
  version "0.3.0"
  license "MIT"

  deprecate! date: "2026-07-19", because: "it was renamed to cmetal"

  on_macos do
    on_arm do
      url "https://github.com/cdelmonte-zg/clings/releases/download/v0.3.0/clings-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "b2ea055a97ae47acc0d8bab94a510b893bb551dcbac7c1f0585b2ab6920a9a2e"
    end
    on_intel do
      url "https://github.com/cdelmonte-zg/clings/releases/download/v0.3.0/clings-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "a4fdec11aa0c5285a095f90a840aeef44d491e2c9a17f6af6eb82aa42aca7e9e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cdelmonte-zg/clings/releases/download/v0.3.0/clings-v0.3.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d850a1bde36b4a3b5d136a8649b8f2580ad4355b5da37dad1651c04a3b90f167"
    end
    on_intel do
      url "https://github.com/cdelmonte-zg/clings/releases/download/v0.3.0/clings-v0.3.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f9357eba604cec0fed7adf48f3ec76ae3c4f64f621d972dc94a2932178227a57"
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
