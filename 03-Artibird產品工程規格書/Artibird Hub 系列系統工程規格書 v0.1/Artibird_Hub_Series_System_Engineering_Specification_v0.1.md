# Artibird Hub Series — System Engineering Specification

# Artibird Hub 系列系統工程規格書

Engineering Draft v0.1

2026-11-16

Document ID: ARTIBIRD-HUB-ENG-001

Status: Proposed for Engineering Review｜工程審閱草案

Scope: Hub / Hub Pro / Building Controller

## 1. Product Family｜產品系列

## Artibird Hub

**Intelligent Space Hub｜智能空間中樞**

Local Runtime & Spatial Coordination｜本地運行與空間協調

面向住宅、小型辦公室與獨立空間，提供本地設備接入、狀態管理、場景、自動化與基本運維能力。

## Artibird Hub Pro

**Intelligent Space Workstation｜智能空間工作站**

Advanced Runtime & Operations｜進階運行與運維管理

面向大型住宅、辦公區域、小型校園及專業部署，提供更高的運算容量、完整 Runtime Console 與本地運維分析能力。

## Artibird Building Controller

**Building Runtime Controller｜建築運行控制器**

Building-wide Runtime & Coordination｜建築級運行與協調

面向學校、辦公建築、商業與其他多空間設施，負責建築範圍內的設備運行、空間管理、跨區域協調和運行可靠性。

**Engineering Principle｜工程原則**

> One ArtiOS Runtime Core. Three deployment profiles.
> 一套 ArtiOS Runtime 核心，三種部署配置。

三款產品共用 Runtime 核心、事件契約、設備能力模型、API 與運維資料模型。產品差異主要體現在運算容量、部署規模、可靠性、管理功能與進階能力。

## 2. System Architecture｜系統架構

**OceanAI Cloud Platform**

ORT · Organizations · Multi-Site · OTA · Analytics · Operations Agent

Secure Cloud Uplink｜安全雲端連線

**Artibird Controller Layer｜控制器層**

- Hub — ArtiOS Runtime
- Hub Pro — ArtiOS Runtime
- Building Controller — ArtiOS Runtime

**Local Runtime Services｜本地運行服務**

Registry · State · Scene · Automation · Event Bus · Local DB · Command Routing

Ethernet / IP · MQTT · Local API

**Artibird Gate**

ESP32-C6 · Mesh Access

**Artibird Sync**

ESP32 · IR / 433 MHz

**Artibird Distributed Devices｜分散式設備**

Switch · Panel · Sense · Plug · Flow · Vision · Climate

概念架構：控制器產品為不同部署選項；大型部署可分層協作，具體主從關係由站點配置決定。

這個系統維持既有 OceanAI 架構邊界：

- **ORT — OceanAI Runtime｜OceanAI 全局運行層**：協調跨場域運行與雲端能力。
- **ART — ArtiOS Runtime｜ArtiOS 本地運行層**：在 Hub 系列控制器上執行本地狀態、規則、場景與命令。
- **Artibird Device Layer｜Artibird 設備層**：透過 Gate、Sync 與其他設備完成感測、通訊及物理執行。

雲端失聯時，已配置且無須雲端授權的本地控制與自動化應繼續運行。

## 3. Hardware Specification｜硬體規格

以下區分既有硬體基準與建議配置。Hub 現有 Raspberry Pi 5 基礎保持不變；其他配置尚待工程選型與壓力測試。

| Specification｜規格 | Hub | Hub Pro | Building Controller |
| --- | --- | --- | --- |
| Compute｜運算平台 | Raspberry Pi 5 | ARM / x86 工業級平台，待選型 | 工業級 x86 / ARM Server |
| CPU｜處理器 | Pi 5 Cortex-A76 四核心 | 建議 4–8 核 | 建議 8 核以上 |
| RAM｜記憶體 | 建議 8 GB | 建議 16 GB | 建議 32 GB 起 |
| Storage｜儲存 | 建議 128 GB SSD | 建議 256–512 GB SSD | 建議 512 GB–1 TB SSD |
| Ethernet｜有線網路 | 1 GbE | 建議雙網口 | 建議雙網口／2.5 GbE |
| Wi-Fi / BLE | Pi 5 原生支援 | 依平台配置 | 可選 |
| RTC｜實時時鐘 | 電池備援 RTC | 必需 | 必需 |
| Power｜供電 | Pi 5 合規電源 | 建議 DC / UPS | 建議工業 DC / UPS |
| Local Runtime | 必需 | 必需 | 必需 |
| Local Console | 基礎版 | 完整版 | 建築級 |
| Local AI | 選配／雲端輔助 | 可選加速器 | 可選專用 Edge AI |

