# OAI-RUNTIME-ENG-004

## Distributed Temporal Architecture & Time Reliability

## OceanAI 分散式時間架構與時間可靠性工程規格書

Candidate｜待工程審核

Version v0.1

2026-11-11

**System｜所屬系統：** OceanAI Runtime / ArtiOS Runtime / Artibird Device System  
**Coverage｜涵蓋範圍：** Cloud、Hub、Gate、Sync、Switch、Plug-A、Sense、Panel、Flow-I  
**Implementation｜實施工具：** Codex + Cursor + GitHub  
**Approval｜批准狀態：** Author Review Required｜須經審閱

本規格將 **Temporal Architecture｜時間架構** 納入 OceanAI Runtime 的跨層基礎能力，建立從雲端到實體設備的一致時間模型。

工程目標是讓系統在正常運行、網路中斷、時鐘漂移、設備重啟及雲端不可用時，仍能可靠處理時間、事件、控制命令與自動化任務。

## 1. Architecture Baseline｜架構基準

**Cloud Temporal Services**

跨場域時間協調 · 長期排程 · 時間政策 · 歷史分析

Time Contract + Sync + Events

**ArtiOS Hub Temporal Runtime**

本地時鐘協調 · 排程 · Deadline · Event Ordering · Recovery Timers

Clock Quality + Deadline + Sequence

**Artibird Gate Temporal Services**

ESP32-C6 · Monotonic Timer · Mesh Retry · Command Expiry

**Artibird Device Temporal Functions**

- Sync
- Switch
- Plug-A
- Sense
- Panel
- Flow-I

精密時序 · 採樣 · 執行期限 · 安全計時

**Core Principle｜核心原則**

> Time must remain reliable across disconnection, restart, and distributed execution.
>
> 時間必須在斷線、重啟與分散式執行過程中保持可靠。

## 2. Engineering Requirements｜核心工程要求

| ID | Requirement｜要求 | Priority |
| --- | --- | --- |
| TMP-001 | 所有 Runtime 節點具備 Monotonic Clock｜單調時鐘或等效計時來源 | P0 |
| TMP-002 | UTC 時間須記錄同步來源、品質與不確定度 | P0 |
| TMP-003 | 命令必須具有 Deadline｜執行期限 | P0 |
| TMP-004 | 過期命令不得因重連或重啟重新執行 | P0 |
| TMP-005 | 事件須具有來源序號與啟動世代識別 | P0 |
| TMP-006 | 設備安全計時不得依賴雲端持續連線 | P0 |
| TMP-007 | Hub 支援本地持久化排程與重啟恢復 | P1 |
| TMP-008 | Gate 支援時鐘未知時的安全降級 | P0 |
| TMP-009 | 跨設備事件不得僅依 UTC 時間戳判斷因果順序 | P0 |
| TMP-010 | Push Temporal Layer 共用時間契約，保持服務獨立 | P1 |

## 3. Time Model｜統一時間模型

OceanAI 應區分四種時間概念。

| Time Model | 用途 | 工程要求 |
| --- | --- | --- |
| Wall Clock｜日曆時鐘 | UTC、日曆排程、歷史紀錄 | 需要同步品質 |
| Monotonic Clock｜單調時鐘 | Timeout、Duration、Retry | 不受 UTC 校時跳變影響 |
| Logical Time｜邏輯時間 | Event Sequence、Epoch、Version | 保證指定串流內的順序 |
| Physical Timing｜物理時序 | IR/RF Pulse、Relay、Valve、Sampling | 使用硬體或高解析度計時器 |

### 3.1 Clock Quality｜時鐘品質

```text
type ClockQuality =
  | "SYNCHRONIZED"
  | "HOLDOVER"
  | "ESTIMATED"
  | "UNSYNCHRONIZED"
  | "INVALID";
```

