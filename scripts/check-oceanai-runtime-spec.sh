#!/usr/bin/env bash
# Verify Runtime v1.0 完整版.md files are up to date with chapter merge.
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
SPEC="$ROOT/02A-OceanAI Runtime系統規格書"
TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT

for book in 工程規格書 商業規格書; do
  cp "$SPEC/$book/完整版.md" "$TMP/$book.md"
done

bash "$ROOT/scripts/merge-oceanai-runtime-spec.sh" >/dev/null

for book in 工程規格書 商業規格書; do
  if ! diff -q "$TMP/$book.md" "$SPEC/$book/完整版.md" >/dev/null; then
    echo "error: $book/完整版.md is stale; run ./scripts/merge-oceanai-runtime-spec.sh" >&2
    exit 1
  fi
done

echo "ok: Runtime v1.0 完整版.md matches chapters"
