
---

# Artibird Gate Product Specification v1.1-Candidate

# Artibird Gate 產品規格書 v1.1-Candidate

**Engineering + System Specification Edition**  
**工程與系統規格書版本**

**Version Date**: 2026-11-06  
**Document Type**: Product Specification  
**Product Category**: Localized Network Gateway / Device Access Node  
**Hardware Foundation**: ESP32-C6  
**System Architecture**: OceanAI Coordinated Intelligence Architecture  
**Runtime Platform**: ArtiOS

**版本日期**：2026-11-06  
**文件類型**：產品規格書  
**產品類別**：本地化網路網關 / 設備接入節點  
**硬體基礎**：ESP32-C6  
**系統架構**：OceanAI 協同智慧架構  
**Runtime 平台**：ArtiOS

---

# 1. Document Information

# 1. 文件資訊

## English Table

|Item|Description|
|---|---|
|Document Name|Artibird Gate Product Specification|
|Version|v1.1-Candidate|
|Document Type|Engineering + System Specification|
|Product Name|Artibird Gate|
|Product Category|Localized Network Gateway / Device Access Node|
|System Architecture|OceanAI Coordinated Intelligence Architecture|
|Runtime Platform|ArtiOS|
|Hardware Foundation|ESP32-C6|
|Specification Level|Engineering + System|
|Intended Audience|Hardware, Firmware, Software, System, Testing, Certification, Product Teams|
|Revision Date|2026-11-06|
|Document Status|Revised candidate; implementation and validation unverified|

## 中文表

|項目|說明|
|---|---|
|文件名稱|Artibird Gate 產品規格書|
|文件版本|v1.1-Candidate|
|文件類型|工程與系統規格書|
|產品名稱|Artibird Gate|
|產品類別|本地化網路網關 / 設備接入節點|
|系統架構|OceanAI 協同智慧架構|
|Runtime 平台|ArtiOS|
|硬體基礎|ESP32-C6|
|規格書層級|工程與系統規格|
|適用對象|硬體、韌體、軟體、系統、測試、認證、產品團隊|
|修訂日期|2026-11-06|
|文件狀態|修訂候選稿；實作與驗證仍未確認|

---

**Status interpretation｜狀態解讀**  
This specification states design requirements. Existing support language describes intended scope, not verified implementation. Each actual model must record required, implemented, and validated status separately with evidence. Unverified fields are not commercial claims. Appendix D is normative for the operating profile and verification record introduced by this revision.

本規格記錄設計要求。既有支援描述表示預期範圍，不作已驗證實作證明。每個實際型號須分別記錄要求、已實作與已驗證狀態及證據。未確認欄位不作商業宣稱。本次新增的運行配置與驗證記錄以附錄 D 為規範依據。

---

# 2. Product Overview

# 2. 產品總覽

## EN

Artibird Gate is a localized network gateway and device access node designed for the Artibird product ecosystem and the OceanAI coordinated intelligence architecture. Built on the ESP32-C6 platform, it provides local wireless connectivity, device onboarding, protocol participation, event forwarding, state reporting, and runtime communication between distributed Artibird devices and upper system layers.

Within the Artibird ecosystem, Gate forms the device-side network entry layer. It enables switches, sensors, panels, execution nodes, and other field devices to participate in coordinated local operation through defined communication paths. It connects device-side events and states to Artibird Hub, ArtiOS, OceanAI Edge, OceanAI Cloud, and the Artibird App according to the deployment architecture.

Artibird Gate follows a **local-first, cloud-enhanced** operating model. Local connectivity, onboarding, event forwarding, and Hub-assisted coordination should remain available within the local environment whenever technically feasible. Cloud connectivity extends the system through remote control, synchronization, lifecycle management, analytics, and multi-site coordination. In this role, Artibird Gate provides the practical network foundation through which physical devices enter the OceanAI runtime system.

## ZH-TW

Artibird Gate 是一款面向 Artibird 產品生態與 OceanAI 協同智慧架構設計的本地化網路網關與設備接入節點。它基於 ESP32-C6 平台構建，提供本地無線連接、設備入網、協議參與、事件轉發、狀態回報，以及分布式 Artibird 設備與上層系統之間的 Runtime 通訊能力。

在 Artibird 生態中，Gate 構成設備側網路入口層。它使開關、感測器、面板、執行節點與其他現場設備，能夠透過明確的通訊路徑參與本地協同運作。它依據部署架構，將設備側事件與狀態接入 Artibird Hub、ArtiOS、OceanAI Edge、OceanAI Cloud 與 Artibird App。

Artibird Gate 採用 **本地優先、雲端增強** 的運作模式。本地連接、設備入網、事件轉發與 Hub 輔助協同，應在技術可行條件下保持於本地環境中可用。雲端連接則透過遠端控制、同步、生命週期管理、分析與多站點協同擴展系統能力。在此角色中，Artibird Gate 提供了實體設備進入 OceanAI Runtime 系統的實際網路基礎。

---

# 3. System Positioning & Role

# 3. 系統定位與角色

## English Table

|Item|Description|
|---|---|
|System Layer|Device Network Layer / Gateway Layer|
|Primary Role|Localized network gateway, device access node, and protocol coordination node|
|Runtime Participation|Forwards device events, routes commands, reports state, and participates in ArtiOS runtime communication|
|Relationship with Gate|Can operate as a single Gate or as one of multiple Gate nodes within a larger deployment|
|Relationship with Hub|Connects distributed devices to Artibird Hub for state management, automation, and coordination|
|Relationship with Edge|Provides device-side data and event context to OceanAI Edge through Hub or defined data paths|
|Relationship with Cloud|Supports remote access, synchronization, account binding, and lifecycle management through OceanAI Cloud|
|Local-first Capability|Required for the named local profile; not yet validated|
|Offline Operation Scope|Local device discovery, local event forwarding, local command routing, and Hub-assisted coordination where supported|
|Remote Control Scope|Remote device access through OceanAI Cloud when network, account binding, and security policy are available|
|System Dependency|Named Hub-managed or Cloud-managed profile; Edge optional; authority and failure behavior in Appendix D|

## 中文表

|項目|說明|
|---|---|
|系統層級|設備網路層 / 網關層|
|主要角色|本地化網路網關、設備接入節點與協議協同節點|
|Runtime 參與方式|轉發設備事件、路由控制指令、回報狀態，並參與 ArtiOS Runtime 通訊|
|與 Gate 的關係|可作為單一 Gate 運作，也可作為大型部署中的多個 Gate 節點之一|
|與 Hub 的關係|將分布式設備接入 Artibird Hub，用於狀態管理、自動化與協同|
|與 Edge 的關係|透過 Hub 或已定義數據路徑，向 OceanAI Edge 提供設備側數據與事件上下文|
|與 Cloud 的關係|透過 OceanAI Cloud 支援遠端存取、同步、帳號綁定與生命週期管理|
|本地優先能力|具名本地配置要求；尚未驗證|
|離線運作範圍|在支援條件下，本地設備發現、本地事件轉發、本地指令路由與 Hub 輔助協同可運作|
|遠端控制範圍|當網路、帳號綁定與安全策略可用時，透過 OceanAI Cloud 進行遠端設備存取|
|系統依賴關係|具名 Hub 管理或 Cloud 管理配置；Edge 選配；權威及故障行為見附錄 D|

---

# 4. Core Design Principles

# 4. 核心設計原則

## 4.1 Local-First Runtime Architecture

## 4.1 本地優先 Runtime 架構

**EN**  
Artibird Gate prioritizes local connectivity, local event forwarding, and local communication continuity. When external internet connectivity is unavailable, Gate should continue supporting local device communication where the deployment architecture, Hub, and ArtiOS runtime permit.

