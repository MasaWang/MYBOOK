#!/usr/bin/env bash
# Verify 完整版.md is up to date with chapter merge.
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
SPEC="$ROOT/OceanAI系統架構規格書/A01-1 OceanAI 系統架構規格書 v1.1"
OUT="$SPEC/完整版.md"
TMP="$(mktemp)"

trap 'rm -f "$TMP"' EXIT

cp "$OUT" "$TMP"
bash "$ROOT/scripts/merge-oceanai-arch-spec-v11.sh" >/dev/null

if diff -q "$TMP" "$OUT" >/dev/null; then
  echo "ok: 完整版.md is up to date with chapters"
else
  echo "error: 完整版.md is stale; run ./scripts/merge-oceanai-arch-spec-v11.sh" >&2
  exit 1
fi
