#!/usr/bin/env bash
# Regenerate Runtime v1.0 完整版.md files from chapter sources.
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
SPEC="$ROOT/02A-OceanAI Runtime系統規格書"

merge_one() {
  local dir="$1"
  local title="$2"
  local out="$dir/完整版.md"
  if [[ ! -d "$dir" ]]; then
    echo "error: chapter directory not found: $dir" >&2
    exit 1
  fi
  {
    cat <<EOF
# ${title}｜完整版

> **衍生檔｜請勿手改** — 由 \`scripts/merge-oceanai-runtime-spec.sh\` 自章節合併生成。
> 正本：\`$(basename "$dir")/\` 下的章節檔。

EOF
    while IFS= read -r -d '' file; do
      printf '\n---\n\n'
      cat "$file"
    done < <(find "$dir" -maxdepth 1 -name '[0-9][0-9]_*.md' -print0 | sort -z)
  } > "$out"
  echo "wrote $out ($(wc -l < "$out" | tr -d ' ') lines)"
}

merge_one "$SPEC/工程規格書" "OceanAI Runtime 系統工程規格書 v1.0"
merge_one "$SPEC/商業規格書" "OceanAI Runtime 系統商業規格書 v1.0"
