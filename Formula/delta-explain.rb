class DeltaExplain < Formula
  desc "Make Delta pruning visible: CLI for partition pruning and data skipping in Delta Lake"
  homepage "https://github.com/cdelmonte-zg/delta-explain"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cdelmonte-zg/delta-explain/releases/download/v0.2.2/delta-explain-aarch64-apple-darwin.tar.gz"
      sha256 "e67dc6f803c2e08649a0eec7e7182c19312f237717fe9b04467ba902165978d7"
    end
    on_intel do
      url "https://github.com/cdelmonte-zg/delta-explain/releases/download/v0.2.2/delta-explain-x86_64-apple-darwin.tar.gz"
      sha256 "1ff2074197258408391e9e2c41355a3beb9f603e788742dd45c9988ffe560bad"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cdelmonte-zg/delta-explain/releases/download/v0.2.2/delta-explain-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "621d070c62a099256a910e7a55df1f3c13c50477cda92d28468a7fd792148e18"
    end
    on_intel do
      url "https://github.com/cdelmonte-zg/delta-explain/releases/download/v0.2.2/delta-explain-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3ee6fb50b34f4dfd41c751b9c4b93583a0461e32ffc4bc9f49610bfcedc92e66"
    end
  end

  def install
    bin.install "delta-explain"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/delta-explain --version")
  end
end
