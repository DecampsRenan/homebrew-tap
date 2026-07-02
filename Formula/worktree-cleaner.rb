class WorktreeCleaner < Formula
  desc "Interactively find and delete stale or orphaned git worktrees"
  homepage "https://github.com/DecampsRenan/worktree-cleaner"
  url "https://github.com/DecampsRenan/worktree-cleaner/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "dd1c29e0744597dfc3a4626682cb21666824e6a8f2812ca535173f1b7b747410"
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
