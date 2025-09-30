#!/usr/bin/env bash
set -euo pipefail

# Deploy the generated Jekyll site to SEAS web hosting.
#
# Usage:
#   scripts/deploy_public_html.sh                   # use defaults below
#   REMOTE=ccwatson@eniac.seas.upenn.edu \
#   REMOTE_PATH=public_html/custom_dir \
#   scripts/deploy_public_html.sh

REMOTE="${REMOTE:-ccwatson@eniac.seas.upenn.edu}"
REMOTE_PATH="${REMOTE_PATH:-public_html}"

echo "Building site with JEKYLL_ENV=production..."
JEKYLL_ENV=production bundle exec jekyll build

echo "Syncing _site/ to ${REMOTE}:${REMOTE_PATH}/ ..."
rsync -avz --delete _site/ "${REMOTE}:${REMOTE_PATH}/"

echo "Deploy complete. Check https://www.seas.upenn.edu/~ccwatson/"
