
---

# Artibird Hub Product Specification v1.0

# Artibird Hub 產品規格書 v1.0

**Engineering + System Specification Edition**  
**工程與系統規格書版本**

**Version Date**: 2026-05-08  
**Document Type**: Product Specification  
**Product Category**: Local System Center / Runtime Coordination Hub  
**Hardware Foundation**: Raspberry Pi 5  
**System Architecture**: OceanAI Coordinated Intelligence Architecture  
**Runtime Platform**: ArtiOS

**版本日期**：2026-05-08  
**文件類型**：產品規格書  
**產品類別**：本地系統中樞 / Runtime 協同中樞  
**硬體基礎**：Raspberry Pi 5  
**系統架構**：OceanAI 協同智慧架構  
**Runtime 平台**：ArtiOS

---

# 1. Document Information

# 1. 文件資訊

## English Table

|Item|Description|
|---|---|
|Document Name|Artibird Hub Product Specification|
|Version|v1.0|
|Document Type|Engineering + System Specification|
|Product Name|Artibird Hub|
|Product Category|Local System Center / Runtime Coordination Hub|
|System Architecture|OceanAI Coordinated Intelligence Architecture|
|Runtime Platform|ArtiOS|
|Hardware Foundation|Raspberry Pi 5|
|Specification Level|Engineering + System|
|Intended Audience|Hardware, Software, Firmware, System, Testing, Certification, Product Teams|
|Release Date|2026-05-08|

## 中文表

| 項目         | 說明                     |
| ---------- | ---------------------- |
| 文件名稱       | Artibird Hub 產品規格書     |
| 文件版本       | v1.0                   |
| 文件類型       | 工程與系統規格書               |
| 產品名稱       | Artibird Hub           |
| 產品類別       | 本地系統中樞 / Runtime 協同中樞  |
| 系統架構       | OceanAI 協同智慧架構         |
| Runtime 平台 | ArtiOS                 |
| 硬體基礎       | Raspberry Pi 5         |
| 規格書層級      | 工程與系統規格                |
| 適用對象       | 硬體、軟體、韌體、系統、測試、認證、產品團隊 |
| 發布日期       | 2026-05-08             |

---

# 2. Product Overview

# 2. 產品總覽

## EN

Artibird Hub is the local system center of the Artibird ecosystem and a core runtime coordination node within the OceanAI coordinated intelligence architecture. Built on the Raspberry Pi 5 platform, it provides local service hosting, device state management, MQTT broker operation, local web services, automation coordination, and ArtiOS runtime execution.

Unlike a simple gateway or wireless bridge, Artibird Hub acts as the local operational center for coordinated environments. It receives device events from Artibird Gate and other Artibird devices, maintains local state consistency, executes local automation logic, provides local access paths for the Artibird App, and synchronizes with OceanAI Cloud when cloud connectivity is available.

Artibird Hub follows a **local-first, cloud-enhanced** architecture. Core runtime coordination, local device state, automation execution, and local control should remain available within the local environment whenever technically feasible. OceanAI Cloud extends Hub capabilities through remote access, multi-site synchronization, lifecycle management, analytics, backup, account services, and intelligent enhancement.

## ZH-TW

Artibird Hub 是 Artibird 生態中的本地系統中樞，也是 OceanAI 協同智慧架構中的核心 Runtime 協同節點。它基於 Raspberry Pi 5 平台構建，提供本地服務承載、設備狀態管理、MQTT Broker 運行、本地 Web 服務、自動化協同與 ArtiOS Runtime 執行能力。

Artibird Hub 並不是單純的網關或無線橋接器，而是協同空間環境中的本地運作中心。它接收來自 Artibird Gate 與其他 Artibird 設備的事件，維持本地狀態一致性，執行本地自動化邏輯，為 Artibird App 提供本地存取路徑，並在雲端連接可用時與 OceanAI Cloud 同步。

Artibird Hub 採用 **本地優先、雲端增強** 架構。核心 Runtime 協同、本地設備狀態、自動化執行與本地控制，應在技術可行條件下保持於本地環境中可用。OceanAI Cloud 則透過遠端存取、多站點同步、生命週期管理、分析、備份、帳號服務與智慧增強，擴展 Hub 的能力。

---

# 3. System Positioning & Role

# 3. 系統定位與角色

## English Table

|Item|Description|
|---|---|
|System Layer|Local Runtime Coordination Layer / Hub Layer|
|Primary Role|Local system center for state management, service hosting, automation execution, and runtime coordination|
|Runtime Participation|Hosts and coordinates ArtiOS runtime services|
|Relationship with Gate|Receives device events, states, and communication from Artibird Gate|
|Relationship with Hub|Acts as the primary local Hub; multiple Hub relationship requires future cluster policy|
|Relationship with Edge|Provides device context, state, and event data to OceanAI Edge|
|Relationship with Cloud|Synchronizes state, metadata, account binding, logs, remote access, and lifecycle management|
|Local-first Capability|Yes|
|Offline Operation Scope|Local state, local automation, local App access, MQTT services, and device coordination where supported|
|Remote Control Scope|Remote access through OceanAI Cloud when internet and account binding are available|
|System Dependency|Gate-assisted for distributed device access; cloud-enhanced for remote and multi-site functions|

## 中文表

|項目|說明|
|---|---|
|系統層級|本地 Runtime 協同層 / Hub 層|
|主要角色|負責狀態管理、服務承載、自動化執行與 Runtime 協同的本地系統中樞|
|Runtime 參與方式|承載並協調 ArtiOS Runtime 服務|
|與 Gate 的關係|接收來自 Artibird Gate 的設備事件、狀態與通訊|
|與 Hub 的關係|作為主要本地 Hub；多 Hub 關係需未來定義叢集策略|
|與 Edge 的關係|向 OceanAI Edge 提供設備上下文、狀態與事件數據|
|與 Cloud 的關係|同步狀態、元數據、帳號綁定、日誌、遠端存取與生命週期管理|
|本地優先能力|是|
|離線運作範圍|在支援條件下，本地狀態、本地自動化、本地 App 存取、MQTT 服務與設備協同可繼續運作|
|遠端控制範圍|當 Internet 與帳號綁定可用時，透過 OceanAI Cloud 進行遠端存取|
|系統依賴關係|分布式設備接入依賴 Gate 協助；遠端與多站點功能由雲端增強|

