class DeltaExplain < Formula
  desc "Make Delta pruning visible: CLI for partition pruning and data skipping in Delta Lake"
  homepage "https://github.com/cdelmonte-zg/delta-explain"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cdelmonte-zg/delta-explain/releases/download/v0.8.0/delta-explain-aarch64-apple-darwin.tar.gz"
      sha256 "fd4188bb59d683b881b2396db7e1388361986b6778cd6df5f1a8c2bac834bcaf"
    end
    on_intel do
      url "https://github.com/cdelmonte-zg/delta-explain/releases/download/v0.8.0/delta-explain-x86_64-apple-darwin.tar.gz"
      sha256 "38326d8b8f9ec1e307b61dfd5e7bcd03676bfaf3283c0df839cc45a8f1d345da"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cdelmonte-zg/delta-explain/releases/download/v0.8.0/delta-explain-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1153efc5928248366b36e956652862c35c5b2f9bfa72b43da3c50f544c34be0f"
    end
    on_intel do
      url "https://github.com/cdelmonte-zg/delta-explain/releases/download/v0.8.0/delta-explain-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "732dede043185d8f9bcbad026347602e208f469685c1eeec6a05b4bae4cdcde9"
    end
  end

  def install
    bin.install "delta-explain"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/delta-explain --version")
  end
end