**ZH-TW**  
Artibird Gate 優先保障本地連接、本地事件轉發與本地通訊持續性。當外部 Internet 連接不可用時，在部署架構、Hub 與 ArtiOS Runtime 支援的條件下，Gate 應繼續支援本地設備通訊。

## 4.2 Coordinated System Participation

## 4.2 協同式系統參與

**EN**  
Artibird Gate participates as a coordinated runtime entity within the Artibird and OceanAI system structure. Its role is to connect distributed field devices into a shared operational environment where events, states, and commands can be coordinated through defined local and cloud-assisted pathways.

**ZH-TW**  
Artibird Gate 作為 Artibird 與 OceanAI 系統結構中的協同 Runtime 實體參與運作。它的角色是將分布式現場設備接入共享運作環境，使事件、狀態與指令能夠透過明確的本地與雲端輔助路徑進行協同。

## 4.3 Cloud-Enhanced Intelligence

## 4.3 雲端增強智慧

**EN**  
Cloud services extend Artibird Gate with remote access, synchronization, account binding, device lifecycle management, analytics, and multi-site support. Cloud functions should enhance local operation rather than replace local runtime availability.

**ZH-TW**  
雲端服務透過遠端存取、同步、帳號綁定、設備生命週期管理、分析與多站點支援來擴展 Artibird Gate。雲端功能應增強本地運作，而不是取代本地 Runtime 可用性。

## 4.4 Distributed Operational Resilience

## 4.4 分布式運作韌性

**EN**  
Artibird Gate should maintain predictable behavior under network instability, device disconnection, Hub disconnection, cloud unavailability, firmware recovery, reconnection storms, and runtime load variation.

**ZH-TW**  
Artibird Gate 應在網路不穩定、設備斷線、Hub 斷線、雲端不可用、韌體恢復、重連風暴與 Runtime 負載變化時保持可預期行為。

## 4.5 Security by Design

## 4.5 安全預設設計

**EN**  
As a device access node, Artibird Gate is treated as a security-sensitive network entry point. Authentication, encrypted communication, credential protection, secure pairing, secure OTA, debug interface protection, and access control must be defined as engineering requirements.

**ZH-TW**  
作為設備接入節點，Artibird Gate 被視為安全敏感的網路入口。身份認證、加密通訊、憑證保護、安全配對、安全 OTA、Debug 介面保護與存取控制，皆必須被定義為工程要求。

---

# 5. Hardware Specification

# 5. 硬體規格

## English Table

|Item|Specification|
|---|---|
|Main Processor / SoC|ESP32-C6|
|CPU Architecture|Single-core 32-bit RISC-V, up to 160 MHz|
|Memory|Exact C6 module, Flash capacity / partition layout, available internal RAM, peak heap / stack budget required per model; external memory only if explicitly supported and verified|
|Wireless Module|Wi-Fi 6, Bluetooth Low Energy 5.x, IEEE 802.15.4|
|Wired Interface|Ethernet only with specified external MAC / controller, driver, SPI / other link, pins, throughput, and tested power design; PoE requires its own PD / power design|
|Power Input|USB-C DC input recommended; dedicated power variant optional|
|Power Consumption|TBD by firmware workload, RF mode, and deployment profile|
|Relay / Actuator|Not applicable by default|
|Sensor Support|Not primary; optional onboard or external sensor support by variant|
|I/O Interface|GPIO / UART / SPI / I2C as required by design|
|Antenna Type|PCB antenna / external antenna variant|
|Enclosure Material|Flame-retardant PC / ABS recommended; RF window required if metal enclosure is used|
|Mounting Method|Desktop / wall-mounted / embedded / cabinet variant|
|Operating Temperature|TBD based on enclosure and thermal validation|
|Storage Temperature|TBD|
|Protection Features|ESD protection, power input protection, watchdog, secure boot support, enclosure protection by variant|
|Certification Direction|FCC / CE / RoHS; optional UL / ETL depending on power supply and enclosure strategy|

## 中文表

|項目|規格|
|---|---|
|主處理器 / SoC|ESP32-C6|
|CPU 架構|單核心 32-bit RISC-V，最高 160 MHz|
|記憶體|每型號須列具體 C6 模組、Flash 容量／分區、可用內部 RAM、heap／stack 峰值預算；外部記憶體須確認明確支援並驗證|
|無線模組|Wi-Fi 6、Bluetooth Low Energy 5.x、IEEE 802.15.4|
|有線介面|Ethernet 須列外接 MAC／controller、driver、SPI／其他鏈路、接腳、吞吐及已測供電；PoE 另須 PD／供電設計|
|供電方式|建議 USB-C DC 輸入；可選專用供電版本|
|功耗|依韌體負載、RF 模式與部署曲線定義|
|繼電器 / 執行器|預設不適用|
|感測器支援|非主要功能；依版本可選配板載或外接感測器支援|
|I/O 介面|依設計需求配置 GPIO / UART / SPI / I2C|
|天線類型|PCB 天線 / 外置天線版本|
|外殼材質|建議阻燃 PC / ABS；若使用金屬外殼，必須設計 RF 窗口|
|安裝方式|桌面式 / 壁掛式 / 嵌入式 / 機櫃版本|
|工作溫度|TBD，依外殼與散熱驗證確定|
|儲存溫度|TBD|
|保護功能|ESD 保護、電源輸入保護、Watchdog、Secure Boot 支援、依版本提供外殼防護|
|認證方向|FCC / CE / RoHS；依供電與外殼策略選配 UL / ETL|

---

**Model completion requirement｜型號補齊要求**  
Record the selected module and antenna part, PCB revision / pin map, input voltage and current, measured typical / peak power, dimensions, mounting, tested temperature / humidity range, and schematic / BOM references. Unavailable values remain explicitly unverified with an owner and closure criterion; do not invent production values.

記錄選定模組與天線料號、PCB 版本／接腳圖、輸入電壓及電流、實測典型／峰值功耗、尺寸、固定方式、已測溫濕度範圍及原理圖／BOM 引用。未取得數值須明示未確認並列負責人與完成條件，不填造量產數值。

---

# 6. Connectivity & Networking

# 6. 連接與網路能力

Device-side protocol and upstream link are separate configuration fields. ESP32-C6 remains the hardware baseline. Hardware radio support does not establish an implemented protocol stack, certified feature, or stable simultaneous workload. Wi-Fi, BLE, and 802.15.4 share one 2.4 GHz RF path; the exact role combination must be validated.

設備側協議與上行鏈路為分開的配置欄位。ESP32-C6 保留為硬體基準。晶片射頻支援不代表協議棧已實作、功能已認證或同時負載穩定。Wi-Fi、BLE 與 802.15.4 共用一條 2.4 GHz 射頻路徑，須驗證具體角色組合。

|Field|Requirement / current evidence status|
|---|---|
|Device-side protocols|Name BLE GATT / BLE Mesh / Wi-Fi / selected 802.15.4 stack by actual model; implementation unverified|
|BLE Mesh roles|Record Provisioner, Proxy, Friend, Relay, client / server models, and LPN support separately; do not infer roles from BLE support|
|Upstream link|Wi-Fi STA or implemented Ethernet; name Runtime endpoint, authentication, and network requirements|
|Wi-Fi Mesh|Only if implemented; identify ESP-Mesh-Lite / ESP-WIFI-MESH or chosen stack, root, parent selection, depth, channel, recovery, and load|
|Bridge behavior|Specify IP routing / NAT / packet bridging / application translation explicitly|
|Cloud-managed profile|Named direct Cloud Runtime path where implemented; no automatic failover from Hub implied|
|Hub-managed profile|Gate communicates with configured Hub / ArtiOS; scenes and automation remain in that Runtime|
|802.15.4 extension|Specify Thread / Zigbee stack and role; high-load Wi-Fi gateway evaluation must include RF separation / host-RCP options|
|Protocol / application transport|Specify MQTT / HTTP / WebSocket role, version, endpoint, security, and schema per profile|
|Capacity|Separate managed / active nodes, GATT links, friendships, provisioning concurrency, events / commands, MQTT sessions, and resource budget; no validated values assigned|
|Coexistence|Test selected radio roles during onboarding, normal load, reconnect, diagnostics, and OTA|

