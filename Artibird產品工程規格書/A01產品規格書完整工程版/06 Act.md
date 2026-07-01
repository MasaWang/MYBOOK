# Artibird Act Product Specification v1.0

# Artibird Act 產品規格書 v1.0

**Engineering + System Specification Edition**  
**工程與系統規格書版本**

**Version Date**: 2026-05-08  
**Document Type**: Product Specification  
**Product Category**: Power Execution Node / Relay Node / Smart Plug / Energy Measurement Variant  
**Hardware Foundation**: ESP32-C3 / ESP32-based Power Control Architecture  
**System Architecture**: OceanAI Coordinated Intelligence Architecture  
**Runtime Platform**: ArtiOS-compatible

**版本日期**：2026-05-08  
**文件類型**：產品規格書  
**產品類別**：電力執行節點 / 繼電器節點 / 智慧插座 / 電能計量版本  
**硬體基礎**：ESP32-C3 / ESP32 系列電力控制架構  
**系統架構**：OceanAI 協同智慧架構  
**Runtime 平台**：相容 ArtiOS

---

# 1. Document Information

# 1. 文件資訊

## English Table

|Item|Description|
|---|---|
|Document Name|Artibird Act Product Specification|
|Version|v1.0|
|Document Type|Engineering + System Specification|
|Product Name|Artibird Act|
|Product Category|Power Execution Node / Relay Node / Smart Plug / Energy Measurement Variant|
|System Architecture|OceanAI Coordinated Intelligence Architecture|
|Runtime Platform|ArtiOS-compatible|
|Hardware Foundation|ESP32-C3 / ESP32-based relay and power-control architecture|
|Specification Level|Engineering + System|
|Intended Audience|Hardware, Firmware, Software, Power Electronics, System, Testing, Certification, Product Teams|
|Release Date|2026-05-08|

## 中文表

| 項目         | 說明                             |
| ---------- | ------------------------------ |
| 文件名稱       | Artibird Act 產品規格書             |
| 文件版本       | v1.0                           |
| 文件類型       | 工程與系統規格書                       |
| 產品名稱       | Artibird Act                   |
| 產品類別       | 電力執行節點 / 繼電器節點 / 智慧插座 / 電能計量版本 |
| 系統架構       | OceanAI 協同智慧架構                 |
| Runtime 平台 | 相容 ArtiOS                      |
| 硬體基礎       | ESP32-C3 / ESP32 系列繼電器與電力控制架構  |
| 規格書層級      | 工程與系統規格                        |
| 適用對象       | 硬體、韌體、軟體、電力電子、系統、測試、認證、產品團隊    |
| 發布日期       | 2026-05-08                     |

---

# 2. Product Overview

# 2. 產品總覽

## EN

Artibird Act is a distributed power execution node designed for the Artibird product ecosystem and the OceanAI coordinated intelligence architecture. It provides physical electrical execution, relay control, plug-based load control, optional energy measurement, and runtime participation for coordinated intelligent environments.

Within the Artibird ecosystem, Act serves as the electrical action layer. It receives commands from Artibird Hub, ArtiOS, Artibird App, OceanAI Cloud, or automation logic, and translates those commands into safe on/off power execution at the device or circuit level. Depending on the product variant, Artibird Act may appear as a smart relay module, smart plug, load-control node, cabinet-mounted execution module, or energy-measurement execution node.

Artibird Act follows a **local-first, cloud-enhanced** operating model. Local relay execution, safety control, device state reporting, Hub-assisted automation, and local load-control behavior should remain available within the local environment whenever technically feasible. Cloud connectivity extends the system through remote control, energy reporting, synchronization, lifecycle management, analytics, and multi-site coordination. In this role, Artibird Act becomes the physical electrical execution layer of the OceanAI runtime system.

## ZH-TW

Artibird Act 是一款面向 Artibird 產品生態與 OceanAI 協同智慧架構設計的分布式電力執行節點。它為協同智慧環境提供實體電力執行、繼電器控制、插座式負載控制、可選電能計量與 Runtime 參與能力。

在 Artibird 生態中，Act 承擔電氣動作層角色。它接收來自 Artibird Hub、ArtiOS、Artibird App、OceanAI Cloud 或自動化邏輯的指令，並將這些指令轉換為設備級或迴路級的安全 on/off 電力執行。依產品版本不同，Artibird Act 可呈現為智慧繼電器模組、智慧插座、負載控制節點、配電箱安裝執行模組或具備電能計量能力的執行節點。

Artibird Act 採用 **本地優先、雲端增強** 的運作模式。本地繼電器執行、安全控制、設備狀態回報、Hub 輔助自動化與本地負載控制行為，應在技術可行條件下保持於本地環境中可用。雲端連接則透過遠端控制、能源報告、同步、生命週期管理、分析與多站點協同擴展系統能力。在此角色中，Artibird Act 成為 OceanAI Runtime 系統中的實體電力執行層。

---

# 3. System Positioning & Role

# 3. 系統定位與角色

## English Table

|Item|Description|
|---|---|
|System Layer|Electrical Execution Layer / Power Control Layer / Energy Measurement Layer|
|Primary Role|Relay-based load control, smart plug control, and optional energy measurement|
|Runtime Participation|Receives runtime commands, executes relay actions, reports load state, and provides power or energy data where supported|
|Relationship with Gate|May communicate through Gate or local network path depending on wireless architecture|
|Relationship with Hub|Hub processes automation logic, load-control commands, energy data, and state synchronization|
|Relationship with Edge|Edge may use load state, energy data, and runtime context for optimization and diagnostics|
|Relationship with Cloud|Supports remote control, energy analytics, lifecycle management, account binding, synchronization, and multi-site reporting|
|Local-first Capability|Yes|
|Offline Operation Scope|Local relay execution, local state reporting, Hub-assisted automation, and safety fallback where supported|
|Remote Control Scope|Remote load control and energy data access through OceanAI Cloud where supported|
|System Dependency|Hub-enhanced for automation and state; cloud-enhanced for remote and analytics; Edge-enhanced for intelligence and optimization|

## 中文表

|項目|說明|
|---|---|
|系統層級|電力執行層 / 電力控制層 / 能源計量層|
|主要角色|基於繼電器的負載控制、智慧插座控制與可選電能計量|
|Runtime 參與方式|接收 Runtime 指令，執行繼電器動作，回報負載狀態，並在支援條件下提供功率或電能數據|
|與 Gate 的關係|依無線架構可透過 Gate 或本地網路路徑通訊|
|與 Hub 的關係|Hub 處理自動化邏輯、負載控制指令、能源數據與狀態同步|
|與 Edge 的關係|Edge 可使用負載狀態、能源數據與 Runtime 上下文進行優化與診斷|
|與 Cloud 的關係|支援遠端控制、能源分析、生命週期管理、帳號綁定、同步與多站點報告|
|本地優先能力|是|
|離線運作範圍|在支援條件下，本地繼電器執行、本地狀態回報、Hub 輔助自動化與安全回退可運作|
|遠端控制範圍|在支援條件下，透過 OceanAI Cloud 進行遠端負載控制與能源數據存取|
|系統依賴關係|自動化與狀態由 Hub 增強；遠端與分析由雲端增強；智慧與優化由 Edge 增強|

