class Ok < Formula
  desc "Terminal-first password manager with TUI for vault, sync and secrets"
  homepage "https://github.com/OpenKeyring/oak-keyring"
  version "0.8.0-preview.1"
  license "MIT"
  head "https://github.com/OpenKeyring/oak-keyring.git", branch: "master"

  livecheck do
    url :homepage
    regex(/^v?(\d+(?:\.\d+)*(?:-[\w.]+)?)$/i)
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/OpenKeyring/oak-keyring/releases/download/v0.8.0-preview.1/ok-v0.8.0-preview.1-aarch64-apple-darwin.tar.gz"
      sha256 "433ff36fac8f113bc51d1fbaccd0d93088aa42e90149d019e97624d3a71393c2"
    end
    on_intel do
      url "https://github.com/OpenKeyring/oak-keyring/releases/download/v0.8.0-preview.1/ok-v0.8.0-preview.1-x86_64-apple-darwin.tar.gz"
      sha256 "d0ae03714cd9589f256207c3c144f737884adc81a6139340a8ead8619958cd08"
    end
  end

  def install
    bin.install "ok"
  end

  test do
    system bin/"ok", "--version"
  end
end