|欄位|要求／目前證據狀態|
|---|---|
|設備側協議|依實際型號列 BLE GATT／BLE Mesh／Wi-Fi／選定 802.15.4 協議棧；實作未確認|
|BLE Mesh 角色|分列 Provisioner、Proxy、Friend、Relay、client／server models 及 LPN 支援；不由 BLE 支援推導角色|
|上行鏈路|Wi-Fi STA 或已實作 Ethernet；列 Runtime endpoint、身份驗證及網路要求|
|Wi-Fi Mesh|僅限已實作；列 ESP-Mesh-Lite／ESP-WIFI-MESH 或選定協議棧、root、父節點選擇、層數、頻道、恢復及負載|
|Bridge 行為|明列 IP routing／NAT／封包橋接／應用層轉換|
|Cloud 管理配置|已實作條件下的具名直連 Cloud Runtime 路徑；不暗示 Hub 自動切換|
|Hub 管理配置|Gate 與已配置 Hub / ArtiOS 通訊；場景及自動化留在該 Runtime|
|802.15.4 擴展|列 Thread／Zigbee 協議棧及角色；高負載 Wi-Fi 網關評估包含射頻分離／host-RCP 方案|
|協議／應用傳輸|每配置列 MQTT／HTTP／WebSocket 角色、版本、endpoint、安全及 schema|
|容量|分開管理／活躍節點、GATT、Friend 關係、入網併發、事件／命令、MQTT 會話及資源預算；尚未指派已測數值|
|共存|在入網、正常負載、重連、診斷及 OTA 時測試選定射頻角色|

See Appendix D for the required model record, capacity metrics, failure behavior, and acceptance evidence.

型號記錄、容量指標、故障行為及驗收證據要求見附錄 D。

---

# 7. Software & Firmware Architecture

# 7. 軟體與韌體架構

## English Table

|Category|Status|Description|
|---|---|---|
|Runtime Platform|ArtiOS-compatible|Participates in ArtiOS runtime communication through Hub or defined interface|
|Firmware Framework|ESP-IDF, version pinned per model|Record release, commit, dependency lock, sdkconfig and model schema; validate before SDK upgrade|
|OTA Update|Required / implementation unverified|Secure OTA update with rollback or recovery strategy recommended|
|Local Rule Engine|Optional|Gate may execute limited local routing or fallback logic; primary automation belongs to Hub / ArtiOS|
|State Management|Required / implementation unverified|Maintains device connection state, pairing state, network state, and runtime status|
|Event Engine|Required / implementation unverified|Handles device event ingestion, filtering, forwarding, and acknowledgment|
|Connection Capacity Manager|Required / implementation unverified|Tracks active devices, sessions, memory pressure, and capacity boundary|
|Security Features|Required / implementation unverified|Secure Boot, Flash Encryption, credential storage, encrypted communication where implemented|
|Diagnostics|Required / implementation unverified|Signal status, connection quality, firmware version, error logs, device online status|
|Cloud Client|Optional / architecture-dependent|May communicate through Hub or directly with OceanAI Cloud depending on product strategy|
|MQTT Client|Required / implementation unverified|Communicates with Artibird Hub / ArtiOS MQTT services|
|Local Web Service|Optional|Local configuration, diagnostics, or setup interface|
|Pairing Manager|Required / implementation unverified|Handles device discovery, onboarding, binding, and reset workflows|
|Protocol Manager|Required / implementation unverified|Manages Wi-Fi, BLE, 802.15.4, and optional protocol extensions|

## 中文表

|類別|狀態|說明|
|---|---|---|
|Runtime 平台|相容 ArtiOS|透過 Hub 或已定義介面參與 ArtiOS Runtime 通訊|
|韌體框架|ESP-IDF，每型號固定版本|記錄 release、commit、依賴鎖定、sdkconfig 及 model schema；SDK 升級前驗證|
|OTA 更新|要求／實作未確認|建議具備安全 OTA 更新與回滾或恢復策略|
|本地規則引擎|選配|Gate 可執行有限的本地路由或回退邏輯；主要自動化屬於 Hub / ArtiOS|
|狀態管理|要求／實作未確認|維護設備連接狀態、配對狀態、網路狀態與 Runtime 狀態|
|事件引擎|要求／實作未確認|處理設備事件接收、過濾、轉發與確認|
|連接容量管理器|要求／實作未確認|追蹤活躍設備、會話、記憶體壓力與容量邊界|
|安全功能|要求／實作未確認|Secure Boot、Flash Encryption、憑證儲存、加密通訊，依實作|
|診斷功能|要求／實作未確認|信號狀態、連接品質、韌體版本、錯誤日誌、設備在線狀態|
|雲端客戶端|選配 / 依架構|可依產品策略透過 Hub 或直接與 OceanAI Cloud 通訊|
|MQTT Client|要求／實作未確認|與 Artibird Hub / ArtiOS MQTT 服務通訊|
|本地 Web 服務|選配|本地配置、診斷或設定介面|
|配對管理器|要求／實作未確認|處理設備發現、入網、綁定與重置流程|
|協議管理器|要求／實作未確認|管理 Wi-Fi、BLE、802.15.4 與可選協議擴展|

---

# 8. Runtime Behavior & System Integration

# 8. Runtime 行為與系統整合

## EN

Artibird Gate operates as the device-side access and communication node within the local Artibird environment. It discovers devices, supports onboarding, forwards events, routes commands, reports device status, coordinates with Hub services, and supports cloud-enhanced remote operation through the broader OceanAI architecture.

## ZH-TW

Artibird Gate 作為本地 Artibird 環境中的設備側接入與通訊節點運作。它發現設備、支援入網、轉發事件、路由指令、回報設備狀態、與 Hub 服務協同，並透過更大的 OceanAI 架構支援雲端增強的遠端運作。

## English Table

|Topic|Description|
|---|---|
|Device Onboarding & Pairing Flow|Gate discovers devices and supports App- or Hub-assisted onboarding|
|Event Handling & Reporting|Gate receives device events and forwards them to Hub / ArtiOS / Cloud path|
|State Management & Synchronization|Gate maintains local connection state and reports device state to Hub|
|Local Control Logic|Gate routes local commands and may execute limited fallback behavior|
|Command Execution Priority|Enforce device safety constraints; Runtime policy evaluates actor, intent, permission, priority and expiry independently of local / cloud transport|
|Integration with ArtiOS|Gate participates in runtime communication and device-side event routing|
|Integration with Hub|Hub is the preferred local coordination center for Gate-managed devices|
|Integration with Edge|Edge receives device context through Hub or defined data interface|
|Integration with Cloud|Cloud provides remote access, account binding, lifecycle management, and synchronization|
|App Interaction|App can use local setup paths and cloud-assisted remote control where enabled|
|Multi-Gate Deployment|Multiple Gate nodes may be used in larger deployments; capacity, ownership, duplicate reception, key / address allocation and replacement behavior must be validated; roaming is protocol-specific|

## 中文表

