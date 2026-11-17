# ARTIBIRD-GATE-ENG-001

# Artibird Gate — Intelligent Space Gateway

# Artibird Gate｜智能空間網關工程規格書

Engineering Draft v0.1

2026-11-16

Product｜產品：Artibird Gate

Category｜類別：Intelligent Space Gateway｜智能空間網關

Status｜狀態：Engineering Review Required｜待工程審閱

Architecture｜架構：OceanAI / ArtiOS Runtime / Artibird

## 1. Product Positioning｜產品定位

**Artibird Gate** is a distributed intelligent space gateway that connects, manages, and coordinates device communication within the Artibird system. It provides local wireless networking, device access, command delivery, and event forwarding under the coordination of ArtiOS Runtime.

**Artibird Gate｜智能空間網關** 是 Artibird 系統的分散式設備接入與通訊節點。它在 ArtiOS Runtime 的協調下，提供本地無線組網、設備接入、命令傳遞、狀態回報及事件轉發能力。

### Runtime Role｜運行角色

**Distributed Device Access Gateway｜分散式設備接入網關**

Gate 在系統中承擔五項核心職責：

1. **Network Access｜網路接入**：連接 Hub 與分散式設備網路。
2. **Mesh Coordination｜Mesh 網路協調**：維護 Wi-Fi Mesh 與 BLE Mesh 通訊。
3. **Device Communication｜設備通訊**：管理設備連線、訊息及通訊健康狀態。
4. **Command Delivery｜命令傳遞**：執行命令轉發、回執追蹤、期限檢查及重試控制。
5. **Event Forwarding｜事件轉發**：將設備回報、狀態變化及異常事件傳送至 Hub。

**Architecture Boundary｜架構邊界**

ArtiOS Runtime Core 運行於 Hub、Hub Pro 或 Building Controller。Gate 維持自身韌體、通訊狀態、必要的本地快取、安全計時及故障恢復機制。

Gate 不承擔全域場景引擎、完整空間模型、組織管理或雲端業務資料庫。

## 2. System Architecture｜系統架構

**OceanAI Cloud / ORT**

Cloud Services · Multi-Site · Analytics · OTA

**Artibird Hub / Hub Pro / Building Controller**

ArtiOS Runtime · Device Registry · State · Scene · Automation · Command Routing

Local IP / MQTT / Secure Transport

**ARTIBIRD GATE · ESP32-C6**

- Transport｜傳輸連線
- Mesh Manager｜Mesh 網路管理
- Device Access｜設備接入
- Command / Event｜命令與事件
- Health Monitor｜健康監測
- Security / OTA｜安全與更新

Wi-Fi Mesh · BLE Mesh · Optional Sub-GHz

Switch / Panel

Sense / Plug

Flow / Other

邏輯系統拓撲。Sync 依實際接入方式，透過本地 IP 或 Gate 管理的裝置通道與 Runtime 協作。

### 2.1 System Responsibilities｜系統責任分工

| Component | Responsibility｜職責 |
| --- | --- |
| OceanAI Cloud | 帳號、組織、多站點、OTA、歷史分析 |
| Artibird Hub | 本地 Runtime、命令、狀態、場景、自動化 |
| Artibird Gate | 設備連接、Mesh、通訊路由、事件、健康狀態 |
| Artibird Devices | 感測、執行、使用者互動與設備安全控制 |
| Operations Agent | 運行資料分析、故障診斷及報告 |

## 3. Hardware Architecture｜硬體架構

### 3.1 Main Controller｜主控制器

**ESP32-C6｜32-bit RISC-V Wireless SoC**

官方規格包括 160 MHz 主處理器、512 KB HP SRAM、2.4 GHz Wi-Fi 6、Bluetooth LE、802.15.4、Secure Boot 及 Flash Encryption；ESP32-C6 本身不具備原生 Ethernet MAC，若需有線回程，必須另設經過驗證的網路介面方案。