---

# 4. Core Design Principles

# 4. 核心設計原則

## 4.1 Local-First Runtime Architecture

## 4.1 本地優先 Runtime 架構

**EN**  
Artibird Hub prioritizes local execution, local responsiveness, and local runtime continuity. Core services such as MQTT communication, device state management, local automation, and local App access should remain available within the local network whenever possible.

**ZH-TW**  
Artibird Hub 優先保障本地執行、本地回應與本地 Runtime 持續性。MQTT 通訊、設備狀態管理、本地自動化與 App 本地存取等核心服務，應盡可能在本地網路內保持可用。

## 4.2 Coordinated System Participation

## 4.2 協同式系統參與

**EN**  
Artibird Hub acts as the local coordination center for distributed Artibird devices. It does not merely forward messages; it maintains runtime structure, state relationships, automation logic, and system behavior across connected spaces.

**ZH-TW**  
Artibird Hub 作為分布式 Artibird 設備的本地協同中心。它不只是轉發消息，而是維持跨連接空間的 Runtime 結構、狀態關係、自動化邏輯與系統行為。

## 4.3 Cloud-Enhanced Intelligence

## 4.3 雲端增強智慧

**EN**  
OceanAI Cloud extends Artibird Hub through remote access, account binding, multi-site management, analytics, backup, cloud synchronization, and intelligent enhancement. Cloud services should enhance local operation rather than replace local runtime autonomy.

**ZH-TW**  
OceanAI Cloud 透過遠端存取、帳號綁定、多站點管理、分析、備份、雲端同步與智慧增強擴展 Artibird Hub。雲端服務應增強本地運作，而不是取代本地 Runtime 自主性。

## 4.4 Distributed Operational Resilience

## 4.4 分布式運作韌性

**EN**  
Artibird Hub should maintain predictable behavior under internet outage, Gate disconnection, device offline events, power interruption, service restart, database recovery, or cloud synchronization delay.

**ZH-TW**  
Artibird Hub 應在 Internet 中斷、Gate 斷線、設備離線、電源中斷、服務重啟、資料庫恢復或雲端同步延遲時保持可預期行為。

## 4.5 Security by Design

## 4.5 安全預設設計

**EN**  
Security must be embedded into Artibird Hub architecture. User authentication, local access control, encrypted communication, secure cloud binding, credential protection, service isolation, system update security, and audit logging should be defined as engineering requirements.

**ZH-TW**  
安全性必須嵌入 Artibird Hub 架構之中。用戶身份認證、本地存取控制、加密通訊、安全雲端綁定、憑證保護、服務隔離、系統更新安全與審計日誌，皆應被定義為工程要求。

---

# 5. Hardware Specification

# 5. 硬體規格

## English Table

|Item|Specification|
|---|---|
|Main Processor / SoC|Raspberry Pi 5 platform|
|CPU Architecture|64-bit Arm Cortex-A76 class processor|
|Memory|4GB / 8GB RAM variants recommended|
|Storage|microSD / NVMe SSD optional depending on product variant|
|Wireless Module|Optional depending on enclosure and deployment; Wi-Fi / BLE may be supported by platform or external module|
|Wired Interface|Gigabit Ethernet recommended as primary backhaul|
|USB Interface|USB 3.0 / USB 2.0 depending on platform configuration|
|Power Input|USB-C PD power input recommended|
|Power Consumption|To be defined by final hardware and workload profile|
|Relay / Actuator|Not applicable by default|
|Sensor Support|External sensor input possible through Gate, USB, GPIO, or networked devices|
|I/O Interface|GPIO / USB / Ethernet / optional expansion interface|
|Antenna Type|Platform-dependent; external antenna variant may be considered if wireless functions are used|
|Enclosure Material|Flame-retardant PC / ABS / aluminum variant depending on thermal design|
|Mounting Method|Desktop / wall-mounted / cabinet-mounted / DIN rail variant|
|Operating Temperature|TBD based on enclosure and thermal validation|
|Storage Temperature|TBD|
|Protection Features|Power protection, thermal management, software watchdog, service recovery|
|Certification Direction|FCC / CE / RoHS / optional UL or ETL depending on power supply and enclosure strategy|

## 中文表

|項目|規格|
|---|---|
|主處理器 / SoC|Raspberry Pi 5 平台|
|CPU 架構|64-bit Arm Cortex-A76 等級處理器|
|記憶體|建議 4GB / 8GB RAM 版本|
|儲存|microSD / NVMe SSD，依產品版本選配|
|無線模組|依外殼與部署需求選配；Wi-Fi / BLE 可由平台或外接模組支援|
|有線介面|建議以 Gigabit Ethernet 作為主要回程|
|USB 介面|USB 3.0 / USB 2.0，依平台配置|
|供電方式|建議 USB-C PD 供電|
|功耗|依最終硬體與工作負載曲線定義|
|繼電器 / 執行器|預設不適用|
|感測器支援|可透過 Gate、USB、GPIO 或網路設備接入外部感測器|
|I/O 介面|GPIO / USB / Ethernet / 可選擴展介面|
|天線類型|依平台而定；若使用無線功能，可考慮外置天線版本|
|外殼材質|依散熱設計選擇阻燃 PC / ABS / 鋁合金版本|
|安裝方式|桌面式 / 壁掛式 / 機櫃安裝 / DIN Rail 版本|
|工作溫度|TBD，依外殼與散熱驗證確定|
|儲存溫度|TBD|
|保護功能|電源保護、熱管理、軟體 Watchdog、服務恢復|
|認證方向|FCC / CE / RoHS；依供電與外殼策略選配 UL 或 ETL|

---

# 6. Connectivity & Networking

# 6. 連接與網路能力

## EN

