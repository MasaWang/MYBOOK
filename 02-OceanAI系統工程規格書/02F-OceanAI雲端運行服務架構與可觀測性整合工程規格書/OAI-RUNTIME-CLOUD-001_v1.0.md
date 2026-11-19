# OAI-RUNTIME-CLOUD-001

Cloud Runtime Service Architecture & Observability Integration

**OceanAI 雲端運行服務架構與可觀測性整合工程規格書**

**Version｜v1.0**

Engineering Draft｜工程草案

Date｜2026-11-18

Deployment｜OceanAI Cloud Production

Integration Target｜OceanAI Operations Agent MVP

Principle｜Production-Compatible · Additive · Read-Only First

Approval｜Author Review Required｜須經負責人審閱

本規格以現有 OceanAI Cloud Production 作為實施起點。我已唯讀核對 `KristampsWong/iot-docs` 中的系統總覽、部署概覽、App 說明及風險紀錄。

## 一、從現有系統確認的架構基礎

| 現有元件 | 已記錄的實際責任 | 本規格的處理 |
| --- | --- | --- |
| `iot-backend` | 帳號、家庭、設備、場景及業務 API | 保留，不變更既有 API |
| `emqxMP` / `emqx-java` | MQTT 訊息處理、命令路由、在線與運行狀態 | 作為 Cloud Runtime 的主要接入點 |
| EMQX | MQTT Broker｜訊息代理 | 保留現有 Topic 與路由 |
| MySQL | 業務及部分運行狀態資料 | 保留，不直接開放給 AI |
| `iot-infra` | AWS 上的 Docker Compose 部署 | 以增量服務整合，不重新部署整體平台 |
| IOTControl | 現行上線 App | 不改變控制行為 |
| `artibird-app` | 新版 App，後端整合尚在推進 | 不納入本次生產相容性變更 |

系統文件記錄的部署是一台 AWS `t4g.small`、2 GiB 記憶體主機，包含 EMQX、iot-backend、emqx-java、MySQL 與 Watchtower 五個容器。這是文件中的部署基準，**當前線上資源及版本仍須以實際環境核實**。

可核對的工程來源：