| Item｜項目 | Gate Requirement｜要求 |
| --- | --- |
| MCU | ESP32-C6 |
| Main CPU | 32-bit RISC-V，最高 160 MHz |
| RAM | SoC 內建 512 KB HP SRAM |
| Flash | 建議外部 8–16 MB，依模組與 OTA 方案選型 |
| Wireless | 2.4 GHz Wi-Fi 6、Bluetooth LE |
| 802.15.4 | 硬體支援；Thread / Matter 待韌體整合驗證 |
| Security | Secure Boot、Flash Encryption、eFuse |
| Interface | UART、SPI、I²C、GPIO、USB Serial/JTAG |
| Watchdog | 硬體與系統軟體看門狗 |
| Ethernet | 選配外接介面，待硬體及驅動 PoC |
| Power | 建議 5 V DC 輸入，板載 3.3 V 供電 |
| Thermal | 按實際模組、外殼和射頻負載驗證 |

### 3.2 Hardware Block Architecture｜硬體模組架構

```text
Power Input / 電源輸入
       |
Protection + Regulation / 保護與穩壓
       |
ESP32-C6
  |-- Wi-Fi / BLE / 802.15.4 RF
  |-- SPI Flash
  |-- Reset / Boot / Status LED
  |-- UART / USB Debug
  |-- Watchdog / Brownout Detection
  |
  +-- Optional Ethernet Interface
  |   選配有線網路介面
  |
  +-- Optional SX1262
      選配 Sub-GHz 無線模組
```

### 3.3 Gate Pro｜擴展硬體配置

建議保留 **Artibird Gate Pro** 作為具備 Sub-GHz 擴展的專業型號，而不改變 Gate 基礎型號的定位。

| Function｜功能 | Gate | Gate Pro |
| --- | --- | --- |
| ESP32-C6 | 必需 | 必需 |
| Wi-Fi / BLE Mesh | 必需 | 必需 |
| Thread / Matter readiness | 預留 | 預留 |
| Ethernet backhaul | 選配 | 建議納入選型 |
| SX1262 Sub-GHz | — | 選配／研究性功能 |
| RF Diagnostics | 基礎 | 擴展 |
| Secure OTA | 必需 | 必需 |

SX1262 支援 Sub-GHz LoRa 與 FSK 類型通訊，但不能直接推論它能完整學習或重放所有 433 MHz 遙控協議。這項能力需經過 TASK-RF-001 自適應 RF 學習研究驗證。

## 4. Wireless Network Architecture｜無線網路架構

### 4.1 Wi-Fi Mesh｜Wi-Fi 網狀網路

ESP-IDF 提供 ESP-WIFI-MESH 實作及 ESP32-C6 的相關開發文件，其組網、路由與節點管理功能可作為 Gate 設計基礎。

**工程要求：**

- 支援 Root / Parent / Child 節點關係及路由狀態監測。
- 支援設備接入、路由重建與節點斷線恢復。
- 提供 Hop Count｜跳數、RSSI｜接收訊號強度與連線品質。
- Gate 必須回報 Root 狀態、路由變化、失聯事件及重連事件。
- 對 Hub 提供標準化的網路拓撲與設備連線狀態。

**重要限制：** ESP-WIFI-MESH、Mesh-Lite 與一般 Wi-Fi STA 接入，應作為不同的網路模式評估。不能假定它們可以在同一網路上無條件互通。

對校園等已具有交換機和有線網路的場域，應優先評估有線回程方案，避免多跳無線 Mesh 產生不必要的延遲和覆蓋風險。ESP32-C6 外接 Ethernet 的性能與並行 Wi-Fi 能力需獨立驗證。

### 4.2 BLE Mesh｜藍牙網狀網路

ESP-IDF 的 ESP-BLE-MESH 支援 ESP32-C6，包含 Provisioning、Proxy、Relay、Friend 和 Low Power Node 等機制。

