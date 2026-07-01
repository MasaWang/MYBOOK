
---

# Artibird Gate Product Specification v1.0

# Artibird Gate 產品規格書 v1.0

**Engineering + System Specification Edition**  
**工程與系統規格書版本**

**Version Date**: 2026-05-08  
**Document Type**: Product Specification  
**Product Category**: Localized Network Gateway / Device Access Node  
**Hardware Foundation**: ESP32-C6  
**System Architecture**: OceanAI Coordinated Intelligence Architecture  
**Runtime Platform**: ArtiOS

**版本日期**：2026-05-08  
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
|Version|v1.0|
|Document Type|Engineering + System Specification|
|Product Name|Artibird Gate|
|Product Category|Localized Network Gateway / Device Access Node|
|System Architecture|OceanAI Coordinated Intelligence Architecture|
|Runtime Platform|ArtiOS|
|Hardware Foundation|ESP32-C6|
|Specification Level|Engineering + System|
|Intended Audience|Hardware, Firmware, Software, System, Testing, Certification, Product Teams|
|Release Date|2026-05-08|

## 中文表

|項目|說明|
|---|---|
|文件名稱|Artibird Gate 產品規格書|
|文件版本|v1.0|
|文件類型|工程與系統規格書|
|產品名稱|Artibird Gate|
|產品類別|本地化網路網關 / 設備接入節點|
|系統架構|OceanAI 協同智慧架構|
|Runtime 平台|ArtiOS|
|硬體基礎|ESP32-C6|
|規格書層級|工程與系統規格|
|適用對象|硬體、韌體、軟體、系統、測試、認證、產品團隊|
|發布日期|2026-05-08|

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
|Local-first Capability|Yes|
|Offline Operation Scope|Local device discovery, local event forwarding, local command routing, and Hub-assisted coordination where supported|
|Remote Control Scope|Remote device access through OceanAI Cloud when network, account binding, and security policy are available|
|System Dependency|Hub-enhanced, Cloud-enhanced, Edge-enhanced depending on deployment architecture|

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
|本地優先能力|是|
|離線運作範圍|在支援條件下，本地設備發現、本地事件轉發、本地指令路由與 Hub 輔助協同可運作|
|遠端控制範圍|當網路、帳號綁定與安全策略可用時，透過 OceanAI Cloud 進行遠端設備存取|
|系統依賴關係|依部署架構，可由 Hub 增強、Cloud 增強或 Edge 增強|

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
|Memory|Flash 4MB / 8MB / 16MB by variant; optional external memory depending on design|
|Wireless Module|Wi-Fi 6, Bluetooth Low Energy 5.x, IEEE 802.15.4|
|Wired Interface|Optional Ethernet variant depending on hardware design|
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
|記憶體|Flash 4MB / 8MB / 16MB，依版本配置；可依設計選配外部記憶體|
|無線模組|Wi-Fi 6、Bluetooth Low Energy 5.x、IEEE 802.15.4|
|有線介面|依硬體設計選配 Ethernet 版本|
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

# 6. Connectivity & Networking

# 6. 連接與網路能力

## EN

Artibird Gate provides localized communication paths for Artibird devices and connects device-side networks to the broader OceanAI architecture. It supports device onboarding, wireless communication, event forwarding, state reporting, Hub communication, and cloud-assisted synchronization.

For Gate-class products, concurrent connection capacity must be defined as a **validated system-level boundary**, not a theoretical chip-level number. This includes Wi-Fi devices, BLE devices, IEEE 802.15.4 devices, MQTT sessions, message frequency, event bursts, and reconnection behavior.

## ZH-TW

Artibird Gate 為 Artibird 設備提供本地化通訊路徑，並將設備側網路接入更大的 OceanAI 架構。它支援設備入網、無線通訊、事件轉發、狀態回報、Hub 通訊與雲端輔助同步。

