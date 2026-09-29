class Heroparser < Formula
  desc "High-performance, AI-native CLI tool for tabular data processing"
  homepage "https://github.com/KoalaFacts/HeroParser"
  version "2.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/KoalaFacts/HeroParser/releases/download/v2.8.0/heroparser-v2.8.0-osx-x64.tar.gz"
      sha256 "59089ca5c6dd6c66681c022fabc6fdd89c71a79508180def94f63b1cf768a0f6"
    elsif Hardware::CPU.arm?
      url "https://github.com/KoalaFacts/HeroParser/releases/download/v2.8.0/heroparser-v2.8.0-osx-arm64.tar.gz"
      sha256 "0fe48da00f330d2610b35ceef40d39d5c2dce432884091f19b6ea5892bb0a702"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/KoalaFacts/HeroParser/releases/download/v2.8.0/heroparser-v2.8.0-linux-x64.tar.gz"
      sha256 "9552466df3d1d201da0180aa865c04d57ec14f193eb624ad70ab92926482d9c5"
    end
  end

  def install
    bin.install "heroparser"
  end

  test do
    system "#{bin}/heroparser", "--help"
  end
end
