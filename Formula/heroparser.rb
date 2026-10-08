class Heroparser < Formula
  desc "High-performance, AI-native CLI tool for tabular data processing"
  homepage "https://github.com/KoalaFacts/HeroParser"
  version "2.8.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/KoalaFacts/HeroParser/releases/download/v2.8.1/heroparser-v2.8.1-osx-x64.tar.gz"
      sha256 "8710140c924430de4dc71e832f7ef8cda7959ed52a99bf3958c1ff77fd3b1fd3"
    elsif Hardware::CPU.arm?
      url "https://github.com/KoalaFacts/HeroParser/releases/download/v2.8.1/heroparser-v2.8.1-osx-arm64.tar.gz"
      sha256 "87fb84c8cac7708c14efaa97832c8cfb1dc492716dfa37638a784aa64201defa"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/KoalaFacts/HeroParser/releases/download/v2.8.1/heroparser-v2.8.1-linux-x64.tar.gz"
      sha256 "e4f851824456172bcc6e6b1a7586f52284e6cfd259dd8bef1ee9e0fd835e91e0"
    end
  end

  def install
    bin.install "heroparser"
  end

  test do
    system "#{bin}/heroparser", "--help"
  end
end