Artibird Hub provides the local network service foundation for the Artibird ecosystem. It should prioritize stable wired Ethernet backhaul for system reliability while supporting local App access, MQTT communication, Gate integration, Edge data exchange, and cloud synchronization.

For Hub-class products, service capacity must be validated as a system-level boundary. This includes maximum connected Gate nodes, maximum managed devices, MQTT message throughput, local App sessions, automation workload, database size, cloud synchronization load, and long-duration service stability.

## ZH-TW

Artibird Hub 為 Artibird 生態提供本地網路服務基礎。它應優先採用穩定的有線 Ethernet 回程以保障系統可靠性，同時支援 App 本地存取、MQTT 通訊、Gate 整合、Edge 數據交換與雲端同步。

對 Hub 類產品而言，服務容量必須作為系統級邊界進行驗證。這包括最大接入 Gate 節點數、最大管理設備數、MQTT 消息吞吐量、本地 App 會話數、自動化負載、資料庫規模、雲端同步負載與長時間服務穩定性。

## English Table

|Item|Description|
|---|---|
|Primary Connectivity|Gigabit Ethernet recommended|
|Secondary Connectivity|Wi-Fi optional depending on variant|
|Supported Network Mode|Local server / MQTT broker / LAN service node / cloud-sync node|
|Protocol Support|MQTT / HTTP / WebSocket / REST API / optional secure tunnel|
|Local Network Access|Supported|
|Cloud Connectivity|Supported|
|Remote Control|Supported through OceanAI Cloud when enabled|
|Offline Communication|Local services should remain available within LAN where supported|
|Gate Integration|Supports Artibird Gate as device access node|
|Edge Integration|Provides data and event access for OceanAI Edge|
|Antenna Design|Not primary if Ethernet-first; wireless variant requires RF validation|
|Max Managed Device Capacity|TBD / Validated Value|
|Max Gate Node Capacity|TBD / Validated Value|
|MQTT Throughput Capacity|TBD / Validated Value|
|Capacity Validation Report|Required|

## 中文表

|項目|說明|
|---|---|
|主要連接能力|建議 Gigabit Ethernet|
|次要連接能力|Wi-Fi 依版本選配|
|支援網路模式|本地伺服器 / MQTT Broker / LAN 服務節點 / 雲端同步節點|
|協議支援|MQTT / HTTP / WebSocket / REST API / 可選安全隧道|
|本地網路存取|支援|
|雲端連接|支援|
|遠端控制|啟用時透過 OceanAI Cloud 支援|
|離線通訊|在支援條件下，本地 LAN 服務應保持可用|
|Gate 整合|支援 Artibird Gate 作為設備接入節點|
|Edge 整合|為 OceanAI Edge 提供數據與事件存取|
|天線設計|若 Ethernet-first，無線不是主要項；無線版本需 RF 驗證|
|最大管理設備容量|TBD / 已驗證數值|
|最大 Gate 節點容量|TBD / 已驗證數值|
|MQTT 吞吐容量|TBD / 已驗證數值|
|容量驗證報告|必須|

---

# 7. Software & Firmware Architecture

# 7. 軟體與韌體架構

## English Table

|Category|Status|Description|
|---|---|---|
|Runtime Platform|ArtiOS|Local runtime and coordination architecture hosted on Hub|
|Operating System|Linux-based|Raspberry Pi OS / Ubuntu / custom Linux image depending on product strategy|
|MQTT Broker|Supported|Local MQTT broker service for device communication|
|Local Web Server|Supported|Provides local configuration, control, dashboard, or service interface|
|Local API Service|Supported|REST / WebSocket / internal API for App, Gate, Edge, and services|
|Device State Manager|Supported|Maintains device state, online status, metadata, and runtime status|
|Automation Engine|Supported|Executes local rules, scenes, schedules, and event-driven automation|
|Event Engine|Supported|Handles event ingestion, routing, prioritization, and acknowledgment|
|Local Database|Supported|Stores device metadata, state cache, logs, automation rules, and configuration|
|OTA / System Update|Supported|Updates Hub services, ArtiOS modules, and related software packages|
|Cloud Client|Supported|Handles cloud synchronization, account binding, remote access, and lifecycle services|
|Edge Integration Service|Optional / Supported|Provides data interface to OceanAI Edge|
|Security Features|Supported|Authentication, TLS, credential storage, access control, service isolation|
|Diagnostics|Supported|Logs, health status, CPU, memory, storage, network, and service state|
|Capacity Manager|Supported|Tracks managed devices, Gate nodes, MQTT load, App sessions, and service pressure|
|Backup / Restore|Recommended|Supports configuration backup and recovery|

## 中文表

|類別|狀態|說明|
|---|---|---|
|Runtime 平台|ArtiOS|承載於 Hub 的本地 Runtime 與協同架構|
|作業系統|Linux-based|Raspberry Pi OS / Ubuntu / 自定義 Linux 映像，依產品策略|
|MQTT Broker|支援|用於設備通訊的本地 MQTT Broker 服務|
|本地 Web Server|支援|提供本地配置、控制、儀表板或服務介面|
|本地 API 服務|支援|面向 App、Gate、Edge 與服務的 REST / WebSocket / 內部 API|
|設備狀態管理器|支援|維護設備狀態、在線狀態、元數據與 Runtime 狀態|
|自動化引擎|支援|執行本地規則、場景、排程與事件驅動自動化|
|事件引擎|支援|處理事件接收、路由、優先級與確認|
|本地資料庫|支援|儲存設備元數據、狀態快取、日誌、自動化規則與配置|
|OTA / 系統更新|支援|更新 Hub 服務、ArtiOS 模組與相關軟體套件|
|雲端客戶端|支援|處理雲端同步、帳號綁定、遠端存取與生命週期服務|
|Edge 整合服務|選配 / 支援|向 OceanAI Edge 提供數據介面|
|安全功能|支援|身份認證、TLS、憑證儲存、存取控制、服務隔離|
|診斷功能|支援|日誌、健康狀態、CPU、記憶體、儲存、網路與服務狀態|
|容量管理器|支援|追蹤管理設備數、Gate 節點、MQTT 負載、App 會話與服務壓力|
|備份 / 恢復|建議支援|支援配置備份與恢復|