|主題|說明|
|---|---|
|設備入網與配對流程|Gate 發現設備，並支援 App 或 Hub 輔助的入網流程|
|事件處理與回報|Gate 接收設備事件，並轉發至 Hub / ArtiOS / Cloud 路徑|
|狀態管理與同步|Gate 維護本地連接狀態，並向 Hub 回報設備狀態|
|本地控制邏輯|Gate 路由本地指令，並可執行有限的回退行為|
|指令執行優先級|落實設備安全限制；Runtime 策略按操作者、意圖、權限、優先級及期限判斷，與本地／雲端傳輸路徑分開|
|與 ArtiOS 整合|Gate 參與 Runtime 通訊與設備側事件路由|
|與 Hub 整合|Hub 是 Gate 管理設備的首選本地協同中心|
|與 Edge 整合|Edge 透過 Hub 或已定義數據介面接收設備上下文|
|與 Cloud 整合|Cloud 提供遠端存取、帳號綁定、生命週期管理與同步|
|App 互動|App 可使用本地設定路徑，以及在啟用條件下的雲端輔助遠端控制|
|多 Gate 部署|大型部署可使用多個 Gate 節點；須驗證容量、權威歸屬、重複接收、密鑰／位址分配及替換行為；漫遊依具體協議處理|

---

# 9. Data & Event Flow

# 9. 數據與事件流

## EN

Artibird Gate manages bidirectional communication between field devices and the higher-level OceanAI / Artibird system components.

Typical flows:

1. Device → Gate → Hub → ArtiOS
    
2. App Local Command → Hub → Gate → Device
    
3. Cloud Remote Command → Hub / Gate → Device
    
4. Device Event → Gate → Hub Automation Engine → Device Execution
    
5. Gate Status → Hub → OceanAI Cloud
    
6. Device Context → Gate → Hub → OceanAI Edge
    

## ZH-TW

Artibird Gate 管理現場設備與上層 OceanAI / Artibird 系統元件之間的雙向通訊。

典型流程：

1. Device → Gate → Hub → ArtiOS
    
2. App 本地指令 → Hub → Gate → Device
    
3. Cloud 遠端指令 → Hub / Gate → Device
    
4. Device Event → Gate → Hub 自動化引擎 → Device 執行
    
5. Gate 狀態 → Hub → OceanAI Cloud
    
6. Device 上下文 → Gate → Hub → OceanAI Edge
    

## English Table

|Flow Type|Direction|Description|
|---|---|---|
|Device Event|Device → Gate|Sensor, switch, status, trigger, or fault event|
|Runtime Event|Gate → Hub / ArtiOS|Runtime participation, state update, event forwarding, or device status|
|Local Command|App / Hub / ArtiOS → Gate → Device|Local control or configuration command|
|Remote Command|Cloud / App → Hub / Gate → Device|Remote control command|
|Cloud Sync|Gate / Hub → Cloud|State, metadata, configuration, logs, lifecycle data|
|Edge Intelligence|Gate / Hub → Edge|Device context, event stream, and environmental information|
|Execution Command|ArtiOS / Edge / App → Hub / Gate → Device|Final action command|
|Health Report|Gate → Hub / Cloud|Connectivity, signal, firmware, error, device, and protocol status|
|Capacity Report|Gate → Hub / Cloud|Active devices, session pressure, rejected pairing events, reconnection load|

## 中文表

|流類型|方向|說明|
|---|---|---|
|設備事件|Device → Gate|感測、開關、狀態、觸發或故障事件|
|Runtime 事件|Gate → Hub / ArtiOS|Runtime 參與、狀態更新、事件轉發或設備狀態|
|本地指令|App / Hub / ArtiOS → Gate → Device|本地控制或配置指令|
|遠端指令|Cloud / App → Hub / Gate → Device|遠端控制指令|
|雲端同步|Gate / Hub → Cloud|狀態、元數據、配置、日誌與生命週期數據|
|Edge 智慧|Gate / Hub → Edge|設備上下文、事件流與環境資訊|
|執行指令|ArtiOS / Edge / App → Hub / Gate → Device|最終動作指令|
|健康回報|Gate → Hub / Cloud|連接、信號、韌體、錯誤、設備與協議狀態|
|容量回報|Gate → Hub / Cloud|活躍設備、會話壓力、被拒絕配對事件與重連負載|

---

**Command and result contract｜指令與結果契約**  
The profile must specify topic / endpoint, schema version, delivery QoS, payload limits, command_id, correlation_id, device_id, expires_at, boot_id / sequence, result and reason_code. Reject expired or unauthorized commands; suppress duplicates according to bounded retention. Report received, forwarded, device acknowledged, failed, expired, or unknown separately. Transport acknowledgment does not prove physical execution. Preserve the source and age of device state.

配置須列 topic／endpoint、schema 版本、投遞 QoS、payload 限制、command_id、correlation_id、device_id、expires_at、boot_id／sequence、result 及 reason_code。拒絕過期或未授權命令；依有界保存策略抑制重複。分別回報已接收、已轉發、設備已確認、失敗、過期或未知。傳輸確認不證明實體動作完成。保留設備狀態來源及新鮮度。

---

# 10. Safety, Reliability & Failure Behavior

# 10. 安全、可靠性與故障行為

## EN

Artibird Gate must maintain predictable behavior under abnormal operating conditions. Since Gate is a device access point, communication recovery, capacity control, secure onboarding, and safe command routing are critical.

## ZH-TW

Artibird Gate 必須在異常運作條件下保持可預期行為。由於 Gate 是設備接入點，通訊恢復、容量控制、安全入網與安全指令路由非常重要。

## English Table

|Item|Description|
|---|---|
|Watchdog|Detects firmware lockup and triggers recovery|
|Brownout Detection|Detects voltage instability and protects runtime behavior|
|Fail-Safe Behavior|Avoids uncontrolled command routing during fault conditions|
|Connection Overload Protection|Bound sessions, pairing and queues; define rejection / coalescing / retention by message class and report overflow|
|Reconnection Recovery|Supports staged reconnection and backoff after outage|
|Power Failure Recovery|Restores network configuration, device registry, and runtime state after reboot|
|OTA Failure Recovery|Supports rollback or safe firmware recovery strategy|
|Hub Disconnection Behavior|Report Hub loss; only configured and validated bindings / fallback may execute; no implicit Cloud takeover|
|Cloud Disconnection Behavior|Maintains local communication where supported and resynchronizes after recovery|
|Security Mechanisms|Authentication, encryption, secure pairing, credential protection, secure OTA|
|Debug Protection|Production system should disable or protect debug interfaces|
|Failure Mode Behavior|Defines response for device loss, Hub loss, cloud loss, network change, firmware crash, and overload|

## 中文表

|項目|說明|
|---|---|
|Watchdog|偵測韌體鎖死並觸發恢復|
|低壓檢測|偵測電壓不穩並保護 Runtime 行為|
|故障安全行為|在故障條件下避免失控指令路由|
|連接過載保護|限制會話、配對及佇列；按訊息類別列拒絕／合併／保存策略並回報溢出|
|重連恢復|在斷線後支援分階段重連與退避策略|
|斷電恢復|重啟後恢復網路配置、設備註冊表與 Runtime 狀態|
|OTA 失敗恢復|支援回滾或安全韌體恢復策略|
|Hub 斷線行為|回報 Hub 中斷；僅執行已配置且已驗證的綁定／回退；不隱含 Cloud 接管|
|雲端斷線行為|在支援條件下維持本地通訊，並於恢復後重新同步|
|安全機制|身份認證、加密、安全配對、憑證保護、安全 OTA|
|Debug 保護|量產系統應停用或保護 Debug 介面|
|故障模式行為|定義設備丟失、Hub 丟失、雲端丟失、網路變更、韌體崩潰與過載時的反應|

