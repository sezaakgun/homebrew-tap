# typed: false
# frozen_string_literal: true

class Yolonot < Formula
  desc "Permission firewall, auto-approve hooks & command guardrails for AI coding agents"
  homepage "https://yolonot.dev"
  version "1.1.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sezaakgun/yolonot/releases/download/v1.1.0/yolonot_darwin_arm64.tar.gz"
      sha256 "ca2367899526367c9dbff8d3a538b54ce1a59baebdad748c4c72f4c01bbc8299"
    else
      url "https://github.com/sezaakgun/yolonot/releases/download/v1.1.0/yolonot_darwin_amd64.tar.gz"
      sha256 "c88edad5554c49cab15e46451c1afcdd435eea0c739480881aea1895f87a8032"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/sezaakgun/yolonot/releases/download/v1.1.0/yolonot_linux_arm64.tar.gz"
      sha256 "1495b635f0e39d2ce99055c6c3d9317b4b93957d1e4ff1466e8f514f463410eb"
    else
      url "https://github.com/sezaakgun/yolonot/releases/download/v1.1.0/yolonot_linux_amd64.tar.gz"
      sha256 "475b410f40e10f25f888c6b9a6e0ab1308cfd411caf255f2fa271aa0ebcc0984"
    end
  end

  def install
    bin.install "yolonot"
  end

  test do
    assert_match "1.1.0", shell_output("#{bin}/yolonot version")
  end
end