---

# 8. Runtime Behavior & System Integration

# 8. Runtime 行為與系統整合

## EN

Artibird Hub operates as the runtime coordination center of the local Artibird environment. It receives events, maintains local device state, executes automation logic, routes commands, provides App access, coordinates with Gate nodes, and synchronizes with OceanAI Cloud.

## ZH-TW

Artibird Hub 作為本地 Artibird 環境的 Runtime 協同中心運作。它接收事件、維持本地設備狀態、執行自動化邏輯、路由指令、提供 App 存取、協調 Gate 節點，並與 OceanAI Cloud 同步。

## English Table

|Topic|Description|
|---|---|
|Device Onboarding & Pairing Flow|Hub registers devices through Gate, App, or local setup workflow|
|Event Handling & Reporting|Hub receives, prioritizes, logs, routes, and acknowledges events|
|State Management & Synchronization|Hub maintains local state and synchronizes with Cloud when available|
|Local Control Logic|Hub executes scenes, schedules, automation rules, and local commands|
|Command Execution Priority|Safety commands > local user commands > automation > cloud commands > non-critical sync|
|Integration with ArtiOS|Hub hosts ArtiOS runtime modules and coordination services|
|Integration with Gate|Hub receives device events and sends commands through Gate|
|Integration with Edge|Hub provides event, state, and context data to OceanAI Edge|
|Integration with Cloud|Hub syncs accounts, metadata, state, logs, remote access, and lifecycle data|
|App Interaction|App connects locally through LAN or remotely through OceanAI Cloud|
|Multi-Site Role|Hub can participate in cloud-managed site structure where enabled|

## 中文表

|主題|說明|
|---|---|
|設備入網與配對流程|Hub 透過 Gate、App 或本地設定流程註冊設備|
|事件處理與回報|Hub 接收、排序、記錄、路由並確認事件|
|狀態管理與同步|Hub 維護本地狀態，並在雲端可用時同步|
|本地控制邏輯|Hub 執行場景、排程、自動化規則與本地指令|
|指令執行優先級|安全指令 > 本地用戶指令 > 自動化 > 雲端指令 > 非關鍵同步|
|與 ArtiOS 整合|Hub 承載 ArtiOS Runtime 模組與協同服務|
|與 Gate 整合|Hub 透過 Gate 接收設備事件並下發指令|
|與 Edge 整合|Hub 向 OceanAI Edge 提供事件、狀態與上下文數據|
|與 Cloud 整合|Hub 同步帳號、元數據、狀態、日誌、遠端存取與生命週期數據|
|App 互動|App 可透過 LAN 本地連接，或透過 OceanAI Cloud 遠端連接|
|多站點角色|在啟用條件下，Hub 可參與雲端管理的站點結構|

---

# 9. Data & Event Flow

# 9. 數據與事件流

## EN

Artibird Hub manages bidirectional data, state, event, and command flows between devices, Gate nodes, ArtiOS, OceanAI Edge, OceanAI Cloud, and the Artibird App.

Typical flows:

1. Device → Gate → Hub → ArtiOS
    
2. App Local Command → Hub → Gate → Device
    
3. Cloud Remote Command → Hub → Gate → Device
    
4. Sensor Event → Hub Automation Engine → Device Execution
    
5. Hub State Cache → OceanAI Cloud Synchronization
    
6. Hub Context Data → OceanAI Edge → ArtiOS Decision → Device Execution
    

## ZH-TW

Artibird Hub 管理設備、Gate 節點、ArtiOS、OceanAI Edge、OceanAI Cloud 與 Artibird App 之間的雙向數據、狀態、事件與指令流。

典型流程：

1. Device → Gate → Hub → ArtiOS
    
2. App 本地指令 → Hub → Gate → Device
    
3. Cloud 遠端指令 → Hub → Gate → Device
    
4. Sensor Event → Hub 自動化引擎 → Device 執行
    
5. Hub 狀態快取 → OceanAI Cloud 同步
    
6. Hub 上下文數據 → OceanAI Edge → ArtiOS 決策 → Device 執行
    

## English Table

|Flow Type|Direction|Description|
|---|---|---|
|Device Event|Device → Gate → Hub|Sensor, switch, status, trigger, or fault event|
|Runtime Event|Hub → ArtiOS|Runtime participation, state update, automation, or execution event|
|Local Command|App / ArtiOS → Hub → Gate / Device|Local control or configuration command|
|Remote Command|Cloud / App → Hub → Gate / Device|Remote control command|
|Cloud Sync|Hub → Cloud|State, metadata, configuration, logs, and lifecycle data|
|Edge Intelligence|Hub → Edge|Device context, event stream, state data, and environmental information|
|Execution Command|ArtiOS / Edge / App → Hub → Device|Final action command routed through Hub|
|Health Report|Hub → Cloud / App|CPU, memory, storage, network, service, device, and Gate status|
|Backup Flow|Hub → Cloud / Local Storage|Configuration, automation rules, and system metadata backup|

## 中文表

|流類型|方向|說明|
|---|---|---|
|設備事件|Device → Gate → Hub|感測、開關、狀態、觸發或故障事件|
|Runtime 事件|Hub → ArtiOS|Runtime 參與、狀態更新、自動化或執行事件|
|本地指令|App / ArtiOS → Hub → Gate / Device|本地控制或配置指令|
|遠端指令|Cloud / App → Hub → Gate / Device|遠端控制指令|
|雲端同步|Hub → Cloud|狀態、元數據、配置、日誌與生命週期數據|
|Edge 智慧|Hub → Edge|設備上下文、事件流、狀態數據與環境資訊|
|執行指令|ArtiOS / Edge / App → Hub → Device|透過 Hub 路由的最終動作指令|
|健康回報|Hub → Cloud / App|CPU、記憶體、儲存、網路、服務、設備與 Gate 狀態|
|備份流|Hub → Cloud / 本地儲存|配置、自動化規則與系統元數據備份|

---