---

# 4. Core Design Principles

# 4. 核心設計原則

## 4.1 Local-First Runtime Architecture

## 4.1 本地優先 Runtime 架構

**EN**  
Artibird Act prioritizes local electrical execution and local response. Relay on/off behavior, load state reporting, and Hub-assisted automation should remain available locally whenever the deployment architecture permits.

**ZH-TW**  
Artibird Act 優先保障本地電力執行與本地回應。繼電器 on/off 行為、負載狀態回報與 Hub 輔助自動化，應在部署架構允許的條件下保持本地可用。

## 4.2 Coordinated System Participation

## 4.2 協同式系統參與

**EN**  
Artibird Act participates as a runtime execution node. A relay action should be treated as a system-level electrical event that may coordinate lighting, appliances, pumps, fans, classroom devices, irrigation equipment, or energy-control logic.

**ZH-TW**  
Artibird Act 作為 Runtime 執行節點參與運作。一次繼電器動作應被視為系統級電力事件，可協同照明、家電、水泵、風扇、教室設備、灌溉設備或能源控制邏輯。

## 4.3 Cloud-Enhanced Intelligence

## 4.3 雲端增強智慧

**EN**  
Cloud services may extend Artibird Act with remote control, energy reporting, device lifecycle management, usage analytics, firmware updates, and multi-site management. Cloud functions should enhance local execution rather than replace local load-control availability.

**ZH-TW**  
雲端服務可透過遠端控制、能源報告、設備生命週期管理、使用分析、韌體更新與多站點管理來擴展 Artibird Act。雲端功能應增強本地執行，而不是取代本地負載控制可用性。

## 4.4 Distributed Operational Resilience

## 4.4 分布式運作韌性

**EN**  
Artibird Act should maintain predictable behavior under network instability, Hub disconnection, cloud unavailability, power interruption, relay fault, overload condition, measurement abnormality, firmware recovery, and runtime load variation.

**ZH-TW**  
Artibird Act 應在網路不穩定、Hub 斷線、雲端不可用、電源中斷、繼電器故障、過載條件、計量異常、韌體恢復與 Runtime 負載變化時保持可預期行為。

## 4.5 Security and Electrical Safety by Design

## 4.5 安全與電氣安全預設設計

**EN**  
As an electrical execution device, Artibird Act must apply secure onboarding, authenticated command paths, encrypted communication where applicable, relay safety logic, overload protection, electrical isolation, secure OTA, and protected debug interfaces.

**ZH-TW**  
作為電力執行設備，Artibird Act 必須採用安全入網、經身份認證的指令路徑、適用情況下的加密通訊、繼電器安全邏輯、過載保護、電氣隔離、安全 OTA 與受保護的 Debug 介面。

---

# 5. Hardware Specification

# 5. 硬體規格

## English Table

|Item|Specification|
|---|---|
|Product Variants|Relay Module / Smart Plug / Energy Measurement Plug / Cabinet Execution Node / Act-E|
|Main Processor / SoC|ESP32-C3 recommended for Wi-Fi relay variants; ESP32-based architecture by variant|
|Communication|Wi-Fi primary; BLE provisioning optional|
|Relay Type|Mechanical relay / magnetic latching relay depending on variant|
|Control Type|On/off relay control; no dimming unless separate dimming hardware is implemented and validated|
|Load Rating|TBD by relay, PCB, enclosure, thermal design, and certification validation|
|Power Input|AC mains for plug or relay variants; DC input for low-voltage execution variants|
|Power Supply|Isolated or certified AC-DC power module recommended for AC variants|
|Energy Measurement|Optional; Act-E variant may include metering IC and current sensing|
|Metering IC|ATM90E26 / BL0937 / HLW8012 or equivalent depending on accuracy and design requirements|
|Current Sensor|Shunt resistor / CT / current transformer depending on product form and isolation strategy|
|Voltage Measurement|Optional or required for energy measurement variant|
|Protection Features|Fuse, MOV, TVS, relay snubber, overcurrent protection, thermal protection, isolation, ESD|
|Sensor Support|Optional temperature sensor for thermal monitoring; optional power-context sensing|
|I/O Interface|GPIO / relay driver / metering IC interface / LED / button / programming interface|
|Antenna Type|PCB antenna / external antenna variant; RF-safe window required in metal enclosure designs|
|Enclosure Material|Flame-retardant PC / ABS; plug-grade or electrical enclosure material required|
|Mounting Method|Plug-in / in-wall / cabinet-mounted / DIN rail / embedded module variant|
|Operating Temperature|TBD based on load, enclosure, and certification validation|
|Certification Direction|FCC / CE / RoHS; UL / ETL required for AC-powered plug or load-control variants|

## 中文表

|項目|規格|
|---|---|
|產品版本|繼電器模組 / 智慧插座 / 電能計量插座 / 配電箱執行節點 / Act-E|
|主處理器 / SoC|Wi-Fi 繼電器版本建議 ESP32-C3；依版本採用 ESP32 系列架構|
|通訊方式|Wi-Fi 為主；BLE 配網選配|
|繼電器類型|依版本採用機械繼電器 / 磁保持繼電器|
|控制類型|on/off 繼電器控制；除非具備獨立調光硬體並完成驗證，否則不支援調光|
|負載額定值|依繼電器、PCB、外殼、熱設計與認證驗證確定|
|供電方式|插座或繼電器版本採用 AC 市電；低壓執行版本採用 DC 輸入|
|電源模組|AC 版本建議使用隔離式或已認證 AC-DC 電源模組|
|電能計量|選配；Act-E 版本可包含計量 IC 與電流感測|
|計量 IC|依精度與設計需求選用 ATM90E26 / BL0937 / HLW8012 或同級方案|
|電流感測|依產品形態與隔離策略採用分流電阻 / CT / 電流互感器|
|電壓量測|電能計量版本可選或必須支援|
|保護功能|保險絲、MOV、TVS、繼電器吸收、過流保護、熱保護、隔離、ESD|
|感測器支援|可選溫度感測器用於熱監測；可選電力上下文感測|
|I/O 介面|GPIO / 繼電器驅動 / 計量 IC 介面 / LED / 按鍵 / 燒錄介面|
|天線類型|PCB 天線 / 外置天線版本；金屬外殼設計需預留 RF 安全窗口|
|外殼材質|阻燃 PC / ABS；插座級或電氣外殼材料|
|安裝方式|插座式 / 牆內式 / 配電箱安裝 / DIN Rail / 嵌入式模組版本|
|工作溫度|依負載、外殼與認證驗證確定|
|認證方向|FCC / CE / RoHS；AC 供電插座或負載控制版本需要 UL / ETL|

