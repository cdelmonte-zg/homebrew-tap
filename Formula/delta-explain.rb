class DeltaExplain < Formula
  desc "Make Delta pruning visible: CLI for partition pruning and data skipping in Delta Lake"
  homepage "https://github.com/cdelmonte-zg/delta-explain"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cdelmonte-zg/delta-explain/releases/download/v0.4.0/delta-explain-aarch64-apple-darwin.tar.gz"
      sha256 "283bb7a3d47745d6a8b6a45cc068fe1bfe03288429889b3b493a7739b57a633b"
    end
    on_intel do
      url "https://github.com/cdelmonte-zg/delta-explain/releases/download/v0.4.0/delta-explain-x86_64-apple-darwin.tar.gz"
      sha256 "b754bffba2c766314ed42cb59540c61aba582ad102a26572cb399dfaaf5a6e49"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cdelmonte-zg/delta-explain/releases/download/v0.4.0/delta-explain-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0a78b37eeb218b1dd7b5bf1b3df2c7d2654e38236f371ddf3c9dd5e15343bd58"
    end
    on_intel do
      url "https://github.com/cdelmonte-zg/delta-explain/releases/download/v0.4.0/delta-explain-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b207590470416432b953aa0b40186ada729a33a2efac4aab906e62905cdfe1ed"
    end
  end

  def install
    bin.install "delta-explain"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/delta-explain --version")
  end
end