對 Gate 類產品而言，併發連接容量必須被定義為 **經驗證的系統級邊界**，而不是晶片理論數字。這包括 Wi-Fi 設備、BLE 設備、IEEE 802.15.4 設備、MQTT 會話、消息頻率、事件突發與重連行為。

## English Table

|Item|Description|
|---|---|
|Primary Connectivity|Wi-Fi 6|
|Secondary Connectivity|BLE 5.x / IEEE 802.15.4|
|Optional Connectivity|Ethernet by hardware variant|
|Supported Network Mode|Gateway / local device access node / client / optional bridge mode|
|Protocol Support|MQTT / HTTP / WebSocket / BLE / IEEE 802.15.4; Matter / Thread only if validated and certified|
|Local Network Access|Supported|
|Cloud Connectivity|Supported through Hub or direct cloud path depending on architecture|
|Remote Control|Supported through OceanAI Cloud when enabled|
|Offline Communication|Local device communication and Hub-assisted coordination where supported|
|Antenna Design|PCB antenna or external antenna; RF keep-out required|
|Max Concurrent Connection Capacity|TBD / Validated Value|
|Capacity Validation Report|Required before any public capacity claim|
|Reconnection Strategy|Required for device reconnect, Hub reconnect, and cloud recovery|
|Event Burst Handling|Required for multi-device trigger conditions|

## 中文表

|項目|說明|
|---|---|
|主要連接能力|Wi-Fi 6|
|次要連接能力|BLE 5.x / IEEE 802.15.4|
|可選連接能力|依硬體版本支援 Ethernet|
|支援網路模式|網關 / 本地設備接入節點 / Client / 可選 Bridge 模式|
|協議支援|MQTT / HTTP / WebSocket / BLE / IEEE 802.15.4；Matter / Thread 僅在驗證與認證完成後宣稱|
|本地網路存取|支援|
|雲端連接|依架構可透過 Hub 或直連雲端路徑支援|
|遠端控制|啟用時透過 OceanAI Cloud 支援|
|離線通訊|在支援條件下，本地設備通訊與 Hub 輔助協同可運作|
|天線設計|PCB 天線或外置天線；必須保留 RF keep-out|
|最大併發連接容量|TBD / 已驗證數值|
|容量驗證報告|任何公開容量宣稱前必須具備|
|重連策略|必須支援設備重連、Hub 重連與雲端恢復|
|事件突發處理|必須支援多設備觸發條件下的處理|

---

# 7. Software & Firmware Architecture

# 7. 軟體與韌體架構

## English Table

|Category|Status|Description|
|---|---|---|
|Runtime Platform|ArtiOS-compatible|Participates in ArtiOS runtime communication through Hub or defined interface|
|Firmware Framework|ESP-IDF recommended|ESP32-C6 firmware implementation|
|OTA Update|Supported|Secure OTA update with rollback or recovery strategy recommended|
|Local Rule Engine|Optional|Gate may execute limited local routing or fallback logic; primary automation belongs to Hub / ArtiOS|
|State Management|Supported|Maintains device connection state, pairing state, network state, and runtime status|
|Event Engine|Supported|Handles device event ingestion, filtering, forwarding, and acknowledgment|
|Connection Capacity Manager|Supported|Tracks active devices, sessions, memory pressure, and capacity boundary|
|Security Features|Supported|Secure Boot, Flash Encryption, credential storage, encrypted communication where implemented|
|Diagnostics|Supported|Signal status, connection quality, firmware version, error logs, device online status|
|Cloud Client|Optional / architecture-dependent|May communicate through Hub or directly with OceanAI Cloud depending on product strategy|
|MQTT Client|Supported|Communicates with Artibird Hub / ArtiOS MQTT services|
|Local Web Service|Optional|Local configuration, diagnostics, or setup interface|
|Pairing Manager|Supported|Handles device discovery, onboarding, binding, and reset workflows|
|Protocol Manager|Supported|Manages Wi-Fi, BLE, 802.15.4, and optional protocol extensions|

## 中文表

