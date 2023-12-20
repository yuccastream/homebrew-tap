# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TunaAT0153Beta1 < Formula
  desc "Tuna - software for create HTTP/TCP tunnels to local network"
  homepage "https://tuna.am"
  version "0.15.3-beta1"
  license "Copyright YuccaStream Team (https://tuna.am/tos.html)"

  on_macos do
    if Hardware::CPU.intel?
      url "https://releases.tuna.am/tuna/beta/v0.15.3-beta1/tuna_0.15.3-beta1_darwin_amd64.tar.gz"
      sha256 "878cbbb14251dd89119738b848c6793cf687dc317b4ec3fbe8b8fbd4ab344951"

      def install
        bin.install "tuna"
      end
    end
    if Hardware::CPU.arm?
      url "https://releases.tuna.am/tuna/beta/v0.15.3-beta1/tuna_0.15.3-beta1_darwin_arm64.tar.gz"
      sha256 "6cf26421c9262ad7b862fb27b13dc5c23aa6b8f689e5a800483181830e23318b"

      def install
        bin.install "tuna"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://releases.tuna.am/tuna/beta/v0.15.3-beta1/tuna_0.15.3-beta1_linux_arm.tar.gz"
      sha256 "9b5912fe84c320b088a9daecced077330df835a708835444778dff35b145e78b"

      def install
        bin.install "tuna"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://releases.tuna.am/tuna/beta/v0.15.3-beta1/tuna_0.15.3-beta1_linux_arm64.tar.gz"
      sha256 "e5c6753e48dcfb0975234a560205fbc5f06ef01ef253a3bb772d9b5d867ba096"

      def install
        bin.install "tuna"
      end
    end
    if Hardware::CPU.intel?
      url "https://releases.tuna.am/tuna/beta/v0.15.3-beta1/tuna_0.15.3-beta1_linux_amd64.tar.gz"
      sha256 "bfbde0d6cb2d2fb2135355cb5f657dcf84cb92e0745faa21fca0adf261884032"

      def install
        bin.install "tuna"
      end
    end
  end

  test do
    system "#{bin}/tuna version"
  end
end