---

# 11. Installation, Deployment & Maintenance

# 11. 安裝、部署與維護

## English Table

|Item|Description|
|---|---|
|Installation Method|Desktop / wall-mounted / embedded / cabinet-mounted variant|
|Deployment Scenario|Home / classroom / campus / office / smart building / agriculture / infrastructure|
|Installer Type|End user / technician / system integrator|
|Power Requirement|USB-C DC power recommended; variant-specific power design optional|
|Network Requirement|Wi-Fi primary; Ethernet optional by variant|
|Mounting Requirement|Enclosure, wall bracket, screws, adhesive, cabinet mounting, or embedded structure|
|LED Function|Power, pairing, Wi-Fi, device network, Hub status, cloud status, fault|
|Button Function|Reset, pairing, local mode, factory reset|
|Maintenance Method|Artibird App, local setup interface, Hub console, cloud console, service tool|
|Firmware Update Method|OTA / local update / service tool|
|Replacement Procedure|Gate replacement, account rebinding, device registry migration, re-pairing workflow|
|Service Access|Controlled admin or service access required|

## 中文表

|項目|說明|
|---|---|
|安裝方式|桌面式 / 壁掛式 / 嵌入式 / 機櫃安裝版本|
|部署場景|住宅 / 教室 / 校園 / 辦公室 / 智慧建築 / 農業 / 基礎設施|
|安裝人員類型|終端用戶 / 技術員 / 系統整合商|
|供電要求|建議 USB-C DC 供電；可依版本設計專用供電|
|網路要求|Wi-Fi 為主；Ethernet 依版本選配|
|固定要求|外殼、壁掛支架、螺絲、背膠、機櫃安裝或嵌入式結構|
|LED 功能|電源、配對、Wi-Fi、設備網路、Hub 狀態、雲端狀態、故障|
|按鍵功能|重置、配對、本地模式、恢復出廠設定|
|維護方式|Artibird App、本地設定介面、Hub Console、Cloud Console、維護工具|
|韌體更新方式|OTA / 本地更新 / 維護工具|
|更換流程|Gate 替換、帳號重新綁定、設備註冊表遷移、重新配對流程|
|服務存取|必須具備受控管理員或維護存取|

---

**Replacement and local service｜替換與本地維護**  
Document which registration data, network / application keys, addresses, sequence / IV state and credentials can be securely restored and which require re-provisioning. Revoke the old Gate, prevent conflicting ownership, and test restored state before enabling commands. Specify local diagnostic access, installer authorization, credential expiry / renewal and factory-reset data deletion.

說明註冊資料、網路／應用密鑰、位址、sequence／IV 狀態及憑證中哪些可安全恢復，哪些須重新入網。撤銷舊 Gate，避免權威衝突，恢復狀態測試通過後再啟用指令。列本地診斷存取、安裝者授權、憑證到期／更新及出廠重置資料刪除行為。

---

# 12. Testing, Validation & Certification

# 12. 測試、驗證與認證

## EN

Artibird Gate must be validated as a wireless gateway, device onboarding node, protocol coordination node, and runtime communication participant. Testing must cover RF performance, device pairing, local communication, Hub integration, cloud synchronization, security, capacity, and long-duration reliability.

## ZH-TW

Artibird Gate 必須作為無線網關、設備入網節點、協議協同節點與 Runtime 通訊參與者進行驗證。測試必須涵蓋 RF 性能、設備配對、本地通訊、Hub 整合、雲端同步、安全、容量與長時間可靠性。

## English Table

|Test Category|Objective|
|---|---|
|Functional Test|Verify Gate core functions and device access behavior|
|RF Test|Verify Wi-Fi, BLE, 802.15.4, antenna design, coverage, and stability|
|Network Test|Verify connectivity, reconnection, local routing, and protocol behavior|
|Pairing Test|Verify onboarding success rate, timeout, retry, reset, and recovery|
|Local Control Test|Verify local communication and Hub-assisted operation|
|Remote Control Test|Verify cloud-assisted remote operation where enabled|
|MQTT Test|Verify message delivery, reconnect, QoS behavior, and routing|
|Hub Integration Test|Verify communication with Artibird Hub and ArtiOS services|
|Edge Integration Test|Verify device context availability for OceanAI Edge|
|Cloud Sync Test|Verify state, metadata, account, log, and lifecycle synchronization|
|Stress Test|Verify long-duration and high-load operation|
|Concurrent Capacity Test|Validate maximum device connections, sessions, message rate, and event load|
|Event Burst Test|Verify short-time multi-device event handling|
|Reconnection Storm Test|Verify behavior after mass device reconnection|
|OTA Test|Verify firmware update, rollback, and recovery behavior|
|Security Test|Verify authentication, encryption, secure pairing, credential protection, and debug protection|
|Reliability Test|Verify stability under power, network, RF, and runtime variation|
|Certification Test|Verify compliance for FCC, CE, RoHS, and other applicable requirements|
|Claim Validation|Verify public product claims with formal test evidence|

## 中文表

|測試類別|目標|
|---|---|
|功能測試|驗證 Gate 核心功能與設備接入行為|
|RF 測試|驗證 Wi-Fi、BLE、802.15.4、天線設計、覆蓋範圍與穩定性|
|網路測試|驗證連接、重連、本地路由與協議行為|
|配對測試|驗證入網成功率、超時、重試、重置與恢復|
|本地控制測試|驗證本地通訊與 Hub 輔助運作|
|遠端控制測試|驗證啟用條件下的雲端輔助遠端運作|
|MQTT 測試|驗證消息投遞、重連、QoS 行為與路由|
|Hub 整合測試|驗證與 Artibird Hub 及 ArtiOS 服務的通訊|
|Edge 整合測試|驗證 OceanAI Edge 所需設備上下文可用性|
|雲端同步測試|驗證狀態、元數據、帳號、日誌與生命週期同步|
|壓力測試|驗證長時間與高負載運作|
|併發容量測試|驗證最大設備連接、會話、消息頻率與事件負載|
|事件突發測試|驗證短時間多設備事件處理|
|重連風暴測試|驗證大量設備重連後的行為|
|OTA 測試|驗證韌體更新、回滾與恢復行為|
|安全測試|驗證身份認證、加密、安全配對、憑證保護與 Debug 保護|
|可靠性測試|驗證電源、網路、RF 與 Runtime 變化下的穩定性|
|認證測試|驗證 FCC、CE、RoHS 與其他適用要求|
|宣稱驗證|以正式測試證據驗證公開產品宣稱|

## Certification Targets

## 認證目標

|Certification|Applicability|
|---|---|
|FCC|Required for U.S. wireless market|
|CE|Required for EU market|
|RoHS|Environmental compliance|
|REACH|Recommended for EU market|
|UL / ETL|Depends on final power supply, enclosure, and electrical safety scope|
|Bluetooth Qualification|Required if using Bluetooth branding|
|Wi-Fi Certification|Optional depending on commercial strategy|
|Matter / Thread Certification|Required before official Matter / Thread claim|
|Cybersecurity Labeling|Optional depending on market and retail channel|

|認證|適用範圍|
|---|---|
|FCC|美國無線市場需要|
|CE|歐盟市場需要|
|RoHS|環保合規|
|REACH|歐盟市場建議|
|UL / ETL|依最終供電、外殼與電氣安全範圍而定|
|Bluetooth 資格認證|若使用 Bluetooth 品牌則需要|
|Wi-Fi 認證|依商業策略選配|
|Matter / Thread 認證|正式宣稱 Matter / Thread 前必須完成|
|網路安全標籤|依市場與零售渠道選配|

