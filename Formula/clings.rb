class Clings < Formula
  desc "Small exercises to learn advanced C concepts - inspired by rustlings"
  homepage "https://github.com/cdelmonte-zg/clings"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cdelmonte-zg/clings/releases/download/v0.2.0/clings-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "6eff0a6430fadf49d0b37fde0266c584edebabca5cf545d6fd38c3c1361e7d78"
    end
    on_intel do
      url "https://github.com/cdelmonte-zg/clings/releases/download/v0.2.0/clings-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "18ee28b4ee91cc9390c4c0a9f24a51e21af16fba043fc28823b33edea95ee473"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cdelmonte-zg/clings/releases/download/v0.2.0/clings-v0.2.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "686d5a54fbf70233cd66102ada07a35e5c6fdb6a46b09e87b48ef1cd5a1f582f"
    end
    on_intel do
      url "https://github.com/cdelmonte-zg/clings/releases/download/v0.2.0/clings-v0.2.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "133e823c3c3de13a8cab40ec2a054708a218ffdd45763e204459278218ad15f8"
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
