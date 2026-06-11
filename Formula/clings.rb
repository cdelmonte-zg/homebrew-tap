class Clings < Formula
  desc "Small exercises to learn advanced C concepts - inspired by rustlings"
  homepage "https://github.com/cdelmonte-zg/clings"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cdelmonte-zg/clings/releases/download/v0.1.0/clings-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "2b49a8d74790ca20346a6a565f710cce805f59822980b4481cb38e0f410508d6"
    end
    on_intel do
      url "https://github.com/cdelmonte-zg/clings/releases/download/v0.1.0/clings-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "c5d2efd78cef0e149e52c7df31d4402998b8c227d92bfaf1c34c02881cc02431"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cdelmonte-zg/clings/releases/download/v0.1.0/clings-v0.1.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3b4573568d0d3f6a31cb8f49476e2e13b98f1205936ddd13f8f271c7fcfba155"
    end
    on_intel do
      url "https://github.com/cdelmonte-zg/clings/releases/download/v0.1.0/clings-v0.1.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "890f5cd2c57084b98c01cee3263f9dc0e42c479eb61b9b60ad2eb5d1a2688af0"
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
