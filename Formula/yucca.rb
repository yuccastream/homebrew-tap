class Yucca < Formula
  desc "Yucca Stream Server"
  homepage "http://yucca.app/"
  version "0.7.0"

  depends_on "ffmpeg" => :recommended
  depends_on "docker" => :recommended

  if OS.mac?
    url "https://releases.yucca.app/v0.7.0/darwin_amd64/free/yucca"
    sha256 "68147ed2304e2c42dce73b46dbad4f129f943e81737cb069b3eb5d0d0417f24f"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://releases.yucca.app/v0.7.0/linux_amd64/free/yucca"
      sha256 "134f32a279249bc6bea3e9d39ec1c713836ca12d198ddbdc9938cc5c03690a72"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://releases.yucca.app/v0.7.0/linux_arm64/free/yucca"
        sha256 "635f4ef14b87576a971d038a5fd808812162b3e5be612c1582a9044444d7d920"
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
