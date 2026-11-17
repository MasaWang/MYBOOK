# ARTIBIRD-SYNC-ENG-001

# Artibird Sync — Intelligent Space Synchronizer

# Artibird Sync｜智能空間同步器工程規格書

Engineering Draft v0.1

2026-11-17

Document ID｜文件編號：ARTIBIRD-SYNC-ENG-001

Product｜產品：Artibird Sync

Category｜產品類別：Intelligent Space Synchronizer｜智能空間同步器

Status｜狀態：Proposed for Engineering Review｜工程審閱草案

Architecture｜架構：OceanAI / ArtiOS Runtime / Artibird

## Artibird Sync

Intelligent Space Synchronizer

智能空間同步器

**Connect existing devices to intelligent spaces.**

讓既有設備融入智能空間。

## 1. Product Positioning｜產品定位

**English**

Artibird Sync is an intelligent space synchronization device that enables existing infrared and radio-frequency-controlled equipment to participate in the Artibird spatial runtime system.

It provides protocol-based device integration, signal learning, command transmission, and runtime state coordination.

**繁體中文**

Artibird Sync 是面向智能空間的同步控制設備，讓既有的紅外線與射頻控制設備接入 Artibird 空間運行系統。

它提供協議式設備整合、訊號學習、命令發送與 Runtime 狀態協調能力。

### 1.1 Runtime Role｜運行角色

**IR & RF Device Integration Node｜紅外線與射頻設備整合節點**

| Capability｜能力 | Description｜工程職責 |
| --- | --- |
| IR Control｜紅外線控制 | 發射、接收及學習紅外線控制訊號 |
| RF Control｜射頻控制 | 在核准的頻段及協議下學習與發送 RF 訊號 |
| Protocol Adaptation｜協議適配 | 將 Runtime 標準命令轉換為設備協議 |
| Device Integration｜設備整合 | 讓既有空調、窗簾等設備參與空間控制 |
| State Coordination｜狀態協調 | 管理推定狀態、回報狀態及狀態可信度 |
| Runtime Reporting｜運行回報 | 上報發送結果、學習事件和故障資訊 |

### 1.2 Core Engineering Principle｜核心工程原則

> **Every command is traceable. Every state has evidence.**
>
> 每一項命令可追蹤，每一項狀態有證據。

這項原則尤其適合 Sync，因為大量 IR 與 433 MHz 設備只支援單向控制。訊號成功發送，並不代表設備已成功執行。

## 2. Product Applications｜產品應用

**Air Conditioner Integration｜空調設備整合**

將既有紅外線空調接入空間溫控場景。可與 Sense 溫濕度感測器及 Plug-A 電力監測配合，提高狀態判斷的可信度。

**Curtain Integration｜窗簾設備整合**

對支援的 433 MHz 固定碼窗簾或 IR 窗簾進行控制，提供開啟、關閉與停止等能力，並記錄命令及狀態證據。

**Classroom Equipment Integration｜教室設備整合**

將投影機、既有影音設備等納入教室場景，配合 Artibird Panel 與校園控制台進行操作。

以上為目標應用場景；實際支援的設備必須通過協議相容性及現場驗證。

## 3. System Architecture｜系統架構

**OceanAI Cloud / ORT**

IR / RF Library · Device Catalog · OTA · Operations Agent

**Artibird Hub / Hub Pro / Building Controller**

ArtiOS Runtime · Spatial State · Scene · Automation · Command Routing

Local IP / MQTT · Gate Routing (when required)

**ARTIBIRD SYNC**

- Command Adapter
- IR Encode / Decode
- RF Protocol Adapter
- Learn / Replay
- Local Protocol Cache
- State Evidence Reporter

Infrared / Sub-GHz RF

- Air Conditioner
- Curtain Motor
- AV Equipment

### 3.1 Responsibility Matrix｜責任矩陣