---

# 6. Connectivity & Networking

# 6. 連接與網路能力

## EN

Artibird Act provides localized electrical execution and power-state communication for the Artibird ecosystem. It should support local command execution, relay status reporting, Hub communication, App control, cloud-assisted remote control, and optional energy data synchronization.

For Act-class products, relay response time, load rating, thermal stability, power measurement accuracy, Wi-Fi stability, local execution reliability, and remote command reliability must be defined as validated system-level boundaries.

## ZH-TW

Artibird Act 為 Artibird 生態提供本地化電力執行與電力狀態通訊能力。它應支援本地指令執行、繼電器狀態回報、Hub 通訊、App 控制、雲端輔助遠端控制與可選能源數據同步。

對 Act 類產品而言，繼電器回應時間、負載額定值、熱穩定性、電力量測精度、Wi-Fi 穩定性、本地執行可靠性與遠端指令可靠性，都必須被定義為經驗證的系統級邊界。

## English Table

|Item|Description|
|---|---|
|Primary Connectivity|Wi-Fi|
|Secondary Connectivity|BLE provisioning optional|
|Runtime Role|Electrical execution node / power-control node / energy measurement node|
|Local Network Access|Through Wi-Fi, Hub, or local network path depending on architecture|
|Cloud Connectivity|Through Hub or direct cloud path depending on product strategy|
|Remote Control|Supported for relay on/off where enabled|
|Offline Communication|Local relay execution and Hub-assisted automation where supported|
|Protocol Support|MQTT / HTTP / WebSocket / local API depending on architecture|
|Energy Data Sync|Optional; supported by Act-E or metering variants|
|Relay Response Time|TBD / Validated Value|
|Max Load Rating|TBD / Validated Value|
|Measurement Accuracy|TBD / Validated Value for energy variants|
|Capacity / Reliability Report|Required before public claims|

## 中文表

|項目|說明|
|---|---|
|主要連接能力|Wi-Fi|
|次要連接能力|BLE 配網選配|
|Runtime 角色|電力執行節點 / 電力控制節點 / 電能計量節點|
|本地網路存取|依架構透過 Wi-Fi、Hub 或本地網路路徑|
|雲端連接|依產品策略透過 Hub 或直連雲端路徑|
|遠端控制|啟用時支援繼電器 on/off 遠端控制|
|離線通訊|在支援條件下，本地繼電器執行與 Hub 輔助自動化可運作|
|協議支援|MQTT / HTTP / WebSocket / 本地 API，依架構定義|
|能源數據同步|選配；Act-E 或計量版本支援|
|繼電器回應時間|TBD / 已驗證數值|
|最大負載額定值|TBD / 已驗證數值|
|量測精度|電能計量版本為 TBD / 已驗證數值|
|容量 / 可靠性報告|公開宣稱前必須具備|

---

# 7. Software & Firmware Architecture

# 7. 軟體與韌體架構

## English Table

|Category|Status|Description|
|---|---|---|
|Runtime Platform|ArtiOS-compatible|Participates in ArtiOS runtime communication through Hub or defined interface|
|Firmware Framework|ESP-IDF recommended|ESP32-C3 / ESP32 firmware implementation|
|OTA Update|Supported|Secure OTA update with rollback or recovery strategy recommended|
|Relay Control Engine|Supported|Controls relay on/off, debounce, interlock, safety state, and recovery behavior|
|Local Rule Engine|Optional|Limited local fallback behavior; primary automation belongs to Hub / ArtiOS|
|Energy Measurement Engine|Optional / Act-E|Processes voltage, current, power, energy, and runtime energy data|
|Load State Manager|Supported|Maintains relay state, load state, device state, and runtime metadata|
|Event Engine|Supported|Handles command events, relay execution, state reports, alarms, and diagnostics|
|Safety Monitor|Required|Tracks overload, thermal state, abnormal switching, and fault conditions where sensors exist|
|State Recovery Manager|Required|Restores defined relay state after power recovery or reboot|
|Security Features|Supported|Secure onboarding, credential protection, encrypted communication where implemented|
|Diagnostics|Supported|Relay status, load status, energy data, network state, firmware version, error logs|
|Cloud Client|Optional / architecture-dependent|Handles remote control, energy sync, account binding, and lifecycle management|
|MQTT Client|Supported where architecture uses MQTT|Communicates with Artibird Hub / ArtiOS MQTT services|
|Local Web Service|Optional|Local setup, diagnostics, energy view, or service interface|
|Pairing Manager|Supported|Handles onboarding, binding, room assignment, circuit assignment, and reset workflows|

## 中文表

|類別|狀態|說明|
|---|---|---|
|Runtime 平台|相容 ArtiOS|透過 Hub 或已定義介面參與 ArtiOS Runtime 通訊|
|韌體框架|建議 ESP-IDF|ESP32-C3 / ESP32 韌體實作|
|OTA 更新|支援|建議具備安全 OTA 更新與回滾 / 恢復策略|
|繼電器控制引擎|支援|控制繼電器 on/off、防抖、互鎖、安全狀態與恢復行為|
|本地規則引擎|選配|有限本地回退行為；主要自動化屬於 Hub / ArtiOS|
|電能計量引擎|選配 / Act-E|處理電壓、電流、功率、電能與 Runtime 能源數據|
|負載狀態管理器|支援|維護繼電器狀態、負載狀態、設備狀態與 Runtime 元數據|
|事件引擎|支援|處理指令事件、繼電器執行、狀態回報、警報與診斷|
|安全監測器|必須支援|在具備感測條件下追蹤過載、熱狀態、異常開關與故障條件|
|狀態恢復管理器|必須支援|在斷電恢復或重啟後恢復定義的繼電器狀態|
|安全功能|支援|安全入網、憑證保護、適用情況下的加密通訊|
|診斷功能|支援|繼電器狀態、負載狀態、能源數據、網路狀態、韌體版本與錯誤日誌|
|雲端客戶端|選配 / 依架構|處理遠端控制、能源同步、帳號綁定與生命週期管理|
|MQTT Client|採用 MQTT 架構時支援|與 Artibird Hub / ArtiOS MQTT 服務通訊|
|本地 Web 服務|選配|本地設定、診斷、能源查看或維護介面|
|配對管理器|支援|處理入網、綁定、房間分配、迴路分配與重置流程|

---

# 8. Runtime Behavior & System Integration

# 8. Runtime 行為與系統整合

## EN