---

**Acceptance requirement｜驗收要求**  
The categories above are test scope, not passing results. Each test needs the model / board / firmware profile, workload, procedure, sample count / duration, preapproved threshold, observed result, raw log reference and disposition. Capacity results must include P95 / P99 latency and loss / timeout rates. Do not transfer node counts from SDK examples into product claims. Appendix D lists the mandatory scenarios.

以上類別為測試範圍，不作通過結果。每項測試須具型號／板卡／韌體配置、負載、步驟、樣本數／時長、預先確認門檻、觀測結果、原始 log 引用及處置。容量結果須含 P95／P99 延遲及丟失／超時率。不得將 SDK 示例節點數轉成產品宣稱。必測情境見附錄 D。

---

# 13. Product Variants

# 13. 產品版本

|Configuration / direction|Required distinction|Status|
|---|---|---|
|Gate Wi-Fi baseline|Selected C6 module, device protocols / roles, Wi-Fi STA upstream, power, enclosure and firmware|First model record required; implementation / validation unverified|
|Gate Ethernet variant|External Ethernet controller and link, driver, pin / resource allocation, power and EMC / RF validation|Planning; separate hardware evidence required|
|Gate Pro|Documented measurable difference from baseline; antenna alone does not prove capacity or range|Reserved positioning; no capacity claim assigned|
|Embedded / Outdoor|Host integration or enclosure / environmental differences with validation|Planning; not supported by baseline automatically|
|Campus deployment profile|Multi-Gate placement, identity / ownership, keys, network and maintenance configuration|Deployment profile; separate SKU only if hardware or commercial delivery differs|
|Thread / Zigbee extension|Selected stack / role, coexistence and host-RCP / RF architecture where applicable|Research / planning; not a released baseline capability|

|配置／方向|必要區別|狀態|
|---|---|---|
|Gate Wi-Fi 基準|選定 C6 模組、設備協議／角色、Wi-Fi STA 上行、供電、外殼及韌體|須完成首個型號記錄；實作／驗證未確認|
|Gate Ethernet 版本|外接 Ethernet controller 及鏈路、driver、接腳／資源、供電及 EMC／RF 驗證|規劃；須獨立硬體證據|
|Gate Pro|相對基準可量測差異；天線本身不證明容量或距離|預留定位；未指派容量宣稱|
|Embedded／Outdoor|主機整合或外殼／環境差異及驗證|規劃；不由基準版自動支援|
|Campus 部署配置|多 Gate 放置、身份／權威、密鑰、網路及維護配置|部署配置；硬體或商業交付有差別才另建 SKU|
|Thread／Zigbee 擴展|選定協議棧／角色、共存及適用的 host-RCP／射頻架構|研究／規劃；非基準已發布能力|

---

# 14. Commercial Positioning

# 14. 商業定位

## EN

Artibird Gate is positioned as the local network gateway and device access node for coordinated intelligent environments. It enables Artibird devices to join the OceanAI architecture through local-first connectivity and cloud-enhanced coordination.

## ZH-TW

Artibird Gate 被定位為協同智慧空間的本地網路網關與設備接入節點。它透過本地優先連接與雲端增強協同，使 Artibird 設備接入 OceanAI 架構。

## English Table

|Item|Description|
|---|---|
|Target Market|Residential, smart classroom, campus, office, smart building, agriculture, infrastructure|
|Key Selling Points|ESP32-C6 platform, local-first gateway, device onboarding, protocol coordination, Hub integration, cloud-enhanced remote access|
|Use Cases|Whole-home device access, classroom device network, campus deployment, smart agriculture sensor access, local automation communication|
|Compatibility Statement|Designed for Artibird devices, Artibird Hub, ArtiOS, OceanAI Edge, OceanAI Cloud, and Artibird App|
|Local-first Statement|Core local communication remains available within supported local deployment conditions|
|Cloud-enhanced Statement|Cloud adds remote access, synchronization, lifecycle management, analytics, and multi-site support|
|Remote Control Statement|Remote control requires OceanAI Cloud connectivity, account binding, and network availability|
|Capacity Claim|Must reference Gate Connection Capacity Validation Report|
|Prohibited Claims|Unlimited devices, theoretical ESP32-C6 limits, uncertified Matter / Thread support, unsupported mesh claims|

## 中文表

|項目|說明|
|---|---|
|目標市場|住宅、智慧教室、校園、辦公室、智慧建築、農業、基礎設施|
|核心賣點|ESP32-C6 平台、本地優先網關、設備入網、協議協同、Hub 整合、雲端增強遠端存取|
|使用場景|全屋設備接入、教室設備網路、校園部署、智慧農業感測接入、本地自動化通訊|
|相容性聲明|面向 Artibird 設備、Artibird Hub、ArtiOS、OceanAI Edge、OceanAI Cloud 與 Artibird App 設計|
|本地優先聲明|在受支援的本地部署條件下，核心本地通訊可保持可用|
|雲端增強聲明|雲端增加遠端存取、同步、生命週期管理、分析與多站點支援|
|遠端控制聲明|遠端控制需要 OceanAI Cloud 連接、帳號綁定與網路可用|
|容量宣稱|必須引用 Gate 連接容量驗證報告|
|禁止宣稱|無限制設備、理論 ESP32-C6 極限、未認證 Matter / Thread 支援、未支援 Mesh 宣稱|

---

# 15. Engineering Claim Policy

# 15. 工程宣稱政策

## Mandatory Statement

## 強制聲明

**EN**  
All Artibird Gate performance claims, especially concurrent connection capacity, wireless range, protocol support, mesh capability, remote control performance, device compatibility, reliability, and security, must be based on validated test reports under defined conditions. Theoretical ESP32-C6 specifications shall not be used as product claims.

**ZH-TW**  
所有 Artibird Gate 性能宣稱，尤其是併發連接容量、無線距離、協議支援、Mesh 能力、遠端控制性能、設備相容性、可靠性與安全性，必須基於明確條件下的已驗證測試報告。ESP32-C6 理論規格不得作為產品宣稱。

## English Table — Claim Policy

|Claim Type|Requirement|
|---|---|
|Concurrent Connection Capacity|Must reference Gate Connection Capacity Validation Report|
|Wireless Range|Must reference RF test condition, antenna design, enclosure, and environment|
|Protocol Support|Must define implemented and validated protocol scope|
|Matter / Thread Support|Must not be claimed before certification and ecosystem validation|
|BLE Mesh / Wi-Fi Mesh|Must not be claimed unless implemented and validated|
|Ethernet Support|Must be claimed only for hardware variants with Ethernet design|
|Local-first Capability|Must define exact offline functions and dependency conditions|
|Cloud Functionality|Must distinguish cloud-enhanced functions from local-first functions|
|Remote Control|Must define account, cloud, and network dependency|
|Security|Must reference implemented mechanisms and test evidence|
|Reliability|Must reference test duration and test conditions|

## 中文表 — 宣稱政策

|宣稱類型|要求|
|---|---|
|併發連接容量|必須引用 Gate 連接容量驗證報告|
|無線距離|必須引用 RF 測試條件、天線設計、外殼與環境|
|協議支援|必須定義已實作與已驗證的協議範圍|
|Matter / Thread 支援|未完成認證與生態驗證前不得宣稱|
|BLE Mesh / Wi-Fi Mesh|除非已實作並驗證，否則不得宣稱|
|Ethernet 支援|僅能對具備 Ethernet 設計的硬體版本宣稱|
|本地優先能力|必須定義具體離線功能與依賴條件|
|雲端功能|必須區分雲端增強功能與本地優先功能|
|遠端控制|必須定義帳號、雲端與網路依賴|
|安全性|必須引用已實作機制與測試證據|
|可靠性|必須引用測試時長與測試條件|