| Feature｜功能 | Gate Role｜角色 |
| --- | --- |
| Provisioner｜配置節點 | 受 Hub 授權的裝置入網與設定 |
| Proxy｜代理 | 在 IP 網路與 BLE Mesh 間交換受支援訊息 |
| Relay｜中繼 | 依規劃轉發 Mesh 訊息 |
| Friend｜友鄰 | 管理低功耗節點的訊息快取 |
| LPN Support｜低功耗節點支援 | 與 Sense 等電池裝置協作 |
| Health Monitoring｜健康監控 | 節點連線、訊息狀態與通訊異常 |

**BLE Mesh Network Ownership｜網路所有權**

Mesh 的網路金鑰、AppKey、Provisioning 資訊及節點地址，由 Hub 的站點管理體系授權和管理。Gate 僅保存完成其通訊職責所需的憑證和配置。

### 4.3 Radio Coexistence｜無線共存

ESP32-C6 的 Wi-Fi、Bluetooth LE 和 802.15.4 共用 2.4 GHz 射頻資源，因此需要測試並行流量對延遲、封包遺失與功耗的影響。

要求建立以下測試場景：

- Wi-Fi 高流量 + BLE Mesh 事件傳輸
- BLE Mesh 多節點廣播 + Wi-Fi 命令傳遞
- 2.4 GHz 擁塞環境 + Gate 重連
- 若啟用 Thread，增加 Wi-Fi / BLE / 802.15.4 三協議並行測試

**P0 建議：** 先驗證 Wi-Fi Uplink + BLE Mesh 接入；之後再加入 Wi-Fi Mesh 多跳模式、Thread / Matter 與 Sub-GHz 擴展。

## 5. Gate Firmware Architecture｜Gate 韌體架構

**Hub Runtime Interface｜Hub 運行接口**

MQTT Client · Command / Event Contract · Authentication

Gateway Service

- Device Access Manager
- Mesh Manager
- Command Dispatcher
- Event Reporter
- Health / Diagnostics

**Platform Services｜平台服務**

NVS · Security · OTA · Time · Watchdog · Network Drivers

**ESP-IDF / FreeRTOS / ESP32-C6 Hardware**

### 5.1 Firmware Modules｜韌體模組

| ID | Module｜模組 | Responsibility｜職責 |
| --- | --- | --- |
| GFW-001 | Boot Manager｜啟動管理 | 安全啟動、版本檢查、初始化 |
| GFW-002 | Network Manager｜網路管理 | Wi-Fi、IP、上行連線及恢復 |
| GFW-003 | Mesh Manager｜Mesh 管理 | BLE / Wi-Fi Mesh 接入與拓撲 |
| GFW-004 | Device Access｜設備接入 | 設備會話、身份和能力通訊 |
| GFW-005 | Command Dispatcher｜命令調度 | 驗證、路由、期限及回執 |
| GFW-006 | Event Reporter｜事件回報 | 事件封裝、快取及發送 |
| GFW-007 | State Cache｜狀態快取 | 必要通訊狀態及版本資訊 |
| GFW-008 | Time Service｜時間服務 | 時鐘來源、偏差、期限判斷 |
| GFW-009 | Diagnostics｜診斷 | RSSI、Heap、CPU、重啟原因 |
| GFW-010 | Security Manager｜安全管理 | 身份、金鑰、存取驗證 |
| GFW-011 | OTA Manager｜更新管理 | 韌體驗證、更新及回滾 |
| GFW-012 | Watchdog Manager｜監護管理 | 偵測死鎖、崩潰與恢復 |

### 5.2 Firmware State Machine｜韌體狀態機

BOOTING｜啟動中

PROVISIONING｜待配置

CONNECTING｜連線中

REGISTERING｜Runtime 註冊中

OPERATIONAL｜運行中

異常與恢復狀態：DEGRADED｜降級運行 · RECONNECTING｜重新連線 · UPDATING｜更新中 · RECOVERY｜恢復模式

設備首次啟動時，應先完成受信任的配置及認證。完成配置的 Gate 重啟後，可以利用已保存且有效的設定直接重新建立連線。

## 6. Hub–Gate Communication Contract｜Hub 與 Gate 通訊契約