Artibird Act operates as an electrical execution node within the local Artibird environment. It receives commands from App, Hub, ArtiOS, Edge, or Cloud paths, validates them according to safety and permission rules, executes relay actions, and reports state or energy data back to the system.

## ZH-TW

Artibird Act 作為本地 Artibird 環境中的電力執行節點運作。它接收來自 App、Hub、ArtiOS、Edge 或 Cloud 路徑的指令，依據安全與權限規則進行驗證，執行繼電器動作，並將狀態或能源數據回報至系統。

## English Table

|Topic|Description|
|---|---|
|Device Onboarding & Pairing Flow|Act is discovered and bound through App, Hub, or local setup workflow|
|Load Assignment|Act may be assigned to appliance, lighting circuit, socket, pump, fan, classroom device, or energy zone|
|Relay Execution|Executes on/off relay actions based on local, Hub, App, Cloud, or automation commands|
|Energy Reporting|Metering variants report voltage, current, power, energy, and abnormal load data|
|State Management & Synchronization|Maintains relay state, load state, energy state, fault state, and runtime metadata|
|Local Control Logic|Executes configured local commands and Hub-assisted automation|
|Command Execution Priority|Safety / shutdown command > local physical action > Hub / ArtiOS automation > cloud command > non-critical sync|
|Integration with ArtiOS|Act actions participate in scenes, schedules, automations, and power coordination|
|Integration with Hub|Hub stores automation logic, load state, energy data, and command policy|
|Integration with Gate|Gate may support local network path depending on deployment|
|Integration with Edge|Edge may use energy and load data for diagnostics, optimization, and state inference|
|Integration with Cloud|Cloud provides remote control, energy analytics, lifecycle management, and synchronization|
|App Interaction|App supports setup, on/off control, energy view, room assignment, and remote control where enabled|
|Multi-Act Deployment|Multiple Act nodes can participate in room, circuit, cabinet, classroom, or campus-level energy logic|

## 中文表

|主題|說明|
|---|---|
|設備入網與配對流程|Act 透過 App、Hub 或本地設定流程被發現與綁定|
|負載分配|Act 可被分配至家電、照明迴路、插座、水泵、風扇、教室設備或能源區域|
|繼電器執行|根據本地、Hub、App、Cloud 或自動化指令執行 on/off 繼電器動作|
|能源回報|計量版本回報電壓、電流、功率、電能與異常負載數據|
|狀態管理與同步|維護繼電器狀態、負載狀態、能源狀態、故障狀態與 Runtime 元數據|
|本地控制邏輯|執行已配置本地指令與 Hub 輔助自動化|
|指令執行優先級|安全 / 關斷指令 > 本地實體操作 > Hub / ArtiOS 自動化 > 雲端指令 > 非關鍵同步|
|與 ArtiOS 整合|Act 動作參與場景、排程、自動化與電力協同|
|與 Hub 整合|Hub 儲存自動化邏輯、負載狀態、能源數據與指令策略|
|與 Gate 整合|Gate 可依部署提供本地網路路徑|
|與 Edge 整合|Edge 可使用能源與負載數據進行診斷、優化與狀態推斷|
|與 Cloud 整合|Cloud 提供遠端控制、能源分析、生命週期管理與同步|
|App 互動|App 支援設定、on/off 控制、能源查看、房間分配與支援條件下的遠端控制|
|多 Act 部署|多個 Act 節點可參與房間、迴路、機櫃、教室或校園級能源邏輯|

---

# 9. Data & Event Flow

# 9. 數據與事件流

## EN

Artibird Act manages bidirectional communication between electrical execution, load state, energy data, and the Artibird / OceanAI runtime system.

Typical flows:

1. App Command → Hub → Act Relay Execution
    
2. Local Automation → Hub / ArtiOS → Act Load Control
    
3. Act State → Hub → Cloud Synchronization
    
4. Energy Data → Hub → Edge / Cloud Analytics
    
5. Fault Event → Act → Hub → App Notification
    
6. Edge Optimization → ArtiOS → Act Power Coordination
    

## ZH-TW

Artibird Act 管理電力執行、負載狀態、能源數據與 Artibird / OceanAI Runtime 系統之間的雙向通訊。

典型流程：

1. App 指令 → Hub → Act 繼電器執行
    
2. 本地自動化 → Hub / ArtiOS → Act 負載控制
    
3. Act 狀態 → Hub → Cloud 同步
    
4. 能源數據 → Hub → Edge / Cloud 分析
    
5. 故障事件 → Act → Hub → App 通知
    
6. Edge 優化 → ArtiOS → Act 電力協同
    

## English Table

|Flow Type|Direction|Description|
|---|---|---|
|Relay Command|App / Hub / ArtiOS / Cloud → Act|On/off load-control command|
|Relay Execution|Act → Load|Physical electrical switching|
|State Report|Act → Hub / Cloud|Relay state, load state, online state, fault state|
|Energy Report|Act → Hub / Edge / Cloud|Voltage, current, power, energy, and abnormal load data where supported|
|Local Automation|Sensor / Schedule / Scene → Hub → Act|Automated power execution based on local runtime logic|
|Remote Command|Cloud / App → Hub / Act|Remote load control where supported|
|Fault Event|Act → Hub / App / Cloud|Overload, thermal warning, relay fault, abnormal current, communication failure|
|Health Report|Act → Hub / Cloud|Connectivity, firmware, relay, measurement, thermal, and runtime status|
|Edge Context|Act / Hub → Edge|Load state, energy profile, runtime context, and fault pattern data|

## 中文表

|流類型|方向|說明|
|---|---|---|
|繼電器指令|App / Hub / ArtiOS / Cloud → Act|on/off 負載控制指令|
|繼電器執行|Act → 負載|實體電力開關|
|狀態回報|Act → Hub / Cloud|繼電器狀態、負載狀態、在線狀態與故障狀態|
|能源回報|Act → Hub / Edge / Cloud|在支援條件下回報電壓、電流、功率、電能與異常負載數據|
|本地自動化|Sensor / Schedule / Scene → Hub → Act|基於本地 Runtime 邏輯的自動電力執行|
|遠端指令|Cloud / App → Hub / Act|在支援條件下進行遠端負載控制|
|故障事件|Act → Hub / App / Cloud|過載、熱警告、繼電器故障、異常電流、通訊失敗|
|健康回報|Act → Hub / Cloud|連接、韌體、繼電器、計量、熱狀態與 Runtime 狀態|
|Edge 上下文|Act / Hub → Edge|負載狀態、能源曲線、Runtime 上下文與故障模式數據|

---

# 10. Safety, Reliability & Failure Behavior

# 10. 安全、可靠性與故障行為

## EN

Artibird Act must maintain predictable behavior under abnormal operating conditions. Since Act controls electrical loads, relay safety, load protection, thermal stability, state recovery, and certification-oriented electrical design are critical.

## ZH-TW