|類別|狀態|說明|
|---|---|---|
|Runtime 平台|相容 ArtiOS|透過 Hub 或已定義介面參與 ArtiOS Runtime 通訊|
|韌體框架|建議 ESP-IDF|ESP32-C6 韌體實作|
|OTA 更新|支援|建議具備安全 OTA 更新與回滾或恢復策略|
|本地規則引擎|選配|Gate 可執行有限的本地路由或回退邏輯；主要自動化屬於 Hub / ArtiOS|
|狀態管理|支援|維護設備連接狀態、配對狀態、網路狀態與 Runtime 狀態|
|事件引擎|支援|處理設備事件接收、過濾、轉發與確認|
|連接容量管理器|支援|追蹤活躍設備、會話、記憶體壓力與容量邊界|
|安全功能|支援|Secure Boot、Flash Encryption、憑證儲存、加密通訊，依實作|
|診斷功能|支援|信號狀態、連接品質、韌體版本、錯誤日誌、設備在線狀態|
|雲端客戶端|選配 / 依架構|可依產品策略透過 Hub 或直接與 OceanAI Cloud 通訊|
|MQTT Client|支援|與 Artibird Hub / ArtiOS MQTT 服務通訊|
|本地 Web 服務|選配|本地配置、診斷或設定介面|
|配對管理器|支援|處理設備發現、入網、綁定與重置流程|
|協議管理器|支援|管理 Wi-Fi、BLE、802.15.4 與可選協議擴展|

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
|Command Execution Priority|Safety command > local user command > Hub / ArtiOS automation > cloud command > non-critical sync|
|Integration with ArtiOS|Gate participates in runtime communication and device-side event routing|
|Integration with Hub|Hub is the preferred local coordination center for Gate-managed devices|
|Integration with Edge|Edge receives device context through Hub or defined data interface|
|Integration with Cloud|Cloud provides remote access, account binding, lifecycle management, and synchronization|
|App Interaction|App can use local setup paths and cloud-assisted remote control where enabled|
|Multi-Gate Deployment|Multiple Gate nodes may be used in larger deployments; capacity and roaming policy must be validated|

## 中文表

|主題|說明|
|---|---|
|設備入網與配對流程|Gate 發現設備，並支援 App 或 Hub 輔助的入網流程|
|事件處理與回報|Gate 接收設備事件，並轉發至 Hub / ArtiOS / Cloud 路徑|
|狀態管理與同步|Gate 維護本地連接狀態，並向 Hub 回報設備狀態|
|本地控制邏輯|Gate 路由本地指令，並可執行有限的回退行為|
|指令執行優先級|安全指令 > 本地用戶指令 > Hub / ArtiOS 自動化 > 雲端指令 > 非關鍵同步|
|與 ArtiOS 整合|Gate 參與 Runtime 通訊與設備側事件路由|
|與 Hub 整合|Hub 是 Gate 管理設備的首選本地協同中心|
|與 Edge 整合|Edge 透過 Hub 或已定義數據介面接收設備上下文|
|與 Cloud 整合|Cloud 提供遠端存取、帳號綁定、生命週期管理與同步|
|App 互動|App 可使用本地設定路徑，以及在啟用條件下的雲端輔助遠端控制|
|多 Gate 部署|大型部署可使用多個 Gate 節點；容量與漫遊策略必須驗證|

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
|Connection Overload Protection|Limits new device sessions or pairing when validated capacity boundary is reached|
|Reconnection Recovery|Supports staged reconnection and backoff after outage|
|Power Failure Recovery|Restores network configuration, device registry, and runtime state after reboot|
|OTA Failure Recovery|Supports rollback or safe firmware recovery strategy|
|Hub Disconnection Behavior|Attempts reconnection and preserves local metadata where possible|
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
|連接過載保護|當達到已驗證容量邊界時，限制新設備會話或配對|
|重連恢復|在斷線後支援分階段重連與退避策略|
|斷電恢復|重啟後恢復網路配置、設備註冊表與 Runtime 狀態|
|OTA 失敗恢復|支援回滾或安全韌體恢復策略|
|Hub 斷線行為|嘗試重新連接，並盡可能保留本地元數據|
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

