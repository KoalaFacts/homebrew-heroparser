class Heroparser < Formula
  desc "High-performance, AI-native CLI tool for tabular data processing"
  homepage "https://github.com/KoalaFacts/HeroParser"
  version "2.5.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/KoalaFacts/HeroParser/releases/download/v2.5.1/heroparser-v2.5.1-osx-x64.tar.gz"
      sha256 "C481765EB4E98510000F78E63201029A8475C81E1E792E5D9FD3FA91375C53B6"
    elsif Hardware::CPU.arm?
      url "https://github.com/KoalaFacts/HeroParser/releases/download/v2.5.1/heroparser-v2.5.1-osx-arm64.tar.gz"
      sha256 "DA1C4CAC04458E0DAA5B9074FE3919DC3998F14B7D3CE92717487EDABDA06F3F"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/KoalaFacts/HeroParser/releases/download/v2.5.1/heroparser-v2.5.1-linux-x64.tar.gz"
      sha256 "C9FE82B1894268E8DCA7BF73476CF1C58006A14547DAEF28E2D6298C8306BC94"
    end
  end

  def install
    bin.install "heroparser"
  end

  test do
    system "#{bin}/heroparser", "--help"
  end
end
