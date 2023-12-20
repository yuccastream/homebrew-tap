# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TunaAT0151Beta7 < Formula
  desc "Tuna - software for create HTTP/TCP tunnels to local network"
  homepage "https://tuna.am"
  version "0.15.1-beta7"
  license "Copyright YuccaStream Team (https://tuna.am/tos.html)"

  on_macos do
    if Hardware::CPU.intel?
      url "https://releases.tuna.am/tuna/beta/v0.15.1-beta7/tuna_0.15.1-beta7_darwin_amd64.tar.gz"
      sha256 "bd235b55da13d21dedf5bfad9b3d06f05317c9b89576df55e4af459c1301a460"

      def install
        bin.install "tuna"
        bash_completion.install "completions/tuna.bash" => "#{bin}/tuna completion bash"
        zsh_completion.install "completions/tuna.zsh" => "#{bin}/tuna completion zsh"
        fish_completion.install "completions/tuna.fish" => "#{bin}/tuna completion fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://releases.tuna.am/tuna/beta/v0.15.1-beta7/tuna_0.15.1-beta7_darwin_arm64.tar.gz"
      sha256 "c0d59178e7541dce65c3fbaba0ac59b0e2ec7840fbb9e881c57d659a7919153d"

      def install
        bin.install "tuna"
        bash_completion.install "completions/tuna.bash" => "#{bin}/tuna completion bash"
        zsh_completion.install "completions/tuna.zsh" => "#{bin}/tuna completion zsh"
        fish_completion.install "completions/tuna.fish" => "#{bin}/tuna completion fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://releases.tuna.am/tuna/beta/v0.15.1-beta7/tuna_0.15.1-beta7_linux_arm.tar.gz"
      sha256 "b096b05bf0110704e275ec566378acdd95f3d32e72d15e7feb4c57291111b589"

      def install
        bin.install "tuna"
        bash_completion.install "completions/tuna.bash" => "#{bin}/tuna completion bash"
        zsh_completion.install "completions/tuna.zsh" => "#{bin}/tuna completion zsh"
        fish_completion.install "completions/tuna.fish" => "#{bin}/tuna completion fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://releases.tuna.am/tuna/beta/v0.15.1-beta7/tuna_0.15.1-beta7_linux_amd64.tar.gz"
      sha256 "61b1b0d295276afeab768ab24dcd9cffb6f4ba680d990d67a4645f64ecf4cd3a"

      def install
        bin.install "tuna"
        bash_completion.install "completions/tuna.bash" => "#{bin}/tuna completion bash"
        zsh_completion.install "completions/tuna.zsh" => "#{bin}/tuna completion zsh"
        fish_completion.install "completions/tuna.fish" => "#{bin}/tuna completion fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://releases.tuna.am/tuna/beta/v0.15.1-beta7/tuna_0.15.1-beta7_linux_arm64.tar.gz"
      sha256 "951aba2b7e9b9500455f9626917d5a96828ed53f3cc26ad31d1c30a8050a2943"

      def install
        bin.install "tuna"
        bash_completion.install "completions/tuna.bash" => "#{bin}/tuna completion bash"
        zsh_completion.install "completions/tuna.zsh" => "#{bin}/tuna completion zsh"
        fish_completion.install "completions/tuna.fish" => "#{bin}/tuna completion fish"
      end
    end
  end

  test do
    system "#{bin}/tuna version"
  end
end
