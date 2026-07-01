#!/usr/bin/env bash
# Audit long-line overlap between chapter/appendix pairs (ch7↔D, ch14↔F, ch18↔E).
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
V11="$ROOT/OceanAI系統架構規格書/A01-1 OceanAI 系統架構規格書 v1.1"

audit_pair() {
  local ch="$1" ap="$2" label="$3" max="${4:-15}"
  local count
  count=$(comm -12 \
    <(grep -E '.{50,}' "$ch" | sed 's/^[[:space:]]*//' | sort -u) \
    <(grep -E '.{50,}' "$ap" | sed 's/^[[:space:]]*//' | sort -u) | wc -l | tr -d ' ')
  echo "$label: $count shared long lines (threshold warn >$max)"
  if [[ "$count" -gt "$max" ]]; then
    echo "  warn: review for duplicate paragraphs"
    comm -12 \
      <(grep -E '.{50,}' "$ch" | sed 's/^[[:space:]]*//' | sort -u) \
      <(grep -E '.{50,}' "$ap" | sed 's/^[[:space:]]*//' | sort -u) | head -5 | sed 's/^/    /'
    return 1
  fi
  return 0
}

failed=0
audit_pair "$V11/章節/chapter 7 系統數據模型.md" "$V11/D附錄/D — 數據模型參考.md" "ch7↔D" 10 || failed=1
audit_pair "$V11/章節 2/chapter 14 治理與宣稱邊界.md" "$V11/D附錄/F — 宣稱邊界參考.md" "ch14↔F" 10 || failed=1
audit_pair "$V11/章節 2/chapter 18 測試與驗證框架.md" "$V11/D附錄/E — 驗證框架.md" "ch18↔E" 10 || failed=1

if [[ "$failed" -eq 0 ]]; then
  echo "ok: appendix overlap within threshold"
else
  exit 1
fi