### 6.1 Transport｜傳輸

建議 P0 使用：

**MQTT 5.0 over TLS｜基於 TLS 的 MQTT 5.0**

若現有 Artibird Broker 主要採用 MQTT 3.1.1，應先以現有版本維持相容，再評估 MQTT 5.0 升級，避免破壞既有產品通訊。

### 6.2 MQTT Topic Structure｜主題結構

建議標準：

```text
artibird/v1/{site_id}/gates/{gate_id}/status
artibird/v1/{site_id}/gates/{gate_id}/health
artibird/v1/{site_id}/gates/{gate_id}/events

artibird/v1/{site_id}/gates/{gate_id}/commands
artibird/v1/{site_id}/gates/{gate_id}/acks

artibird/v1/{site_id}/gates/{gate_id}/topology
artibird/v1/{site_id}/gates/{gate_id}/diagnostics
```

這是目標命名草案。應核對現有 MQTT Topic 樹，建立版本化適配，避免直接替換已投入使用的 Topic。

### 6.3 Command Payload｜命令資料契約

```json
{
  "schema_version": "1.0",
  "command_id": "cmd-001",
  "correlation_id": "trace-001",
  "gate_id": "gate-001",
  "device_id": "switch-001",
  "capability": "power",
  "action": "set",
  "parameters": {
    "value": true
  },
  "issued_at": "2026-11-16T10:00:00Z",
  "deadline_at": "2026-11-16T10:00:05Z",
  "idempotency_key": "example-key-001"
}
```

正式契約須增加簽發者權限上下文、裝置通道、配置版本及命令追蹤資訊。

### 6.4 Command Execution｜命令執行

```text
Hub / ART
   |
   | Command
   v
Gate: Validate + Deadline Check
   |
   v
Device Access / Mesh Routing
   |
   v
Target Device
   |
   | Device Acknowledgement
   v
Gate: Publish Result
   |
   v
Hub: Update Runtime State
```

**關鍵規定：**

- `Accepted`：Gate 接受命令。
- `Dispatched`：命令已傳送至目標通道。
- `Acknowledged`：設備或通訊層已回應，需明確標示回應層級。
- `Confirmed`：取得可信的實際執行證據。
- `Failed / Expired / Unknown Outcome`：失敗、過期或無法確認。

Gate 不能將 MQTT Broker 接收成功視為設備執行成功。

### 6.5 Duplicate Handling｜重複命令處理

Gate 應維護有界的命令去重快取，並依設備能力模型決定重試是否安全。

例如 `set_power(true)` 在支援狀態式控制的設備上通常可以設計為冪等操作；`toggle_power`、`motor_move` 等動作不可直接使用相同重試規則。

## 7. Distributed Time Architecture｜分散式時間架構

Gate 遵循既有 `OAI-RUNTIME-ENG-004` 時間架構。

| Layer｜層級 | Time Responsibility｜時間責任 |
| --- | --- |
| Cloud | 跨站點時間協調、長期時間資料 |
| Hub | 本地時間協調、排程及時間品質 |
| Gate | 通訊計時、命令期限、事件順序 |
| Device | 精密控制時序及安全計時 |

### Gate Time Requirements｜Gate 時間要求

- 使用本地單調時鐘進行超時及重試計時。
- 以 Hub 或站點時間來源校正 UTC 時間。
- 事件至少包含 `event_time`、`received_time`、`boot_id`、`sequence` 與 `time_quality`。
- 時鐘同步失效時，仍維持可安全執行的本地通訊。
- 對依賴絕對時間的命令，若時間品質不符合要求，須拒絕或請求重新確認。
- 重啟後不得憑失效的 UTC 紀錄盲目重放控制命令。

## 8. Local Reliability & Recovery｜本地可靠性與恢復

### 8.1 Failure Scenarios｜故障情境

