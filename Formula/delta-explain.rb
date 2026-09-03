class DeltaExplain < Formula
  desc "Make Delta pruning visible: CLI for partition pruning and data skipping in Delta Lake"
  homepage "https://github.com/cdelmonte-zg/delta-explain"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cdelmonte-zg/delta-explain/releases/download/v0.7.0/delta-explain-aarch64-apple-darwin.tar.gz"
      sha256 "886283e905c31364339dcc359474fc3e21a7934dd8d39065f62e064d3f43acb9"
    end
    on_intel do
      url "https://github.com/cdelmonte-zg/delta-explain/releases/download/v0.7.0/delta-explain-x86_64-apple-darwin.tar.gz"
      sha256 "29fb28abfe1a0bb3d26440b893c551045b2ac3df62bec5df19b0a50929785882"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cdelmonte-zg/delta-explain/releases/download/v0.7.0/delta-explain-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "79ae8ab2900cb89b1882bde13d80ba880a833ac8d9b248ed8d4e315e457f4c8f"
    end
    on_intel do
      url "https://github.com/cdelmonte-zg/delta-explain/releases/download/v0.7.0/delta-explain-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "70078e225ab714ff314408c77dbf2c7e86a0397bea115745852c153f233f6293"
    end
  end

  def install
    bin.install "delta-explain"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/delta-explain --version")
  end
end