Artibird Act 必須在異常運作條件下保持可預期行為。由於 Act 控制電氣負載，繼電器安全、負載保護、熱穩定、狀態恢復與面向認證的電氣設計非常重要。

## English Table

|Item|Description|
|---|---|
|Watchdog|Detects firmware lockup and triggers recovery|
|Brownout Detection|Detects voltage instability and protects runtime behavior|
|Fail-Safe Behavior|Defines safe relay state during fault, reboot, or communication loss|
|Physical Override|Local physical control should remain available where safe and supported|
|Relay Protection|Prevents relay chatter, repeated switching, overheating, contact wear, or unsafe state|
|Load Protection|Defines supported load type, load rating, inrush current handling, and safety constraints|
|Overload Protection|Detects or prevents overload where hardware supports sensing or protection|
|Thermal Protection|Detects or limits operation under excessive temperature where sensor exists|
|Energy Measurement Abnormality|Detects abnormal voltage, current, power, or measurement failure where supported|
|Power Failure Recovery|Restores relay state policy, configuration, and runtime state after reboot|
|OTA Failure Recovery|Supports rollback or safe firmware recovery strategy|
|Hub Disconnection Behavior|Maintains local execution and safe state where supported|
|Cloud Disconnection Behavior|Maintains local operation and resynchronizes after recovery|
|Security Mechanisms|Authentication, encrypted communication where applicable, secure pairing, credential protection, secure OTA|
|Debug Protection|Production system should disable or protect debug interfaces|

## 中文表

|項目|說明|
|---|---|
|Watchdog|偵測韌體鎖死並觸發恢復|
|低壓檢測|偵測電壓不穩並保護 Runtime 行為|
|故障安全行為|定義故障、重啟或通訊丟失時的安全繼電器狀態|
|實體覆蓋控制|在安全且支援條件下，本地實體控制應保持可用|
|繼電器保護|防止繼電器抖動、重複開關、過熱、觸點磨損或不安全狀態|
|負載保護|定義支援負載類型、負載額定值、浪湧電流處理與安全限制|
|過載保護|在硬體支援感測或保護條件下偵測或防止過載|
|熱保護|在具備感測器條件下偵測或限制過高溫操作|
|電能計量異常|在支援條件下偵測異常電壓、電流、功率或量測失效|
|斷電恢復|重啟後恢復繼電器狀態策略、配置與 Runtime 狀態|
|OTA 失敗恢復|支援回滾或安全韌體恢復策略|
|Hub 斷線行為|在支援條件下維持本地執行與安全狀態|
|雲端斷線行為|維持本地運作，並於恢復後重新同步|
|安全機制|身份認證、適用情況下的加密通訊、安全配對、憑證保護、安全 OTA|
|Debug 保護|量產系統應停用或保護 Debug 介面|

---

# 11. Installation, Deployment & Maintenance

# 11. 安裝、部署與維護

## English Table

|Item|Description|
|---|---|
|Installation Method|Plug-in / in-wall relay / cabinet-mounted / DIN rail / embedded module|
|Deployment Scenario|Home / classroom / office / smart building / campus / agriculture / infrastructure|
|Installer Type|End user for plug-in variants; electrician or qualified installer for AC relay, in-wall, or cabinet variants|
|Power Requirement|AC mains for plug and relay variants; DC for low-voltage variants|
|Wiring Requirement|Line / neutral / load wiring for relay variants; plug-in wiring for smart plug variants|
|Mounting Requirement|Socket body, wall box, cabinet rail, DIN rail, screw mount, or embedded enclosure|
|LED Function|Power, pairing, Wi-Fi, relay state, energy status, cloud / local status, fault|
|Button Function|Reset, pairing, relay toggle, local mode, factory reset|
|Maintenance Method|Artibird App, Hub console, cloud console, local service interface, physical reset|
|Firmware Update Method|Wi-Fi OTA / local update / service tool depending on variant|
|Replacement Procedure|Act replacement, room binding, load assignment, energy profile migration, re-pairing workflow|
|Service Access|Controlled admin or service access required|

## 中文表

|項目|說明|
|---|---|
|安裝方式|插座式 / 牆內繼電器 / 配電箱安裝 / DIN Rail / 嵌入式模組|
|部署場景|住宅 / 教室 / 辦公室 / 智慧建築 / 校園 / 農業 / 基礎設施|
|安裝人員類型|插座式版本可由用戶安裝；AC 繼電器、牆內或配電箱版本需電工或合格安裝人員|
|供電要求|插座與繼電器版本採用 AC 市電；低壓版本採用 DC|
|接線要求|繼電器版本需火線 / 零線 / 負載線；智慧插座版本為插接式電氣結構|
|固定要求|插座本體、牆盒、機櫃導軌、DIN Rail、螺絲固定或嵌入式外殼|
|LED 功能|電源、配對、Wi-Fi、繼電器狀態、能源狀態、雲端 / 本地狀態、故障|
|按鍵功能|重置、配對、繼電器切換、本地模式、恢復出廠設定|
|維護方式|Artibird App、Hub Console、Cloud Console、本地維護介面、實體重置|
|韌體更新方式|依版本採用 Wi-Fi OTA / 本地更新 / 維護工具|
|更換流程|Act 替換、房間綁定、負載分配、能源配置遷移、重新配對流程|
|服務存取|必須具備受控管理員或維護存取|

---

# 12. Testing, Validation & Certification

# 12. 測試、驗證與認證

## EN

Artibird Act must be validated as an electrical execution device and, where applicable, an energy measurement device. Testing must cover relay behavior, load rating, thermal stability, Wi-Fi communication, local response, Hub integration, cloud synchronization, energy measurement accuracy, security, and certification compliance.

## ZH-TW

Artibird Act 必須作為電力執行設備進行驗證；在適用情況下，也必須作為電能計量設備進行驗證。測試必須涵蓋繼電器行為、負載額定值、熱穩定、Wi-Fi 通訊、本地回應、Hub 整合、雲端同步、電能計量精度、安全與認證合規。

## English Table

