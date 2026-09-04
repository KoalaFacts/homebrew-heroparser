class Heroparser < Formula
  desc "High-performance, AI-native CLI tool for tabular data processing"
  homepage "https://github.com/KoalaFacts/HeroParser"
  version "2.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/KoalaFacts/HeroParser/releases/download/v2.6.0/heroparser-v2.6.0-osx-x64.tar.gz"
      sha256 "e390d6ffa7229501aed16446ede0b9ff66b8f04510ca452982780aa38ba665ea"
    elsif Hardware::CPU.arm?
      url "https://github.com/KoalaFacts/HeroParser/releases/download/v2.6.0/heroparser-v2.6.0-osx-arm64.tar.gz"
      sha256 "b142ad2d74d9b16c1d9a439e0d5f787c2409d6ccd7b05be9d51a3ff47c782116"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/KoalaFacts/HeroParser/releases/download/v2.6.0/heroparser-v2.6.0-linux-x64.tar.gz"
      sha256 "b9f48a59579b5f76a3659878d954e05760235c312fe5c0d97e9a79bf508652a7"
    end
  end

  def install
    bin.install "heroparser"
  end

  test do
    system "#{bin}/heroparser", "--help"
  end
end