Raspberry Pi 5 官方資料確認了 Gigabit Ethernet、PCIe 2.0 x1、電池備援 RTC 支援及 USB-C 供電規格。SSD 介面、外殼散熱及備援供電仍需要實際工程驗證。

### 3.1 Hardware Design Requirements｜硬體設計要求

| ID | Requirement｜要求 |
| --- | --- |
| HW-001 | 具備斷電後安全重啟及服務自動恢復能力 |
| HW-002 | 優先使用 SSD 承載 Runtime Database 與持續日誌寫入 |
| HW-003 | 保留出廠、運行及維修診斷識別資訊 |
| HW-004 | 支援安全的系統更新與失敗回復 |
| HW-005 | 支援 RTC、NTP 與時間品質記錄 |
| HW-006 | 持續監控 CPU、RAM、儲存空間、溫度與供電狀態 |
| HW-007 | Hub Pro 與 Building Controller 應規劃 UPS 及電源故障事件輸入 |
| HW-008 | 建立散熱、電磁相容性、供電及長時間負載測試 |

**硬體選型決策：** Hub Pro 應先確認是否需要本地 SLM / VLM 推理，再決定 ARM、x86 或外接 AI 加速器。Building Controller 優先考慮長期可靠性、儲存耐久性、網路隔離與維修性。

## 4. ArtiOS Runtime Core｜本地運行核心

三款控制器採用相同的核心服務模型。

| Module｜模組 | Responsibility｜工程職責 | Priority |
| --- | --- | --- |
| Device Registry｜設備註冊 | 設備身份、生命週期、所屬 Gate、能力索引 | P0 |
| Device State｜設備狀態 | Reported / Desired / Effective State 狀態管理 | P0 |
| Capability Model｜能力模型 | 描述設備可觀測與可執行能力 | P0 |
| Device Binding｜設備綁定 | 設備與空間、控制端、Gate 的關係 | P0 |
| Command Routing｜命令路由 | 命令驗證、尋址、發送、回執、超時 | P0 |
| Local Control API｜本地控制 API | 提供 App、Console 和其他受權客戶端接口 | P0 |
| Scene Engine｜場景引擎 | 多設備場景編排與執行狀態追蹤 | P0 |
| Automation Engine｜自動化引擎 | 事件、條件、時間與動作規則執行 | P0 |
| Event Bus｜事件匯流排 | Runtime 內部事件傳遞與訂閱 | P0 |
| Local DB｜本地資料庫 | 本地配置、狀態快照、事件持久化 | P0 |
| Cloud Sync｜雲端同步 | 雲端與本地資料同步、斷線重試 | P0 |
| Temporal Service｜時間服務 | 時鐘品質、排程、期限、事件次序 | P0 |
| Runtime Observability｜運行可觀測性 | 結構化日誌、健康指標、追蹤 | P1 |
| Operations Agent｜AI 運維代理 | 日誌分析、診斷與報告 | P1 |

Temporal Service 應遵循既有 **OAI-RUNTIME-ENG-004 — Distributed Temporal Architecture & Time Reliability｜分散式時間架構與時間可靠性** 的分層原則。

### 4.1 Deployment Profiles｜分級部署配置

| Runtime Capability | Hub | Hub Pro | Building Controller |
| --- | --- | --- | --- |
| Device Control｜設備控制 | 完整 | 完整 | 完整 |
| Scene / Automation｜場景與自動化 | 完整 | 完整 | 完整 |
| Local Database｜本地資料庫 | 必需 | 必需 | 必需 |
| Multi-Gate Management｜多 Gate 管理 | 支援 | 支援 | 支援 |
| Spatial Hierarchy｜空間層級 | 基礎 | 多區域 | 建築／樓層／空間 |
| Runtime Diagnostics｜運行診斷 | 基礎 | 進階 | 集中管理 |
| Local AI Inference｜本地 AI 推理 | 可選 | 可選 | 可選 |
| Distributed Coordination｜分散式協調 | 基本接入 | 進階 | 建築級 |
| Operational Reporting｜運維報告 | 基本 | 完整 | 完整及跨區域 |

