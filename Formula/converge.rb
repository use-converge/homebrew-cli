class Converge < Formula
  desc "CLI for Converge Research Pulse"
  homepage "https://github.com/use-converge/cli"
  version "0.4.2"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/use-converge/cli/releases/download/cli-v0.4.2/converge_cli-v0.4.2_darwin_arm64.tar.gz"
      sha256 "5417fce99e58645cc137b0212b2caec7d27dfa2c134b1ea8d2a6e974c7edee59"
    else
      url "https://github.com/use-converge/cli/releases/download/cli-v0.4.2/converge_cli-v0.4.2_darwin_amd64.tar.gz"
      sha256 "d02cf5fbde4c7ae75e80a7d8920d9fc4d06232258625985830c2b9c2a5ff97b6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/use-converge/cli/releases/download/cli-v0.4.2/converge_cli-v0.4.2_linux_arm64.tar.gz"
      sha256 "d65be936eb72ea20f4f1665c12e018d2451efe550b429517a33f4d2d67de67f3"
    else
      url "https://github.com/use-converge/cli/releases/download/cli-v0.4.2/converge_cli-v0.4.2_linux_amd64.tar.gz"
      sha256 "d48449ba3e9e121ac6e8a4f01f892dba9b49bfc6373b23ba6b130cd101d84351"
    end
  end

  def install
    bin.install "converge"
  end

  test do
    system "#{bin}/converge", "version"
  end
end
