# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class YuccaEntAT0102 < Formula
  desc "Yucca - simple NVR CCTV solution (enterprise edition)"
  homepage "https://yucca.app"
  version "0.10.2"
  license "Copyright YuccaStream Team (https://yucca.app/en/terms)"

  on_macos do
    on_intel do
      url "https://releases.tuna.am/v0.10.2/yucca-ent_0.10.2_darwin_amd64.tar.gz"
      sha256 "9d3a7b9fd125434d2987e155622d4e57af7ae9a97528d80807df1ee5e187af13"

      def install
        bin.install "yucca"
      end
    end
    on_arm do
      url "https://releases.tuna.am/v0.10.2/yucca-ent_0.10.2_darwin_arm64.tar.gz"
      sha256 "12f439de609880ae47a146d21c4fdbac634dde9fa01a9a4457888cc1aac3e5c9"

      def install
        bin.install "yucca"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://releases.tuna.am/v0.10.2/yucca-ent_0.10.2_linux_amd64.tar.gz"
        sha256 "96a4e0a48f0d67deefc33181e178de374522ab548f1386217e31c7cc7e68297f"

        def install
          bin.install "yucca"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://releases.tuna.am/v0.10.2/yucca-ent_0.10.2_linux_arm.tar.gz"
        sha256 "a25fbc120e7df70e833e4e7067f3d4706dd982b254749222f597dc745fa7ed5c"

        def install
          bin.install "yucca"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://releases.tuna.am/v0.10.2/yucca-ent_0.10.2_linux_arm64.tar.gz"
        sha256 "e15b8c836910bb25e22083412ce5c4ab5fea0cbe0c4e6bca608bfe1abc3413dd"

        def install
          bin.install "yucca"
        end
      end
    end
  end

  test do
    system "#{bin}/yucca version"
  end
end