# 10. Safety, Reliability & Failure Behavior

# 10. 安全、可靠性與故障行為

## EN

Artibird Hub must maintain predictable runtime behavior under abnormal operating conditions. Since Hub is the local coordination center, service recovery, state consistency, database reliability, network resilience, and security isolation are critical.

## ZH-TW

Artibird Hub 必須在異常運作條件下保持可預期的 Runtime 行為。由於 Hub 是本地協同中心，服務恢復、狀態一致性、資料庫可靠性、網路韌性與安全隔離非常重要。

## English Table

|Item|Description|
|---|---|
|Software Watchdog|Monitors core services and restarts failed services|
|System Watchdog|Monitors OS-level health and recovery behavior|
|Brownout / Power Instability Handling|Depends on power supply and optional UPS design|
|Fail-Safe Behavior|Maintains safe device state and avoids uncontrolled command execution|
|Service Recovery|Restarts MQTT, Web, API, database, cloud client, and automation services where possible|
|Database Recovery|Supports integrity check, backup, restore, and corruption handling|
|Connection Overload Protection|Limits Gate nodes, App sessions, MQTT clients, or automation workload based on validated capacity|
|Power Failure Recovery|Restores configuration, service state, and device metadata after reboot|
|OTA / System Update Recovery|Supports rollback or safe recovery strategy|
|Security Mechanisms|Authentication, authorization, TLS, credential protection, service isolation|
|Debug Protection|Production system should restrict shell, SSH, debug ports, and admin access|
|Failure Mode Behavior|Defines expected response for network loss, cloud loss, Gate loss, database error, service crash, and overload|

## 中文表

|項目|說明|
|---|---|
|軟體 Watchdog|監控核心服務並重啟失效服務|
|系統 Watchdog|監控 OS 層健康與恢復行為|
|低壓 / 電源不穩處理|取決於供電與可選 UPS 設計|
|故障安全行為|維持安全設備狀態，避免失控指令執行|
|服務恢復|在可行條件下重啟 MQTT、Web、API、資料庫、雲端客戶端與自動化服務|
|資料庫恢復|支援完整性檢查、備份、恢復與損壞處理|
|連接過載保護|依據已驗證容量限制 Gate 節點、App 會話、MQTT 客戶端或自動化負載|
|斷電恢復|重啟後恢復配置、服務狀態與設備元數據|
|OTA / 系統更新恢復|支援回滾或安全恢復策略|
|安全機制|身份認證、授權、TLS、憑證保護與服務隔離|
|Debug 保護|量產系統應限制 Shell、SSH、Debug Port 與管理員存取|
|故障模式行為|定義網路丟失、雲端丟失、Gate 丟失、資料庫錯誤、服務崩潰與過載時的預期反應|

---

# 11. Installation, Deployment & Maintenance

# 11. 安裝、部署與維護

## English Table

|Item|Description|
|---|---|
|Installation Method|Desktop / wall-mounted / cabinet-mounted / DIN rail variant|
|Deployment Scenario|Home / classroom / campus / office / smart building / agriculture / infrastructure|
|Installer Type|End user / technician / system integrator|
|Power Requirement|USB-C PD power supply recommended|
|Network Requirement|Ethernet recommended; Wi-Fi optional|
|Mounting Requirement|Enclosure, bracket, screws, cabinet tray, or DIN rail adapter depending on variant|
|LED Function|Power, local network, cloud status, service health, fault, pairing / setup|
|Button Function|Reset, pairing / setup, local mode, factory reset|
|Maintenance Method|Artibird App, local Web console, OceanAI Cloud console, service tool|
|Firmware / Software Update Method|OTA, local update package, managed cloud update, service tool|
|Replacement Procedure|Hub replacement, account rebinding, configuration restore, device registry migration|
|Backup Requirement|Local and / or cloud backup recommended|
|Service Access|Controlled admin access required|

## 中文表

|項目|說明|
|---|---|
|安裝方式|桌面式 / 壁掛式 / 機櫃安裝 / DIN Rail 版本|
|部署場景|住宅 / 教室 / 校園 / 辦公室 / 智慧建築 / 農業 / 基礎設施|
|安裝人員類型|終端用戶 / 技術員 / 系統整合商|
|供電要求|建議 USB-C PD 電源供應|
|網路要求|建議 Ethernet；Wi-Fi 選配|
|固定要求|依版本採用外殼、支架、螺絲、機櫃托盤或 DIN Rail 轉接件|
|LED 功能|電源、本地網路、雲端狀態、服務健康、故障、配對 / 設定|
|按鍵功能|重置、配對 / 設定、本地模式、恢復出廠設定|
|維護方式|Artibird App、本地 Web Console、OceanAI Cloud Console、維護工具|
|韌體 / 軟體更新方式|OTA、本地更新包、雲端託管更新、維護工具|
|更換流程|Hub 替換、帳號重新綁定、配置恢復、設備註冊表遷移|
|備份要求|建議支援本地與 / 或雲端備份|
|服務存取|必須具備受控管理員存取|

---

# 12. Testing, Validation & Certification

# 12. 測試、驗證與認證

## EN

Artibird Hub must be validated as both a hardware product and a local runtime service platform. Testing must cover device communication, local service stability, MQTT reliability, database behavior, App access, cloud synchronization, system recovery, security, and long-duration deployment.

## ZH-TW

Artibird Hub 必須同時作為硬體產品與本地 Runtime 服務平台進行驗證。測試必須涵蓋設備通訊、本地服務穩定性、MQTT 可靠性、資料庫行為、App 存取、雲端同步、系統恢復、安全與長時間部署。

## English Table