|Test Category|Objective|
|---|---|
|Functional Test|Verify Act core functions, relay execution, state reporting, and energy reporting where supported|
|Power Test|Verify AC / DC power behavior, brownout, reboot, and recovery|
|Relay Test|Verify relay endurance, switching safety, contact behavior, and state recovery|
|Load Test|Verify supported load type, rated current, inrush current, and thermal behavior|
|Thermal Test|Verify enclosure temperature and component temperature under defined load|
|Energy Measurement Test|Verify voltage, current, power, energy accuracy, and calibration where supported|
|Wi-Fi Test|Verify Wi-Fi connection, reconnect, latency, and local communication|
|Local Control Test|Verify local relay operation and Hub-assisted automation|
|Remote Control Test|Verify cloud-assisted remote relay control where supported|
|MQTT Test|Verify message delivery, reconnect, QoS behavior, and routing where implemented|
|Hub Integration Test|Verify communication with Artibird Hub and ArtiOS services|
|Gate Integration Test|Verify local network path where Gate is used|
|Edge Integration Test|Verify energy and load data availability for diagnostics and optimization|
|Cloud Sync Test|Verify state, account, energy data, log, and lifecycle synchronization|
|Stress Test|Verify long-duration relay operation and high-frequency command handling|
|OTA Test|Verify firmware update, rollback, and recovery behavior|
|Security Test|Verify authentication, encryption, secure pairing, credential protection, and debug protection|
|Reliability Test|Verify stability under power, network, load, thermal, relay, and runtime variation|
|Certification Test|Verify compliance for FCC, CE, RoHS, UL / ETL where applicable|
|Claim Validation|Verify public product claims with formal test evidence|

## 中文表

|測試類別|目標|
|---|---|
|功能測試|驗證 Act 核心功能、繼電器執行、狀態回報，以及支援條件下的能源回報|
|電源測試|驗證 AC / DC 電源、低壓、重啟與恢復行為|
|繼電器測試|驗證繼電器壽命、開關安全、觸點行為與狀態恢復|
|負載測試|驗證支援負載類型、額定電流、浪湧電流與熱行為|
|熱測試|在明確負載下驗證外殼溫度與元件溫度|
|電能計量測試|在支援條件下驗證電壓、電流、功率、電能精度與校準|
|Wi-Fi 測試|驗證 Wi-Fi 連接、重連、延遲與本地通訊|
|本地控制測試|驗證本地繼電器操作與 Hub 輔助自動化|
|遠端控制測試|驗證支援條件下的雲端輔助遠端繼電器控制|
|MQTT 測試|在實作條件下驗證消息投遞、重連、QoS 行為與路由|
|Hub 整合測試|驗證與 Artibird Hub 及 ArtiOS 服務的通訊|
|Gate 整合測試|在使用 Gate 的情況下驗證本地網路路徑|
|Edge 整合測試|驗證能源與負載數據可用於診斷與優化|
|雲端同步測試|驗證狀態、帳號、能源數據、日誌與生命週期同步|
|壓力測試|驗證長時間繼電器運作與高頻指令處理|
|OTA 測試|驗證韌體更新、回滾與恢復行為|
|安全測試|驗證身份認證、加密、安全配對、憑證保護與 Debug 保護|
|可靠性測試|驗證電源、網路、負載、熱、繼電器與 Runtime 變化下的穩定性|
|認證測試|驗證 FCC、CE、RoHS，以及適用條件下的 UL / ETL 合規|
|宣稱驗證|以正式測試證據驗證公開產品宣稱|

## Certification Targets

## 認證目標

|Certification|Applicability|
|---|---|
|FCC|Required for U.S. wireless market|
|CE|Required for EU market|
|RoHS|Environmental compliance|
|REACH|Recommended for EU market|
|UL / ETL|Required for AC-powered plug, relay, in-wall, or cabinet electrical variants|
|UL 498|Applicable direction for plug / receptacle-related products|
|UL 60730-1|Applicable direction for automatic electrical controls|
|UL 244A|Applicable direction for solid-state controls where relevant|
|Bluetooth Qualification|Required if using Bluetooth branding|
|Wi-Fi Certification|Optional depending on commercial strategy|
|Cybersecurity Labeling|Optional depending on market and retail channel|

|認證|適用範圍|
|---|---|
|FCC|美國無線市場需要|
|CE|歐盟市場需要|
|RoHS|環保合規|
|REACH|歐盟市場建議|
|UL / ETL|AC 供電插座、繼電器、牆內或配電箱電氣版本需要|
|UL 498|適用於插頭 / 插座相關產品方向|
|UL 60730-1|適用於自動電氣控制器方向|
|UL 244A|在相關條件下適用於固態控制方向|
|Bluetooth 資格認證|若使用 Bluetooth 品牌則需要|
|Wi-Fi 認證|依商業策略選配|
|網路安全標籤|依市場與零售渠道選配|

---

# 13. Product Variants

# 13. 產品版本

## English Table

|Variant / SKU|Hardware Difference|Firmware Difference|Market / Region|Certification Difference|Notes|
|---|---|---|---|---|---|
|Artibird Act Relay|ESP32-C3 relay module|Relay control profile|Home / office / building|UL / ETL + FCC / CE / RoHS|Basic load execution|
|Artibird Act Plug|Plug-in smart plug form|Plug relay and app control profile|Residential / office|UL 498 direction + FCC / CE / RoHS|Easier first-market entry|
|Artibird Act-E|Relay + energy measurement IC|Energy reporting and analytics profile|Home / campus / energy management|Additional metering validation|Energy system core variant|
|Artibird Act Cabinet|Cabinet or DIN rail module|Cabinet execution and reporting profile|Building / campus / infrastructure|Electrical cabinet validation|Professional installation|
|Artibird Act Climate|Plug or relay optimized for AC / HVAC loads|Climate load and energy profile|Home / classroom / office|Load and thermal validation required|Supports AC energy monitoring|
|Artibird Act Agriculture|Relay node for pumps, irrigation, fans|Outdoor / agriculture profile|Agriculture / infrastructure|Environmental validation required|Requires enclosure and load testing|

## 中文表

|版本 / SKU|硬體差異|韌體差異|市場 / 地區|認證差異|備註|
|---|---|---|---|---|---|
|Artibird Act Relay|ESP32-C3 繼電器模組|繼電器控制配置|住宅 / 辦公 / 建築|UL / ETL + FCC / CE / RoHS|基礎負載執行|
|Artibird Act Plug|插座式智慧插座形態|插座繼電器與 App 控制配置|住宅 / 辦公|UL 498 方向 + FCC / CE / RoHS|更適合作為首發市場入口|
|Artibird Act-E|繼電器 + 電能計量 IC|能源回報與分析配置|住宅 / 校園 / 能源管理|需額外計量驗證|能源系統核心版本|
|Artibird Act Cabinet|配電箱或 DIN Rail 模組|機櫃執行與回報配置|建築 / 校園 / 基礎設施|需電氣櫃驗證|專業安裝版本|
|Artibird Act Climate|面向空調 / HVAC 負載優化的插座或繼電器|空調負載與能源配置|住宅 / 教室 / 辦公室|必須進行負載與熱驗證|支援空調能源監測|
|Artibird Act Agriculture|面向水泵、灌溉、風扇的繼電器節點|戶外 / 農業配置|農業 / 基礎設施|必須環境驗證|需要外殼與負載測試|

---

# 14. Commercial Positioning

# 14. 商業定位

## EN

Artibird Act is positioned as the physical electrical execution node for coordinated intelligent environments. It enables devices, plugs, circuits, and selected loads to participate in scenes, automation, energy optimization, and runtime coordination.