| System｜系統 | Responsibility｜職責 |
| --- | --- |
| OceanAI Cloud | 協議資產庫、版本、授權治理、雲端管理與分析 |
| ArtiOS Runtime | 設備模型、空間狀態、場景、自動化及命令管理 |
| Artibird Gate | 必要時提供網路接入、Mesh 傳輸及設備路由 |
| Artibird Sync | IR / RF 協議執行、訊號學習、發送、結果回報 |
| Target Device | 接收訊號、執行物理動作 |
| Sense / Plug-A | 依可用感測證據協助驗證實際設備運行狀態 |

### 3.2 Connectivity Modes｜接入模式

Sync 需支援依現有硬體能力選擇的本地接入方式。

**Mode A — Direct IP Connection｜直接 IP 接入**

```text
Hub → Local Wi-Fi / IP → Sync → IR / RF Device
```

**Mode B — Gate-Mediated Connection｜經 Gate 接入**

```text
Hub → Gate → Supported Device Transport → Sync
                                           ↓
                                       IR / RF
```

Gate 路徑的實際傳輸協議需核對現有韌體。不能假定所有 Sync 型號都有 BLE Mesh 或 Wi-Fi Mesh 能力。

## 4. Hardware Engineering｜硬體工程

### 4.1 Hardware Baseline｜硬體基準

既有 Sync 採用 ESP32-S 系列控制器並整合 IR 與 433 MHz 控制能力。先前方案涉及 MX-DPCP14，後續研究包括 CMT2300A、Si4463 等射頻晶片。

具體 ESP32 子型號、PCB 版本、射頻前端、供電、記憶體容量及晶片連接方式，應由現有 CAD、BOM、韌體與實機確認。

| Component｜元件 | Requirement｜工程要求 | Status |
| --- | --- | --- |
| Main MCU｜主控 | ESP32-S 系列 | 既有基準，型號待核實 |
| IR Transmitter｜IR 發射 | 調變訊號、驅動及光學覆蓋 | 必需 |
| IR Receiver｜IR 接收 | 解調接收、脈衝擷取及學習 | 必需 |
| RF Transceiver｜RF 收發 | 支援已核准 433 MHz 協議 | 待核對現有板 |
| Flash Storage｜儲存 | 韌體、配置、協議快取與 OTA | 容量待選型 |
| Network｜網路 | Wi-Fi / IP，其他依型號驗證 | 待核實 |
| Power｜電源 | 穩定供電、過流及欠壓保護 | 必需 |
| Diagnostics｜診斷 | Reset、Watchdog、狀態 LED、測試點 | 必需 |
| Security｜安全 | 安全啟動及韌體驗證能力 | 依晶片驗證 |

### 4.2 IR Hardware Architecture｜紅外線硬體架構

```text
ESP32-S MCU
   │
   ├── IR TX Timing / Carrier
   │       │
   │       └── Driver → IR LED Array
   │
   └── IR RX Capture
           │
           └── IR Receiver Module
```

建議利用 ESP32 的 **RMT — Remote Control Transceiver｜遙控訊號收發周邊** 實作紅外線時間序列的發送與接收。Espressif 官方文件提供 RMT 符號、載波、收發通道及驅動接口說明，實際功能必須按 ESP32 子型號確認。

IR 硬體設計需驗證：

- IR LED 電流、占空比與峰值熱負載。
- 38 kHz 及其他目標載波頻率下的訊號品質。
- 接收模組對環境光、日照及雜訊的容忍度。
- 水平、垂直覆蓋角度與最遠控制距離。
- 學習模式下訊號捕捉的完整性。
- 外殼材料對紅外線透射與接收的影響。

### 4.3 RF Hardware Architecture｜射頻硬體架構

```text
ESP32-S MCU
      │
      ├── RF Driver / SPI / GPIO
      │
      ├── RF Timing Capture
      │
      └── RF Transceiver / RF Module
                    │
              Matching Network
                    │
                 Antenna
```

**RF 硬體決策必須保留兩條工程線：**