# 13. Product Variants

# 13. 產品版本

## English Table

|Variant / SKU|Hardware Difference|Firmware Difference|Market / Region|Certification Difference|Notes|
|---|---|---|---|---|---|
|Artibird Gate Wi-Fi|ESP32-C6, Wi-Fi-first, standard enclosure|Standard Gate firmware|Residential / small office|FCC / CE / RoHS by region|General deployment|
|Artibird Gate Ethernet|ESP32-C6 with Ethernet backhaul variant|Ethernet-enabled firmware profile|Commercial / campus / infrastructure|Additional Ethernet and EMC validation|Stable wired backhaul|
|Artibird Gate Pro|External antenna, improved RF design, enhanced enclosure|Higher capacity firmware profile|Larger home / commercial / campus|RF validation required|Extended coverage|
|Artibird Gate Embedded|Embedded module form|Embedded integration firmware profile|Panel / cabinet / infrastructure|Depends on host product|For integrated systems|
|Artibird Gate Outdoor|Enhanced enclosure and environmental protection|Outdoor diagnostics profile|Outdoor / semi-outdoor / agriculture|Environmental validation required|Requires enclosure testing|
|Artibird Gate Campus|Optimized for multi-room and classroom deployments|Multi-Gate management profile|Education / campus|Regional compliance required|Requires capacity validation|

## 中文表

|版本 / SKU|硬體差異|韌體差異|市場 / 地區|認證差異|備註|
|---|---|---|---|---|---|
|Artibird Gate Wi-Fi|ESP32-C6、Wi-Fi 優先、標準外殼|標準 Gate 韌體|住宅 / 小型辦公|依地區 FCC / CE / RoHS|通用部署|
|Artibird Gate Ethernet|ESP32-C6 搭配 Ethernet 回程版本|啟用 Ethernet 的韌體配置|商業 / 校園 / 基礎設施|需額外 Ethernet 與 EMC 驗證|穩定有線回程|
|Artibird Gate Pro|外置天線、改良 RF 設計、增強外殼|更高容量韌體配置|大型住宅 / 商業 / 校園|必須 RF 驗證|擴展覆蓋|
|Artibird Gate Embedded|嵌入式模組形態|嵌入式整合韌體配置|面板 / 機櫃 / 基礎設施|依主產品而定|用於整合系統|
|Artibird Gate Outdoor|增強外殼與環境防護|戶外診斷配置|戶外 / 半戶外 / 農業|必須環境驗證|需外殼測試|
|Artibird Gate Campus|面向多房間與教室部署優化|多 Gate 管理配置|教育 / 校園|需地區合規|必須容量驗證|

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

## 中文表

|版本|日期|作者|說明|
|---|---|---|---|
|v1.0|2026-05-08|OceanAI / Artibird Product Team|基於 Artibird 產品規格書標準模板 v1.1 建立的 Artibird Gate 初始產品規格書|

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

# Document End

# 文件結束

## EN

This Artibird Gate Product Specification v1.0 defines Gate as the localized network gateway and device access node of the Artibird ecosystem. It provides a controlled engineering and system-level reference for ESP32-C6 hardware configuration, connectivity, firmware architecture, ArtiOS runtime participation, local-first operation, cloud-enhanced coordination, validation, certification, and commercial claim boundaries.

## ZH-TW

本《Artibird Gate 產品規格書 v1.0》將 Gate 定義為 Artibird 生態中的本地化網路網關與設備接入節點。它為 ESP32-C6 硬體配置、連接能力、韌體架構、ArtiOS Runtime 參與、本地優先運作、雲端增強協同、驗證、認證與商業宣稱邊界，提供受控的工程與系統級參考。

---

## Topic Extension

## 話題延伸

下一步建議直接做：

**Artibird Gate Connection Capacity Validation Plan v1.0**  
**Artibird Gate 連接容量驗證計畫 v1.0**