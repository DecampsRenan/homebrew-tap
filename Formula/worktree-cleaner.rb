class WorktreeCleaner < Formula
  desc "Interactively find and delete stale or orphaned git worktrees"
  homepage "https://github.com/DecampsRenan/worktree-cleaner"
  url "https://github.com/DecampsRenan/worktree-cleaner/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "ff31dd4a140ea6499197de9a0881eb5e803cb23b126644cff13ad37c6aa29ade"
  license "MIT"
  head "https://github.com/DecampsRenan/worktree-cleaner.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "wtc #{version}", shell_output("#{bin}/wtc --version")
  end
end