- **Existing Hardware｜既有硬體**：核對 MX-DPCP14 與現有 433 MHz 模組的控制能力、接口和韌體依賴。
- **Research Hardware｜研究硬體**：以 CMT2300A、Si4463 等方案研究脈衝擷取、調變識別、固定碼學習和重放驗證。

RF 測試及實作僅限於合法頻段、授權設備和經驗證的固定碼控制。滾動碼及安全認證類控制設備不列入通用重放功能。

## 5. Protocol Architecture｜協議架構

Sync 的協議能力應由 OceanAI Protocol Library、Hub 本地協議快取及設備端執行器共同構成。

**OceanAI Protocol Library｜協議資產庫**

Collect · Normalize · Index · Deduplicate · License Review · Validate

**Hub Protocol Resolver｜Hub 協議解析服務**

Device Profile · Capability Mapping · Version Selection · Package Validation

**Sync Protocol Executor｜Sync 協議執行器**

Encode · Decode · Capture · Transmit · Report

**IR Adapter｜紅外線適配器**

**RF Adapter｜射頻適配器**

### 5.1 Protocol Library Distribution｜協議庫分配

| Layer｜層級 | Content｜內容 |
| --- | --- |
| Cloud | 完整協議候選庫、來源、授權、驗證與版本資料 |
| Hub | 站點所需設備 Profile、已批准協議及執行配置 |
| Sync | 必要的編碼器、解碼器、協議參數與有限快取 |

**推薦策略：Hybrid Protocol Distribution｜混合式協議分發。**

完整協議資產及來源證據保留在 OceanAI Library；Hub 快取本地需要的正式協議；Sync 保存實際執行所需的最小資料集。

這使已完成配置的設備可以在沒有雲端時繼續控制，同時避免將龐大的協議庫全部燒錄到 MCU。

### 5.2 IR Library｜紅外線協議庫

初期研究範圍包括：

- NEC / NEC-like
- RC5 / RC6
- Sony
- RAW Pulse Timing｜原始脈衝時序
- Air Conditioner State Protocols｜空調狀態式協議

`IRremoteESP8266` 可作為協議研究與測試參考，官方專案列有 NEC、Sony、多種空調格式及 RAW 等能力。由於其目標平台及依賴不一定與 Sync 現有韌體一致，應先核對平台適配與授權要求。

**工程階段限制：** OceanAI IR Library 目前優先完成資料收集、正規化、去重、索引、來源證據、授權治理與 AI Agent 品質審核。Sync 硬體整合應在候選資料通過驗證後獨立啟動。

### 5.3 RF Protocol Library｜射頻協議庫

RF 採用既有 `Family + Variant｜協議家族與變體` 模型。

```text
RF Protocol Library
  │
  ├── EV1527 Family
  │     └── Validated Variants
  │
  ├── PT2262 Family
  │     └── Validated Variants
  │
  └── RAW Signal Corpus
        └── Captured Pulse Samples
```

協議處理流程：

**Detect → Decode → Validate → Encode**

偵測 → 解碼 → 驗證 → 編碼

RAW 訊號應與已識別協議分開管理，不能因為訊號波形相似，就直接宣稱協議識別成功。

AI Agent 可以協助建立候選分類與特徵分析，但協議發布必須經過可重現的實測。

## 6. Learning & Replay｜學習與重放

### 6.1 Learning Workflow｜學習流程

1. Start Learning｜啟動學習
2. Capture Signal｜擷取訊號
3. Detect / Decode｜偵測與解碼
4. Validate｜協議與資料驗證
5. Test Transmission｜測試發送
6. User Confirmation｜使用者確認
7. Save Device Binding｜儲存設備綁定

### 6.2 Signal Capture Requirements｜訊號擷取要求

