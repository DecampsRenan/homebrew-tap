class WorktreeCleaner < Formula
  desc "Interactively find and delete stale or orphaned git worktrees"
  homepage "https://github.com/DecampsRenan/worktree-cleaner"
  url "https://github.com/DecampsRenan/worktree-cleaner/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "a31e24bc1889586372b1ddfefcd24fc4e1a4105c736262bd198df8c4d064e7b5"
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