---

# 16. Revision History

# 16. 版本記錄

## English Table

|Version|Date|Author|Description|
|---|---|---|---|
|v1.0|2026-05-08|OceanAI / Artibird Product Team|Initial Artibird Gate Product Specification based on Artibird Product Specification Template v1.1|
|v1.1-Candidate|2026-11-06|OceanAI / Artibird specification revision|Clarify protocol / upstream profiles, evidence status, authority, capacity, recovery and acceptance records|

## 中文表

|版本|日期|作者|說明|
|---|---|---|---|
|v1.0|2026-05-08|OceanAI / Artibird Product Team|基於 Artibird 產品規格書標準模板 v1.1 建立的 Artibird Gate 初始產品規格書|
|v1.1-Candidate|2026-11-06|OceanAI / Artibird 規格修訂|釐清協議／上行配置、證據狀態、權威、容量、恢復及驗收記錄|

---

# Appendix A — Terminology

# 附錄 A｜術語對照表

|English Term|中文術語|Definition|
|---|---|---|
|Artibird Gate|Artibird Gate|Localized network gateway and device access node|
|ESP32-C6|ESP32-C6|RISC-V-based SoC supporting Wi-Fi 6, BLE, and IEEE 802.15.4|
|ArtiOS|ArtiOS|Local runtime and coordination architecture|
|Artibird Hub|Artibird Hub|Local system center for state management, automation, and service operation|
|OceanAI Edge|OceanAI Edge|Edge AI inference and local intelligence layer|
|OceanAI Cloud|OceanAI Cloud|Cloud service layer for remote access, synchronization, analytics, and lifecycle management|
|Local-first|本地優先|Core functions are designed to operate locally whenever possible|
|Cloud-enhanced|雲端增強|Cloud services extend local operation with remote, sync, analytics, or AI capabilities|
|Max Concurrent Connection Capacity|最大併發連接容量|Validated maximum device or session capacity under defined runtime conditions|
|Gate Connection Capacity Validation Report|Gate 連接容量驗證報告|Formal report validating Gate connection capacity under defined test conditions|

---

# Appendix B — Risk Register

# 附錄 B｜風險登記表

## English Table

|Risk ID|Risk Description|Impact|Mitigation|
|---|---|---|---|
|R-GATE-001|Overclaiming Gate capacity based on ESP32-C6 theoretical capability|High|Require Gate Connection Capacity Validation Report before public claims|
|R-GATE-002|Cloud dependency weakens local-first positioning|High|Clearly separate local-first and cloud-enhanced functions|
|R-GATE-003|RF degradation due to enclosure or antenna design|High|Validate RF performance in final enclosure|
|R-GATE-004|Reconnection storm after outage|Medium / High|Implement staged reconnection and backoff policy|
|R-GATE-005|Device onboarding security weakness|High|Enforce authentication, secure pairing, and credential protection|
|R-GATE-006|Firmware update failure|High|Implement rollback and recovery mechanism|
|R-GATE-007|Unsupported protocol claim|High|Require implementation, validation, and certification evidence|
|R-GATE-008|Debug interface security risk|High|Disable or protect debug interface in production|
|R-GATE-009|Hub disconnection affects device control|Medium / High|Define local fallback and reconnection behavior|
|R-GATE-010|Product language exceeds tested capability|High|Apply Engineering Claim Policy|

## 中文表

|風險 ID|風險描述|影響|緩解措施|
|---|---|---|---|
|R-GATE-001|基於 ESP32-C6 理論能力過度宣稱 Gate 容量|高|公開宣稱前必須取得 Gate 連接容量驗證報告|
|R-GATE-002|雲端依賴削弱本地優先定位|高|清楚區分本地優先與雲端增強功能|
|R-GATE-003|外殼或天線設計導致 RF 性能下降|高|在最終外殼內驗證 RF 性能|
|R-GATE-004|斷線後出現重連風暴|中 / 高|實作分階段重連與退避策略|
|R-GATE-005|設備入網安全弱點|高|強制身份認證、安全配對與憑證保護|
|R-GATE-006|韌體更新失敗|高|實作回滾與恢復機制|
|R-GATE-007|未支援協議宣稱|高|必須具備實作、驗證與認證證據|
|R-GATE-008|Debug 介面安全風險|高|量產版本停用或保護 Debug 介面|
|R-GATE-009|Hub 斷線影響設備控制|中 / 高|定義本地回退與重連行為|
|R-GATE-010|產品語言超出已測試能力|高|套用工程宣稱政策|

---

# Appendix C — Validation Checklist

# 附錄 C｜驗證清單

## English Table

|Checklist Item|Required|Status|Evidence|
|---|---|---|---|
|Hardware specification completed|Yes|TBD|Schematic / BOM / enclosure design|
|ESP32-C6 firmware architecture completed|Yes|TBD|Firmware design document|
|Wi-Fi function validated|Yes|TBD|Wi-Fi test report|
|BLE function validated|If applicable|TBD|BLE test report|
|802.15.4 function validated|If applicable|TBD|802.15.4 test report|
|Local-first behavior validated|Yes|TBD|Local operation test report|
|Hub integration validated|Yes|TBD|Hub integration test|
|Cloud-enhanced behavior validated|Yes|TBD|Cloud integration test|
|Remote control validated|If applicable|TBD|App / cloud test|
|RF performance validated|Yes|TBD|RF test report|
|Concurrent capacity validated|Yes|TBD|Gate Connection Capacity Validation Report|
|OTA update validated|Yes|TBD|OTA test report|
|Security mechanisms validated|Yes|TBD|Security test report|
|Failure behavior validated|Yes|TBD|Reliability test report|
|Certification path defined|Yes|TBD|Certification plan|
|Commercial claims reviewed|Yes|TBD|Claim review record|

## 中文表

|檢查項目|是否必要|狀態|證據|
|---|---|---|---|
|硬體規格已完成|是|TBD|原理圖 / BOM / 外殼設計|
|ESP32-C6 韌體架構已完成|是|TBD|韌體設計文件|
|Wi-Fi 功能已驗證|是|TBD|Wi-Fi 測試報告|
|BLE 功能已驗證|如適用|TBD|BLE 測試報告|
|802.15.4 功能已驗證|如適用|TBD|802.15.4 測試報告|
|本地優先行為已驗證|是|TBD|本地運作測試報告|
|Hub 整合已驗證|是|TBD|Hub 整合測試|
|雲端增強行為已驗證|是|TBD|雲端整合測試|
|遠端控制已驗證|如適用|TBD|App / 雲端測試|
|RF 性能已驗證|是|TBD|RF 測試報告|
|併發容量已驗證|是|TBD|Gate 連接容量驗證報告|
|OTA 更新已驗證|是|TBD|OTA 測試報告|
|安全機制已驗證|是|TBD|安全測試報告|
|故障行為已驗證|是|TBD|可靠性測試報告|
|認證路線已定義|是|TBD|認證計畫|
|商業宣稱已審查|是|TBD|宣稱審查記錄|

---

# Appendix D — Operating Profile and Verification Record

# 附錄 D｜運行配置與驗證記錄

## D.1 Model record｜型號記錄

Each actual model must record internal model / SKU, selected module, board / BOM / antenna / enclosure revisions, power input, device-side protocol and roles, upstream link, firmware commit, SDK / component lock / sdkconfig, partitions, capability schema, Runtime endpoint / authority, and required / implemented / validated status with evidence. No manufactured configuration or production value is assigned by this revision.