| Failure｜故障 | Expected Behavior｜預期行為 |
| --- | --- |
| Cloud Offline｜雲端離線 | Gate 與 Hub 本地通訊維持運行 |
| Hub Offline｜Hub 離線 | 維持 Mesh、必要設備通訊及安全機制 |
| Gate Restart｜Gate 重啟 | 安全啟動、重新連線、狀態協調 |
| Mesh Node Lost｜節點失聯 | 更新連線狀態、通知 Hub |
| Network Congestion｜網路擁塞 | 有界佇列、速率限制、超時記錄 |
| Power Interruption｜電源中斷 | 恢復配置、身份及安全狀態 |
| OTA Failure｜更新失敗 | 回滾至已驗證韌體 |
| Time Sync Loss｜時間失同步 | 記錄偏差並限制時間敏感命令 |

### 8.2 Adaptive Runtime Mode｜適應性運行模式

Gate 失去 Hub 連線時，進入 `DEGRADED` 狀態。

允許的功能包括 Mesh 節點維持、通訊健康管理及經安全核准的必要本地行為。

禁止在無 Hub 授權時任意建立全域自動化規則、改變空間策略或執行高風險控制。

## 9. Security Architecture｜安全架構

| ID | Requirement｜工程要求 |
| --- | --- |
| SEC-G01 | Secure Boot｜安全啟動，驗證韌體真實性 |
| SEC-G02 | Flash Encryption｜儲存加密 |
| SEC-G03 | Device Identity｜每台 Gate 唯一身份 |
| SEC-G04 | Mutual Authentication｜Hub–Gate 雙向身份驗證 |
| SEC-G05 | Secure Provisioning｜安全配網與設備綁定 |
| SEC-G06 | Access Control｜命令、配置及設備接入權限 |
| SEC-G07 | Signed OTA｜簽章韌體更新 |
| SEC-G08 | Anti-Replay｜防止命令重放 |
| SEC-G09 | Credential Rotation｜憑證更新與撤銷 |
| SEC-G10 | Audit Events｜關鍵安全事件紀錄 |

上述為目標安全能力，尚需驗證韌體、憑證管理及硬體 eFuse 實際配置。

產品出廠後，應禁止未經授權的 Debug 介面，並確保裝置註銷、重設與再配置不會洩漏前一站點的憑證。

## 10. Runtime Observability｜運行可觀測性

Gate 必須向 Hub 提供結構化運行資料，支援 ArtiOS Runtime Console 及 OceanAI Operations Agent。

### 10.1 Telemetry｜遙測欄位

| Category｜類別 | Metrics｜指標 |
| --- | --- |
| Identity｜身份 | Gate ID、硬體版本、韌體版本 |
| Runtime｜運行 | Uptime、Boot Reason、Watchdog Reset |
| System｜系統 | Free Heap、Minimum Heap、CPU 負載估算 |
| Wi-Fi｜無線網路 | RSSI、Channel、Reconnect Count |
| Mesh｜Mesh 網路 | Node Count、Topology、Hop Count |
| Device｜設備 | Connected / Lost / Rejoined |
| Command｜命令 | Received、Dispatched、Confirmed、Failed |
| Communication｜通訊 | RTT、Timeout、Queue Depth、Packet Loss |
| Time｜時間 | Offset、Source、Time Quality |
| Security｜安全 | Auth Failure、Provisioning、OTA Result |

### 10.2 Diagnostic Event Contract｜診斷事件契約

```json
{
  "schema_version": "1.0",
  "event_id": "evt-1001",
  "site_id": "school-001",
  "gate_id": "gate-001",
  "event_type": "MESH_NODE_LOST",
  "severity": "warning",
  "device_id": "sense-008",
  "timestamp": "2026-11-16T10:05:00Z",
  "boot_id": "boot-example-001",
  "time_quality": "synchronized",
  "evidence": {
    "last_seen_ms": 31000,
    "rssi_dbm": -79
  }
}
```

以上數值及識別碼為資料格式示例，不代表真實設備測量結果。

Operations Agent 將分析這些事件，以提出網路品質診斷、節點失聯原因、韌體異常趨勢與維護建議。