- [System Overview｜系統架構總覽](https://github.com/KristampsWong/iot-docs/blob/main/docs/architecture/system-overview.md)
- [Infrastructure｜現有部署架構](https://github.com/KristampsWong/iot-docs/blob/main/docs/projects/iot-infra/README.md)
- [Production Risks｜現有系統風險](https://github.com/KristampsWong/iot-docs/blob/main/docs/status/risks-and-open-questions.md)

上述紀錄也指出幾項需要優先處理的風險：共用固定 Token、JWT 驗證缺口、部分明文傳輸、公開映像檔可能包含憑證，以及 MQTT 回呼內同步資料庫／HTTP 操作。

因此，**Operations Agent 的資料接入必須設在獨立安全邊界，不能直接繼承目前不充分的 API 驗證方式。**

## 二、正式目標架構

**OceanAI App / Existing Operations Console**

既有控制介面 · 新增運行觀測與 AI 診斷視圖

**Existing OceanAI Cloud Production｜現有正式環境**

**iot-backend**

Accounts · Homes · Scenes · Business API

**emqxMP**

Command · Routing · State · Events

EMQX MQTT

MySQL

Additive Observability｜增量觀測接入

**Runtime Observability Integration｜運行可觀測整合**

Telemetry Adapter

事件擷取與轉換

Event & Trace Store

日誌、指標、追蹤

Diagnostic Read API

授權唯讀診斷

Incident Processor

故障聚合與指標

**OceanAI AI Architecture｜智能架構**

AI Gateway

Context Engine

Agent Orchestration

Runtime Interface

**Operations Agent**

Log Analysis · Diagnosis · Recovery Recommendation

**Visual Reports & Incident Review｜可視化報告與故障審閱**

此處建議將 `emqxMP` 視為現行 Cloud Runtime 的主要實作載體之一；**完整目標 Cloud Runtime Service** 則包括設備狀態、命令、事件、故障和恢復等邏輯能力，不應假定目前都已集中在同一個程序內。

第一個工程決策：

**保留 `iot-backend + emqxMP + EMQX + MySQL` 的正式環境控制路徑，新增受控觀測資料層及 Operations Agent。**

## 三、正式工程規格正文

# OAI-RUNTIME-CLOUD-001 — Cloud Runtime Service Architecture & Observability Integration

**OceanAI 雲端運行服務架構與可觀測性整合工程規格書**

Version｜版本：v1.0  
Date｜日期：2026-11-18  
Status｜狀態：Engineering Draft｜工程草案  
Deployment｜部署：Cloud Production Compatible｜相容現有正式環境  
Approval｜批准：Author Review Required｜須經負責人審閱

---

## 1. Engineering Objectives｜工程目標

本工程在維持現有 OceanAI Cloud Production 正常運行的前提下，為 Operations Agent 提供安全、完整、可追溯的 Runtime 資料介面。

### 1.1 必須完成的工程能力

**CR-01 — Runtime Log Ingestion｜運行日誌接入**

取得 Cloud Runtime 命令、設備狀態、連接、故障及恢復相關事件。

**CR-02 — Runtime Trace Correlation｜運行鏈路關聯**

關聯 App、iot-backend、emqxMP、MQTT Broker 及設備回報，還原控制命令生命週期。

**CR-03 — Health Metrics｜健康指標**

建立控制成功率、逾時率、在線狀態、事件處理延遲與恢復品質等指標。

**CR-04 — Incident Management｜故障事件管理**

將異常事件聚合為可追蹤、可查詢的 Incident。

**CR-05 — Diagnostic Data API｜診斷資料介面**

提供 Operations Agent 專用的授權唯讀 API。

**CR-06 — AI Diagnostic Integration｜AI 診斷整合**

支援 Context Engine 取得證據，供 Operations Agent 分析故障並產生診斷報告。

**CR-07 — Production Compatibility｜正式環境相容性**

不得破壞現有 App、MQTT Topic、後端 API、資料庫語意或設備控制路徑。

### 1.2 本階段不實施

- 重構 Cloud Runtime 核心控制流程
- 將 iot-backend 與 emqxMP 合併或拆分
- 修改現有 Artibird 裝置通訊協議
- 將所有設備遷移至 Hub
- 大規模修改既有 MySQL 業務表
- 由 AI 自動執行恢復操作
- 導入完整多智能體自主控制
- 改變現有 Production 主機或部署拓撲

這些工作如有必要，需另立工程規格與審批流程。

---

## 2. Existing Production Baseline｜現有正式環境基準

依據已取得的架構與部署文件，現有 Cloud Production 包括：

| 元件 | 現行功能 |
| --- | --- |
| iot-backend | 業務 API、家庭、設備、場景、定時、資料管理 |
| emqxMP / emqx-java | MQTT 訊息處理、控制路由、在線及運行狀態 |
| EMQX | MQTT Broker |
| MySQL | 業務資料及部分運行資料 |
| IOTControl | 正式運行中的手機 App |
| Hub / hubServer | 有 Hub 部署時的本地運行與雲端同步 |

既有雲端直連控制路徑：

App → `/terminal/{mac}` → emqxMP → `/control/{mac}` → Device

設備回報：

Device → `/report/{mac}` → emqxMP → `/terminalResult/{familyId}` → App

既有 Hub 設備路徑：

App → emqxMP → `/hub/{hubMac}/control/{mac}` → Hub → Device

本規格以保留上述相容性為前提。

### 2.1 Legacy Protocol Compatibility｜既有協議相容要求

以下項目必須保持：

1. 原有 MQTT Topic 名稱與訊息方向。
2. 現有 JSON 欄位，包括歷史錯拼的 `opKye`、`opClinet`。
3. App 訂閱與設備回報機制。
4. 原有設備上線、離線及綁定行為。
5. 現有場景與定時自動化流程。
6. 現有資料庫欄位語意與外鍵關係。
7. 現行 Cloud / Hub 選路機制。

Telemetry Adapter 可將歷史欄位轉換為新的內部 Schema，但不得在既有正式通訊協議中直接更名。

---

## 3. Cloud Runtime Logical Architecture｜雲端運行邏輯架構

### 3.1 Runtime Functional Domains｜運行功能領域

| Domain｜領域 | Engineering Responsibility｜工程責任 |
| --- | --- |
| Device Registry | 設備識別、歸屬與能力 |
| Device Runtime State | 設備期望狀態、回報狀態及可信程度 |
| Command Coordination | 命令路由、派送、回報和期限 |
| Scene Execution | 場景執行協調 |
| Automation Execution | 自動化觸發與執行 |
| Event Processing | 事件接收、處理與分發 |
| Connectivity | MQTT 連接、Hub 選路及設備在線狀態 |
| Health & Fault | 健康指標、故障登記及異常識別 |
| Recovery | 已有恢復機制、執行結果及歷史 |

這是 OceanAI Cloud Runtime 的目標邏輯能力。P0 必須逐項確認其現有實作位置與完成程度。

### 3.2 State Ownership｜狀態權威

Runtime 保持設備運行事實的權威。

Observability Store 保存分析用的歷史事件與指標。

Operations Agent 可以讀取這些資料，但不能修改 Runtime State。

同一設備的：

- Desired State｜期望狀態
- Reported State｜回報狀態
- State Quality｜狀態可信度
- Command Status｜命令狀態

必須具有一致的語意，不得由 AI 另建一套互相衝突的運行狀態。

---

## 4. Runtime Observability Architecture｜運行可觀測性架構

### 4.1 Telemetry Adapter｜遙測適配器

負責將現有 Cloud Runtime 事件轉換為標準資料。

資料來源優先順序：

1. 已有的結構化業務事件及狀態變更。
2. 已有的命令處理和設備回報紀錄。
3. 已有的日誌及資料庫歷史紀錄。
4. 必要時增加只觀測、不影響控制的輕量事件輸出。

不得在 MQTT 控制回呼中同步呼叫 AI 或遠端診斷服務。

### 4.2 Event Processing｜事件處理

Telemetry Adapter 必須提供：

- Schema Validation｜資料結構驗證
- Event Deduplication｜事件去重
- Timestamp Normalization｜時間標準化
- Source Identification｜來源識別
- Sensitive Data Redaction｜敏感資料遮罩
- Bounded Buffering｜有界緩衝
- Retry & Backoff｜安全重試及退避
- Error Isolation｜錯誤隔離

若觀測資料輸出失敗，Runtime 控制執行應繼續運行。

### 4.3 Observability Store｜觀測資料儲存

至少儲存：

- Runtime Events
- Command Traces
- Health Metrics
- Incidents
- Recovery History
- Diagnostic References

首階段可以採用獨立的輕量關聯式資料庫或既有可用的觀測儲存能力。

不可假設現行 2 GiB 主機還有足夠記憶體運行完整的日誌搜尋、時間序列及 AI 平台。

部署前須提供資源預算與負載測試。

### 4.4 Data Retention｜資料保留

建議初始保留策略：

| 資料 | 候選期限 |
| --- | --- |
| 原始診斷事件 | 7–14 天 |
| 命令追蹤摘要 | 30 天 |
| 分鐘級健康指標 | 30 天 |
| 日級彙總指標 | 90 天 |
| Incident 與診斷報告 | 依業務與合規要求決定 |

以上為規劃參數，正式期限應經過容量測試、隱私及合規審查。

---

## 5. Runtime Event Contract｜運行事件契約

### 5.1 Required Fields｜必要欄位

| Field | Type | Purpose｜用途 |
| --- | --- | --- |
| schema_version | string | Schema 版本 |
| event_id | string | 全域事件識別碼 |
| source | string | 來源服務 |
| event_type | string | 事件類型 |
| severity | enum | 嚴重程度 |
| occurred_at | timestamp | 來源事件時間 |
| received_at | timestamp | 接收時間 |
| tenant_scope | object | 經驗證的歸屬範圍 |
| trace_id | string/null | 跨服務追蹤 |
| command_id | string/null | 命令識別碼 |
| device_id | string/null | 設備識別碼 |
| attributes | object | 事件屬性 |
| time_quality | enum | 時間可信程度 |

### 5.2 Event Types｜事件類型

MVP 至少包含：

- COMMAND_RECEIVED
- COMMAND_VALIDATED
- COMMAND_DISPATCHED
- COMMAND_ACKNOWLEDGED
- COMMAND_TIMEOUT
- DEVICE_STATE_REPORTED
- DEVICE_ONLINE
- DEVICE_OFFLINE
- STATE_MISMATCH
- RUNTIME_COMPONENT_ERROR
- RECOVERY_STARTED
- RECOVERY_SUCCEEDED
- RECOVERY_FAILED

若現有系統缺少某個生命週期事件，必須標記為 `NOT_INSTRUMENTED`，不得由 AI 推測其已發生。

### 5.3 Legacy Correlation｜既有控制鏈關聯

因現有控制協議未必包含完整 `trace_id`，需要增加內部觀測關聯機制。

候選方式：

- 在命令進入 emqxMP 時產生內部 observation_id。
- 保留原始 MQTT Topic、訊息摘要及接收時間。
- 將後續回報與原始命令建立關聯。
- 可使用已有的設備、家庭、操作及協議欄位作為輔助資訊。
- 對無法唯一識別的回報，標示 `AMBIGUOUS`。

不允許僅用設備 MAC 與相近時間，就將兩筆事件視為已證實屬於同一命令。

---

## 6. Diagnostic Read API｜診斷唯讀介面

Operations Agent 透過受保護的 Runtime Interface 存取資料。

建議 API：

| Method | Endpoint | Function |
| --- | --- | --- |
| GET | /internal/v1/runtime/health | 健康快照 |
| GET | /internal/v1/runtime/events | 查詢事件 |
| GET | /internal/v1/runtime/traces/{id} | 查詢命令追蹤 |
| GET | /internal/v1/runtime/devices/{id}/state-history | 設備狀態歷史 |
| GET | /internal/v1/runtime/incidents | 故障清單 |
| GET | /internal/v1/runtime/incidents/{id}/evidence | 故障證據 |
| GET | /internal/v1/runtime/recovery-history | 恢復歷史 |

正式 API 必須支援：

- Scope-Based Authorization｜範圍授權
- Time Window Filtering｜時間窗口過濾
- Pagination｜分頁
- Query Timeout｜查詢期限
- Rate Limiting｜速率限制
- Data Quality Status｜資料品質狀態
- Evidence Provenance｜證據來源追溯

所有內部診斷介面不得直接暴露至公開網絡。

---

## 7. Operations Agent Integration｜運行智能體整合

### 7.1 Read Flow｜資料讀取流程

Operations Agent 首先查詢 Incident，再取得相關 Runtime Trace、健康指標及設備歷史。

Context Engine 將資料整理為 DiagnosticContext。

Diagnostic Agent 根據結構化證據產生 DiagnosisResult。

Report Service 將結果轉換為 Dashboard 所需的資料。

### 7.2 Recovery Boundary｜恢復權限邊界

MVP 的 Operations Agent 只能：

- 讀取日誌與運行狀態
- 分析故障
- 提出可能根因
- 生成恢復建議
- 保存報告

不得：

- 重新發送設備控制命令
- 重啟 Cloud Runtime
- 修改 MQTT 設定
- 修改設備狀態
- 修改 Production 資料庫
- 觸發 OTA

若未來需要人工審批後的恢復操作，應另外設計 Recovery Execution Contract。

---

## 8. Security & Production Compatibility｜安全與正式環境相容

### 8.1 New Service Security｜新增服務安全

所有新服務必須使用獨立服務身分、最小權限及受保護的網絡通道。

不得沿用 App 內嵌的全域固定 Token 作為 Agent 授權方式。

Operations Agent 不取得原始資料庫管理憑證或 MQTT 控制帳號。

### 8.2 Sensitive Data｜敏感資料

在日誌送往模型之前，必須清理：

- Access Tokens
- MQTT Credentials
- Passwords
- Personally Identifiable Information
- 不必要的裝置網絡資訊
- 其他密鑰或私密設定

診斷證據保留可追溯的事件 ID，原始敏感內容不進入 LLM 上下文。

### 8.3 Production Change Safety｜正式環境變更安全

實施必須支援：

- Feature Flag｜功能開關
- Canary Deployment｜小範圍試行
- Resource Limits｜資源限制
- Rollback Plan｜回退方案
- Backup Verification｜備份核查
- Change Approval｜變更審批

不得直接在正式環境中執行未經核准的資料表變更或容器重新配置。

---

## 9. Performance & Failure Isolation｜性能與故障隔離

首階段必須驗證：

1. Telemetry Adapter 不阻塞 MQTT 訊息處理。
2. Observability Store 故障不影響設備控制。
3. Agent 模型不可用時，Runtime 繼續運行。
4. 遙測負載增加時，CPU、記憶體和資料庫負載保持在核准範圍。
5. 診斷查詢不得拖慢既有 App API。
6. 觀測資料隊列滿載時，採取有界丟棄或退避策略，並記錄資料缺失。
7. 不能因遙測重試而重新執行設備命令。

服務性能門檻需依現有 Production 基線設定，避免使用未經實測的延遲目標。

---

## 10. Engineering Acceptance｜工程驗收

| ID | Test｜測試 | Acceptance｜通過標準 |
| --- | --- | --- |
| CR-AT-01 | MQTT 協議相容 | 既有 Topic 及訊息格式不變 |
| CR-AT-02 | App 相容 | 舊 App 控制與狀態顯示通過回歸測試 |
| CR-AT-03 | 事件接入 | 可取得真實 Cloud Runtime 命令及狀態事件 |
| CR-AT-04 | 命令關聯 | 能重建具充分關聯證據的控制鏈 |
| CR-AT-05 | 健康指標 | 統計與測試資料計算結果一致 |
| CR-AT-06 | Incident | 能識別離線、逾時、狀態不一致與恢復失敗 |
| CR-AT-07 | Agent 介面 | Operations Agent 可透過授權 API 查詢資料 |
| CR-AT-08 | 證據追溯 | 事實型診斷結論可追溯至原始事件 |
| CR-AT-09 | 權限隔離 | 未授權及跨租戶查詢被拒絕 |
| CR-AT-10 | 故障隔離 | AI / Observability 故障不妨礙原有控制 |
| CR-AT-11 | 部署安全 | 具備測試證據、資源預算及回退方案 |
| CR-AT-12 | 人工審批 | Production 變更須經授權人員審批 |

---

## 11. Delivery Phases｜工程交付階段

**P0 — Production Architecture Audit｜正式環境架構審查**

確認真實程式、事件、日誌、API、資源、安全邊界與部署現況。

**P1 — Read-Only Telemetry PoC｜唯讀遙測概念驗證**

從現有 Runtime 日誌及業務事件提取一條命令鏈，輸出標準 RuntimeEvent。

**P2 — Observability Store & Query API｜觀測儲存與查詢介面**

建立獨立資料模型與授權 API。

**P3 — Operations Agent Integration｜運行智能體接入**

完成故障上下文、證據檢索、AI 診斷及恢復建議。

**P4 — Visual Dashboard｜可視化儀表板**

整合既有 Operations Console，不刪除既有圖表或 AI 報告功能。

**P5 — Production Validation｜正式環境驗收**

在不干擾控制鏈的條件下，執行灰度驗證、性能測試、故障測試及回退演練。

---

## 12. Required Deliverables｜必要成果

每個階段均需提供：

- Architecture / Design Record｜架構與設計紀錄
- API & Schema Contract｜介面與資料契約
- Test Evidence｜測試證據
- Risk & Compatibility Matrix｜風險與相容性矩陣
- REVIEW.md｜完成度、品質、問題、成果及後續改進

未完成 P0 真實環境審查與 P1 資料鏈驗證前，不得宣稱 Operations Agent 已完成正式資料對接。

---

## 13. Final Engineering Decision｜工程結論

**Preserve Production. Expose Runtime Evidence. Enable AI Diagnosis.**

**保留正式環境，提供可信運行證據，建立 AI 診斷能力。**

本規格採用既有 Cloud Runtime 作為運行權威，以增量觀測能力建立可信資料接口，再由 Operations Agent 完成運行分析、故障診斷、恢復建議及可視化報告。

End of Specification｜規格結束

OAI-RUNTIME-CLOUD-001 · v1.0 · Review Required

## 四、實際資料對接範例：從既有 MQTT 到 Operations Agent

這是整份規格最需要落地驗證的部分。

### 1. 現有控制流程

```text
App
 │
 ▼
/terminal/{mac}
 │
 ▼
emqxMP
 │
 ▼
/control/{mac}
 │
 ▼
Device
 │
 ▼
/report/{mac}
 │
 ▼
emqxMP
 │
 ▼
/terminalResult/{familyId}
 │
 ▼
App
```

### 2. 新增的旁路觀測流程

```text
emqxMP Command / Report Handler
          │
          ├──────── Existing MQTT Processing
          │         既有命令與設備回報（不變）
          │
          └──────── Telemetry Adapter
                          │
                          ▼
                   RuntimeEvent
                          │
                          ▼
                  Observability Store
                          │
                          ▼
                   Diagnostic API
                          │
                          ▼
                    Context Engine
                          │
                          ▼
                   Operations Agent
                          │
                          ▼
                   Diagnosis Report
```

**核心工程要求：Telemetry Adapter 的失敗不能讓原有 MQTT Handler 失敗。** 不能在原本已存在同步 I/O 風險的回呼鏈上，再加一個同步 AI 或資料庫操作。

### 3. RuntimeEvent 標準樣例

```json
{
  "schema_version": "1.0",
  "event_id": "01JEXAMPLE00001",
  "source": "emqxMP",
  "event_type": "COMMAND_DISPATCHED",
  "severity": "INFO",
  "occurred_at": "2026-11-18T14:30:00Z",
  "received_at": "2026-11-18T14:30:00.020Z",
  "scope": {
    "tenant_id": "tenant-001",
    "domain": "HOME",
    "family_id": "family-001"
  },
  "device_id": "device-003",
  "command_id": "cmd-001",
  "trace_id": "trace-001",
  "transport": {
    "protocol": "MQTT",
    "topic": "/control/device-003"
  },
  "attributes": {
    "command_type": "SWITCH_CONTROL",
    "route": "CLOUD_DIRECT"
  },
  "correlation_quality": "EXACT",
  "time_quality": "SERVER_CLOCK"
}
```

此範例中的 `command_id`、`trace_id` 以及 `correlation_quality` 是目標新增能力。現有 MQTT 協議能否提供精確命令關聯，仍須檢查原始 payload 與 emqxMP 實作。

建議分三級處理：

| 關聯等級 | 意義 | AI 能否用於根因判斷 |
| --- | --- | --- |
| `EXACT` | 有唯一命令識別碼或可靠映射 | 可以 |
| `INFERRED` | 透過時間、設備和路徑推論 | 需標註不確定性 |
| `UNRESOLVED` | 無法可靠關聯 | 不得宣稱已確定控制鏈 |

## 五、第一階段真正需要交付的 API

**GET /internal/v1/runtime/health**

提供 Cloud Runtime 與設備健康摘要，包括時間範圍、指標值、樣本數和資料品質。

**GET /internal/v1/runtime/traces/{id}**

還原命令處理和設備回報鏈，顯示每一環節的時間、結果及證據。

**GET /internal/v1/runtime/incidents/{id}/evidence**

提供 AI 診斷所需的相關事件、異常與資料缺失情況。

**POST /internal/v1/diagnoses**

保存 Operations Agent 診斷成果與恢復建議，沒有 Runtime 執行副作用。

需要特別指出：目前已核對的架構文件中，尚未證實上述四個新 API 已經存在。它們是本次需要實作並通過契約測試的介面。

## 六、Codex 第一個正式工程任務

**TASK-RUNTIME-CLOUD-001-P0 — Production Observability Gap Assessment｜正式環境可觀測性差距審查**

**Execution Mode｜唯讀審查**

目標：以現有真實程式確認最小改動方案，尚不實施 Production 變更。

## 七、工程成果與審閱狀態

| 項目 | 目前結果 |
| --- | --- |
| 現有架構文件核對 | 已完成，根據目前可取得的 GitHub 文件 |
| Production 相容性邊界 | 已形成規格 |
| Telemetry Adapter 設計 | 已形成候選架構 |
| RuntimeEvent 資料契約 | 已提出 v1.0 候選 |
| Operations Agent API | 已提出介面與責任 |
| 真實程式完整稽核 | 待 Codex P0 |
| 真實日誌資料鏈驗證 | 尚未進行 |
| Production 部署驗收 | 尚未進行 |

**最終建議：將 OAI-RUNTIME-CLOUD-001 v1.0 作為 Cloud Runtime Observability 的工程設計基準候選。**

第一階段先完成 `emqxMP → Telemetry Adapter → Observability Store → Diagnostic API`，以真實日誌證明資料鏈有效。第二階段再接入 Context Engine 與 Operations Agent，完成故障診斷、恢復建議和可視化報告。

這樣能保留 OceanAI 現有 Cloud Production 的控制行為，並逐步建立真正可運行、可驗收的 **OceanAI Runtime Intelligence｜運行智能系統**。
