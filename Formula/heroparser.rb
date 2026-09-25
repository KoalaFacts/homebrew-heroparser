class Heroparser < Formula
  desc "High-performance, AI-native CLI tool for tabular data processing"
  homepage "https://github.com/KoalaFacts/HeroParser"
  version "2.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/KoalaFacts/HeroParser/releases/download/v2.7.0/heroparser-v2.7.0-osx-x64.tar.gz"
      sha256 "7fc7761d46377b8747903dca7ae0b1d71db3b1a10caec6e1020ae766b6f4f6fa"
    elsif Hardware::CPU.arm?
      url "https://github.com/KoalaFacts/HeroParser/releases/download/v2.7.0/heroparser-v2.7.0-osx-arm64.tar.gz"
      sha256 "d17b487d07231515fd8f8365fe2f4e41946dcfad9a1be3fcc8e54217f69c8d44"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/KoalaFacts/HeroParser/releases/download/v2.7.0/heroparser-v2.7.0-linux-x64.tar.gz"
      sha256 "e309cb28f7019a19864ae65b97ab20c38050314099b9b6c7b82747de11306f41"
    end
  end

  def install
    bin.install "heroparser"
  end

  test do
    system "#{bin}/heroparser", "--help"
  end
end
