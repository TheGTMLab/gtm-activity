#!/usr/bin/env bash
set -euo pipefail
run="${1:?usage: publish.sh <run-dir>}"
rel="${run#$HOME/GTM/04-Runs/}"
dest="$HOME/GTM/05-Activity/runs/$rel.md"
mkdir -p "$(dirname "$dest")"
cp "$run/summary.md" "$dest"
cd "$HOME/GTM/05-Activity"
git add runs
git commit -q -m "run: $rel"
git push -q && touch "$run/.published"