|Test Category|Objective|
|---|---|
|Functional Test|Verify Hub core services and product functions|
|Network Test|Verify Ethernet, optional Wi-Fi, reconnect, and LAN access|
|MQTT Test|Verify broker stability, client sessions, QoS behavior, reconnect, and message routing|
|Local Web Test|Verify local console, API, authentication, and UI responsiveness|
|App Access Test|Verify local App and remote App access paths|
|Automation Test|Verify local rule, scene, schedule, and event-driven execution|
|Database Test|Verify storage, state cache, backup, restore, and corruption recovery|
|Cloud Sync Test|Verify state, metadata, account, log, and lifecycle synchronization|
|Edge Integration Test|Verify event and state data availability for OceanAI Edge|
|Stress Test|Verify long-duration and high-load operation|
|Concurrent Capacity Test|Validate maximum Gate nodes, managed devices, App sessions, MQTT clients, and event throughput|
|Event Burst Test|Verify short-time high-frequency event handling|
|Reconnection Storm Test|Verify behavior after mass device or Gate reconnection|
|OTA / System Update Test|Verify update, rollback, and recovery behavior|
|Security Test|Verify authentication, encryption, credential protection, role access, and admin control|
|Reliability Test|Verify stability under power, network, service, and storage variation|
|Certification Test|Verify compliance for FCC, CE, RoHS, and other applicable requirements|
|Claim Validation|Verify public product claims with formal test evidence|

## 中文表

|測試類別|目標|
|---|---|
|功能測試|驗證 Hub 核心服務與產品功能|
|網路測試|驗證 Ethernet、可選 Wi-Fi、重連與 LAN 存取|
|MQTT 測試|驗證 Broker 穩定性、Client 會話、QoS 行為、重連與消息路由|
|本地 Web 測試|驗證本地 Console、API、身份認證與 UI 回應|
|App 存取測試|驗證 App 本地與遠端存取路徑|
|自動化測試|驗證本地規則、場景、排程與事件驅動執行|
|資料庫測試|驗證儲存、狀態快取、備份、恢復與損壞恢復|
|雲端同步測試|驗證狀態、元數據、帳號、日誌與生命週期同步|
|Edge 整合測試|驗證 OceanAI Edge 所需事件與狀態數據可用性|
|壓力測試|驗證長時間與高負載運作|
|併發容量測試|驗證最大 Gate 節點、管理設備數、App 會話、MQTT Client 與事件吞吐|
|事件突發測試|驗證短時間高頻事件處理|
|重連風暴測試|驗證大量設備或 Gate 重連後的行為|
|OTA / 系統更新測試|驗證更新、回滾與恢復行為|
|安全測試|驗證身份認證、加密、憑證保護、角色存取與管理控制|
|可靠性測試|驗證電源、網路、服務與儲存變化下的穩定性|
|認證測試|驗證 FCC、CE、RoHS 與其他適用要求|
|宣稱驗證|以正式測試證據驗證公開產品宣稱|

## Certification Targets

## 認證目標

|Certification|Applicability|
|---|---|
|FCC|Required for U.S. market if wireless functions are included; may apply by final product configuration|
|CE|Required for EU market|
|UL / ETL|Depends on final power supply, enclosure, and safety scope|
|RoHS|Environmental compliance|
|REACH|EU chemical compliance|
|Cybersecurity Labeling|Optional depending on market and retail channel|
|Wi-Fi / Bluetooth Certification|Required only if formally claiming relevant branding or ecosystem compliance|

|認證|適用範圍|
|---|---|
|FCC|若包含無線功能，美國市場需要；依最終產品配置適用|
|CE|歐盟市場需要|
|UL / ETL|依最終供電、外殼與安全範圍而定|
|RoHS|環保合規|
|REACH|歐盟化學品合規|
|網路安全標籤|依市場與零售渠道選配|
|Wi-Fi / Bluetooth 認證|僅在正式宣稱相關品牌或生態合規時需要|

---

# 13. Product Variants

# 13. 產品版本

## English Table

|Variant / SKU|Hardware Difference|Software Difference|Market / Region|Certification Difference|Notes|
|---|---|---|---|---|---|
|Artibird Hub Standard|Raspberry Pi 5, Ethernet-first, standard enclosure|Standard ArtiOS runtime services|Residential / small office|FCC / CE / RoHS depending on region|General deployment|
|Artibird Hub Pro|Higher storage, improved enclosure, optional SSD|Enhanced logging, backup, larger capacity profile|Commercial / campus / infrastructure|Additional validation required|For larger deployments|
|Artibird Hub DIN|DIN rail enclosure and industrial installation format|Same as Standard or Pro|Electrical cabinet / infrastructure|Depends on enclosure and power design|For professional installation|
|Artibird Hub Campus|Optimized for classroom and multi-room deployments|Multi-room management and reporting profile|Education / campus|Regional compliance required|Requires capacity validation|
|Artibird Hub Edge-Ready|Enhanced interface for OceanAI Edge integration|Edge data service enabled|AI-enabled deployments|Depends on final system|For Edge-assisted intelligence|

## 中文表

|版本 / SKU|硬體差異|軟體差異|市場 / 地區|認證差異|備註|
|---|---|---|---|---|---|
|Artibird Hub Standard|Raspberry Pi 5、Ethernet-first、標準外殼|標準 ArtiOS Runtime 服務|住宅 / 小型辦公|依地區 FCC / CE / RoHS|通用部署|
|Artibird Hub Pro|更高儲存配置、改良外殼、可選 SSD|增強日誌、備份與更大容量配置|商業 / 校園 / 基礎設施|需額外驗證|用於較大部署|
|Artibird Hub DIN|DIN Rail 外殼與工業安裝形式|與 Standard 或 Pro 相同|電氣櫃 / 基礎設施|依外殼與供電設計|專業安裝版本|
|Artibird Hub Campus|針對教室與多房間部署優化|多房間管理與報告配置|教育 / 校園|需地區合規|需容量驗證|
|Artibird Hub Edge-Ready|增強 OceanAI Edge 整合介面|啟用 Edge 數據服務|AI 增強部署|依最終系統|用於 Edge 輔助智慧|

---

# 14. Commercial Positioning

# 14. 商業定位

## EN

Artibird Hub is positioned as the local system center for coordinated intelligent environments. It provides the local runtime foundation that allows Artibird devices to operate as a coordinated system rather than isolated smart devices.

## ZH-TW