- `SYNCHRONIZED`：已從可信時間來源同步，且誤差在指定容許範圍內。
- `HOLDOVER`：同步來源暫時失效，利用本地時鐘維持時間估計。
- `ESTIMATED`：有可用時間估計，但精度或來源證據不足。
- `UNSYNCHRONIZED`：缺乏可信 UTC，仍可能具有可用的單調計時。
- `INVALID`：時間來源或計時器異常，不可作為有效時間依據。

### 3.2 Clock Source Priority｜時鐘來源

| Node | Preferred Source｜優先來源 | Fallback｜備援 |
| --- | --- | --- |
| Cloud | 作業系統時間同步服務 | 雲端基礎設施備援時間來源 |
| Hub / Raspberry Pi 5 | 可信 NTP/NTS 或受管理的本地時間來源 | 經驗證的 RTC + Holdover |
| Gate / ESP32-C6 | Hub 提供的時間校準資訊 | 本地 Monotonic Timer |
| Sync | Gate／Hub 的時間資訊（需要時） | 本地硬體計時器 |
| Switch / Plug-A | Gate 時間資訊（需要時） | MCU 單調計時器 |
| Sense | Gate 時間資訊或採樣時間映射 | 本地採樣計數器 |
| Panel | Hub／Gate 時間資訊 | 本地單調計時器 |
| Flow-I | Hub／Gate 時間資訊 | 獨立安全計時器 |

**設計限制：** NTP、RTC 與單調時鐘的能力不同。RTC 提供斷電後的日曆時間保持能力，但不保證時間必然準確；單調時鐘則用於可靠測量時間間隔。

## 4. Temporal Contract｜跨層時間資料契約

```text
interface TemporalEnvelope {
  schemaVersion: "1.0";

  eventId: string;
  sourceId: string;
  bootId: string;

  sourceSequence: number;

  occurredAtUtc?: string;
  receivedAtUtc?: string;

  sourceMonotonicUs?: number;

  clockQuality:
    | "SYNCHRONIZED"
    | "HOLDOVER"
    | "ESTIMATED"
    | "UNSYNCHRONIZED"
    | "INVALID";

  clockUncertaintyMs?: number;
  clockSyncAgeMs?: number;

  correlationId?: string;
  causationId?: string;
}
```

### 4.1 Mandatory Rules｜必要規則

1. `occurredAtUtc` 只有在來源能提供有意義的 UTC 時才填入；未知時不得偽造。
2. `receivedAtUtc` 由接收節點產生，不能覆寫來源時間。
3. `sourceMonotonicUs` 僅在同一時鐘域、同一 Boot 世代內比較。
4. `sourceSequence` 應在明確的來源事件串流內單調遞增。
5. `bootId` 用於區分設備重啟前後的事件。
6. `correlationId` 關聯同一控制流程；`causationId` 記錄事件因果來源。
7. Hub、Cloud 可以補充接收及同步時間，但必須保留原始時間證據。
8. 時鐘品質降低時，系統應標記時間不確定度並限制依賴絕對時間的操作。

### 4.2 Temporal Authority｜時間協調權限

時間同步權限與 Runtime Control Authority 應分開管理。

Cloud 可以提供時間資訊，但不因此取得 Hub 的設備控制權。Hub 可以向 Gate 提供時間校準，但設備安全計時仍由硬體韌體直接負責。

## 5. Cloud Temporal Services｜雲端時間服務

**Owner：OceanAI Cloud Platform Services**

雲端承擔跨站點時間協調、長期排程與歷史分析。

### Required Modules｜必要模組

- Clock Health Monitor｜時鐘健康監控
- Cross-Site Schedule Manager｜跨站點排程管理
- Temporal Policy Store｜時間政策儲存
- Event Timeline Service｜事件時間線服務
- Schedule Distribution｜排程分發
- Temporal Audit｜時間審計

Cloud Runtime Service 仍須在其命令執行路徑內自行執行 Deadline 驗證。

### Cloud / Hub Schedule Ownership

每個排程應明確記錄：

```text
scheduleId
siteId
executionAuthority
scheduleVersion
timezone
nextRunAt
lastExecutionId
```

