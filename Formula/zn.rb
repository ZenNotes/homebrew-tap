class Zn < Formula
  desc "ZenNotes command-line interface and terminal app for Markdown notes"
  homepage "https://github.com/ZenNotes/tui"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ZenNotes/tui/releases/download/v0.10.0/zn_0.10.0_darwin_arm64.tar.gz"
      sha256 "0ab6f5596079cadb1329161dd9a6716f253355465a4ec8e527838fbb8ec97ee6"
    end
    on_intel do
      url "https://github.com/ZenNotes/tui/releases/download/v0.10.0/zn_0.10.0_darwin_amd64.tar.gz"
      sha256 "dcbe9cfe7b116b1667e282dc81fcf13e8340b41d7f9575e0919481bd75908376"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ZenNotes/tui/releases/download/v0.10.0/zn_0.10.0_linux_arm64.tar.gz"
      sha256 "b7bd5f8a1b22988240d612879b3194a07212ba8d7a51112df822ba935680d3b0"
    end
    on_intel do
      url "https://github.com/ZenNotes/tui/releases/download/v0.10.0/zn_0.10.0_linux_amd64.tar.gz"
      sha256 "d7aeca19b82c29b994cc0c2bcf6d3eff2767f3dea0842170462d21b6eda394f1"
    end
  end

  def install
    bin.install "zn"
  end

  test do
    ENV["ZENNOTES_CONFIG_DIR"] = (testpath/"config").to_s
    assert_match version.to_s, shell_output("#{bin}/zn --version")

    system bin/"zn", "init", testpath/"notes"
    (testpath/"notes/Homebrew.md").write("# Homebrew\n\nA note from the formula test.\n")
    assert_equal "# Homebrew\n\nA note from the formula test.\n",
                 shell_output("#{bin}/zn read Homebrew.md --vault #{testpath}/notes")
  end
end
