class DeltaExplain < Formula
  desc "Make Delta pruning visible: CLI for partition pruning and data skipping in Delta Lake"
  homepage "https://github.com/cdelmonte-zg/delta-explain"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cdelmonte-zg/delta-explain/releases/download/v0.3.0/delta-explain-aarch64-apple-darwin.tar.gz"
      sha256 "f96b6b638ce0a21c60e42ca18ea75167b1ed35a572eec2c120249cdf9dc5b3b5"
    end
    on_intel do
      url "https://github.com/cdelmonte-zg/delta-explain/releases/download/v0.3.0/delta-explain-x86_64-apple-darwin.tar.gz"
      sha256 "87c26908012d3a60a2f8344fc644942ef5afd9f11f0ecadbb7be659fa192326b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cdelmonte-zg/delta-explain/releases/download/v0.3.0/delta-explain-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0c663209827f3d787362eae6ab9170459ce7a4ddefd681e65d8a0bf52d52cf60"
    end
    on_intel do
      url "https://github.com/cdelmonte-zg/delta-explain/releases/download/v0.3.0/delta-explain-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7fc4404acde8ac6232a7248b31366aa7127e564c5b8b81ebfae5431d18e78a00"
    end
  end

  def install
    bin.install "delta-explain"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/delta-explain --version")
  end
end
