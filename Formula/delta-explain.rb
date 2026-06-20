class DeltaExplain < Formula
  desc "Make Delta pruning visible: CLI for partition pruning and data skipping in Delta Lake"
  homepage "https://github.com/cdelmonte-zg/delta-explain"
  version "0.2.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cdelmonte-zg/delta-explain/releases/download/v0.2.3/delta-explain-aarch64-apple-darwin.tar.gz"
      sha256 "4223d95d260347533dbd83211cfa87ccf14d8a32477554bc6756ae2460742496"
    end
    on_intel do
      url "https://github.com/cdelmonte-zg/delta-explain/releases/download/v0.2.3/delta-explain-x86_64-apple-darwin.tar.gz"
      sha256 "54928f504a70bc21ffbcea9ab942f47c3c9a6ac6bf424de04457b48204f81dac"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cdelmonte-zg/delta-explain/releases/download/v0.2.3/delta-explain-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "753fe0acfa25ddca0612bdf804f668d82318a8cbe1d8e92acb9fa25ed2cda8b4"
    end
    on_intel do
      url "https://github.com/cdelmonte-zg/delta-explain/releases/download/v0.2.3/delta-explain-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bb9e0b3e67fc5c8304a6bce26f6bea399bbd4738c6627106db431892a50ec733"
    end
  end

  def install
    bin.install "delta-explain"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/delta-explain --version")
  end
end
