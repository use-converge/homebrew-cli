class Converge < Formula
  desc "CLI for Converge Research Pulse"
  homepage "https://github.com/use-converge/cli"
  version "0.6.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/use-converge/cli/releases/download/cli-v0.6.0/converge_cli-v0.6.0_darwin_arm64.tar.gz"
      sha256 "897271cf8b016422826ffe8e9a9fae07ec6706473bd2702ea150071ba8227e31"
    else
      url "https://github.com/use-converge/cli/releases/download/cli-v0.6.0/converge_cli-v0.6.0_darwin_amd64.tar.gz"
      sha256 "e4b4a383a64e83c234d1cd465b93c92dde200b7d9fad4301881faebe0996b478"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/use-converge/cli/releases/download/cli-v0.6.0/converge_cli-v0.6.0_linux_arm64.tar.gz"
      sha256 "3340fb214489dfadb3290fd5a19938dda56340bd9402b17728c900ed16bc4a83"
    else
      url "https://github.com/use-converge/cli/releases/download/cli-v0.6.0/converge_cli-v0.6.0_linux_amd64.tar.gz"
      sha256 "766c64defa74f961c5d0ed9f81777a2134fbb216ce27637f0e017f29ba2b664c"
    end
  end

  def install
    bin.install "converge"
  end

  test do
    system "#{bin}/converge", "version"
  end
end
