class Ok < Formula
  desc "Terminal-first password manager with TUI for vault, sync and secrets"
  homepage "https://github.com/OpenKeyring/oak-keyring"
  version "0.8.0-preview.2"
  license "MIT"
  head "https://github.com/OpenKeyring/oak-keyring.git", branch: "master"

  livecheck do
    url :homepage
    regex(/^v?(\d+(?:\.\d+)*(?:-[\w.]+)?)$/i)
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/OpenKeyring/oak-keyring/releases/download/v0.8.0-preview.2/ok-v0.8.0-preview.2-aarch64-apple-darwin.tar.gz"
      sha256 "98a943be3aaede0caa0690e6fd53fc18433d25d2aa78e569229ec4b19cb6d1d1"
    end
    on_intel do
      url "https://github.com/OpenKeyring/oak-keyring/releases/download/v0.8.0-preview.2/ok-v0.8.0-preview.2-x86_64-apple-darwin.tar.gz"
      sha256 "4c956dbb1eeae0c9d7ecf67d3408869ad713b4c7e29a14dbe39148b03b746401"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/OpenKeyring/oak-keyring/releases/download/v0.8.0-preview.2/ok-v0.8.0-preview.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cd298173b9a9ec6d851d53979c74798537e01cb6e3ac5f74556ca94cda1ae180"
    end
    on_intel do
      url "https://github.com/OpenKeyring/oak-keyring/releases/download/v0.8.0-preview.2/ok-v0.8.0-preview.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1c25701c44238f286f25222f0b6cd2150e0218226fbd1cc8285146590cd1794a"
    end
  end

  def install
    bin.install "ok"
  end

  test do
    system bin/"ok", "--version"
  end
end