## 11. Engineering Performance Targets｜工程性能目標

下列指標為第一階段建議驗收門檻，必須在指定工作負載、射頻環境與裝置數量下實測。

| Metric｜測試指標 | Proposed P0 Target｜建議目標 |
| --- | --- |
| Hub–Gate RTT | P95 ≤ 100 ms，本地網路空載 |
| Gate Command Processing | P95 ≤ 50 ms，不含 Mesh 傳輸 |
| BLE Mesh Command Delivery | 依跳數分組測試，先建立實測基線 |
| Wi-Fi Reconnection | 網路恢復後 ≤ 30 秒重新建立連線 |
| Service Recovery | 可恢復的軟體故障 ≤ 60 秒 |
| Event Integrity | 已確認持久化的關鍵事件不得遺失 |
| OTA Recovery | 更新失敗後恢復至有效版本 |
| Stability | 連續 168 小時運行 |
| Concurrent Communication | 驗證 Wi-Fi + BLE 並行工作負載 |
| Memory Stability | 長時間運行無持續性記憶體洩漏 |

**設備容量不可提前承諾。** 每台 Gate 可支援的設備數量，取決於 Mesh 模式、節點角色、廣播密度、命令頻率、記憶體、無線干擾及安全參數。

建議依 10、25、50、100 個模擬或實體節點逐級進行壓力測試；這些數量僅為測試階梯，並非已核定的產品容量。

## 12. Verification Matrix｜工程驗收矩陣

| Test ID | Test｜驗收項目 | Priority |
| --- | --- | --- |
| GT-001 | ESP32-C6 安全啟動及配置初始化 | P0 |
| GT-002 | Hub–Gate MQTT 連線與身份驗證 | P0 |
| GT-003 | BLE Mesh Provisioning 與節點控制 | P0 |
| GT-004 | 設備命令轉發、回執與狀態確認 | P0 |
| GT-005 | 命令去重、超時及不可安全重試處理 | P0 |
| GT-006 | Gate 重啟及 Hub 斷線恢復 | P0 |
| GT-007 | Gate Telemetry 與事件上報 | P0 |
| GT-008 | OTA 更新、失敗回滾與安全驗證 | P0 |
| GT-009 | Wi-Fi / BLE 共存與干擾測試 | P0 |
| GT-010 | Watchdog、Brownout、持久化測試 | P0 |
| GT-011 | Wi-Fi Mesh 多跳與拓撲恢復 | P1 |
| GT-012 | 有線 Ethernet 接入驗證 | P1 |
| GT-013 | Thread / Matter 互通測試 | P2 |
| GT-014 | SX1262 / Sub-GHz 擴展 PoC | Research |
| GT-015 | EMI / EMC、溫升及供電安全測試 | Release Gate |

每項測試須保存韌體 Commit、ESP-IDF 版本、測試設備、原始日誌、測量數據及驗收結論。

## 13. Implementation Plan｜實施計畫

| Stage｜階段 | Engineering Deliverable｜工程成果 |
| --- | --- |
| P0-01 | ESP32-C6 Firmware Foundation｜韌體基礎 |
| P0-02 | Secure Hub–Gate Communication｜安全 Hub 通訊 |
| P0-03 | BLE Mesh Device Access｜BLE Mesh 設備接入 |
| P0-04 | Command & Event Contract｜命令及事件契約 |
| P0-05 | Health, Time & Recovery｜健康、時間與恢復 |
| P0-06 | Secure OTA & Verification｜安全 OTA 與驗收 |
| P1-01 | Wi-Fi Mesh Engineering Validation｜Wi-Fi Mesh 工程驗證 |
| P1-02 | Ethernet Backhaul PoC｜有線回程可行性驗證 |
| P1-03 | Runtime Console Integration｜運行控制台整合 |
| Research | Gate Pro Sub-GHz / TASK-RF-001｜Sub-GHz 研究 |

### 13.1 Proposed Repository Structure｜建議工程目錄