當 Hub 是 Runtime Authority 時，Cloud 可以管理或分發排程版本，但實際本地排程執行由 Hub 負責。

這能避免 Cloud 和 Hub 在網路恢復後重複執行同一場景。

## 6. Hub Temporal Runtime｜Hub 時間運行層

**Hardware：Raspberry Pi 5**  
**Runtime：ArtiOS Runtime**

Hub 應具有獨立的 Temporal Runtime Module，為 Scene Engine、Automation Engine、Command Manager、Fault Manager 與 Recovery Manager 提供時間服務。

### 6.1 Module Structure｜模組結構

```text
ArtiOS Runtime
│
├── Temporal Runtime
│   ├── Clock Manager
│   ├── Clock Quality Monitor
│   ├── Scheduler
│   ├── Deadline Manager
│   ├── Timer Manager
│   ├── Event Time Manager
│   ├── Persistent Schedule Store
│   └── Temporal Diagnostics
│
├── Scene Engine
├── Automation Engine
├── Command Manager
├── State Reconciler
├── Fault Manager
└── Recovery Manager
```

### 6.2 Hub Scheduling｜本地排程

支援：

- One-Time Schedule｜單次排程
- Recurring Schedule｜週期排程
- Calendar Schedule｜日曆排程
- Delayed Action｜延遲動作
- Duration-Based Action｜持續時間動作
- Conditional Schedule｜條件式排程

### 6.3 Persistent Schedule Model

```text
interface RuntimeSchedule {
  scheduleId: string;
  siteId: string;

  version: number;
  executionAuthority: "CLOUD" | "HUB";

  timezone: string;

  scheduleType:
    | "ONCE"
    | "RECURRING"
    | "DELAYED"
    | "DURATION";

  nextRunAtUtc?: string;
  deadlineAtUtc?: string;

  missedExecutionPolicy:
    | "SKIP"
    | "EXECUTE_IF_VALID"
    | "REQUIRE_REVIEW";

  enabled: boolean;
}
```

### 6.4 Restart Recovery｜重啟恢復

Hub 重啟後：

1. 初始化單調時鐘與啟動世代。
2. 驗證 RTC／時間同步品質。
3. 載入持久化排程。
4. 重新計算下一次執行時間。
5. 檢查重啟期間錯過的任務。
6. 依 `missedExecutionPolicy` 處理。
7. 使用 Execution ID 去重。
8. 恢復排程服務並記錄審計。

**禁止將所有錯過的排程直接補執行。** 例如空調排程可以依目前狀態重新評估，但灌溉閥門不應在重啟後無條件補開。

## 7. Gate Temporal Services｜Gate 時間服務

**Hardware：ESP32-C6**

Gate 主要負責短期通訊計時、命令期限、Mesh 重試與事件時間證據。

### P0 Capabilities

| Module | 功能 |
| --- | --- |
| Monotonic Timer | 本地時間間隔測量 |
| Command Deadline Guard | 命令有效期檢查 |
| Retry Scheduler | Mesh 訊息重試 |
| Heartbeat Timer | Hub / Device 連線監控 |
| Sequence Tracker | 訊息排序與去重 |
| Clock Quality Tracker | 時間同步品質 |
| Watchdog | 韌體任務健康保護 |

### 7.1 Deadline Handling｜期限處理

建議由 Hub 進行端到端 Deadline 驗證，Gate 另外使用相對時間預算執行本地防護。

```text
Hub
  │
  │ Validate Original Deadline
  │
  ▼
Gate
  │
  │ Check Remaining Budget
  │
  ▼
Device
  │
  │ Validate Local Execution Window
  ▼
Execute / Reject
```

對缺乏可信 UTC 的 Gate，可使用經驗證的相對有效時間預算。

但相對時間預算不能在每次轉發或重試時重新從完整 TTL 開始計算。必須扣除已消耗的時間，或由可信上游重新驗證原始 Deadline。

對安全敏感命令，時間證據不足時應拒絕執行或要求重新取得授權。