| ID | Requirement｜要求 |
| --- | --- |
| CAP-001 | 保存脈衝時序、訊號類型、捕捉時間與來源 |
| CAP-002 | 保存載波頻率或 RF 頻率、調變模式及未知欄位 |
| CAP-003 | 記錄捕捉設備及韌體版本 |
| CAP-004 | 允許對多次訊號進行一致性比對 |
| CAP-005 | 解碼失敗時保留有效 RAW 診斷樣本 |
| CAP-006 | 捕捉到未知協議時不得自動標記為已驗證 |
| CAP-007 | 未經授權的射頻設備不得執行學習與重放測試 |

### 6.3 Learning Status｜學習狀態

```text
Idle             待命
Capturing        擷取中
Captured         已擷取
Recognized       已識別
Validated        已驗證
Tested           已測試
Approved         已核准
Rejected         已拒絕
```

這些狀態由學習工作流程管理。`Recognized` 不等於 `Approved`，而使用者確認也不等於已通過所有協議品質測試。

## 7. Device Capability Model｜設備能力模型

為使既有設備參與 ArtiOS Runtime，Sync 應使用標準化設備能力模型。

### 7.1 Air Conditioner｜空調

```json
{
  "device_type": "air_conditioner",
  "transport": "IR",
  "capabilities": [
    "power",
    "mode",
    "target_temperature",
    "fan_speed",
    "swing"
  ],
  "state_feedback": "indirect",
  "protocol_profile_id": "approved-ac-profile"
}
```

空調協議需要考慮狀態式命令：部分遙控器每次發射完整的空調設定，包括電源、模式、溫度與風速。因此編碼器應具備狀態組合能力。

### 7.2 Curtain｜窗簾

```json
{
  "device_type": "curtain",
  "transport": "RF_433",
  "capabilities": [
    "open",
    "close",
    "stop"
  ],
  "position_feedback": "none",
  "protocol_profile_id": "approved-curtain-profile"
}
```

若沒有行程回報或位置感測器，不能把 `open` 命令完成直接當作窗簾已達到 100% 開啟位置。

### 7.3 Device Binding｜設備綁定

每項綁定至少需包括：

| Field｜欄位 | Purpose｜用途 |
| --- | --- |
| `device_id` | Artibird 設備身份 |
| `space_id` | 所屬空間 |
| `sync_id` | 負責發送的 Sync |
| `protocol_profile_id` | 協議版本 |
| `capability_mapping` | 標準動作與協議命令對應 |
| `feedback_sources` | 可用狀態回報來源 |
| `verification_level` | 驗證等級 |
| `last_validation_at` | 最近驗證時間 |

## 8. Device State Reliability｜設備狀態可靠性

這是 Sync 最重要的工程能力之一。

### 8.1 Three Levels of State Evidence｜三級狀態證據

**Level 1 — Command Sent｜命令已發送**

Sync 確認 IR LED 或 RF 發射器完成傳輸，但沒有目標設備的有效執行證據。

**Level 2 — Indirectly Observed｜間接觀測**

Sense 或 Plug-A 提供與動作一致的外部觀測，例如空調耗電變化，但可能仍有其他原因。

**Level 3 — Device Confirmed｜設備確認**

取得可信的目標設備回執、狀態讀取或足以證明結果的感測證據。

Level 2 需要結合資料來源、時間窗口及設備物理特性作出判斷。Level 3 不能僅靠 AI 推測得到。

### 8.2 State Model｜狀態模型

```json
{
  "device_id": "ac-room-201",
  "desired_state": {
    "power": true,
    "target_temperature": 24
  },
  "reported_state": null,
  "estimated_state": {
    "power": true
  },
  "command_status": "transmitted",
  "verification_level": "command_sent",
  "state_confidence": "unconfirmed",
  "evidence": [
    {
      "source": "sync",
      "type": "ir_transmission",
      "result": "completed"
    }
  ]
}
```

**重要約束：** `estimated_state` 不得覆蓋 `reported_state`；`command_status` 與 `verification_level` 必須分開保存。

## 9. Runtime Command Contract｜運行命令契約

Sync 接受經 Hub 授權、符合協議能力及時間要求的控制命令。

