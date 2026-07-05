class DeltaExplain < Formula
  desc "Make Delta pruning visible: CLI for partition pruning and data skipping in Delta Lake"
  homepage "https://github.com/cdelmonte-zg/delta-explain"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cdelmonte-zg/delta-explain/releases/download/v0.6.0/delta-explain-aarch64-apple-darwin.tar.gz"
      sha256 "0cee4cb9e900a028a3ac26a23ce5ee456f047ca86caff4bb7ab94211e74ae2d7"
    end
    on_intel do
      url "https://github.com/cdelmonte-zg/delta-explain/releases/download/v0.6.0/delta-explain-x86_64-apple-darwin.tar.gz"
      sha256 "305c8c7638df4be83593cc45146149ac49ab88f188afe3bbf94aa22521772f6d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cdelmonte-zg/delta-explain/releases/download/v0.6.0/delta-explain-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c5bf5f5063b909060f57c3c73528bdafca48370e36ac474c312372f0e22063ce"
    end
    on_intel do
      url "https://github.com/cdelmonte-zg/delta-explain/releases/download/v0.6.0/delta-explain-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d7231a1e4dc3c2559107570370a8e00e074b192273a573ae56b591fdd3e312ce"
    end
  end

  def install
    bin.install "delta-explain"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/delta-explain --version")
  end
end
