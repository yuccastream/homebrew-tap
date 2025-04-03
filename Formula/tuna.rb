# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tuna < Formula
  desc "Tuna - software for create HTTP/TCP/SSH tunnels to local network"
  homepage "https://tuna.am"
  version "0.23.0"
  license "proprietary"

  on_macos do
    if Hardware::CPU.intel?
      url "https://releases.tuna.am/tuna/v0.23.0/tuna_0.23.0_darwin_amd64.tar.gz"
      sha256 "d709e8491444cb0a0c242542cdf1e2be5c2853147aae60c8e37d97cb5897ec25"

      def install
        bin.install "tuna"
      end
    end
    if Hardware::CPU.arm?
      url "https://releases.tuna.am/tuna/v0.23.0/tuna_0.23.0_darwin_arm64.tar.gz"
      sha256 "ad68aa568f5c33961d17cfb615e17472f65fedf57ee6d10cf46dbde73201afb5"

      def install
        bin.install "tuna"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://releases.tuna.am/tuna/v0.23.0/tuna_0.23.0_linux_amd64.tar.gz"
        sha256 "76c3e500db04d5ea22938362b34977f949ee6011ee1eddaa555559ecabb87da7"

        def install
          bin.install "tuna"
        end
      end
    end
    if Hardware::CPU.arm?
      if !Hardware::CPU.is_64_bit?
        url "https://releases.tuna.am/tuna/v0.23.0/tuna_0.23.0_linux_arm.tar.gz"
        sha256 "bfb8f359baad0bcb053576ac333f772ac4dc99a456e49b5cd1ba41802e9ea86c"

        def install
          bin.install "tuna"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://releases.tuna.am/tuna/v0.23.0/tuna_0.23.0_linux_arm64.tar.gz"
        sha256 "35d41d1dd3c2850e71ae4064dc203b05cd90dfc947eeb1d4f6e08d7dba84fa18"

        def install
          bin.install "tuna"
        end
      end
    end
  end

  test do
    system "#{bin}/tuna version"
  end
end
