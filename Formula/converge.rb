class Converge < Formula
  desc "CLI for Converge Research Pulse"
  homepage "https://github.com/use-converge/cli"
  version "0.7.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/use-converge/cli/releases/download/cli-v0.7.0/converge_cli-v0.7.0_darwin_arm64.tar.gz"
      sha256 "8f1a40bcfc788a05fead7e43dbc1fccb2727057ced5448d94dfdecd6e5b47551"
    else
      url "https://github.com/use-converge/cli/releases/download/cli-v0.7.0/converge_cli-v0.7.0_darwin_amd64.tar.gz"
      sha256 "3d5c3fae70658e57b7e89828f1a7a98337682f071f28a36ece2b4afa2c8f4e96"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/use-converge/cli/releases/download/cli-v0.7.0/converge_cli-v0.7.0_linux_arm64.tar.gz"
      sha256 "9ed15e858e1db8c7c0321f2d3f7d7f1d35bfcf319f2c1a9398878a9ab03d81fb"
    else
      url "https://github.com/use-converge/cli/releases/download/cli-v0.7.0/converge_cli-v0.7.0_linux_amd64.tar.gz"
      sha256 "0e6d70c8d162cfc9b5250cb38df5e5ce52d98c6660f82771523cc165529a1a56"
    end
  end

  def install
    bin.install "converge"
  end

  test do
    system "#{bin}/converge", "version"
  end
end
