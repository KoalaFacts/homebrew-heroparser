class Heroparser < Formula
  desc "High-performance, AI-native CLI tool for tabular data processing"
  homepage "https://github.com/KoalaFacts/HeroParser"
  version "2.5.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/KoalaFacts/HeroParser/releases/download/v2.5.2/heroparser-v2.5.2-osx-x64.tar.gz"
      sha256 "e4bcaec4225e3bc9f79edfd240615724e11b6edc114c55ff80e33e998c798994"
    elsif Hardware::CPU.arm?
      url "https://github.com/KoalaFacts/HeroParser/releases/download/v2.5.2/heroparser-v2.5.2-osx-arm64.tar.gz"
      sha256 "5bfe585f3f8e6c79011301bfbb1463f224ab12f041d09f781d3656a7b921d4df"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/KoalaFacts/HeroParser/releases/download/v2.5.2/heroparser-v2.5.2-linux-x64.tar.gz"
      sha256 "c3a3648bad722c600848d3f18c43c97d42ffdbc8ab44096557521ad7bea8a3ca"
    end
  end

  def install
    bin.install "heroparser"
  end

  test do
    system "#{bin}/heroparser", "--help"
  end
end
