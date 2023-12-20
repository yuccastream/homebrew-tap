# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tuna < Formula
  desc "Tuna - software for create HTTP/TCP tunnels to local network"
  homepage "https://tuna.am"
  version "0.15.0-beta8"
  license "Copyright YuccaStream Team (https://tuna.am/tos.html)"

  on_macos do
    if Hardware::CPU.intel?
      url "https://releases.tuna.am/tuna/beta/v0.15.0-beta8/tuna_0.15.0-beta8_darwin_amd64.tar.gz"
      sha256 "65df9ddc45c74dae156e212225fa8355521b3f65851e6f3cc9d773687cf47320"

      def install
        bin.install "tuna"
        bash_completion.install "completions/bash/tuna" => "#{bin}/tuna completion bash"
        zsh_completion.install "completions/zsh/tuna" => "#{bin}/tuna completion zsh"
        fish_completion.install "completions/fish/tuna" => "#{bin}/tuna completion fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://releases.tuna.am/tuna/beta/v0.15.0-beta8/tuna_0.15.0-beta8_darwin_arm64.tar.gz"
      sha256 "ec2b7a1d231d550fc79770d844328b503a41841c664be051a1501c2eabd07d80"

      def install
        bin.install "tuna"
        bash_completion.install "completions/bash/tuna" => "#{bin}/tuna completion bash"
        zsh_completion.install "completions/zsh/tuna" => "#{bin}/tuna completion zsh"
        fish_completion.install "completions/fish/tuna" => "#{bin}/tuna completion fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://releases.tuna.am/tuna/beta/v0.15.0-beta8/tuna_0.15.0-beta8_linux_arm.tar.gz"
      sha256 "093befd5926526795e08697b0fdd6860b927217c3b1a5be4565a581b4d448de3"

      def install
        bin.install "tuna"
        bash_completion.install "completions/bash/tuna" => "#{bin}/tuna completion bash"
        zsh_completion.install "completions/zsh/tuna" => "#{bin}/tuna completion zsh"
        fish_completion.install "completions/fish/tuna" => "#{bin}/tuna completion fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://releases.tuna.am/tuna/beta/v0.15.0-beta8/tuna_0.15.0-beta8_linux_arm64.tar.gz"
      sha256 "5c4de0a62dd62ea9445503de8a1b72a86382a65ff2b108d154e908f29864e36c"

      def install
        bin.install "tuna"
        bash_completion.install "completions/bash/tuna" => "#{bin}/tuna completion bash"
        zsh_completion.install "completions/zsh/tuna" => "#{bin}/tuna completion zsh"
        fish_completion.install "completions/fish/tuna" => "#{bin}/tuna completion fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://releases.tuna.am/tuna/beta/v0.15.0-beta8/tuna_0.15.0-beta8_linux_amd64.tar.gz"
      sha256 "05cc5dbac265f8c119677365213080c78be4ff76a081f40d9005fb2e62cce2c2"

      def install
        bin.install "tuna"
        bash_completion.install "completions/bash/tuna" => "#{bin}/tuna completion bash"
        zsh_completion.install "completions/zsh/tuna" => "#{bin}/tuna completion zsh"
        fish_completion.install "completions/fish/tuna" => "#{bin}/tuna completion fish"
      end
    end
  end

  test do
    system "#{bin}/tuna version"
  end
end
