class Converge < Formula
  desc "CLI for Converge Research Pulse"
  homepage "https://github.com/use-converge/cli"
  version "0.8.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/use-converge/cli/releases/download/cli-v0.8.0/converge_cli-v0.8.0_darwin_arm64.tar.gz"
      sha256 "f1be06b5cd860f62d25d35bd2d5a9c9a192e2fe9a2c8605f02e59de385d58483"
    else
      url "https://github.com/use-converge/cli/releases/download/cli-v0.8.0/converge_cli-v0.8.0_darwin_amd64.tar.gz"
      sha256 "23f41226f35287de13317cb35abf82d9a606861c92ade4cd67ee5c9526b09d6b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/use-converge/cli/releases/download/cli-v0.8.0/converge_cli-v0.8.0_linux_arm64.tar.gz"
      sha256 "d48fa2dc3bf6706b3b934f8688eca3e1e257c750c51d641ae669b3dd1b208d03"
    else
      url "https://github.com/use-converge/cli/releases/download/cli-v0.8.0/converge_cli-v0.8.0_linux_amd64.tar.gz"
      sha256 "8799e0e2bbae2dedcdd58fad4af4396088de7da30d9cb9578b94a05e33d3ca6c"
    end
  end

  def install
    bin.install "converge"
  end

  test do
    system "#{bin}/converge", "version"
  end
end
