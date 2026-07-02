class WorktreeCleaner < Formula
  desc "Interactively find and delete stale or orphaned git worktrees"
  homepage "https://github.com/DecampsRenan/worktree-cleaner"
  url "https://github.com/DecampsRenan/worktree-cleaner/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "ef6d9bb2cdbcda9438977aefa46ce330d4bf5a871e2cb1d51f0bdf5e1f6d57ad"
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