### 7.2 Reboot Safety

Gate 重啟後：

- 重新產生 Boot ID。
- 清理不可信的短期命令。
- 重建 Hub 連線。
- 重新取得必要的時間資訊。
- 不自動執行重啟前未確認的舊命令。
- 對設備狀態重新查詢與核對。

## 8. Device Temporal Functions｜硬體設備時間功能

下列為各產品的候選工程要求；具體 MCU、計時器、感測器與安全電路須依硬體版本確認。

**Artibird Sync｜IR / RF 時序**

使用硬體 Timer、RMT 或等效周邊處理 IR/RF Pulse Timing。記錄脈衝寬度、幀間隔、擷取時間窗口及重放時序誤差。不得依賴一般作業系統任務排程維持微秒級波形。

**Artibird Switch｜智慧開關**

按鍵去抖、繼電器動作逾時、命令去重、回報期限及重啟後狀態核對。命令 ACK、繼電器狀態與實際負載狀態須分開記錄。

**Artibird Plug-A｜智慧空調插座**

功率採樣週期、異常負載持續時間、繼電器動作間隔及保護延遲。涉及過流、過溫等安全功能時，須由合適的硬體保護機制與經驗證韌體共同保障。

**Artibird Sense｜環境感測器**

採樣週期、感測穩定時間、資料時間戳、低功耗喚醒與時間漂移。離線緩存資料須保留原始採樣順序及時間品質。

**Artibird Panel｜控制面板**

觸控去抖、長按辨識、操作逾時、顯示狀態新鮮度與場景回饋時間。面板顯示的命令成功狀態須依 Runtime 確認結果更新。

**Artibird Flow-I｜灌溉控制**

閥門最大開啟時長、流量採樣、無流量檢測期限、異常持續時間及超時關閉。必須驗證斷網、MCU 重啟、電源異常時的安全關閉策略。

## 9. Timing Precision & Performance Budget｜計時精度與效能預算

以下數值是 **Initial Engineering Targets｜初始工程驗證目標**，不是目前 Artibird 硬體已實測達成的性能。

| Layer / Device | Timing Requirement | 初始驗證目標 |
| --- | --- | --- |
| Cloud | 時鐘同步品質 | 記錄 Offset、Uncertainty、Sync Age |
| Hub | 排程觸發延遲 | 一般本地排程 P95 ≤ 1 秒 |
| Hub | Deadline 判斷 | 不依賴 UTC 跳變 |
| Gate | 短期計時 | 毫秒級計時，實測誤差 |
| Gate | Mesh Retry | 依通訊協議及重試預算驗證 |
| Sync | IR 脈衝時序 | 目標誤差 ≤ ±10 µs，須按協議及硬體驗證 |
| Switch | 按鍵去抖 | 初始候選窗口 20–50 ms |
| Plug-A | 能耗採樣 | 依計量 IC 與保護要求確定 |
| Sense | 採樣時間戳 | 記錄採樣延遲與時鐘誤差 |
| Panel | 觸控事件處理 | 依使用者體驗測試確定 |
| Flow-I | 最大開閥時長 | 必須有獨立、可驗證的安全截止機制 |

**重要工程邊界：** 一般 Linux 排程與無線網路不能保證硬即時執行。Sync 的精密波形應由 MCU 硬體周邊產生；Flow-I 的安全截止應由本地控制器及適當的硬體保護措施保障。

## 10. Command Deadline Protocol｜命令期限協議

```text
interface TemporalCommand {
  commandId: string;
  idempotencyKey: string;

  runtimeAuthorityId: string;
  authorityEpoch: number;

  createdAtUtc: string;
  expiresAtUtc: string;

  remainingBudgetMs?: number;
  issuedAtMonotonicUs?: number;

  sourceBootId: string;
  commandSequence: number;

  desiredState: Record<string, unknown>;
}
```

### Command Execution Rules｜命令執行規則