每個實際型號須記錄內部型號／SKU、選定模組、板卡／BOM／天線／外殼版本、供電輸入、設備側協議及角色、上行鏈路、韌體 commit、SDK／依賴鎖定／sdkconfig、分區、能力 schema、Runtime endpoint／權威，以及要求／實作／驗證狀態及證據。本修訂不指派已製造配置或量產數值。

## D.2 Runtime authority｜Runtime 權威

The selected Hub-managed or Cloud-managed profile owns device identity, command policy, scenes, automation and system state. Gate owns local access / transport state and bounded delivery. Specify authority identity / epoch or equivalent ownership protection, installation authorization and binding. No automatic dual-master behavior or failover is implied. Edge context enters through the configured Runtime policy.

選定的 Hub 管理或 Cloud 管理配置負責設備身份、指令策略、場景、自動化及系統狀態。Gate 負責本地接入／傳遞狀態及有界投遞。列權威身份／epoch 或等效歸屬保護、安裝授權及綁定。不隱含雙主或自動接管。Edge 上下文經已配置 Runtime 策略參與。

## D.3 Capacity record｜容量記錄

|Metric / 指標|Record / 記錄要求|
|---|---|
|Managed / active nodes｜管理／活躍節點|Registered total and workload time window｜註冊總數及負載時間窗|
|GATT links｜GATT 連線|Actual simultaneous point-to-point links｜實際同時點對點連線|
|Friendships / queues｜Friend 關係／佇列|LPN count, poll interval, queue depth / overflow｜LPN 數、輪詢週期、queue 深度／溢出|
|Provisioning｜入網|Concurrency, success / timeout, duration｜併發、成功／超時、耗時|
|Events / commands｜事件／命令|Rate, payload, segmentation, TTL, retransmit, P95 / P99 and loss｜頻率、payload、分段、TTL、重傳、分位延遲及丟失|
|Upstream｜上行|MQTT sessions, TLS, reconnect, OTA / diagnostics load｜MQTT 會話、TLS、重連、OTA／診斷負載|
|Resources｜資源|Heap minimum, stack / queue peaks, rejected / dropped counts｜heap 最低值、stack／queue 峰值、拒絕／丟棄計數|
|Environment｜環境|RSSI, interference, placement, antenna / enclosure and temperature｜RSSI、干擾、放置、天線／外殼及溫度|

BLE Mesh advertising-based nodes are not equivalent to persistent GATT connections. MQTT sessions are not equivalent to downstream device count. Every capacity claim names the complete tested profile.

以 advertising 運作的 BLE Mesh 節點不等同持續 GATT 連線。MQTT 會話不等同下掛設備數。每項容量宣稱均須指明完整已測配置。

## D.4 Failure expectations｜故障預期

|Condition｜條件|Required behavior｜要求行為|
|---|---|
|Cloud / Internet loss, Hub and LAN available｜雲端／Internet 中斷，本地正常|Continue validated local functions; mark remote path unavailable｜維持已驗證本地功能，標示遠端路徑不可用|
|Hub loss｜Hub 中斷|Report fault; only configured / validated fallback; bounded buffering｜回報故障，僅限已配置／驗證回退及有界緩衝|
|Network recovery｜網路恢復|Jitter / backoff; restore authority and refresh state; reject expired commands｜隨機退避，恢復權威及現況，拒絕過期命令|
|Queue / memory pressure｜佇列／記憶體壓力|Apply class-specific retention / rejection, expose counters｜按類別保存／拒絕並提供計數|
|Credential expiry / storage error｜憑證到期／儲存錯誤|Expose reason, use authorized recovery, avoid silent reset / uncontrolled retry｜顯示原因，授權恢復，避免靜默重置／無限重試|
|OTA failure / power loss｜OTA 失敗／斷電|Recover verified configuration and firmware; report reset / rollback reason｜恢復經核對配置與韌體，回報重置／回滾原因|
|Gate replacement｜Gate 替換|Validate key / identity / sequence restoration; revoke old owner｜核對密鑰／身份／序列恢復並撤銷舊權威|

## D.5 Mandatory acceptance scenarios｜必要驗收情境

Use actual device models and production-equivalent enclosure / power. Test normal mixed traffic, simultaneous onboarding, LPN polling, event bursts, reconnect storms, duplicate / expired / reordered commands, lost acknowledgments, queue saturation, Hub / Cloud loss, credential expiry, storage failure, OTA interruption, power cycles and Gate replacement. Select node-count steps, success-rate / P95 / P99 / recovery limits, duration and sample size before testing. No example node count or untested threshold is a product claim.

使用實際設備型號及等同生產的外殼／供電。測試正常混合流量、同時入網、LPN 輪詢、事件突發、重連風暴、重複／過期／亂序指令、確認丟失、queue 飽和、Hub／Cloud 中斷、憑證到期、儲存故障、OTA 中斷、斷電及 Gate 替換。測前選定節點階梯、成功率／P95／P99／恢復門檻、時長及樣本數。示例節點數或未測門檻均不作產品宣稱。

Record test ID, configuration hash, expected result, observed result, raw evidence, pass / fail and unresolved issue. Update Appendix C only from reviewed evidence.

記錄 test ID、配置雜湊、預期結果、觀測結果、原始證據、通過／失敗及未解問題。附錄 C 僅依已審閱證據更新。

## D.6 Upstream references and adoption boundary｜上游參照與採用範圍

- [ESP32-C6 RF coexistence](https://docs.espressif.com/projects/esp-idf/en/stable/esp32c6/api-guides/coexist.html)
- [ESP-IDF BLE Mesh wifi_coexist](https://github.com/espressif/esp-idf/tree/master/examples/bluetooth/esp_ble_mesh/wifi_coexist)
- [ESP-Mesh-Lite](https://github.com/espressif/esp-mesh-lite)
- [ESP-IoT-Bridge](https://github.com/espressif/esp-iot-bridge)
- [ESP-Thread-BR](https://github.com/espressif/esp-thread-br)
- [MQTT 5.0](https://docs.oasis-open.org/mqtt/mqtt/v5.0/mqtt-v5.0.html)

Reviewed on 2026-11-06. References guide implementation and testing; they are not Gate validation evidence. Pin the chosen release / commit before adoption. Inspect target overrides, watchdogs, buffers, key handling and storage recovery rather than copying SDK example defaults. The official Thread host / RCP architecture is an extension reference, not a mandated replacement for the current C6 design.

查閱日期為 2026-11-06。參照用於實作及測試，不作 Gate 驗證證據。採用前固定選定 release／commit。逐項檢查 target overrides、watchdog、buffer、密鑰處理與儲存恢復，不直接複製 SDK 示例預設。官方 Thread host／RCP 架構作擴展參照，不要求取代現有 C6 設計。

---

# Document End

# 文件結束

## EN

This Artibird Gate Product Specification v1.1-Candidate describes Gate as the localized network gateway and device access node of the Artibird ecosystem. It provides a controlled engineering and system-level reference for ESP32-C6 hardware configuration, connectivity, firmware architecture, ArtiOS runtime participation, local-first operation, cloud-enhanced coordination, validation, certification, and commercial claim boundaries.

## ZH-TW

本《Artibird Gate 產品規格書 v1.1-Candidate》將 Gate 定義為 Artibird 生態中的本地化網路網關與設備接入節點。它為 ESP32-C6 硬體配置、連接能力、韌體架構、ArtiOS Runtime 參與、本地優先運作、雲端增強協同、驗證、認證與商業宣稱邊界，提供受控的工程與系統級參考。

---

## Topic Extension

## 話題延伸

下一步建議直接做：

**Artibird Gate Connection Capacity Validation Plan v1.0**  
**Artibird Gate 連接容量驗證計畫 v1.0**