## ZH-TW

Artibird Act 被定位為協同智慧空間中的實體電力執行節點。它使設備、插座、迴路與特定負載能夠參與場景、自動化、能源優化與 Runtime 協同。

## English Table

|Item|Description|
|---|---|
|Target Market|Residential, classroom, office, campus, smart building, agriculture, infrastructure|
|Key Selling Points|Local-first electrical execution, relay control, smart plug option, energy measurement option, ArtiOS integration, cloud-enhanced remote control|
|Use Cases|Appliance control, lighting circuit control, smart plug control, classroom energy control, irrigation pump control, HVAC energy monitoring|
|Compatibility Statement|Designed for Artibird Hub, Artibird Gate, ArtiOS, OceanAI Cloud, OceanAI Edge, Artibird App, and supported electrical loads|
|Local-first Statement|Physical relay execution and supported local automation remain available where deployment architecture permits|
|Cloud-enhanced Statement|Cloud adds remote control, energy analytics, synchronization, lifecycle management, and multi-site reporting|
|Remote Control Statement|Remote control requires OceanAI Cloud connectivity, account binding, network availability, and supported product variant|
|Energy Claim|Must reference Energy Measurement Validation Report|
|Load Claim|Must reference Load Rating and Thermal Validation Report|
|Prohibited Claims|Unlimited load rating, unsupported dimming, unvalidated energy accuracy, uncertified electrical safety, industrial-grade claim without validation|

## 中文表

|項目|說明|
|---|---|
|目標市場|住宅、教室、辦公室、校園、智慧建築、農業、基礎設施|
|核心賣點|本地優先電力執行、繼電器控制、智慧插座選項、電能計量選項、ArtiOS 整合、雲端增強遠端控制|
|使用場景|家電控制、照明迴路控制、智慧插座控制、教室能源控制、灌溉水泵控制、HVAC 能源監測|
|相容性聲明|面向 Artibird Hub、Artibird Gate、ArtiOS、OceanAI Cloud、OceanAI Edge、Artibird App 與受支援電氣負載設計|
|本地優先聲明|在部署架構允許條件下，實體繼電器執行與受支援本地自動化保持可用|
|雲端增強聲明|雲端增加遠端控制、能源分析、同步、生命週期管理與多站點報告|
|遠端控制聲明|遠端控制需要 OceanAI Cloud 連接、帳號綁定、網路可用與受支援產品版本|
|能源宣稱|必須引用電能計量驗證報告|
|負載宣稱|必須引用負載額定與熱驗證報告|
|禁止宣稱|無限制負載能力、未支援調光、未驗證能源精度、未認證電氣安全、未驗證工業級宣稱|

---

# 15. Engineering Claim Policy

# 15. 工程宣稱政策

## Mandatory Statement

## 強制聲明

**EN**  
All Artibird Act performance claims, especially relay load rating, relay endurance, thermal stability, energy measurement accuracy, Wi-Fi stability, local response time, remote control performance, reliability, and safety, must be based on validated test reports under defined conditions. Theoretical relay datasheet values, chip specifications, plug ratings, or metering IC accuracy alone shall not be used as product claims.

**ZH-TW**  
所有 Artibird Act 性能宣稱，尤其是繼電器負載額定值、繼電器壽命、熱穩定性、電能計量精度、Wi-Fi 穩定性、本地回應時間、遠端控制性能、可靠性與安全性，必須基於明確條件下的已驗證測試報告。繼電器資料手冊數值、晶片規格、插座額定值或計量 IC 精度本身，不得直接作為產品宣稱。

## English Table — Claim Policy

|Claim Type|Requirement|
|---|---|
|Load Rating|Must reference load type, current, voltage, enclosure, PCB, relay, thermal condition, and certification scope|
|Relay Endurance|Must reference switching cycle test under defined load and environment|
|Thermal Stability|Must reference enclosure temperature, component temperature, ambient condition, and operating duration|
|Energy Measurement Accuracy|Must reference calibration, load type, current range, voltage range, and metering validation|
|Wi-Fi Stability|Must reference network test, reconnect behavior, and long-duration operation|
|Local-first Capability|Must define exact offline functions and dependency conditions|
|Remote Control|Must define cloud, account, network, and supported variant dependency|
|Dimming Support|Must not be claimed unless dimming hardware and firmware are implemented and validated|
|Safety|Must reference certification path and implemented protection mechanisms|
|Compatibility|Must define tested load types, plug types, regions, installation methods, and wiring constraints|

## 中文表 — 宣稱政策

|宣稱類型|要求|
|---|---|
|負載額定值|必須引用負載類型、電流、電壓、外殼、PCB、繼電器、熱條件與認證範圍|
|繼電器壽命|必須引用明確負載與環境下的開關循環測試|
|熱穩定性|必須引用外殼溫度、元件溫度、環境條件與運作時長|
|電能計量精度|必須引用校準、負載類型、電流範圍、電壓範圍與計量驗證|
|Wi-Fi 穩定性|必須引用網路測試、重連行為與長時間運作|
|本地優先能力|必須定義具體離線功能與依賴條件|
|遠端控制|必須定義雲端、帳號、網路與支援版本依賴|
|調光支援|除非調光硬體與韌體已實作並驗證，否則不得宣稱|
|安全性|必須引用認證路線與已實作保護機制|
|相容性|必須定義已測負載類型、插頭類型、地區、安裝方式與接線限制|

---

# 16. Revision History

# 16. 版本記錄

## English Table

|Version|Date|Author|Description|
|---|---|---|---|
|v1.0|2026-05-08|OceanAI / Artibird Product Team|Initial Artibird Act Product Specification based on Artibird Product Specification Template v1.1|

## 中文表

|版本|日期|作者|說明|
|---|---|---|---|
|v1.0|2026-05-08|OceanAI / Artibird Product Team|基於 Artibird 產品規格書標準模板 v1.1 建立的 Artibird Act 初始產品規格書|

---

# Appendix A — Terminology

# 附錄 A｜術語對照表

|English Term|中文術語|Definition|
|---|---|---|
|Artibird Act|Artibird Act|Electrical execution node for relay, plug, load, or energy-control functions|
|Act-E|Act-E|Energy measurement variant of Artibird Act|
|Relay Control|繼電器控制|Electrical on/off control through relay hardware|
|Smart Plug|智慧插座|Plug-in form factor for controlled load execution|
|Load Rating|負載額定值|Validated electrical load capability under defined voltage, current, load type, and thermal conditions|
|Energy Measurement|電能計量|Measurement of voltage, current, power, and energy where supported|
|Local-first|本地優先|Core functions are designed to operate locally whenever possible|
|Cloud-enhanced|雲端增強|Cloud services extend local operation with remote, sync, analytics, or AI capabilities|
|Load Rating Validation Report|負載額定驗證報告|Formal report validating load performance and safety under defined conditions|
|Energy Measurement Validation Report|電能計量驗證報告|Formal report validating measurement accuracy under defined conditions|