1. Runtime Authority 驗證命令有效期及使用者權限。
2. 轉發時攜帶剩餘時間預算及必要的時間品質資訊。
3. Gate 和設備不得自行延長原始命令期限。
4. 重試沿用原有 `commandId` 與 `idempotencyKey`。
5. 命令過期後回報 `EXPIRED`。
6. 執行結果未知時先核對設備狀態，不盲目重試。
7. 非冪等或安全敏感操作採取更嚴格的重試限制。
8. Runtime Authority Epoch 失效時拒絕舊命令。

## 11. Event Ordering & Temporal Consistency｜事件排序與時間一致性

事件時間與事件因果順序應分開管理。

```text
Switch                 Gate                   Hub
  │                     │                     │
  │ State Changed       │                     │
  ├────────────────────>│                     │
  │ seq=41              │                     │
  │                     ├────────────────────>│
  │                     │                     │
  │ State Changed       │                     │
  ├────────────────────>│                     │
  │ seq=42              │                     │
  │                     ├────────────────────>│
  │                     │                     │
  │                     │       Delayed seq=41│
  │                     │                     │
  │                     │       Current seq=42│
```

Hub 收到較舊的 `seq=41` 時，不得覆寫已確認的 `seq=42` 狀態。

對不同設備，僅有 UTC 時間戳不一定能確定哪個事件先發生。應使用來源序號、因果關聯、接收順序及時間不確定度共同判斷。

## 12. Temporal Fault Registry｜時間故障註冊表

| Fault ID | Fault｜故障 | Recovery｜恢復 |
| --- | --- | --- |
| TMP-001 | Clock Unsynchronized｜時鐘未同步 | 重新校時 |
| TMP-002 | Excessive Clock Drift｜時鐘漂移過大 | 校準／降級 |
| TMP-003 | Clock Jump｜日曆時鐘跳變 | 重算日曆排程 |
| TMP-004 | Command Deadline Exceeded｜命令過期 | 拒絕執行 |
| TMP-005 | Event Sequence Gap｜事件序號缺口 | 補齊／重新同步 |
| TMP-006 | Schedule Missed｜排程錯過 | 依補執行政策處理 |
| TMP-007 | Schedule Duplicate｜排程重複 | Execution ID 去重 |
| TMP-008 | Timer Overrun｜計時器超時 | 診斷／安全處理 |
| TMP-009 | RTC Invalid｜RTC 無效 | 重新同步／限制排程 |
| TMP-010 | Temporal State Recovery Failed｜時間狀態恢復失敗 | 隔離排程並上報 |
| TMP-011 | Clock Uncertainty Exceeded｜時間不確定度超標 | 限制時間敏感操作 |
| TMP-012 | Safety Deadline Violation｜安全期限違反 | 本地安全動作與故障鎖定 |

## 13. Temporal Metrics｜時間監控指標

| Metric | 中文 |
| --- | --- |
| `time.clock.offset_ms` | 時鐘偏移 |
| `time.clock.uncertainty_ms` | 時間不確定度 |
| `time.clock.sync_age_ms` | 距上次同步時間 |
| `time.clock.drift_ppm` | 時鐘漂移率 |
| `time.clock.jump_count` | 時鐘跳變次數 |
| `time.scheduler.trigger_lag_ms` | 排程觸發延遲 |
| `time.scheduler.missed_count` | 錯過排程次數 |
| `time.scheduler.duplicate_count` | 重複執行次數 |
| `time.command.expired_count` | 過期命令數 |
| `time.command.deadline_margin_ms` | 命令期限剩餘裕度 |
| `time.event.sequence_gap_count` | 事件序號缺口數 |
| `time.event.out_of_order_count` | 事件亂序次數 |
| `time.timer.overrun_count` | 計時器超時次數 |
| `time.recovery.duration_ms` | 時間服務恢復耗時 |
| `time.device.sampling_jitter_us` | 設備採樣時間抖動 |

`clockQuality` 應作為受控狀態資料，而非假裝成連續數值。所有指標應包含量測單位、採樣週期、節點範圍及時間來源。

