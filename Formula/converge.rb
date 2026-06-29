class Converge < Formula
  desc "CLI for Converge Research Pulse"
  homepage "https://github.com/use-converge/cli"
  version "0.5.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/use-converge/cli/releases/download/cli-v0.5.0/converge_cli-v0.5.0_darwin_arm64.tar.gz"
      sha256 "2fd879088852e266959a4c96a1e552b4486f420592d4d9195007cb17b846c15c"
    else
      url "https://github.com/use-converge/cli/releases/download/cli-v0.5.0/converge_cli-v0.5.0_darwin_amd64.tar.gz"
      sha256 "37dd37a58af5cd1d46e25edda1ea9e1190011dba10d2b8146ca7e9a1f126e3dc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/use-converge/cli/releases/download/cli-v0.5.0/converge_cli-v0.5.0_linux_arm64.tar.gz"
      sha256 "1e35cfeb9a8d2ef2598f4e039f12a4540e609c5e3cccb3d40551940bd47468f7"
    else
      url "https://github.com/use-converge/cli/releases/download/cli-v0.5.0/converge_cli-v0.5.0_linux_amd64.tar.gz"
      sha256 "3f46468cfd6605946b6d99b5ff7c5acd4dabec329494431aaf35b8b62f747f77"
    end
  end

  def install
    bin.install "converge"
  end

  test do
    system "#{bin}/converge", "version"
  end
end