所有控制器均需遵守相同的設備與命令狀態語意。

**容量規格暫不固定。** 設備數量、Gate 數量、並行命令數、事件吞吐量，應使用工作負載模型和測試數據決定。不能僅根據 RAM 或 CPU 規格宣稱支援多少間教室。

## 5. Network & Communication｜網路與通訊架構

### 5.1 Communication Matrix｜通訊矩陣

| Link｜鏈路 | Transport｜傳輸 | Purpose｜用途 |
| --- | --- | --- |
| Cloud ↔ Controller | HTTPS / TLS、MQTT over TLS | 管理、同步、遙測與事件上傳 |
| App ↔ Controller | HTTPS / WSS | 本地控制、狀態訂閱 |
| Console ↔ Controller | HTTPS / WSS | 管理、監控、診斷 |
| Controller ↔ Gate | Ethernet / IP LAN、MQTT | 狀態、命令、心跳、事件 |
| Controller ↔ Sync | IP / MQTT 或經 Gate 路由 | IR / RF 命令、學習工作流程 |
| Gate ↔ Devices | Wi-Fi Mesh / BLE Mesh | 設備接入與控制 |
| Controller ↔ Controller | 安全的服務通訊 | 建築級站點協調，P2 |

上述為目標接口契約；實際協議、Broker 拓撲與傳輸封裝，須以現有 Artibird 實作進行相容性核對。

### 5.2 Network Planes｜網路平面

- **Management Plane｜管理平面**：配置、權限、升級、資產管理。
- **Runtime Plane｜運行平面**：命令、狀態、事件、場景、自動化。
- **Cloud Uplink Plane｜雲端連線平面**：帳號、站點同步、分析與遠端服務。

Management Plane 與 Runtime Plane 需要邏輯權限隔離。大型部署建議使用獨立 VLAN／網段，規劃防火牆、DNS、NTP 與設備發現策略。

### 5.3 Local-First Requirements｜本地優先要求

| ID | Requirement |
| --- | --- |
| NET-001 | 本地命令處理不得把雲端連線作為必要前置條件 |
| NET-002 | 雲端中斷時保留已配置的本地場景及自動化 |
| NET-003 | Gate 暫時失聯後重連，須重新協調設備狀態 |
| NET-004 | 所有命令具備唯一識別、期限及回執 |
| NET-005 | 離線事件需要帶有事件時間、接收時間及時間品質 |
| NET-006 | Cloud Sync 不得覆蓋更新版本的本地狀態而沒有衝突處理 |
| NET-007 | 斷線恢復時，過期或非冪等命令不得盲目重放 |

## 6. Runtime State & Command Model｜運行狀態與命令模型

### 6.1 Core State Model｜核心狀態

```text
Desired State       期望狀態
Reported State      設備回報狀態
Effective State     系統確認的有效狀態
Connectivity State  連線狀態
Health State        健康狀態
Temporal Quality    時間品質
```

Effective State 必須包含資料來源及最後確認時間，不能將發出命令等同於設備已完成執行。

### 6.2 Command Lifecycle｜命令生命週期

Accepted → Validated → Dispatched → Acknowledged → **Confirmed｜已確認執行**

由設備回執或可信狀態證據確認。

終止及異常分支：Rejected · Failed · Timed Out · Expired · Cancelled · Unknown Outcome

命令模型必須有以下欄位：

```json
{
  "command_id": "cmd-example-001",
  "correlation_id": "trace-example-001",
  "site_id": "school-001",
  "space_id": "classroom-201",
  "device_id": "light-001",
  "capability": "power",
  "action": "set",
  "parameters": {
    "value": true
  },
  "issued_at": "2026-11-16T10:00:00Z",
  "deadline_at": "2026-11-16T10:00:05Z",
  "status": "Accepted"
}
```

以上為示例資料，正式 Schema 尚須增加 `schema_version`、`actor_id`、`idempotency_key`、權限上下文及狀態證據等欄位。

### 6.3 Idempotency & Recovery｜冪等與恢復

- 同一個 `idempotency_key` 不應造成相同命令被重複執行。
- 超時後無設備證據時，返回 `Unknown Outcome｜結果未確認`。
- 對實體動作（例如電機、窗簾、水閥），重試策略必須依能力類別決定。
- 時鐘失去同步時，不得直接執行已過期的定時控制。
- 控制器重啟後，根據本地持久化紀錄恢復可安全恢復的工作。

