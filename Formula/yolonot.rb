# typed: false
# frozen_string_literal: true

class Yolonot < Formula
  desc "Permission firewall, auto-approve hooks & command guardrails for AI coding agents"
  homepage "https://yolonot.dev"
  version "1.0.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sezaakgun/yolonot/releases/download/v1.0.1/yolonot_darwin_arm64.tar.gz"
      sha256 "fa2ce296856a082f6951e09f34b4fa553cf3e117b141de6e91f8cccb73813bfb"
    else
      url "https://github.com/sezaakgun/yolonot/releases/download/v1.0.1/yolonot_darwin_amd64.tar.gz"
      sha256 "3da5be142092e4f8229c949cb6a1a0158489167d0395b31c7d0fbecf24365288"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/sezaakgun/yolonot/releases/download/v1.0.1/yolonot_linux_arm64.tar.gz"
      sha256 "125c5945875e42b08d173d05ca68b2d6a55a4a9708ad58f60d02d91fecf40a71"
    else
      url "https://github.com/sezaakgun/yolonot/releases/download/v1.0.1/yolonot_linux_amd64.tar.gz"
      sha256 "c11ba5da81b0d03afef6ae480ae98101188f1e7389b0c29a35a39f0f635d18d2"
    end
  end

  def install
    bin.install "yolonot"
  end

  test do
    assert_match "1.0.1", shell_output("#{bin}/yolonot version")
  end
end
