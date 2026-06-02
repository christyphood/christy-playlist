#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"

REMOTE="${DEPLOY_REMOTE:-origin}"
BRANCH="${DEPLOY_BRANCH:-main}"

echo "→ Deploying joox-playlist to GitHub Pages (${REMOTE}/${BRANCH})"

if ! git rev-parse --git-dir >/dev/null 2>&1; then
  echo "Error: not a git repository"
  exit 1
fi

if [[ -n "$(git status --porcelain)" ]]; then
  echo "→ Staging and committing changes"
  git add index.html README.md package.json .gitignore .nojekyll .github assets
  git commit -m "Update playlist page and deployment config" || true
fi

echo "→ Pushing to ${REMOTE} ${BRANCH}"
git push -u "$REMOTE" "$BRANCH"

echo ""
echo "Done. After the GitHub Actions workflow finishes (1–2 min):"
echo "  https://christyphood.github.io/christy-playlist/"
echo ""
echo "Track deploy: https://github.com/christyphood/christy-playlist/actions"