## 7. Runtime Console｜運行控制台

控制台以瀏覽器為主要入口，桌面優先。這避免所有 Hub 都必須配備顯示器，並讓同一套管理介面可服務不同硬體平台。

ArtiOS Runtime Console 的示意版面包含：Runtime Overview｜運行總覽、Gate Topology｜網路拓撲、Runtime Services｜服務矩陣、Device States｜設備狀態、Diagnostics｜故障診斷。

示意版面；正式介面應接入實際 ArtiOS API，不使用固定的模擬狀態。

### 7.1 Console Feature Matrix｜控制台功能矩陣

| Feature｜功能 | Hub | Hub Pro | Building |
| --- | --- | --- | --- |
| Runtime Overview｜運行總覽 | ✓ | ✓ | ✓ |
| Gate Topology｜Gate 拓撲 | ✓ | ✓ | ✓ |
| Device / Space State｜設備及空間狀態 | ✓ | ✓ | ✓ |
| Scene Management｜場景管理 | ✓ | ✓ | ✓ |
| Service Matrix｜服務矩陣 | 基礎 | 完整 | 完整 |
| Structured Logs｜結構化日誌 | 基礎 | 進階 | 進階 |
| Diagnostics｜故障診斷 | 基礎 | 進階 | 建築級 |
| Operations Reports｜運維報告 | 基礎 | 完整 | 完整 |
| Building / Floor View｜建築及樓層 | — | 可選 | ✓ |
| Multi-Zone Coordination｜多區域協調 | — | 可選 | ✓ |

`✓` 表示目標功能；尚未表示目前程式已完成。

## 8. Operations Agent｜AI 運維代理

Operations Agent 與 Runtime 共享運行資料契約，但其分析及建議流程獨立於必要的設備控制路徑。

### Phase 1 — Runtime Intelligence MVP｜運行智能第一階段

1. **Log Ingestion｜日誌接入**  
   收集 Controller、Gate、Sync、Runtime Service 的結構化日誌。
2. **Runtime Visualization｜運行可視化**  
   呈現事件時間線、服務健康狀態、設備異常與命令失敗。
3. **Fault Diagnosis｜故障診斷**  
   關聯多個來源的事件，產生可能原因、證據、可信程度及待核查事項。
4. **Report Generation｜報告生成**  
   產出故障報告、運行摘要與可追溯的診斷結果。

### Phase 2 — Controlled Recovery｜受控恢復

在 Phase 1 完成驗收後，才加入：

- Recovery Planner｜恢復規劃員
- Human Approval｜人工審批
- Controlled Execution｜受控執行
- Execution Verification｜執行驗證
- Session Log → Memory → Skill → Validation｜技能演進循環

**安全限制：** AI 診斷結果不得直接繞過 Runtime 權限、安全聯鎖及人工審批執行有風險的實體動作。

## 9. Security & Reliability｜安全與可靠性

安全基線參考 NIST IR 8259A、8259B 及 2026 年修訂的 8259 Rev.1；這些文件提供 IoT 裝置安全能力與製造商生命週期管理的指引，不代表產品已取得安全認證。

### 9.1 Security Requirements｜安全要求

| ID | Requirement｜要求 |
| --- | --- |
| SEC-001 | 每台控制器具備唯一設備身份及安全佈署流程 |
| SEC-002 | 所有管理與控制 API 均需身份驗證、授權與存取記錄 |
| SEC-003 | 控制器與 Cloud、Gate 間採用驗證對端身份的加密通訊 |
| SEC-004 | 禁止出廠共用管理密碼及未經驗證的遠端管理 |
| SEC-005 | 軟體更新需驗證簽章，防止未授權映像安裝及版本回退風險 |
| SEC-006 | 敏感憑證需加密保護並支援輪換 |
| SEC-007 | 日誌及診斷資料需進行敏感資料最小化與權限隔離 |
| SEC-008 | 備份與恢復須驗證完整性及站點身份 |
| SEC-009 | 關鍵配置修改、人工審批及恢復操作須留下可稽核紀錄 |

### 9.2 Reliability Targets｜可靠性驗收目標

以下為 **Proposed Engineering Targets｜建議工程驗收目標**，仍需通過實測。

