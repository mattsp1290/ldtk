#!/usr/bin/env bash
set -euo pipefail

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

export HAXE_STD_PATH="/opt/homebrew/lib/haxe/std"

echo "==> Building main process..."
haxe "$REPO_ROOT/main.hxml"

echo "==> Building renderer..."
haxe "$REPO_ROOT/renderer.hxml"

echo "==> Launching LDtk..."
cd "$REPO_ROOT/app"
npm run start