Artibird Hub 被定位為協同智慧空間的本地系統中樞。它提供本地 Runtime 基礎，使 Artibird 設備能夠作為協同系統運作，而不是孤立的智慧設備。

## English Table

|Item|Description|
|---|---|
|Target Market|Residential, smart classroom, campus, office, smart building, infrastructure|
|Key Selling Points|Local-first system center, MQTT broker, ArtiOS runtime, local automation, cloud-enhanced remote access|
|Use Cases|Whole-space coordination, classroom automation, energy coordination, local control, multi-device synchronization|
|Compatibility Statement|Designed for Artibird devices, ArtiOS, Artibird Gate, OceanAI Edge, and OceanAI Cloud|
|Local-first Statement|Core local services remain available within LAN where supported|
|Cloud-enhanced Statement|Cloud adds remote access, synchronization, lifecycle management, analytics, and multi-site capabilities|
|Remote Control Statement|Remote access requires OceanAI Cloud connectivity, user account binding, and network availability|
|Capacity Claim|Must reference Hub Capacity Validation Report|
|Prohibited Claims|Unlimited devices, unlimited automation, theoretical Raspberry Pi performance, uncertified security claims|

## 中文表

|項目|說明|
|---|---|
|目標市場|住宅、智慧教室、校園、辦公室、智慧建築、基礎設施|
|核心賣點|本地優先系統中樞、MQTT Broker、ArtiOS Runtime、本地自動化、雲端增強遠端存取|
|使用場景|全空間協同、教室自動化、能源協同、本地控制、多設備同步|
|相容性聲明|面向 Artibird 設備、ArtiOS、Artibird Gate、OceanAI Edge 與 OceanAI Cloud 設計|
|本地優先聲明|在支援條件下，核心本地服務可於 LAN 內保持可用|
|雲端增強聲明|雲端增加遠端存取、同步、生命週期管理、分析與多站點能力|
|遠端控制聲明|遠端存取需要 OceanAI Cloud 連接、用戶帳號綁定與網路可用|
|容量宣稱|必須引用 Hub 容量驗證報告|
|禁止宣稱|無限制設備、無限制自動化、理論 Raspberry Pi 性能、未認證安全宣稱|

---

# 15. Engineering Claim Policy

# 15. 工程宣稱政策

## Mandatory Statement

## 強制聲明

**EN**  
All Artibird Hub performance claims, especially managed device capacity, Gate node capacity, MQTT throughput, App session capacity, automation capacity, database size, remote access performance, reliability, and compatibility, must be based on validated test reports under defined conditions. Theoretical Raspberry Pi specifications shall not be used as product claims.

**ZH-TW**  
所有 Artibird Hub 性能宣稱，尤其是管理設備容量、Gate 節點容量、MQTT 吞吐量、App 會話容量、自動化容量、資料庫規模、遠端存取性能、可靠性與相容性，必須基於明確條件下的已驗證測試報告。Raspberry Pi 理論規格不得作為產品宣稱。

## English Table — Claim Policy

|Claim Type|Requirement|
|---|---|
|Managed Device Capacity|Must reference Hub Capacity Validation Report|
|Gate Node Capacity|Must reference multi-Gate validation report|
|MQTT Throughput|Must reference MQTT load test report|
|App Session Capacity|Must reference local and remote session validation|
|Automation Capacity|Must reference rule and event workload test|
|Storage / Database Capacity|Must reference storage profile and database validation|
|Local-first Capability|Must define exact offline functions|
|Cloud Functionality|Must distinguish cloud-enhanced functions from local-first functions|
|Security|Must reference implemented mechanisms and test evidence|
|Reliability|Must reference test duration and test conditions|
|Edge Integration|Must define tested data interfaces and limitations|

## 中文表 — 宣稱政策

|宣稱類型|要求|
|---|---|
|管理設備容量|必須引用 Hub 容量驗證報告|
|Gate 節點容量|必須引用多 Gate 驗證報告|
|MQTT 吞吐量|必須引用 MQTT 負載測試報告|
|App 會話容量|必須引用本地與遠端會話驗證|
|自動化容量|必須引用規則與事件負載測試|
|儲存 / 資料庫容量|必須引用儲存配置與資料庫驗證|
|本地優先能力|必須定義具體離線功能|
|雲端功能|必須區分雲端增強功能與本地優先功能|
|安全性|必須引用已實作機制與測試證據|
|可靠性|必須引用測試時長與測試條件|
|Edge 整合|必須定義已測試數據介面與限制|

---

# 16. Revision History

# 16. 版本記錄

## English Table

|Version|Date|Author|Description|
|---|---|---|---|
|v1.0|2026-05-08|OceanAI / Artibird Product Team|Initial Artibird Hub Product Specification based on Artibird Product Specification Template v1.1|

## 中文表

|版本|日期|作者|說明|
|---|---|---|---|
|v1.0|2026-05-08|OceanAI / Artibird Product Team|基於 Artibird 產品規格書標準模板 v1.1 建立的 Artibird Hub 初始產品規格書|

---

# Appendix A — Terminology

# 附錄 A｜術語對照表

|English Term|中文術語|Definition|
|---|---|---|
|Artibird Hub|Artibird Hub|Local system center for coordination, state, and service operation|
|ArtiOS|ArtiOS|Local runtime and coordination architecture hosted by Hub|
|MQTT Broker|MQTT Broker|Message broker service for device and system communication|
|Local Web Server|本地 Web Server|Local service providing configuration, control, or dashboard access|
|Device State Manager|設備狀態管理器|Service that maintains device status, metadata, and runtime state|
|Automation Engine|自動化引擎|Service that executes scenes, schedules, and event-driven rules|
|Local-first|本地優先|Core functions are designed to operate locally whenever possible|
|Cloud-enhanced|雲端增強|Cloud services extend local operation with remote, sync, analytics, or AI capabilities|
|OceanAI Edge|OceanAI Edge|Edge AI inference and local intelligence layer|
|Hub Capacity Validation Report|Hub 容量驗證報告|Formal report validating Hub capacity under defined runtime conditions|

---

# Appendix B — Risk Register

# 附錄 B｜風險登記表