| Metric｜指標 | Initial Target｜初始目標 |
| --- | --- |
| Local command latency｜本地命令延遲 | P95 ≤ 500 ms，僅計控制器至測試 Gate 回執 |
| Service recovery｜服務恢復 | 非硬體故障下，自動恢復 ≤ 60 秒 |
| Cloud disconnect｜雲端斷線 | 已配置本地控制持續可用 |
| Gateway reconnection｜Gate 重連 | 30 秒內開始狀態重新同步 |
| Data integrity｜資料完整性 | 已確認持久化的關鍵事件不得遺失 |
| Runtime endurance｜持續運行 | 168 小時穩定性測試 |
| Command traceability｜命令追蹤 | 每個已接受命令可依 ID 追查處理結果 |
| Time reliability｜時間可靠性 | 記錄時鐘來源、偏差及同步品質 |

命令延遲基準不包含無線 Mesh 傳輸、設備物理動作時間或第三方設備回應時間。完整端到端延遲需要另行測量。

## 10. Deployment Architecture｜部署工程

### 10.1 Home Deployment｜住宅部署

```text
OceanAI Cloud
      │
  Artibird Hub
      │
 Home LAN / Router
      │
  Artibird Gate
      │
 Switch / Plug / Sense / Panel
```

Hub 是住宅本地 Runtime 的協調核心，App 可在本地 LAN 進行已授權的控制。

### 10.2 Professional Deployment｜專業空間部署

```text
OceanAI Cloud
      │
 Artibird Hub Pro
      │
Managed Ethernet LAN
      │
   ┌──┴──┐
 Gate A  Gate B
   │       │
 Zone A  Zone B
```

Hub Pro 統一管理多 Gate、多空間以及 Runtime 健康狀態。

### 10.3 Building Deployment｜建築部署

```text
OceanAI Cloud / ORT
         │
 Building Controller
         │
  Building Ethernet
         │
  ┌──────┼──────┐
 Floor 1 Floor 2 Floor 3
   │       │       │
 Gate(s) Gate(s) Gate(s)
   │       │       │
 Spaces  Spaces  Spaces
```

Building Controller 負責建築範圍內的 Runtime 協調。

如部署中存在多台 Hub 或 Hub Pro，需另外規劃 Controller Federation｜控制器聯合機制，包含所有權、狀態同步、路由、故障隔離及領導權切換；不得假定 MQTT Broker 自動實現分散式一致性或高可用性。

## 11. API Contract｜接口契約

建議採用版本化 HTTPS API 與 WSS 事件訂閱，並統一使用既有 Runtime 資料模型。

| Endpoint（示例） | Method | Purpose |
| --- | --- | --- |
| `/api/v1/runtime/health` | GET | Runtime 健康 |
| `/api/v1/runtime/services` | GET | 服務矩陣 |
| `/api/v1/spaces` | GET | 空間層級 |
| `/api/v1/devices` | GET | 設備清單 |
| `/api/v1/devices/{id}/state` | GET | 設備狀態 |
| `/api/v1/commands` | POST | 建立控制命令 |
| `/api/v1/commands/{id}` | GET | 查詢命令結果 |
| `/api/v1/scenes` | GET | 場景清單 |
| `/api/v1/events` | GET | 歷史事件 |
| `/api/v1/operations/diagnostics` | GET | 診斷結果 |
| `/api/v1/operations/reports` | GET | 運維報告 |
| `/api/v1/events/stream` | WSS | 即時事件訂閱 |

這是 **Proposed API Surface｜建議 API 介面**，不表示這些端點已在現有後端實作。正式實作前應核對既有路由、權限和資料契約，優先使用相容適配器。

## 12. Engineering Verification｜工程驗收

| Test ID | Acceptance Test｜驗收測試 | Applies To |
| --- | --- | --- |
| AT-001 | 控制器冷啟動後 Runtime 服務啟動 | All |
| AT-002 | Device Registry 註冊與設備綁定 | All |
| AT-003 | 本地設備命令、回執與有效狀態確認 | All |
| AT-004 | Scene / Automation 本地執行 | All |
| AT-005 | 雲端中斷 24 小時，本地控制持續運行 | All |
| AT-006 | Gate 斷線與重連後狀態重新協調 | All |
| AT-007 | 電源中斷後資料完整性及恢復 | All |
| AT-008 | 控制台與真實 Runtime API 資料一致 | All |
| AT-009 | 168 小時穩定性測試 | All |
| AT-010 | 日誌追蹤、診斷及報告證據核對 | Pro / Building |
| AT-011 | 多 Gate 壓力與命令並行測試 | Pro / Building |
| AT-012 | 建築／樓層／空間權限及隔離測試 | Building |
| AT-013 | 時鐘偏差、排程重啟與過期命令測試 | All |
| AT-014 | 身份驗證、授權、更新及憑證輪換測試 | All |
| AT-015 | 跨控制器協調與故障隔離測試 | Building，若啟用 Federation |