```json
{
  "schema_version": "1.0",
  "command_id": "cmd-202",
  "site_id": "school-001",
  "space_id": "room-201",
  "sync_id": "sync-008",
  "device_id": "ac-room-201",
  "action": "set_temperature",
  "parameters": {
    "temperature_c": 24
  },
  "protocol_profile_id": "approved-ac-profile",
  "deadline_at": "2026-11-17T10:00:05Z",
  "idempotency_key": "example-202"
}
```

### 9.1 Command Lifecycle｜命令生命週期

```text
Hub: Accepted
       |
Sync: Validated
       |
Sync: Encoded
       |
Sync: Transmitted
       |
Hub: Await Evidence
       |
   ┌───┴──────────┐
   |              |
Verified      Unconfirmed
已驗證          未確認
```

失敗狀態包括 `Rejected`、`EncodeFailed`、`TransmissionFailed`、`Expired` 及 `UnknownOutcome`。

### 9.2 Repeat & Retry Safety｜重複發送與重試安全

- 不得對 Toggle 命令進行無條件自動重發。
- 窗簾開合等動作需設置最長執行時間與安全約束。
- RF 固定碼重發次數、脈衝間隔及發射持續時間必須依協議配置。
- IR 空調狀態命令需保留完整設定上下文。
- 超過期限的命令不可在網路恢復後自動補發。
- 跨 Hub、Gate、Sync 的命令需使用一致的 `command_id` 與去重策略。

## 10. AI Agent & Protocol Library｜AI Agent 與協議庫

OceanAI AI Agent 在 Sync 的工程體系中，主要負責協議資產研究、資料品質管理與運維分析。

| Agent｜代理 | Responsibility｜職責 |
| --- | --- |
| Source Collector｜來源收集代理 | GitHub、協議文件及合法公開資料蒐集 |
| Protocol Analyst｜協議分析代理 | 協議分類、欄位與脈衝特徵研究 |
| Deduplication Agent｜去重代理 | 相似訊號、重複碼與來源合併 |
| License Reviewer｜授權審查代理 | 檢查來源授權與使用限制 |
| Quality Reviewer｜品質審核代理 | 區分已驗證、候選與未知資料 |
| Operations Agent｜運維代理 | 分析 Sync 日誌、故障及控制失敗 |

**AI 產生的協議候選不可直接進入正式設備控制庫。** 正式發布需具備來源證據、協議驗證、適用設備範圍、授權審核及人工批准。

## 11. Spatial Integration｜空間整合

Sync 在 Artibird 系統中的價值，應通過空間控制能力實現。

### 11.1 Classroom Integration｜教室整合

**School Control Center / Teacher App｜校園控制台／教師端**

**ArtiOS Classroom Runtime**

Scene · Automation · State · Command

**Artibird Sync**

IR / RF Control

**Sense / Plug-A**

Sensor / Power Evidence

**Existing Classroom Equipment｜既有教室設備**

Air Conditioner · Curtain · Projector

### 11.2 Example Scene｜場景示例

**Class Begins｜開始上課**

當教師啟動「開始上課」場景時：

1. ArtiOS 根據教室場景配置建立設備命令。
2. Sync 發送空調、窗簾或投影機控制訊號。
3. Sense / Plug-A 提供可用的環境與電力觀測。
4. Runtime 更新各設備的命令結果及狀態證據。
5. 教師端顯示已完成、未確認及執行失敗的項目。

對無法回報狀態的設備，教師可以看到「命令已發送，設備狀態未確認」，而不會收到錯誤的成功提示。

## 12. Security & Reliability｜安全與可靠性

### 12.1 Security Requirements｜安全要求

| ID | Requirement｜要求 |
| --- | --- |
| SEC-S01 | Sync 必須具有唯一裝置身份及安全配置流程 |
| SEC-S02 | Hub–Sync 通訊需經身份驗證與授權 |
| SEC-S03 | OTA 映像需經簽章與完整性驗證 |
| SEC-S04 | 協議資料包需驗證來源、版本與完整性 |
| SEC-S05 | 設備控制需遵守使用者及空間權限 |
| SEC-S06 | RF 學習與重放僅限授權設備及核准協議 |
| SEC-S07 | 高風險實體動作需有安全限制與人工控制機制 |
| SEC-S08 | 控制命令與學習操作需保存可追蹤的稽核事件 |

