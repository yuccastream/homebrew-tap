class Yucca < Formula
  desc "Yucca Stream Server"
  homepage "http://yucca.app/"
  version "0.4.0"

  depends_on "ffmpeg" => :recommended
  depends_on "docker" => :recommended

  if OS.mac?
    url "https://get.yucca.app/v0.4.0/darwin_amd64/yucca"
    sha256 "b9be0520e7ea764f8635406ef47050f724c2d2a1794cea742903383ff2082337"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://get.yucca.app/v0.4.0/linux_amd64/yucca"
      sha256 "a991e97f4987cc384406aa085367c2bdc5c41ae1e74c8e66517e08c365fe1f09"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://get.yucca.app/v0.4.0/linux_arm64/yucca"
        sha256 "6b02ad051ab3d214fdc0369d45440b4b98012247a638a3c7d548d379b825bbd4"
      else
      end
    end
  end

  def install
    bin.install "yucca"
  end

  test do
    system bin/"yucca", "version"
  end
end
