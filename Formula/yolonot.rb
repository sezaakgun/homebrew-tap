# typed: false
# frozen_string_literal: true

class Yolonot < Formula
  desc "Permission firewall, auto-approve hooks & command guardrails for AI coding agents"
  homepage "https://github.com/sezaakgun/yolonot"
  version "1.0.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sezaakgun/yolonot/releases/download/v1.0.0/yolonot_darwin_arm64.tar.gz"
      sha256 "8f00f109a506327aec84c326df2c23ccfb998c4962530820dd070fc4becb93e3"
    else
      url "https://github.com/sezaakgun/yolonot/releases/download/v1.0.0/yolonot_darwin_amd64.tar.gz"
      sha256 "fee0962cb22497481f49c9ea2b2712ee2d598d710042da238d3d937031fe810d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/sezaakgun/yolonot/releases/download/v1.0.0/yolonot_linux_arm64.tar.gz"
      sha256 "877d706f8c4966c842a669622ef66a24bdac6e45c7c049a667b3ffcb9ef54868"
    else
      url "https://github.com/sezaakgun/yolonot/releases/download/v1.0.0/yolonot_linux_amd64.tar.gz"
      sha256 "8399b12f8be6be53902f0ec0904b2dc9238ba818281af22d4cfc88ba23f9d84f"
    end
  end

  def install
    bin.install "yolonot"
  end

  test do
    assert_match "1.0.0", shell_output("#{bin}/yolonot --version")
  end
end
