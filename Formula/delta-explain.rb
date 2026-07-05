class DeltaExplain < Formula
  desc "Make Delta pruning visible: CLI for partition pruning and data skipping in Delta Lake"
  homepage "https://github.com/cdelmonte-zg/delta-explain"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cdelmonte-zg/delta-explain/releases/download/v0.5.0/delta-explain-aarch64-apple-darwin.tar.gz"
      sha256 "42174098675fdb9ea7329418b00469035a71470deca105b0c7b7bf2133bbbb8f"
    end
    on_intel do
      url "https://github.com/cdelmonte-zg/delta-explain/releases/download/v0.5.0/delta-explain-x86_64-apple-darwin.tar.gz"
      sha256 "623e82322e19733d693b241fddbd5dfe7dc2c92c05ce22998b582c207ae6c6e0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cdelmonte-zg/delta-explain/releases/download/v0.5.0/delta-explain-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "dc06f4204a2d8d1aeb1b19682a2c0fbc43bc5d3cff1d6243657e4a780abb2915"
    end
    on_intel do
      url "https://github.com/cdelmonte-zg/delta-explain/releases/download/v0.5.0/delta-explain-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "10d20de9a0d74d5c0dbc9490ba2772016ba6a7cda4c54e9be36106b1ac090f94"
    end
  end

  def install
    bin.install "delta-explain"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/delta-explain --version")
  end
end
