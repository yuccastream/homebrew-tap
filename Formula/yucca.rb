class Yucca < Formula
  desc "Yucca Stream Server"
  homepage "http://yucca.app/"
  version "0.8.0"

  if OS.mac?
    url "https://releases.yucca.app/v0.8.0/darwin_amd64/free/yucca"
    sha256 "59e1c34fab7b916785936155adda7734d7be1762b3ab319afa938224b8c9a983"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://releases.yucca.app/v0.8.0/linux_amd64/free/yucca"
      sha256 "71f62f68f92a230ce65308eca8ef1e6567450d72e1cd36a0d657fd9e72fbbf5d"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://releases.yucca.app/v0.8.0/linux_arm64/free/yucca"
        sha256 "a692dbb6ebbb924776511cf1252916ec686949166975100b939e3e50a20767a8"
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