## English Table

|Risk ID|Risk Description|Impact|Mitigation|
|---|---|---|---|
|R-HUB-001|Overclaiming Hub capacity based on Raspberry Pi theoretical performance|High|Require Hub Capacity Validation Report before public claims|
|R-HUB-002|Cloud dependency weakens local-first positioning|High|Clearly separate local-first and cloud-enhanced functions|
|R-HUB-003|MQTT overload under high event frequency|High|Define MQTT throughput boundary and overload policy|
|R-HUB-004|Database corruption after power failure|High|Implement backup, journaling, integrity checks, and recovery|
|R-HUB-005|Service crash affects local automation|High|Implement service watchdog and recovery policy|
|R-HUB-006|Storage wear from excessive logs or state writes|Medium / High|Define write strategy, log rotation, and storage selection|
|R-HUB-007|Unauthorized local admin access|High|Enforce authentication, role control, and secure admin interface|
|R-HUB-008|Inconsistent state between local and cloud|Medium / High|Define sync conflict resolution policy|
|R-HUB-009|Edge integration increases workload unexpectedly|Medium|Validate Edge data service load|
|R-HUB-010|Product language exceeds tested capability|High|Apply Engineering Claim Policy|

## 中文表

|風險 ID|風險描述|影響|緩解措施|
|---|---|---|---|
|R-HUB-001|基於 Raspberry Pi 理論性能過度宣稱 Hub 容量|高|公開宣稱前必須取得 Hub 容量驗證報告|
|R-HUB-002|雲端依賴削弱本地優先定位|高|清楚區分本地優先與雲端增強功能|
|R-HUB-003|高頻事件下 MQTT 過載|高|定義 MQTT 吞吐邊界與過載策略|
|R-HUB-004|斷電後資料庫損壞|高|實作備份、日誌式寫入、完整性檢查與恢復|
|R-HUB-005|服務崩潰影響本地自動化|高|實作服務 Watchdog 與恢復策略|
|R-HUB-006|過多日誌或狀態寫入造成儲存磨損|中 / 高|定義寫入策略、日誌輪替與儲存選型|
|R-HUB-007|未授權本地管理員存取|高|強制身份認證、角色控制與安全管理介面|
|R-HUB-008|本地與雲端狀態不一致|中 / 高|定義同步衝突解決策略|
|R-HUB-009|Edge 整合導致工作負載意外增加|中|驗證 Edge 數據服務負載|
|R-HUB-010|產品語言超出已測試能力|高|套用工程宣稱政策|

---

# Appendix C — Validation Checklist

# 附錄 C｜驗證清單

## English Table

|Checklist Item|Required|Status|Evidence|
|---|---|---|---|
|Hardware specification completed|Yes|TBD|Hardware BOM / enclosure design|
|OS image defined|Yes|TBD|OS image documentation|
|ArtiOS service architecture completed|Yes|TBD|ArtiOS design document|
|MQTT broker validated|Yes|TBD|MQTT test report|
|Local Web service validated|Yes|TBD|Web service test report|
|Local App access validated|Yes|TBD|App LAN test report|
|Cloud synchronization validated|Yes|TBD|Cloud integration test|
|Remote control validated|If applicable|TBD|App / cloud test|
|Hub capacity validated|Yes|TBD|Hub Capacity Validation Report|
|Database reliability validated|Yes|TBD|Database test report|
|Backup / restore validated|Recommended|TBD|Backup test report|
|OTA / system update validated|Yes|TBD|Update test report|
|Security mechanisms validated|Yes|TBD|Security test report|
|Failure behavior validated|Yes|TBD|Reliability test report|
|Certification path defined|Yes|TBD|Certification plan|
|Commercial claims reviewed|Yes|TBD|Claim review record|

## 中文表

|檢查項目|是否必要|狀態|證據|
|---|---|---|---|
|硬體規格已完成|是|TBD|硬體 BOM / 外殼設計|
|OS 映像已定義|是|TBD|OS 映像文件|
|ArtiOS 服務架構已完成|是|TBD|ArtiOS 設計文件|
|MQTT Broker 已驗證|是|TBD|MQTT 測試報告|
|本地 Web 服務已驗證|是|TBD|Web 服務測試報告|
|App 本地存取已驗證|是|TBD|App LAN 測試報告|
|雲端同步已驗證|是|TBD|雲端整合測試|
|遠端控制已驗證|如適用|TBD|App / 雲端測試|
|Hub 容量已驗證|是|TBD|Hub 容量驗證報告|
|資料庫可靠性已驗證|是|TBD|資料庫測試報告|
|備份 / 恢復已驗證|建議|TBD|備份測試報告|
|OTA / 系統更新已驗證|是|TBD|更新測試報告|
|安全機制已驗證|是|TBD|安全測試報告|
|故障行為已驗證|是|TBD|可靠性測試報告|
|認證路線已定義|是|TBD|認證計畫|
|商業宣稱已審查|是|TBD|宣稱審查記錄|

---

# Document End

# 文件結束

## EN

This Artibird Hub Product Specification v1.0 defines the Hub as the local system center and runtime coordination foundation of the Artibird ecosystem. It provides a controlled engineering and system-level reference for hardware configuration, software architecture, ArtiOS runtime hosting, local-first operation, cloud-enhanced coordination, testing, validation, and commercial claim boundaries.

## ZH-TW

本《Artibird Hub 產品規格書 v1.0》將 Hub 定義為 Artibird 生態的本地系統中樞與 Runtime 協同基礎。它為硬體配置、軟體架構、ArtiOS Runtime 承載、本地優先運作、雲端增強協同、測試驗證與商業宣稱邊界，提供受控的工程與系統級參考。

---

## 話題延伸

## Topic Extension

下一步建議生成：

**Artibird Hub Capacity Validation Plan v1.0**  
**Artibird Hub 容量驗證計畫 v1.0**

這份文件可以專門驗證：

**最多管理多少 Gate、多少設備、多少 MQTT Client、多少 App 會話、多少自動化規則、多少事件吞吐，以及長時間穩定運作能力。**