---

# Appendix B — Risk Register

# 附錄 B｜風險登記表

## English Table

|Risk ID|Risk Description|Impact|Mitigation|
|---|---|---|---|
|R-ACT-001|Load rating overclaimed based on relay datasheet only|High|Require load, thermal, PCB, enclosure, and certification validation|
|R-ACT-002|Electrical safety risk in AC-powered variants|High|Apply UL / ETL strategy, isolation, protection, and qualified installation|
|R-ACT-003|Overheating under continuous load|High|Validate thermal performance under rated and abnormal loads|
|R-ACT-004|Energy measurement accuracy overclaimed|Medium / High|Require calibration and Energy Measurement Validation Report|
|R-ACT-005|Relay chatter or repeated switching|Medium / High|Implement debounce, interlock, and command-rate limiting|
|R-ACT-006|Unsupported dimming claim|High|Prohibit dimming claim unless dedicated dimming hardware and firmware exist|
|R-ACT-007|Cloud dependency weakens local-first positioning|High|Clearly separate local-first and cloud-enhanced functions|
|R-ACT-008|Wi-Fi instability affects load control|Medium / High|Validate local fallback and reconnection behavior|
|R-ACT-009|Firmware update failure affects relay state|High|Define OTA rollback and relay state recovery policy|
|R-ACT-010|Product language exceeds tested capability|High|Apply Engineering Claim Policy|

## 中文表

|風險 ID|風險描述|影響|緩解措施|
|---|---|---|---|
|R-ACT-001|僅基於繼電器資料手冊過度宣稱負載能力|高|必須進行負載、熱、PCB、外殼與認證驗證|
|R-ACT-002|AC 供電版本存在電氣安全風險|高|套用 UL / ETL 策略、隔離、保護與合格安裝要求|
|R-ACT-003|連續負載下過熱|高|在額定與異常負載下驗證熱性能|
|R-ACT-004|過度宣稱電能計量精度|中 / 高|必須校準並取得電能計量驗證報告|
|R-ACT-005|繼電器抖動或重複開關|中 / 高|實作防抖、互鎖與指令頻率限制|
|R-ACT-006|未支援調光卻進行調光宣稱|高|除非具備專用調光硬體與韌體，否則禁止調光宣稱|
|R-ACT-007|雲端依賴削弱本地優先定位|高|清楚區分本地優先與雲端增強功能|
|R-ACT-008|Wi-Fi 不穩影響負載控制|中 / 高|驗證本地回退與重連行為|
|R-ACT-009|韌體更新失敗影響繼電器狀態|高|定義 OTA 回滾與繼電器狀態恢復策略|
|R-ACT-010|產品語言超出已測試能力|高|套用工程宣稱政策|

---

# Appendix C — Validation Checklist

# 附錄 C｜驗證清單

## English Table

|Checklist Item|Required|Status|Evidence|
|---|---|---|---|
|Hardware specification completed|Yes|TBD|Schematic / BOM / enclosure design|
|ESP32-C3 firmware architecture completed|Yes|TBD|Firmware design document|
|Relay behavior validated|Yes|TBD|Relay test report|
|Load rating validated|Yes|TBD|Load and thermal validation report|
|Thermal stability validated|Yes|TBD|Thermal test report|
|Electrical protection validated|Yes|TBD|Protection circuit test report|
|Wi-Fi communication validated|Yes|TBD|Wi-Fi test report|
|Energy measurement validated|For Act-E|TBD|Energy Measurement Validation Report|
|Local-first behavior validated|Yes|TBD|Local operation test report|
|Hub integration validated|Yes|TBD|Hub integration test|
|Gate integration validated|If applicable|TBD|Gate integration test|
|Cloud-enhanced behavior validated|Yes|TBD|Cloud integration test|
|Remote control validated|Yes|TBD|App / cloud test|
|OTA update validated|Yes|TBD|OTA test report|
|Security mechanisms validated|Yes|TBD|Security test report|
|Failure behavior validated|Yes|TBD|Reliability test report|
|Certification path defined|Yes|TBD|Certification plan|
|Commercial claims reviewed|Yes|TBD|Claim review record|

## 中文表

|檢查項目|是否必要|狀態|證據|
|---|---|---|---|
|硬體規格已完成|是|TBD|原理圖 / BOM / 外殼設計|
|ESP32-C3 韌體架構已完成|是|TBD|韌體設計文件|
|繼電器行為已驗證|是|TBD|繼電器測試報告|
|負載額定值已驗證|是|TBD|負載與熱驗證報告|
|熱穩定性已驗證|是|TBD|熱測試報告|
|電氣保護已驗證|是|TBD|保護電路測試報告|
|Wi-Fi 通訊已驗證|是|TBD|Wi-Fi 測試報告|
|電能計量已驗證|Act-E 需要|TBD|電能計量驗證報告|
|本地優先行為已驗證|是|TBD|本地運作測試報告|
|Hub 整合已驗證|是|TBD|Hub 整合測試|
|Gate 整合已驗證|如適用|TBD|Gate 整合測試|
|雲端增強行為已驗證|是|TBD|雲端整合測試|
|遠端控制已驗證|是|TBD|App / 雲端測試|
|OTA 更新已驗證|是|TBD|OTA 測試報告|
|安全機制已驗證|是|TBD|安全測試報告|
|故障行為已驗證|是|TBD|可靠性測試報告|
|認證路線已定義|是|TBD|認證計畫|
|商業宣稱已審查|是|TBD|宣稱審查記錄|

---

# Document End

# 文件結束

## EN

This Artibird Act Product Specification v1.0 defines Act as the electrical execution node of the Artibird ecosystem. It provides a controlled engineering and system-level reference for relay execution, smart plug control, energy measurement variants, ArtiOS runtime participation, local-first operation, cloud-enhanced control, electrical safety, validation, certification, and commercial claim boundaries.

## ZH-TW

本《Artibird Act 產品規格書 v1.0》將 Act 定義為 Artibird 生態中的電力執行節點。它為繼電器執行、智慧插座控制、電能計量版本、ArtiOS Runtime 參與、本地優先運作、雲端增強控制、電氣安全、驗證、認證與商業宣稱邊界，提供受控的工程與系統級參考。

---

## Topic Extension

## 話題延伸

下一個建議寫：

**Artibird Sense Product Specification v1.0**  
**Artibird Sense 產品規格書 v1.0**

它可以統一你目前已有的：

**Temperature / Humidity / Light / Occupancy / Environmental Sensing Node**  
**溫度 / 濕度 / 光照 / 人在 / 環境感測節點**