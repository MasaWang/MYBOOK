#!/usr/bin/env bash
# Regenerate 完整版.md from chapter files (source of truth).
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
SPEC="$ROOT/OceanAI系統架構規格書/A01-1 OceanAI 系統架構規格書 v1.1"
OUT="$SPEC/完整版.md"

if [[ ! -d "$SPEC/章節" ]]; then
  echo "error: chapter directory not found: $SPEC/章節" >&2
  exit 1
fi

{
  cat <<'HEADER'
# OceanAI 系統架構規格書 v1.1｜完整版

> **衍生檔｜請勿手改** — 由 `scripts/merge-oceanai-arch-spec-v11.sh` 自章節 1–19 合併生成。
> 正本：`章節/`、`章節 2/`。前置與附錄見各子資料夾。

HEADER

  for dir in "$SPEC/章節" "$SPEC/章節 2"; do
    [[ -d "$dir" ]] || continue
    while IFS= read -r -d '' file; do
      printf '\n---\n\n'
      cat "$file"
    done < <(find "$dir" -maxdepth 1 -name '*.md' -print0 | sort -z)
  done
} > "$OUT"

echo "wrote $OUT ($(wc -l < "$OUT" | tr -d ' ') lines)"
