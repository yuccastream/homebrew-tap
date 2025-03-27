# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TunaAT0220 < Formula
  desc "Tuna - software for create HTTP/TCP/SSH tunnels to local network"
  homepage "https://tuna.am"
  version "0.22.0"
  license "proprietary"

  on_macos do
    if Hardware::CPU.intel?
      url "https://releases.tuna.am/tuna/v0.22.0/tuna_0.22.0_darwin_amd64.tar.gz"
      sha256 "89bb77f9c37a4b14ec8f77d9aa238de3c1a39692a8172ed42ccf81284207a898"

      def install
        bin.install "tuna"
      end
    end
    if Hardware::CPU.arm?
      url "https://releases.tuna.am/tuna/v0.22.0/tuna_0.22.0_darwin_arm64.tar.gz"
      sha256 "1b2cf769d41443c9f08e716ad81f1222728c7eceb626402779d9f9c2f0f2f4b6"

      def install
        bin.install "tuna"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://releases.tuna.am/tuna/v0.22.0/tuna_0.22.0_linux_amd64.tar.gz"
        sha256 "6e3fb21b43427268aee68a2df36547b8573aa6d8bc698b5de73bb065ab7542d0"

        def install
          bin.install "tuna"
        end
      end
    end
    if Hardware::CPU.arm?
      if !Hardware::CPU.is_64_bit?
        url "https://releases.tuna.am/tuna/v0.22.0/tuna_0.22.0_linux_arm.tar.gz"
        sha256 "30cbb59c1393392b0abdeb297465c10901513041c6f34687327886c3099ae727"

        def install
          bin.install "tuna"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://releases.tuna.am/tuna/v0.22.0/tuna_0.22.0_linux_arm64.tar.gz"
        sha256 "6e88d8ddc77c7ee9bb70bb2bb8e505a798c7ded7472ce97e210dc4175a037b99"

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
