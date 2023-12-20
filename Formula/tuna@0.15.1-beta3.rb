# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TunaAT0151Beta3 < Formula
  desc "Tuna - software for create HTTP/TCP tunnels to local network"
  homepage "https://tuna.am"
  version "0.15.1-beta3"
  license "Copyright YuccaStream Team (https://tuna.am/tos.html)"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.tuna.am/tuna/beta/v0.15.1-beta3/tuna_0.15.1-beta3_darwin_arm64.tar.gz"
      sha256 "55445586fa25ea3df814f1c93fe7c1c81716b428be9a15573fdf3bd9abcb8624"

      def install
        bin.install "tuna"
        bash_completion.install ".bashrc" => "source <(tuna completion bash)"
        zsh_completion.install ".zshrc" => "source <(tuna completion zsh)"
        fish_completion.install ".fishrc" => "source <(tuna completion fish)"
      end
    end
    if Hardware::CPU.intel?
      url "https://releases.tuna.am/tuna/beta/v0.15.1-beta3/tuna_0.15.1-beta3_darwin_amd64.tar.gz"
      sha256 "db5d165380ea22344e96bbb02772d2c3a24fd1f0d4c87af4b5430b51d5055a08"

      def install
        bin.install "tuna"
        bash_completion.install ".bashrc" => "source <(tuna completion bash)"
        zsh_completion.install ".zshrc" => "source <(tuna completion zsh)"
        fish_completion.install ".fishrc" => "source <(tuna completion fish)"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://releases.tuna.am/tuna/beta/v0.15.1-beta3/tuna_0.15.1-beta3_linux_arm.tar.gz"
      sha256 "c7b14fae791cd3fd3039df0e21c7ca9bd80ee9f733daeb95fe6ed38faab5def3"

      def install
        bin.install "tuna"
        bash_completion.install ".bashrc" => "source <(tuna completion bash)"
        zsh_completion.install ".zshrc" => "source <(tuna completion zsh)"
        fish_completion.install ".fishrc" => "source <(tuna completion fish)"
      end
    end
    if Hardware::CPU.intel?
      url "https://releases.tuna.am/tuna/beta/v0.15.1-beta3/tuna_0.15.1-beta3_linux_amd64.tar.gz"
      sha256 "8d66439783d708a004b92e713fc4476040affa80c46ab67a520cb7d9460ba45f"

      def install
        bin.install "tuna"
        bash_completion.install ".bashrc" => "source <(tuna completion bash)"
        zsh_completion.install ".zshrc" => "source <(tuna completion zsh)"
        fish_completion.install ".fishrc" => "source <(tuna completion fish)"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://releases.tuna.am/tuna/beta/v0.15.1-beta3/tuna_0.15.1-beta3_linux_arm64.tar.gz"
      sha256 "4745db1cd078426f0514d732e72684146785d58c32a811c5622b129d2e2bfa6a"

      def install
        bin.install "tuna"
        bash_completion.install ".bashrc" => "source <(tuna completion bash)"
        zsh_completion.install ".zshrc" => "source <(tuna completion zsh)"
        fish_completion.install ".fishrc" => "source <(tuna completion fish)"
      end
    end
  end

  test do
    system "#{bin}/tuna version"
  end
end