class WorktreeCleaner < Formula
  desc "Interactively find and delete stale or orphaned git worktrees"
  homepage "https://github.com/DecampsRenan/worktree-cleaner"
  url "https://github.com/DecampsRenan/worktree-cleaner/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "e573b89133307a1a948506bc5ee1e7298f8d689fc3f5e2752ddd93626bafca7f"
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