所有測試需保存測試環境、韌體版本、Runtime 版本、測量數據、事件證據與 Pass / Fail 結果。

## 13. Engineering Roadmap｜工程實施順序

**P0 — Shared Runtime Baseline｜共用運行核心**

完成 Device Registry、State、Binding、Command Routing、Scene、Automation、Event Bus、Local DB 與 API 契約。

**P1 — Artibird Hub｜基礎中樞驗證**

以現有 Raspberry Pi 5 為基礎，接入真實 Gate、Sync，完成本地運行、控制台及斷網測試。

**P2 — Hub Pro｜專業工作站**

進行硬體選型與容量測試，完成進階 Runtime Console、Operations Agent 資料接入、診斷和報告。

**P3 — Building Controller｜建築控制器**

擴展建築、樓層、空間管理，多區域 Runtime 協調、權限隔離、恢復與大型部署測試。

## 14. Engineering Decisions｜工程決策清單

本版可作為工程設計基準草案，但以下事項需要在正式凍結前驗證：

**D-01** — Hub Pro 採用 Raspberry Pi 系列、工業 ARM 或 x86 平台

**D-02** — Building Controller 的具體硬體、儲存與備援方案

**D-03** — 三款產品的實測 Gate／設備容量上限

**D-04** — 現有 MQTT Broker、後端 API 與新版 Runtime 契約相容性

**D-05** — Hub Pro 是否配置本地 AI 加速器

**D-06** — Building Controller 是否需要控制器聯合與備援切換

**D-07** — 各型號安規、EMC、環境與產品上市地區認證範圍

## 15. REVIEW｜工程規格成果審閱

| Item｜項目 | Result｜結果 |
| --- | --- |
| Product Names｜產品名稱 | 三款名稱已依本次要求採用 |
| System Architecture｜系統架構 | 已建立三產品共用 Runtime 架構 |
| Hardware｜硬體 | Hub 基準保留；Pro / Building 待工程選型 |
| Runtime Core｜運行核心 | 已列出核心模組及部署差異 |
| Network｜網路 | 已建立通信矩陣及網路平面 |
| Console｜控制台 | 已建立分級功能與介面方向 |
| Operations Agent｜運維代理 | 已對齊 Phase 1 / Phase 2 順序 |
| Verification｜工程驗收 | 已建立初始測試矩陣 |
| Overall Status｜總體狀態 | **Engineering Draft — Pending Validation** |

### 建議的工程文件拆分

本次的 `ARTIBIRD-HUB-ENG-001` 應作為三款產品的共用母規格，後續可以建立三個型號專屬附件：

- `ARTIBIRD-HUB-HW-001` — Hub Hardware Specification｜Hub 硬體規格
- `ARTIBIRD-HUBPRO-HW-001` — Hub Pro Hardware Specification｜Hub Pro 硬體規格
- `ARTIBIRD-BC-HW-001` — Building Controller Hardware Specification｜建築控制器硬體規格

它們共同引用 ArtiOS Runtime Core 與 OceanAI Cloud 的既有規格，避免發展成三套互不相容的軟體。

**工程結論**

我建議現在先以 **Artibird Hub（Raspberry Pi 5）作為真實工程驗證平台**，完成一套可運行、可觀測、可控制 Gate 與 Sync 的 ArtiOS Runtime。

然後將相同核心部署至 Hub Pro 與 Building Controller，透過硬體容量、運維功能及建築級部署能力形成三級產品。

這樣能讓三款產品使用相同的 OceanAI 技術底座，同時建立清楚的工程交付與產品升級路徑。

下一項優先交付成果應是 **Artibird Hub P0 Implementation Specification｜Artibird Hub P0 實施規格**，直接對接目前的程式碼與硬體，列出可交給 Cursor / Codex 執行的實作任務及驗收測試。
