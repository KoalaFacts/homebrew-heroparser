class Heroparser < Formula
  desc "High-performance, AI-native CLI tool for tabular data processing"
  homepage "https://github.com/KoalaFacts/HeroParser"
  version "2.5.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/KoalaFacts/HeroParser/releases/download/v2.5.1/heroparser-v2.5.1-osx-x64.tar.gz"
      sha256 "c481765eb4e98510000f78e63201029a8475c81e1e792e5d9fd3fa91375c53b6"
    elsif Hardware::CPU.arm?
      url "https://github.com/KoalaFacts/HeroParser/releases/download/v2.5.1/heroparser-v2.5.1-osx-arm64.tar.gz"
      sha256 "da1c4cac04458e0daa5b9074fe3919dc3998f14b7d3ce92717487edabda06f3f"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/KoalaFacts/HeroParser/releases/download/v2.5.1/heroparser-v2.5.1-linux-x64.tar.gz"
      sha256 "c9fe82b1894268e8dca7bf73476cf1c58006a14547daef28e2d6298c8306bc94"
    end
  end

  def install
    bin.install "heroparser"
  end

  test do
    system "#{bin}/heroparser", "--help"
  end
end