### 12.2 Failure Handling｜故障處理

| Failure｜故障 | Expected Behavior｜預期行為 |
| --- | --- |
| Cloud Offline｜雲端離線 | 使用已核准的本地協議繼續控制 |
| Hub Offline｜Hub 離線 | 維持安全狀態，不自行啟動新場景 |
| Network Recovery｜網路恢復 | 重新同步狀態，不盲目重放過期命令 |
| Unknown Protocol｜未知協議 | 拒絕未核准執行，記錄診斷 |
| Signal Failure｜訊號失敗 | 回報發送失敗或結果未知 |
| Power Restart｜電源重啟 | 恢復設備身份與已批准配置 |
| OTA Failure｜更新失敗 | 回復至已驗證的有效韌體 |
| State Conflict｜狀態衝突 | 保留證據與來源，交由 Runtime 協調 |

## 13. Engineering Performance｜工程性能要求

以下是建議測試門檻，並非已完成的產品量測結果。

| Metric｜指標 | Proposed Target｜建議目標 |
| --- | --- |
| IR Timing Accuracy｜紅外線時序精度 | 先以 NEC 等已知協議驗證，目標脈衝誤差 ≤ ±5% |
| IR Transmission Success｜IR 發送成功率 | 指定距離及角度下，目標 ≥ 99% |
| IR Capture Repeatability｜IR 擷取重複性 | 相同訊號重複捕捉結果 ≥ 99% |
| RF Frequency Accuracy｜RF 頻率精度 | 按所選 RF 晶片及法規確認 |
| RF Replay Success｜RF 重放成功率 | 授權固定碼測試環境目標 ≥ 99% |
| Command Traceability｜命令可追溯性 | 100% 已接受命令可查詢處理結果 |
| Offline Control｜離線控制 | 已配置本地控制不依賴雲端 |
| Stability｜穩定性 | 168 小時連續運行測試 |
| Protocol Integrity｜協議完整性 | 100% 正式協議包經完整性驗證 |

所有成功率必須指定樣本數、設備型號、發射距離、角度、遮擋條件、RF 干擾及測試方法。單次成功不構成協議驗證。

### 13.1 Physical & Compliance Validation｜物理及合規驗證

正式量產前需完成 IR 光電安全、外殼溫升、電源保護、EMC 及適用市場的 RF 合規測試。433 MHz 發射頻率、功率、占空比及控制方式必須按銷售地區的法規與實際硬體方案核查。

## 14. Engineering Acceptance Tests｜工程驗收測試

| ID | Test｜測試項目 | Priority |
| --- | --- | --- |
| ST-001 | ESP32-S 韌體啟動、Watchdog 與恢復 | P0 |
| ST-002 | Hub–Sync 身份驗證與命令通訊 | P0 |
| ST-003 | NEC IR 編碼與發射時序驗證 | P0 |
| ST-004 | IR 訊號捕捉與 RAW 資料保存 | P0 |
| ST-005 | 授權固定碼 RF 學習及重放驗證 | P0，依現有硬體條件 |
| ST-006 | 空調設備能力映射與控制 | P0 |
| ST-007 | 窗簾設備能力映射與控制 | P0 |
| ST-008 | 命令發送與狀態證據分離 | P0 |
| ST-009 | 超時、重複命令與重試安全 | P0 |
| ST-010 | 斷網、斷電與重連恢復 | P0 |
| ST-011 | 安全 OTA 與版本回復 | P0 |
| ST-012 | Sense / Plug-A 狀態證據整合 | P1 |
| ST-013 | IR Library 協議包下載與驗證 | P1，待資料庫治理完成 |
| ST-014 | CMT2300A / Si4463 自適應 RF 學習 | Research |
| ST-015 | 168 小時負載與溫度測試 | Release Gate |
| ST-016 | EMC / RF 法規及產品安全驗證 | Release Gate |