## 14. Test & Acceptance Matrix｜測試與驗收矩陣

| Test ID | Scenario｜測試情境 | Acceptance｜驗收條件 |
| --- | --- | --- |
| TIME-T01 | Cloud 中斷 24 小時 | Hub 已授權本地排程持續運行 |
| TIME-T02 | Hub 重啟 | 排程恢復且不重複執行 |
| TIME-T03 | Gate 重啟 | 舊命令不被重新執行 |
| TIME-T04 | UTC 向前跳變 | Deadline 計時不受影響 |
| TIME-T05 | UTC 向後跳變 | 日曆排程依政策重算 |
| TIME-T06 | RTC 無效 | 時間品質降級並限制相關排程 |
| TIME-T07 | Mesh 延遲 | 過期命令被拒絕 |
| TIME-T08 | 重複命令 | 不造成非預期重複動作 |
| TIME-T09 | Event 亂序 | 舊事件不覆寫新狀態 |
| TIME-T10 | IR 波形輸出 | 脈衝時序符合協議測試容差 |
| TIME-T11 | Switch 按鍵抖動 | 不產生非預期重複事件 |
| TIME-T12 | Sense 離線採樣 | 採樣順序及時間品質可追溯 |
| TIME-T13 | Flow-I 超時 | 本地安全關閉策略按要求執行 |
| TIME-T14 | 夏令時間切換 | 排程符合明確的 DST 政策 |
| TIME-T15 | Cloud / Hub 重連 | 不補執行已過期控制 |
| TIME-T16 | Push 事件延遲上雲 | 保留原始事件時間並按時效通知 |

驗收應同時涵蓋單元測試、整合測試、硬體在環測試（HIL）、斷網測試、斷電恢復及長時間穩定性測試。

對 Flow-I 的安全關閉，必須驗證控制器失效與供電異常情況，不能僅測試正常韌體 Timer 到期。

## 15. Implementation Tasks｜Codex 開發任務

**TASK-TIME-001 — Existing Temporal Capability Audit**

只讀審核現有 Cloud、Hub、Gate、設備的時鐘、排程、計時器、命令期限與事件序號實作。

**TASK-TIME-002 — Unified Temporal Contract**

建立共用時間契約、Clock Quality、Boot ID、Sequence、Deadline Schema 及契約測試。

**TASK-TIME-003 — Hub Temporal Runtime**

實作 Hub Clock Manager、Scheduler、Deadline Manager、Persistent Schedule Store 及重啟恢復。

**TASK-TIME-004 — Gate Temporal Services**

實作 ESP32-C6 單調計時、命令期限、重試計時、時間品質與 Boot 世代管理。

**TASK-TIME-005 — Device Temporal Validation**

分別驗證 Sync、Switch、Plug-A、Sense、Panel、Flow-I 的計時精度與安全期限。

**TASK-TIME-006 — Cloud & Push Integration**

整合 Cloud Temporal Services 與 Push Temporal Layer 的共用契約，維持獨立排程與權限。

**TASK-TIME-007 — Temporal Reliability Verification**

完成斷線、重啟、時鐘漂移、事件亂序、排程恢復、命令過期與安全計時測試，產出 REVIEW.md。

### Codex Execution Instructions｜可直接使用的開發指令

# OAI-RUNTIME-ENG-004 — Codex Engineering Execution

**Task 1 — Audit**

Inspect the existing OceanAI Cloud, ArtiOS Hub, Artibird Gate, and device firmware repositories for clock management, monotonic timers, scheduling, command deadlines, event sequencing, and restart recovery. Produce an evidence-based audit with file paths, current behavior, gaps, and risks. Do not modify source code.

**中文說明：** 先只讀審核現有程式庫，列出具體檔案、功能、缺口及風險，不直接修改。

**Task 2 — Contract**

Design a shared Temporal Contract covering UTC timestamps, monotonic time, boot identity, event sequence, clock quality, uncertainty, command deadlines, and causal correlation. Preserve compatibility with existing Runtime event and command contracts.

