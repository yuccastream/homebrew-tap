class Yucca < Formula
  desc "Yucca Stream Server"
  homepage "http://yucca.app/"
  version "0.6.0"

  depends_on "ffmpeg" => :recommended
  depends_on "docker" => :recommended

  if OS.mac?
    url "https://get.yucca.app/v0.6.0/darwin_amd64/yucca"
    sha256 "a5d6810d7957375781562ff174053ca4a824739320117797d03184057896961a"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://get.yucca.app/v0.6.0/linux_amd64/yucca"
      sha256 "d89672ff42ebd601fd5c684c12e9e7810c3b31f5edf692faa9e0ed9f66ae4487"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://get.yucca.app/v0.6.0/linux_arm64/yucca"
        sha256 "3cbdfde6476e1938bcc3ecf15116bb54e0329372ad51eacef3d02ceabafe8bc7"
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
