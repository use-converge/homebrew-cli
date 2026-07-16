class Converge < Formula
  desc "CLI for Converge Research Pulse"
  homepage "https://github.com/use-converge/cli"
  version "0.9.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/use-converge/cli/releases/download/cli-v0.9.0/converge_cli-v0.9.0_darwin_arm64.tar.gz"
      sha256 "9871ae7b05f83e4f5bc5a1b343a4e5cf622a1e6c96416fbb16ce77f8be9c6669"
    else
      url "https://github.com/use-converge/cli/releases/download/cli-v0.9.0/converge_cli-v0.9.0_darwin_amd64.tar.gz"
      sha256 "87704bb7b0ca5e2bc493061a0c7a1b069b38377af759c74171c4f9308a439c8d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/use-converge/cli/releases/download/cli-v0.9.0/converge_cli-v0.9.0_linux_arm64.tar.gz"
      sha256 "21f838ef32e3fcadba7ecff72b964671a511d8ab6c55b2fbad7a87b2ccc7d6a6"
    else
      url "https://github.com/use-converge/cli/releases/download/cli-v0.9.0/converge_cli-v0.9.0_linux_amd64.tar.gz"
      sha256 "aa10777249c809190d3b9c536777ccbcea7ec935bb1d633cd87e9bc53880dcd0"
    end
  end

  def install
    bin.install "converge"
  end

  test do
    system "#{bin}/converge", "version"
  end
end