```text
artibird-engineering/
└── products/
    └── gate/
        ├── README.md
        ├── hardware/
        │   ├── schematics/
        │   ├── pcb/
        │   ├── bom/
        │   └── mechanical/
        ├── firmware/
        │   ├── main/
        │   ├── components/
        │   │   ├── network/
        │   │   ├── mesh/
        │   │   ├── device_access/
        │   │   ├── command/
        │   │   ├── events/
        │   │   ├── security/
        │   │   ├── time/
        │   │   └── ota/
        │   └── test/
        ├── specifications/
        └── REVIEW.md
```

這是建議結構，尚未修改任何 GitHub 儲存庫。

## 14. Codex Engineering Task｜Codex 工程開發任務

以下任務可在核對既有 Artibird 專案後，交給 Codex 執行。英文指令與中文說明保持對應。

**TASK-GATE-P0-01 — ESP32-C6 Firmware Foundation**

Codex Instruction｜英文開發指令

Inspect the existing Artibird Gate firmware and shared engineering repository. Identify the current ESP-IDF version, ESP32-C6 board configuration, network transports, MQTT topics, BLE Mesh implementation, and existing tests. Produce a compatibility report before modifying code.

**中文說明：** 檢查目前 Gate 韌體及共用工程庫，確認 ESP-IDF 版本、ESP32-C6 板卡配置、通訊方式、MQTT Topic、BLE Mesh 與既有測試。在修改程式碼前先產生相容性報告。

驗收成果包括現有系統調查、缺口分析、風險清單、建議開發步驟，以及 `REVIEW.md`。不得在未獲批准前重構現有通訊架構。

## 15. Open Engineering Decisions｜待審工程決策

**Engineering Review｜工程審閱**

**D01** — 確認 Gate ESP32-C6 實際模組型號、Flash 容量及 PCB 版本

**D02** — 核對現有 Gate 與 Hub 的 MQTT Topic / Broker 架構

**D03** — 確認 Wi-Fi Mesh、BLE Mesh 的實際應用角色及並行模式

**D04** — 選擇 Gate 有線 Ethernet 回程硬體與驅動方案

**D05** — 確認 Gate Pro / SX1262 的產品邊界與研究階段

**D06** — 核定 Gate 的供電、外殼、天線與認證要求

**D07** — 依實測數據核定 Gate 容量及性能指標

## 16. REVIEW.md｜本次規格成果

| Review Item｜項目 | Status｜狀態 |
| --- | --- |
| 產品名稱與定位 | Complete｜完成 |
| Hub–Gate 架構邊界 | Complete｜完成 |
| ESP32-C6 硬體基準 | Draft｜選型草案 |
| Wi-Fi / BLE Mesh 架構 | Draft｜待實機驗證 |
| 韌體模組與狀態機 | Complete｜設計完成 |
| MQTT 命令與事件契約 | Draft｜待相容性核對 |
| 安全、時間與恢復模型 | Draft｜待實作驗證 |
| 性能及工程驗收 | Proposed｜目標待驗證 |
| 現有程式碼整合 | Not Started｜尚未開始 |

### Engineering Conclusion｜工程結論

**Artibird Gate — Intelligent Space Gateway｜智能空間網關** 建議以 ESP32-C6、Wi-Fi Uplink、BLE Mesh 與 Hub–Gate 安全通訊作為第一階段工程基線。

其後依序完成 Wi-Fi Mesh 多跳、有線回程與進階網路能力，並將 Sub-GHz 擴展保留在 Gate Pro 的獨立研究與硬體驗證階段。

這份 `ARTIBIRD-GATE-ENG-001 v0.1` 可作為 Gate 的工程設計草案，與 Hub 系列規格共同構成 Artibird 控制器及設備接入層的技術基準。

**下一步優先項目：P0-01 — Gate Firmware & Existing System Compatibility Audit｜Gate 韌體與現有系統相容性審查。** 應先核對現有韌體、硬體及 Hub 通訊實作，再開始工程修改。
