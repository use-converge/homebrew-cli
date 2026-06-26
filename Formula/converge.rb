class Converge < Formula
  desc "CLI for Converge Research Pulse"
  homepage "https://github.com/use-converge/cli"
  version "0.4.1"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/use-converge/cli/releases/download/cli-v0.4.1/converge_cli-v0.4.1_darwin_arm64.tar.gz"
      sha256 "645f1addcf7f2931a8c873e58eb9652df93efc5a7466d2ff721288a30069ab5b"
    else
      url "https://github.com/use-converge/cli/releases/download/cli-v0.4.1/converge_cli-v0.4.1_darwin_amd64.tar.gz"
      sha256 "c1ed3db31db3e7e9901d100b82c19c1be432fe8ca7919ca829dbe5c86ac9b071"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/use-converge/cli/releases/download/cli-v0.4.1/converge_cli-v0.4.1_linux_arm64.tar.gz"
      sha256 "3d75df13bd51bffcedc1bb9b0c41a9ecc271cd8517be45133703041d43a60c3c"
    else
      url "https://github.com/use-converge/cli/releases/download/cli-v0.4.1/converge_cli-v0.4.1_linux_amd64.tar.gz"
      sha256 "39a5c371b180571ca7728b46946b92ba703b66e406f8fbd3b4c1fcaeee10a3f9"
    end
  end

  def install
    binary = Dir["converge_*/converge"].first
    odie "converge binary not found in archive" if binary.nil?

    bin.install binary => "converge"
  end

  test do
    system "#{bin}/converge", "version"
  end
end