**中文說明：** 建立共用時間契約，保持現有 Runtime 事件與命令介面相容。

**Task 3 — Hub**

Implement a modular Temporal Runtime for ArtiOS Hub, including clock monitoring, persistent scheduling, deadline enforcement, event ordering, restart recovery, and temporal diagnostics. Keep local Runtime operation independent of continuous Cloud connectivity.

**中文說明：** 在 Hub 實作時間運行模組，確保本地排程與期限管理可在雲端離線時繼續工作。

**Task 4 — Gate**

Implement bounded temporal services for ESP32-C6, including monotonic timers, command expiry, retry timing, boot generation tracking, and clock quality reporting. Reject stale or unverifiable safety-sensitive commands.

**中文說明：** 為 Gate 實作輕量時間服務，重點保障命令期限、通訊重試及重啟安全。

**Task 5 — Devices**

Create device-specific temporal verification plans for Sync, Switch, Plug-A, Sense, Panel, and Flow-I. Use hardware timing peripherals where precision is required and validate independent safety deadlines where applicable.

**中文說明：** 依產品特性驗證精密時序、採樣、控制回報及安全計時；不得用一般軟體排程代替必要的硬體時序保障。

**Task 6 — Verification**

Run automated, integration, hardware-in-the-loop, restart, clock-drift, network-disconnection, and deadline tests. Record measurements, limitations, failures, and corrective recommendations. Produce REVIEW.md. Do not deploy or change approved architecture baselines without explicit authorization.

**中文說明：** 完成測試並保留量化證據，產出 REVIEW.md；未經批准不部署、不修改已確認的架構基準。

## 16. Engineering Deliverables｜工程交付文件

```text
OAI-RUNTIME-ENG-004/
├── SPEC.md
├── TEMPORAL-ARCHITECTURE.md
├── CLOCK-MODEL.md
├── TEMPORAL-CONTRACT.md
├── COMMAND-DEADLINE.md
├── EVENT-ORDERING.md
├── HUB-TEMPORAL-RUNTIME.md
├── GATE-TEMPORAL-SERVICES.md
├── DEVICE-TIMING-REQUIREMENTS.md
├── SCHEDULER-RECOVERY.md
├── TEMPORAL-METRICS.md
├── FAULT-REGISTRY.md
├── TEST-PLAN.md
├── CODEX-TASKS.md
└── REVIEW.md
```

## 17. Architecture Decision Record｜架構決策紀錄

| Decision | 工程決策 |
| --- | --- |
| ADR-TIME-001 | Temporal Architecture 為 OceanAI Runtime 跨層基礎能力 |
| ADR-TIME-002 | Hub 承擔本地時間協調與排程 |
| ADR-TIME-003 | Gate 承擔通訊計時與命令期限 |
| ADR-TIME-004 | 設備韌體承擔精密時序及必要的安全計時 |
| ADR-TIME-005 | Cloud 承擔跨場域時間協調與長期時間服務 |
| ADR-TIME-006 | Push Temporal Layer 共用時間契約，獨立執行通知政策 |
| ADR-TIME-007 | Runtime Control Authority 不因時間同步而改變 |
| ADR-TIME-008 | 所有時間敏感操作必須具備可驗證的時間證據 |

## 18. 最終工程建議

我建議將這份規格列為 **OceanAI Runtime Core Infrastructure｜Runtime 核心基礎設施** 的候選規格，與 Device Registry、Command Routing、State Reconciler、Event Bus、Scene Engine、Automation Engine 共同納入系統工程管理。

實施上優先完成三件事：**統一時間契約、Hub 的 Deadline 與排程可靠性、Gate 與設備的本地安全計時**。Cloud 跨場域協調與 Push 時間層隨後接入。

本版為完整的 **v0.1 工程設計草案**。所有精度數值與安全時限仍須經硬體實測及工程審核，現有程式碼與已批准架構均未修改。