## 15. Implementation Roadmap｜工程實施路線

**P0-01 — Existing Hardware & Firmware Audit｜現有硬體與韌體審查**

核對 ESP32-S 型號、MX-DPCP14、IR 電路、433 MHz 電路、既有學習功能及 Hub 接入方式。產出硬體與韌體相容性報告。

**P0-02 — Local Command Executor｜本地命令執行器**

建立標準命令接口、IR / RF 驅動適配、發送結果及事件記錄，首先驗證現有可控制設備。

**P0-03 — ArtiOS Integration｜ArtiOS 整合**

建立設備綁定、Capability Model、場景控制及命令回執。將 Sync 納入 Runtime 管理。

**P1 — Protocol Library Integration｜協議庫整合**

在 IR Library 通過資料品質及授權驗證後，建立 Hub 協議解析服務、Sync 協議快取與正式發佈流程。

**Research — Adaptive RF Learning｜自適應 RF 學習研究**

沿用 TASK-RF-001，研究自動尋頻、訊號擷取、調變與編碼識別、固定碼學習及實驗驗證。研究通過前不納入正式產品能力。

## 16. Engineering Repository｜工程儲存庫

建議在既有 `MasaWang/artibird-engineering` 統一工程管理體系下，使用以下產品目錄。

```text
artibird-engineering/
└── products/
    └── sync/
        ├── README.md
        ├── specifications/
        │   └── ARTIBIRD-SYNC-ENG-001.md
        ├── hardware/
        │   ├── schematic/
        │   ├── pcb/
        │   ├── bom/
        │   └── mechanical/
        ├── firmware/
        │   ├── ir/
        │   ├── rf/
        │   ├── protocol/
        │   ├── command/
        │   ├── communication/
        │   ├── security/
        │   └── ota/
        ├── tests/
        │   ├── ir/
        │   ├── rf/
        │   ├── runtime/
        │   └── hardware/
        └── REVIEW.md
```

此目錄為建議結構，尚未修改 GitHub 專案。

## 17. REVIEW.md｜工程成果審閱

| Item｜項目 | Status｜狀態 |
| --- | --- |
| Product Name｜產品名稱 | Approved Direction｜已確認命名方向 |
| Product Positioning｜產品定位 | Complete｜完成 |
| Runtime Role｜運行角色 | Complete｜完成 |
| System Architecture｜系統架構 | Draft｜草案 |
| Hardware｜硬體 | Existing Baseline / Audit Required |
| IR Protocol Architecture｜IR 協議架構 | Designed / Not Implemented |
| RF Protocol Architecture｜RF 協議架構 | Research / Existing Hardware Audit |
| Learning & Replay｜學習與重放 | Designed / Verification Required |
| State Evidence Model｜狀態證據模型 | Designed / Verification Required |
| Runtime Integration｜Runtime 整合 | Proposed｜待實作 |
| Engineering Validation｜工程驗收 | Proposed｜待實測 |

### Engineering Conclusion｜工程結論

Artibird Sync 的工程主線應圍繞三項能力建立：

**Protocol Integration → Physical Control → Runtime State Coordination**

**協議整合 → 物理控制 → Runtime 狀態協調**

這三項能力將使 Sync 從單純的紅外線及射頻發送設備，發展為 Artibird 空間運行系統中的正式設備整合節點。

**下一個優先工程任務：**

`TASK-SYNC-P0-01 — Existing Hardware & Firmware Compatibility Audit`

先核實現有 ESP32-S、IR、433 MHz、MX-DPCP14 的實際工程能力，再建立與 ArtiOS Runtime 的標準命令及事件接口。

這樣能保留已投入的硬體與韌體成果，也能為 OceanAI IR Library 和後續自研 RF 協議執行器建立清楚的整合路徑。
