# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gotest < Formula
  desc ""
  homepage ""
  version "1.5.0"

  on_macos do
    url "https://s-ed1.cloud.gcore.lu/tools/gotest/1.5.0/gotest_1.5.0_darwin_amd64.tar.gz"
    sha256 "faf8d2aa15cabb7c6d1a64b4dc02fd53e3486fc7d9f1512af8e2b8cb9d80a53d"

    def install
      bin.install "gotest"
    end

    on_arm do
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the Gotest
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://s-ed1.cloud.gcore.lu/tools/gotest/1.5.0/gotest_1.5.0_linux_amd64.tar.gz"
        sha256 "75fd2c179a90d5563002d3f5b036ad56dba23464447c93378685307d0597c0bf"

        def install
          bin.install "gotest"
        end
      end
    end
  end
end
