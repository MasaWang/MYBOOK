# Artibird Switch Product Specification v1.0

# Artibird Switch 產品規格書 v1.0

**Engineering + System Specification Edition**  
**工程與系統規格書版本**

**Version Date**: 2026-05-08  
**Document Type**: Product Specification  
**Product Category**: Smart Switch / Event Node / Relay Control Node  
**Hardware Foundation**: nRF52833 / ESP32-C3  
**System Architecture**: OceanAI Coordinated Intelligence Architecture  
**Runtime Platform**: ArtiOS-compatible

**版本日期**：2026-05-08  
**文件類型**：產品規格書  
**產品類別**：智慧開關 / 事件節點 / 繼電器控制節點  
**硬體基礎**：nRF52833 / ESP32-C3  
**系統架構**：OceanAI 協同智慧架構  
**Runtime 平台**：相容 ArtiOS

---

# 1. Document Information

# 1. 文件資訊

## English Table

|Item|Description|
|---|---|
|Document Name|Artibird Switch Product Specification|
|Version|v1.0|
|Document Type|Engineering + System Specification|
|Product Name|Artibird Switch|
|Product Category|Smart Switch / Event Node / Relay Control Node|
|System Architecture|OceanAI Coordinated Intelligence Architecture|
|Runtime Platform|ArtiOS-compatible|
|Hardware Foundation|nRF52833 battery-powered event switch / ESP32-C3 zero-neutral relay switch|
|Specification Level|Engineering + System|
|Intended Audience|Hardware, Firmware, Software, System, Testing, Certification, Product Teams|
|Release Date|2026-05-08|

## 中文表

| 項目         | 說明                                  |
| ---------- | ----------------------------------- |
| 文件名稱       | Artibird Switch 產品規格書               |
| 文件版本       | v1.0                                |
| 文件類型       | 工程與系統規格書                            |
| 產品名稱       | Artibird Switch                     |
| 產品類別       | 智慧開關 / 事件節點 / 繼電器控制節點               |
| 系統架構       | OceanAI 協同智慧架構                      |
| Runtime 平台 | 相容 ArtiOS                           |
| 硬體基礎       | nRF52833 電池式事件開關 / ESP32-C3 零火繼電器開關 |
| 規格書層級      | 工程與系統規格                             |
| 適用對象       | 硬體、韌體、軟體、系統、測試、認證、產品團隊              |
| 發布日期       | 2026-05-08                          |

---

# 2. Product Overview

# 2. 產品總覽

## EN

Artibird Switch is a distributed intelligent switching device designed for the Artibird product ecosystem and the OceanAI coordinated intelligence architecture. It provides physical user interaction, event generation, electrical switching, and runtime participation for coordinated spatial control.

Within the Artibird ecosystem, Switch has two primary implementation paths. The **battery-powered single-live event switch** is based on nRF52833 and operates primarily as an event-only scene transmitter. It does not directly control load power. Instead, it sends user-triggered events to Gate, Hub, ArtiOS, or other coordinated runtime paths. The **zero-neutral relay switch** is based on ESP32-C3 and operates as a powered on/off relay control node for direct load switching.

Artibird Switch follows a **local-first, cloud-enhanced** operating model. Local touch interaction, event reporting, relay control, Hub-assisted automation, and local scene execution should remain available within the local environment whenever technically feasible. Cloud connectivity extends the system through remote control, synchronization, account binding, lifecycle management, analytics, and multi-site coordination. In this role, Artibird Switch serves as both a human interaction surface and a physical execution point within the OceanAI runtime system.

## ZH-TW

Artibird Switch 是一款面向 Artibird 產品生態與 OceanAI 協同智慧架構設計的分布式智慧開關設備。它為協同空間控制提供實體人機互動、事件生成、電力開關與 Runtime 參與能力。

在 Artibird 生態中，Switch 具有兩條主要實作路徑。**電池式單火事件開關** 基於 nRF52833，主要作為事件型場景發射器運作，不直接控制負載電力，而是將用戶觸發事件傳送至 Gate、Hub、ArtiOS 或其他協同 Runtime 路徑。**零火繼電器開關** 基於 ESP32-C3，作為持續供電的 on/off 繼電器控制節點，負責直接負載開關控制。

Artibird Switch 採用 **本地優先、雲端增強** 的運作模式。本地觸控互動、事件回報、繼電器控制、Hub 輔助自動化與本地場景執行，應在技術可行條件下保持於本地環境中可用。雲端連接則透過遠端控制、同步、帳號綁定、生命週期管理、分析與多站點協同擴展系統能力。在此角色中，Artibird Switch 同時作為 OceanAI Runtime 系統中的人機互動表面與物理執行點。

---

# 3. System Positioning & Role

# 3. 系統定位與角色

## English Table

|Item|Description|
|---|---|
|System Layer|Device Interaction Layer / Event Layer / Execution Layer|
|Primary Role|User-triggered event node and, for powered variants, relay-based load control node|
|Runtime Participation|Generates user events, reports switch state, receives control commands, and participates in scenes and automation|
|Relationship with Gate|Battery BLE variants communicate through Artibird Gate or BLE-capable gateway path|
|Relationship with Hub|Hub processes switch events, automations, scene rules, state management, and relay commands|
|Relationship with Edge|Edge may use switch events and spatial context for intelligent scene interpretation|
|Relationship with Cloud|Supports remote status, remote control for powered variants, synchronization, account binding, lifecycle management|
|Local-first Capability|Yes|
|Offline Operation Scope|Local touch input, BLE event transmission, relay on/off control, and Hub-assisted scenes where supported|
|Remote Control Scope|Remote relay control and state access through OceanAI Cloud where supported|
|System Dependency|Gate-assisted for BLE event variants; Hub-enhanced for scenes and automation; cloud-enhanced for remote access|

## 中文表

|項目|說明|
|---|---|
|系統層級|設備互動層 / 事件層 / 執行層|
|主要角色|用戶觸發事件節點；對持續供電版本而言，也是基於繼電器的負載控制節點|
|Runtime 參與方式|生成用戶事件、回報開關狀態、接收控制指令，並參與場景與自動化|
|與 Gate 的關係|電池 BLE 版本透過 Artibird Gate 或 BLE 能力網關路徑通訊|
|與 Hub 的關係|Hub 處理開關事件、自動化、場景規則、狀態管理與繼電器指令|
|與 Edge 的關係|Edge 可使用開關事件與空間上下文進行智慧場景理解|
|與 Cloud 的關係|支援遠端狀態、持續供電版本的遠端控制、同步、帳號綁定與生命週期管理|
|本地優先能力|是|
|離線運作範圍|在支援條件下，本地觸控輸入、BLE 事件傳輸、繼電器 on/off 控制與 Hub 輔助場景可運作|
|遠端控制範圍|在支援條件下，透過 OceanAI Cloud 進行遠端繼電器控制與狀態存取|
|系統依賴關係|BLE 事件版本依賴 Gate 輔助；場景與自動化由 Hub 增強；遠端存取由雲端增強|

---

# 4. Core Design Principles

# 4. 核心設計原則

## 4.1 Local-First Runtime Architecture

## 4.1 本地優先 Runtime 架構

**EN**  
Artibird Switch prioritizes local interaction and local response. Touch input, event transmission, relay switching, and Hub-assisted scene execution should remain available locally whenever the deployment architecture permits.

**ZH-TW**  
Artibird Switch 優先保障本地互動與本地回應。觸控輸入、事件傳輸、繼電器開關與 Hub 輔助場景執行，應在部署架構允許的條件下保持本地可用。

## 4.2 Coordinated System Participation

## 4.2 協同式系統參與

**EN**  
Artibird Switch participates as a runtime interaction and execution node. A switch action should be understood as a system event that may trigger lighting, climate, curtains, appliance control, scenes, or multi-device coordination.

**ZH-TW**  
Artibird Switch 作為 Runtime 互動與執行節點參與運作。一次開關操作應被理解為系統事件，可觸發照明、空調、窗簾、家電控制、場景或多設備協同。

## 4.3 Cloud-Enhanced Intelligence

## 4.3 雲端增強智慧

**EN**  
Cloud services may extend Artibird Switch with remote control, scene synchronization, device lifecycle management, usage analytics, firmware updates, and multi-site management. Cloud functions should enhance local operation rather than replace local switching availability.

**ZH-TW**  
雲端服務可透過遠端控制、場景同步、設備生命週期管理、使用分析、韌體更新與多站點管理來擴展 Artibird Switch。雲端功能應增強本地運作，而不是取代本地開關可用性。

## 4.4 Distributed Operational Resilience

## 4.4 分布式運作韌性

**EN**  
Artibird Switch should maintain predictable behavior under network instability, gateway disconnection, Hub disconnection, cloud unavailability, low battery, power interruption, firmware recovery, and runtime load variation.

**ZH-TW**  
Artibird Switch 應在網路不穩定、網關斷線、Hub 斷線、雲端不可用、低電量、電源中斷、韌體恢復與 Runtime 負載變化時保持可預期行為。

## 4.5 Security by Design

## 4.5 安全預設設計

**EN**  
As an interaction and execution device, Artibird Switch must apply secure onboarding, authenticated command paths, encrypted communication where applicable, controlled remote access, secure OTA, relay safety logic, and protected debug interfaces.

**ZH-TW**  
作為互動與執行設備，Artibird Switch 必須採用安全入網、經身份認證的指令路徑、適用情況下的加密通訊、受控遠端存取、安全 OTA、繼電器安全邏輯與受保護的 Debug 介面。

---

# 5. Hardware Specification

# 5. 硬體規格

## English Table

|Item|Specification|
|---|---|
|Product Variants|Battery-powered single-live event switch / Zero-neutral relay switch|
|Battery Event Switch SoC|nRF52833|
|Powered Relay Switch SoC|ESP32-C3|
|Battery Switch Role|Event-only scene transmitter; not a direct load controller|
|Relay Switch Role|On/off relay load controller|
|Communication|BLE Mesh / BLE for battery variant; Wi-Fi / optional BLE for powered variant|
|BLE Low Power Role|LPN behavior recommended for battery variant|
|BLE Friend Support|Supported through ESP32-C3 / Gate / compatible Friend node where implemented|
|Power Source|2000 mAh lithium battery for event switch; AC mains with neutral for relay switch|
|Relay Type|Magnetic latching relay or mechanical relay depending on variant; relay only, no dimmer|
|Touch Interface|Capacitive touch panel / glass touch surface|
|Indicator|Low-power LED indicator / status LED|
|Sensor Support|Optional light / proximity / temperature by variant|
|I/O Interface|GPIO / touch input / relay driver / LED / programming interface|
|Antenna Type|PCB antenna / tuned antenna area; RF window required with metal frame designs|
|Enclosure Material|Flame-retardant PC / glass panel / optional metal frame with RF-safe window|
|Mounting Method|Wall switch box / 86-type panel / U.S. wall box variant depending on market|
|Operating Temperature|TBD based on enclosure and certification validation|
|Protection Features|ESD protection, input protection, relay protection, watchdog, low-battery detection, isolation for AC variant|
|Certification Direction|FCC / CE / RoHS; UL / ETL required for AC-powered or in-wall electrical variants|

## 中文表

|項目|規格|
|---|---|
|產品版本|電池式單火事件開關 / 零火繼電器開關|
|電池事件開關 SoC|nRF52833|
|持續供電繼電器開關 SoC|ESP32-C3|
|電池開關角色|事件型場景發射器；不作為直接負載控制器|
|繼電器開關角色|on/off 繼電器負載控制器|
|通訊方式|電池版本採用 BLE Mesh / BLE；持續供電版本採用 Wi-Fi / 可選 BLE|
|BLE 低功耗角色|電池版本建議採用 LPN 行為|
|BLE Friend 支援|透過 ESP32-C3 / Gate / 相容 Friend 節點實作|
|供電方式|事件開關採用 2000 mAh 鋰電池；繼電器開關採用帶零線 AC 市電|
|繼電器類型|依版本採用磁保持繼電器或機械繼電器；僅繼電器，不支援調光|
|觸控介面|電容觸控面板 / 玻璃觸控表面|
|指示燈|低功耗 LED 指示 / 狀態 LED|
|感測器支援|依版本可選配光感 / 接近 / 溫度|
|I/O 介面|GPIO / 觸控輸入 / 繼電器驅動 / LED / 燒錄介面|
|天線類型|PCB 天線 / 調校天線區域；金屬框設計需預留 RF 安全窗口|
|外殼材質|阻燃 PC / 玻璃面板 / 可選金屬框並設計 RF 安全窗口|
|安裝方式|牆壁開關盒 / 86 型面板 / 依市場提供美規牆盒版本|
|工作溫度|TBD，依外殼與認證驗證確定|
|保護功能|ESD 保護、輸入保護、繼電器保護、Watchdog、低電量檢測、AC 版本隔離保護|
|認證方向|FCC / CE / RoHS；AC 供電或牆內電氣版本需要 UL / ETL|

---

# 6. Connectivity & Networking

# 6. 連接與網路能力

## EN

Artibird Switch provides localized interaction and switching communication for the Artibird ecosystem. Battery-powered variants should prioritize ultra-low-power BLE event transmission, while powered relay variants may support Wi-Fi-based communication and continuous runtime participation.

For Switch-class products, battery life, touch event reliability, relay switching reliability, BLE communication stability, Wi-Fi communication stability, and local response latency must be defined as validated system-level boundaries.

## ZH-TW

Artibird Switch 為 Artibird 生態提供本地化互動與開關通訊能力。電池版本應優先採用超低功耗 BLE 事件傳輸，而持續供電繼電器版本可支援基於 Wi-Fi 的通訊與持續 Runtime 參與。

對 Switch 類產品而言，電池壽命、觸控事件可靠性、繼電器開關可靠性、BLE 通訊穩定性、Wi-Fi 通訊穩定性與本地回應延遲，都必須被定義為經驗證的系統級邊界。

## English Table

|Item|Battery Event Switch|Zero-Neutral Relay Switch|
|---|---|---|
|Primary Connectivity|BLE / BLE Mesh|Wi-Fi|
|Secondary Connectivity|BLE provisioning|BLE provisioning or local setup|
|Runtime Role|Event transmitter|Relay control node|
|Load Control|No direct load control|Direct on/off relay control|
|Local Network Access|Through Gate / BLE Friend / Hub path|Through Wi-Fi / Hub path|
|Cloud Connectivity|Through Hub / Cloud path|Through Hub or direct cloud path depending on architecture|
|Remote Control|Scene/event configuration only; no direct load if event-only|Supported for relay on/off where enabled|
|Offline Communication|BLE local event path where supported|Local relay control and Hub-assisted automation where supported|
|Power Strategy|Low-power periodic wake / event-driven transmission|Continuous powered operation|
|Max Event Frequency|TBD / Validated Value|TBD / Validated Value|
|Battery Life Target|2000 mAh lithium battery, target 1 year per charge under validated profile|Not applicable|
|Capacity / Reliability Report|Required before public claims|Required before public claims|

## 中文表

|項目|電池事件開關|零火繼電器開關|
|---|---|---|
|主要連接能力|BLE / BLE Mesh|Wi-Fi|
|次要連接能力|BLE 配網|BLE 配網或本地設定|
|Runtime 角色|事件發射器|繼電器控制節點|
|負載控制|不直接控制負載|直接 on/off 繼電器控制|
|本地網路存取|透過 Gate / BLE Friend / Hub 路徑|透過 Wi-Fi / Hub 路徑|
|雲端連接|透過 Hub / Cloud 路徑|依架構透過 Hub 或直連雲端路徑|
|遠端控制|僅支援場景 / 事件配置；事件型版本不直接控制負載|啟用時支援繼電器 on/off 遠端控制|
|離線通訊|在支援條件下走 BLE 本地事件路徑|在支援條件下支援本地繼電器控制與 Hub 輔助自動化|
|電源策略|低功耗週期喚醒 / 事件驅動傳輸|持續供電運作|
|最大事件頻率|TBD / 已驗證數值|TBD / 已驗證數值|
|電池壽命目標|2000 mAh 鋰電池，在已驗證曲線下目標每次充電 1 年|不適用|
|容量 / 可靠性報告|公開宣稱前必須具備|公開宣稱前必須具備|

---

# 7. Software & Firmware Architecture

# 7. 軟體與韌體架構

## English Table

|Category|Status|Description|
|---|---|---|
|Runtime Platform|ArtiOS-compatible|Participates in ArtiOS runtime communication through Gate / Hub or defined interface|
|Battery Firmware Framework|Nordic nRF Connect SDK / Zephyr recommended|For nRF52833 low-power BLE event switch|
|Powered Firmware Framework|ESP-IDF recommended|For ESP32-C3 Wi-Fi relay switch|
|OTA Update|Supported / variant-dependent|Secure OTA or service update depending on power and protocol constraints|
|Local Rule Engine|Optional|Limited local behavior; primary automation belongs to Hub / ArtiOS|
|Event Engine|Supported|Handles touch event, press type, scene trigger, state report, and execution event|
|Touch Processing|Supported|Handles capacitive touch detection, debounce, gesture, and long press where implemented|
|Relay Control Engine|Supported for powered variant|Controls relay on/off behavior, interlock, recovery, and safety state|
|BLE LPN Manager|Recommended for battery variant|Manages low-power BLE Mesh behavior and wake strategy|
|Power Management|Required for battery variant|Battery profile, wake interval, sleep mode, low-battery reporting|
|State Management|Supported|Maintains switch state, relay state, battery status, pairing state, and runtime status|
|Security Features|Supported|Secure onboarding, credential protection, encrypted communication where implemented|
|Diagnostics|Supported|Battery, signal, touch status, relay status, firmware version, fault reporting|
|Cloud Client|Optional / architecture-dependent|Usually through Hub / Cloud path; direct cloud depends on powered variant architecture|
|MQTT Client|Supported for powered variant / through Hub path|Communicates with Artibird Hub / ArtiOS MQTT services where implemented|
|Pairing Manager|Supported|Handles onboarding, binding, room assignment, and reset workflows|

## 中文表

|類別|狀態|說明|
|---|---|---|
|Runtime 平台|相容 ArtiOS|透過 Gate / Hub 或已定義介面參與 ArtiOS Runtime 通訊|
|電池版本韌體框架|建議 Nordic nRF Connect SDK / Zephyr|用於 nRF52833 低功耗 BLE 事件開關|
|持續供電版本韌體框架|建議 ESP-IDF|用於 ESP32-C3 Wi-Fi 繼電器開關|
|OTA 更新|支援 / 依版本|依供電與協議限制支援安全 OTA 或維護更新|
|本地規則引擎|選配|有限本地行為；主要自動化屬於 Hub / ArtiOS|
|事件引擎|支援|處理觸控事件、按鍵類型、場景觸發、狀態回報與執行事件|
|觸控處理|支援|處理電容觸控偵測、防抖、手勢與長按|
|繼電器控制引擎|持續供電版本支援|控制繼電器 on/off、互鎖、恢復與安全狀態|
|BLE LPN 管理器|電池版本建議支援|管理低功耗 BLE Mesh 行為與喚醒策略|
|電源管理|電池版本必須支援|電池曲線、喚醒週期、睡眠模式與低電量回報|
|狀態管理|支援|維護開關狀態、繼電器狀態、電池狀態、配對狀態與 Runtime 狀態|
|安全功能|支援|安全入網、憑證保護、適用情況下的加密通訊|
|診斷功能|支援|電池、信號、觸控狀態、繼電器狀態、韌體版本與故障回報|
|雲端客戶端|選配 / 依架構|通常透過 Hub / Cloud 路徑；直連雲端依持續供電版本架構|
|MQTT Client|持續供電版本支援 / 透過 Hub 路徑|在實作條件下與 Artibird Hub / ArtiOS MQTT 服務通訊|
|配對管理器|支援|處理入網、綁定、房間分配與重置流程|

---

# 8. Runtime Behavior & System Integration

# 8. Runtime 行為與系統整合

## EN

Artibird Switch operates as a physical interaction and execution node within the local Artibird environment. Battery-powered variants generate low-power user events for scene triggering, while powered relay variants execute direct load switching and report relay state.

## ZH-TW

Artibird Switch 作為本地 Artibird 環境中的實體互動與執行節點運作。電池版本以低功耗方式生成用戶事件用於場景觸發，而持續供電繼電器版本執行直接負載開關並回報繼電器狀態。

## English Table

|Topic|Description|
|---|---|
|Device Onboarding & Pairing Flow|Switch is discovered and bound through App, Gate, Hub, or local setup workflow|
|Touch Event Handling|Supports tap, multi-tap, long press, or scene action depending on firmware profile|
|Event Reporting|Battery variant reports user events; powered variant reports relay and touch state|
|State Management & Synchronization|Maintains switch state, relay state, battery status, and runtime metadata|
|Local Control Logic|Battery variant triggers local scenes; powered variant executes relay on/off|
|Command Execution Priority|Safety command > local physical action > Hub / ArtiOS automation > cloud command > non-critical sync|
|Integration with ArtiOS|Switch events participate in scenes, schedules, automations, and runtime coordination|
|Integration with Gate|BLE battery variant communicates through Gate / BLE Friend path|
|Integration with Hub|Hub processes events, automation, state, and relay commands|
|Integration with Edge|Edge may use switch events as spatial intention and occupancy context|
|Integration with Cloud|Cloud provides remote status, remote relay control where supported, sync, and lifecycle management|
|App Interaction|App supports device setup, room assignment, scene binding, state display, and remote control where supported|
|Multi-Switch Deployment|Multiple switches can participate in room-level and whole-space scene logic|

## 中文表

|主題|說明|
|---|---|
|設備入網與配對流程|Switch 透過 App、Gate、Hub 或本地設定流程被發現與綁定|
|觸控事件處理|依韌體配置支援點按、多擊、長按或場景動作|
|事件回報|電池版本回報用戶事件；持續供電版本回報繼電器與觸控狀態|
|狀態管理與同步|維護開關狀態、繼電器狀態、電池狀態與 Runtime 元數據|
|本地控制邏輯|電池版本觸發本地場景；持續供電版本執行繼電器 on/off|
|指令執行優先級|安全指令 > 本地實體操作 > Hub / ArtiOS 自動化 > 雲端指令 > 非關鍵同步|
|與 ArtiOS 整合|Switch 事件參與場景、排程、自動化與 Runtime 協同|
|與 Gate 整合|BLE 電池版本透過 Gate / BLE Friend 路徑通訊|
|與 Hub 整合|Hub 處理事件、自動化、狀態與繼電器指令|
|與 Edge 整合|Edge 可將 Switch 事件作為空間意圖與人在狀態上下文|
|與 Cloud 整合|Cloud 提供遠端狀態、支援版本的遠端繼電器控制、同步與生命週期管理|
|App 互動|App 支援設備設定、房間分配、場景綁定、狀態顯示與支援條件下的遠端控制|
|多 Switch 部署|多個 Switch 可參與房間級與全空間場景邏輯|

---

# 9. Data & Event Flow

# 9. 數據與事件流

## EN

Artibird Switch manages bidirectional communication between physical user interaction, relay execution, and the Artibird / OceanAI runtime system.

Typical flows:

1. Touch Event → Switch → Gate / Hub → ArtiOS Scene
    
2. App Command → Hub → Switch Relay Execution
    
3. Switch State → Hub → Cloud Synchronization
    
4. Low Battery Event → Gate / Hub → App Notification
    
5. Local Scene Rule → Hub → Relay Switch / Other Devices
    
6. Edge Interpretation → ArtiOS → Switch / Lighting / Climate Coordination
    

## ZH-TW

Artibird Switch 管理實體用戶互動、繼電器執行與 Artibird / OceanAI Runtime 系統之間的雙向通訊。

典型流程：

1. 觸控事件 → Switch → Gate / Hub → ArtiOS 場景
    
2. App 指令 → Hub → Switch 繼電器執行
    
3. Switch 狀態 → Hub → Cloud 同步
    
4. 低電量事件 → Gate / Hub → App 通知
    
5. 本地場景規則 → Hub → 繼電器開關 / 其他設備
    
6. Edge 理解 → ArtiOS → Switch / 照明 / 空調協同
    

## English Table

|Flow Type|Direction|Description|
|---|---|---|
|Touch Event|Switch → Gate / Hub|User interaction event, scene trigger, or gesture|
|Relay Execution|Hub / App / ArtiOS → Switch|Relay on/off command for powered variant|
|State Report|Switch → Hub / Cloud|Relay state, battery state, signal state, pairing state|
|Local Scene|Switch → Hub / ArtiOS → Devices|Switch-triggered scene execution|
|Remote Command|Cloud / App → Hub → Switch|Remote relay control where supported|
|Battery Report|Switch → Gate / Hub / App|Battery level and low-battery notification|
|Health Report|Switch → Hub / Cloud|Connectivity, firmware, touch, relay, error, and runtime status|
|Edge Context|Switch / Hub → Edge|Human intent, room interaction, and scene context data|

## 中文表

|流類型|方向|說明|
|---|---|---|
|觸控事件|Switch → Gate / Hub|用戶互動事件、場景觸發或手勢|
|繼電器執行|Hub / App / ArtiOS → Switch|持續供電版本的繼電器 on/off 指令|
|狀態回報|Switch → Hub / Cloud|繼電器狀態、電池狀態、信號狀態、配對狀態|
|本地場景|Switch → Hub / ArtiOS → 設備|由 Switch 觸發的場景執行|
|遠端指令|Cloud / App → Hub → Switch|在支援條件下的遠端繼電器控制|
|電池回報|Switch → Gate / Hub / App|電池電量與低電量通知|
|健康回報|Switch → Hub / Cloud|連接、韌體、觸控、繼電器、錯誤與 Runtime 狀態|
|Edge 上下文|Switch / Hub → Edge|人的意圖、房間互動與場景上下文數據|

---

# 10. Safety, Reliability & Failure Behavior

# 10. 安全、可靠性與故障行為

## EN

Artibird Switch must maintain predictable behavior under abnormal operating conditions. Since powered variants can control electrical loads, relay safety, local physical override, state recovery, and certification-oriented electrical design are critical.

## ZH-TW

Artibird Switch 必須在異常運作條件下保持可預期行為。由於持續供電版本可控制電氣負載，繼電器安全、本地實體覆蓋控制、狀態恢復與面向認證的電氣設計非常重要。

## English Table

|Item|Description|
|---|---|
|Watchdog|Detects firmware lockup and triggers recovery|
|Brownout Detection|Detects voltage instability and protects runtime behavior|
|Fail-Safe Behavior|Defines safe relay state and event behavior during fault conditions|
|Physical Override|Local physical touch action should remain available where safe and supported|
|Relay Protection|Prevents relay chatter, repeated switching, overheating, or unsafe state|
|Load Protection|Must define load rating, load type, and safety constraints for relay variant|
|Low Battery Handling|Battery variant reports low battery and enters power-saving behavior|
|BLE Friend / LPN Failure|Battery variant should retry or queue events according to low-power policy|
|Power Failure Recovery|Restores relay state policy, pairing data, and runtime state after reboot|
|OTA Failure Recovery|Supports rollback or safe firmware recovery strategy where applicable|
|Hub Disconnection Behavior|Maintains local interaction and relay control where supported|
|Cloud Disconnection Behavior|Maintains local operation and resynchronizes after recovery|
|Security Mechanisms|Authentication, encrypted communication where applicable, secure pairing, credential protection, secure OTA|
|Debug Protection|Production system should disable or protect debug interfaces|

## 中文表

|項目|說明|
|---|---|
|Watchdog|偵測韌體鎖死並觸發恢復|
|低壓檢測|偵測電壓不穩並保護 Runtime 行為|
|故障安全行為|定義故障條件下的安全繼電器狀態與事件行為|
|實體覆蓋控制|在安全且支援條件下，本地實體觸控操作應保持可用|
|繼電器保護|防止繼電器抖動、重複開關、過熱或不安全狀態|
|負載保護|繼電器版本必須定義負載額定值、負載類型與安全限制|
|低電量處理|電池版本回報低電量並進入節能行為|
|BLE Friend / LPN 失效|電池版本應依低功耗策略重試或排隊事件|
|斷電恢復|重啟後恢復繼電器狀態策略、配對資料與 Runtime 狀態|
|OTA 失敗恢復|在適用條件下支援回滾或安全韌體恢復策略|
|Hub 斷線行為|在支援條件下維持本地互動與繼電器控制|
|雲端斷線行為|維持本地運作，並於恢復後重新同步|
|安全機制|身份認證、適用情況下的加密通訊、安全配對、憑證保護、安全 OTA|
|Debug 保護|量產系統應停用或保護 Debug 介面|

---

# 11. Installation, Deployment & Maintenance

# 11. 安裝、部署與維護

## English Table

|Item|Description|
|---|---|
|Installation Method|Wall switch installation / surface-mounted / 86-type panel / U.S. wall box variant|
|Deployment Scenario|Home / classroom / office / hotel / smart building / campus|
|Installer Type|End user for battery scene switch; electrician or qualified installer for AC relay switch|
|Power Requirement|2000 mAh lithium battery for event switch; AC mains with neutral for relay switch|
|Wiring Requirement|No load wiring for event-only battery switch; line / neutral / load wiring for relay switch|
|Mounting Requirement|Wall box, panel frame, adhesive, screw mount, or magnetic faceplate depending on design|
|LED Function|Power, pairing, touch feedback, battery status, relay status, cloud / local status, fault|
|Button Function|Reset, pairing, scene setup, local mode, factory reset|
|Maintenance Method|Artibird App, Hub console, cloud console, physical reset, service tool|
|Firmware Update Method|BLE OTA / Wi-Fi OTA / local update depending on variant|
|Replacement Procedure|Switch replacement, room binding, scene binding, relay configuration, re-pairing workflow|
|Service Access|Controlled admin or service access required|

## 中文表

|項目|說明|
|---|---|
|安裝方式|牆壁開關安裝 / 明裝 / 86 型面板 / 美規牆盒版本|
|部署場景|住宅 / 教室 / 辦公室 / 酒店 / 智慧建築 / 校園|
|安裝人員類型|電池場景開關可由用戶安裝；AC 繼電器開關需由電工或合格安裝人員安裝|
|供電要求|事件開關採用 2000 mAh 鋰電池；繼電器開關採用帶零線 AC 市電|
|接線要求|事件型電池開關無負載接線；繼電器開關需火線 / 零線 / 負載線|
|固定要求|依設計採用牆盒、面板框、背膠、螺絲固定或磁吸面蓋|
|LED 功能|電源、配對、觸控反饋、電池狀態、繼電器狀態、雲端 / 本地狀態、故障|
|按鍵功能|重置、配對、場景設定、本地模式、恢復出廠設定|
|維護方式|Artibird App、Hub Console、Cloud Console、實體重置、維護工具|
|韌體更新方式|依版本採用 BLE OTA / Wi-Fi OTA / 本地更新|
|更換流程|Switch 替換、房間綁定、場景綁定、繼電器配置、重新配對流程|
|服務存取|必須具備受控管理員或維護存取|

---

# 12. Testing, Validation & Certification

# 12. 測試、驗證與認證

## EN

Artibird Switch must be validated as both a physical interaction device and, for powered variants, an electrical load-control device. Testing must cover touch reliability, BLE or Wi-Fi communication, battery life, relay safety, local response, Hub integration, cloud synchronization, security, and certification compliance.

## ZH-TW

Artibird Switch 必須作為實體互動設備進行驗證；對持續供電版本而言，也必須作為電氣負載控制設備進行驗證。測試必須涵蓋觸控可靠性、BLE 或 Wi-Fi 通訊、電池壽命、繼電器安全、本地回應、Hub 整合、雲端同步、安全與認證合規。

## English Table

|Test Category|Objective|
|---|---|
|Functional Test|Verify switch core functions, touch input, event reporting, and relay behavior|
|Touch Test|Verify touch sensitivity, false trigger rate, debounce, long press, and gesture accuracy|
|BLE Test|Verify BLE / BLE Mesh communication, LPN behavior, Friend relationship, and event delivery|
|Wi-Fi Test|Verify Wi-Fi connection, reconnect, latency, and local communication for powered variant|
|Battery Life Test|Validate 2000 mAh battery life under defined wake, event, and polling profile|
|Power Test|Verify AC power behavior, brownout, reboot, and recovery for powered variant|
|Relay Test|Verify relay endurance, load behavior, switching safety, and state recovery|
|Local Control Test|Verify local touch operation and Hub-assisted scene execution|
|Remote Control Test|Verify cloud-assisted remote relay control where supported|
|MQTT Test|Verify message delivery, reconnect, QoS behavior, and routing where implemented|
|Hub Integration Test|Verify communication with Artibird Hub and ArtiOS services|
|Gate Integration Test|Verify BLE event path and gateway coordination for battery variant|
|Edge Integration Test|Verify switch event availability for spatial context and intelligence|
|Cloud Sync Test|Verify state, account, scene binding, log, and lifecycle synchronization|
|Stress Test|Verify long-duration and high-frequency touch / relay operation|
|OTA Test|Verify firmware update, rollback, and recovery behavior|
|Security Test|Verify authentication, encryption, secure pairing, credential protection, and debug protection|
|Reliability Test|Verify stability under power, network, RF, touch, relay, and runtime variation|
|Certification Test|Verify compliance for FCC, CE, RoHS, UL / ETL where applicable|
|Claim Validation|Verify public product claims with formal test evidence|

## 中文表

|測試類別|目標|
|---|---|
|功能測試|驗證開關核心功能、觸控輸入、事件回報與繼電器行為|
|觸控測試|驗證觸控靈敏度、誤觸率、防抖、長按與手勢準確性|
|BLE 測試|驗證 BLE / BLE Mesh 通訊、LPN 行為、Friend 關係與事件投遞|
|Wi-Fi 測試|驗證持續供電版本的 Wi-Fi 連接、重連、延遲與本地通訊|
|電池壽命測試|在明確喚醒、事件與輪詢曲線下驗證 2000 mAh 電池壽命|
|電源測試|驗證持續供電版本 AC 電源、低壓、重啟與恢復行為|
|繼電器測試|驗證繼電器壽命、負載行為、開關安全與狀態恢復|
|本地控制測試|驗證本地觸控操作與 Hub 輔助場景執行|
|遠端控制測試|驗證支援條件下的雲端輔助遠端繼電器控制|
|MQTT 測試|在實作條件下驗證消息投遞、重連、QoS 行為與路由|
|Hub 整合測試|驗證與 Artibird Hub 及 ArtiOS 服務的通訊|
|Gate 整合測試|驗證電池版本 BLE 事件路徑與網關協同|
|Edge 整合測試|驗證 Switch 事件可用於空間上下文與智慧處理|
|雲端同步測試|驗證狀態、帳號、場景綁定、日誌與生命週期同步|
|壓力測試|驗證長時間與高頻觸控 / 繼電器運作|
|OTA 測試|驗證韌體更新、回滾與恢復行為|
|安全測試|驗證身份認證、加密、安全配對、憑證保護與 Debug 保護|
|可靠性測試|驗證電源、網路、RF、觸控、繼電器與 Runtime 變化下的穩定性|
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
|UL / ETL|Required for AC-powered in-wall relay switch variants|
|Bluetooth Qualification|Required if using Bluetooth branding|
|Wi-Fi Certification|Optional depending on commercial strategy|
|Cybersecurity Labeling|Optional depending on market and retail channel|

|認證|適用範圍|
|---|---|
|FCC|美國無線市場需要|
|CE|歐盟市場需要|
|RoHS|環保合規|
|REACH|歐盟市場建議|
|UL / ETL|AC 供電牆內繼電器開關版本需要|
|Bluetooth 資格認證|若使用 Bluetooth 品牌則需要|
|Wi-Fi 認證|依商業策略選配|
|網路安全標籤|依市場與零售渠道選配|

---

# 13. Product Variants

# 13. 產品版本

## English Table

|Variant / SKU|Hardware Difference|Firmware Difference|Market / Region|Certification Difference|Notes|
|---|---|---|---|---|---|
|Artibird Switch Battery|nRF52833, 2000 mAh battery, BLE event-only|Low-power event firmware|Residential / classroom / retrofit|FCC / CE / RoHS|No direct load control|
|Artibird Switch Scene|nRF52833, touch panel, BLE scene transmitter|Scene event profile|Residential / commercial scenes|FCC / CE / RoHS|Scene and automation trigger|
|Artibird Switch Relay|ESP32-C3, zero-neutral AC relay|Wi-Fi relay firmware|Residential / office / building|UL / ETL + FCC / CE / RoHS|On/off relay only|
|Artibird Switch Relay Pro|ESP32-C3, improved relay and enclosure|Enhanced diagnostics and load profile|Commercial / campus|Additional electrical validation|For larger deployments|
|Artibird Switch Glass|Glass touch surface, optional metal frame|Touch calibration profile|Residential / premium interior|RF and enclosure validation required|Requires antenna window design|
|Artibird Switch Campus|Multi-room deployment profile|Campus scene and reporting profile|Education / campus|Regional compliance required|Requires deployment validation|

## 中文表

|版本 / SKU|硬體差異|韌體差異|市場 / 地區|認證差異|備註|
|---|---|---|---|---|---|
|Artibird Switch Battery|nRF52833、2000 mAh 電池、BLE 事件型|低功耗事件韌體|住宅 / 教室 / 改造場景|FCC / CE / RoHS|不直接控制負載|
|Artibird Switch Scene|nRF52833、觸控面板、BLE 場景發射器|場景事件配置|住宅 / 商業場景|FCC / CE / RoHS|場景與自動化觸發|
|Artibird Switch Relay|ESP32-C3、零火 AC 繼電器|Wi-Fi 繼電器韌體|住宅 / 辦公 / 建築|UL / ETL + FCC / CE / RoHS|僅 on/off 繼電器|
|Artibird Switch Relay Pro|ESP32-C3、改良繼電器與外殼|增強診斷與負載配置|商業 / 校園|需額外電氣驗證|用於較大部署|
|Artibird Switch Glass|玻璃觸控表面、可選金屬框|觸控校準配置|住宅 / 高端室內|需 RF 與外殼驗證|需要天線窗口設計|
|Artibird Switch Campus|多房間部署配置|校園場景與報告配置|教育 / 校園|需地區合規|需要部署驗證|

---

# 14. Commercial Positioning

# 14. 商業定位

## EN

Artibird Switch is positioned as the physical interaction and switching node for coordinated intelligent environments. It allows users to trigger scenes, control lighting, participate in automation, and connect physical touch interaction with the OceanAI runtime system.

## ZH-TW

Artibird Switch 被定位為協同智慧空間中的實體互動與開關節點。它使用戶能夠觸發場景、控制照明、參與自動化，並將實體觸控互動接入 OceanAI Runtime 系統。

## English Table

|Item|Description|
|---|---|
|Target Market|Residential, classroom, office, hotel, campus, smart building|
|Key Selling Points|Touch interaction, local-first scene events, BLE low-power option, Wi-Fi relay option, ArtiOS integration, cloud-enhanced control|
|Use Cases|Lighting control, scene triggering, classroom control, room automation, whole-space coordination|
|Compatibility Statement|Designed for Artibird Gate, Artibird Hub, ArtiOS, OceanAI Cloud, OceanAI Edge, and Artibird App|
|Local-first Statement|Physical touch and supported local control remain available where deployment architecture permits|
|Cloud-enhanced Statement|Cloud adds remote status, remote relay control, scene sync, analytics, and lifecycle management|
|Remote Control Statement|Remote relay control requires powered relay variant, OceanAI Cloud connectivity, account binding, and network availability|
|Battery Claim|Must reference Battery Life Validation Report|
|Relay Claim|Must reference electrical safety and relay endurance validation|
|Prohibited Claims|Battery version directly controls load, unsupported dimming, unlimited battery life, unvalidated load rating, uncertified safety claims|

## 中文表

|項目|說明|
|---|---|
|目標市場|住宅、教室、辦公室、酒店、校園、智慧建築|
|核心賣點|觸控互動、本地優先場景事件、BLE 低功耗選項、Wi-Fi 繼電器選項、ArtiOS 整合、雲端增強控制|
|使用場景|照明控制、場景觸發、教室控制、房間自動化、全空間協同|
|相容性聲明|面向 Artibird Gate、Artibird Hub、ArtiOS、OceanAI Cloud、OceanAI Edge 與 Artibird App 設計|
|本地優先聲明|在部署架構允許條件下，實體觸控與受支援本地控制保持可用|
|雲端增強聲明|雲端增加遠端狀態、遠端繼電器控制、場景同步、分析與生命週期管理|
|遠端控制聲明|遠端繼電器控制需要持續供電繼電器版本、OceanAI Cloud 連接、帳號綁定與網路可用|
|電池宣稱|必須引用電池壽命驗證報告|
|繼電器宣稱|必須引用電氣安全與繼電器壽命驗證|
|禁止宣稱|電池版本直接控制負載、未支援調光、無限制電池壽命、未驗證負載額定值、未認證安全宣稱|

---

# 15. Engineering Claim Policy

# 15. 工程宣稱政策

## Mandatory Statement

## 強制聲明

**EN**  
All Artibird Switch performance claims, especially battery life, touch reliability, BLE range, Wi-Fi stability, relay load rating, relay endurance, local response time, remote control performance, compatibility, reliability, and safety, must be based on validated test reports under defined conditions. Theoretical chip specifications, relay datasheet values, or battery capacity alone shall not be used as product claims.

**ZH-TW**  
所有 Artibird Switch 性能宣稱，尤其是電池壽命、觸控可靠性、BLE 距離、Wi-Fi 穩定性、繼電器負載額定值、繼電器壽命、本地回應時間、遠端控制性能、相容性、可靠性與安全性，必須基於明確條件下的已驗證測試報告。晶片理論規格、繼電器資料手冊數值或電池容量本身，不得直接作為產品宣稱。

## English Table — Claim Policy

|Claim Type|Requirement|
|---|---|
|Battery Life|Must reference battery profile, wake strategy, event frequency, and validation duration|
|Touch Reliability|Must reference touch test condition, panel material, humidity, and false-trigger rate|
|BLE Range|Must reference RF test condition, antenna design, enclosure, and environment|
|Wi-Fi Stability|Must reference network test, reconnect behavior, and long-duration operation|
|Relay Load Rating|Must reference relay validation, load type, enclosure, thermal condition, and certification scope|
|Relay Endurance|Must reference switching cycle test under defined load|
|Local-first Capability|Must define exact offline functions and dependency conditions|
|Remote Control|Must define powered variant, cloud, account, and network dependency|
|Dimming Support|Must not be claimed unless dimming hardware and firmware are implemented and validated|
|Safety|Must reference certification path and implemented protection mechanisms|
|Compatibility|Must define tested platforms, regions, wall box types, and wiring constraints|

## 中文表 — 宣稱政策

|宣稱類型|要求|
|---|---|
|電池壽命|必須引用電池曲線、喚醒策略、事件頻率與驗證時長|
|觸控可靠性|必須引用觸控測試條件、面板材料、濕度與誤觸率|
|BLE 距離|必須引用 RF 測試條件、天線設計、外殼與環境|
|Wi-Fi 穩定性|必須引用網路測試、重連行為與長時間運作|
|繼電器負載額定值|必須引用繼電器驗證、負載類型、外殼、熱條件與認證範圍|
|繼電器壽命|必須引用明確負載下的開關循環測試|
|本地優先能力|必須定義具體離線功能與依賴條件|
|遠端控制|必須定義持續供電版本、雲端、帳號與網路依賴|
|調光支援|除非調光硬體與韌體已實作並驗證，否則不得宣稱|
|安全性|必須引用認證路線與已實作保護機制|
|相容性|必須定義已測平台、地區、牆盒類型與接線限制|

---

# 16. Revision History

# 16. 版本記錄

## English Table

|Version|Date|Author|Description|
|---|---|---|---|
|v1.0|2026-05-08|OceanAI / Artibird Product Team|Initial Artibird Switch Product Specification based on Artibird Product Specification Template v1.1|

## 中文表

|版本|日期|作者|說明|
|---|---|---|---|
|v1.0|2026-05-08|OceanAI / Artibird Product Team|基於 Artibird 產品規格書標準模板 v1.1 建立的 Artibird Switch 初始產品規格書|

---

# Appendix A — Terminology

# 附錄 A｜術語對照表

|English Term|中文術語|Definition|
|---|---|---|
|Artibird Switch|Artibird Switch|Physical interaction, event, and relay control node|
|Battery Event Switch|電池事件開關|Battery-powered switch that transmits scene or control events without directly switching load power|
|Zero-Neutral Relay Switch|零火繼電器開關|AC-powered switch with neutral wire for direct on/off relay load control|
|nRF52833|nRF52833|Nordic BLE SoC used for low-power battery switch designs|
|ESP32-C3|ESP32-C3|Wi-Fi / BLE SoC used for powered relay switch designs|
|BLE LPN|BLE 低功耗節點|Low Power Node behavior for battery-operated BLE Mesh devices|
|BLE Friend Node|BLE Friend 節點|A powered node that stores and forwards messages for Low Power Nodes|
|Relay Control|繼電器控制|Electrical on/off control of a load through relay hardware|
|Scene Event|場景事件|User-triggered event used to activate scenes, automation, or coordinated actions|
|Local-first|本地優先|Core functions are designed to operate locally whenever possible|
|Cloud-enhanced|雲端增強|Cloud services extend local operation with remote, sync, analytics, or AI capabilities|

---

# Appendix B — Risk Register

# 附錄 B｜風險登記表

## English Table

|Risk ID|Risk Description|Impact|Mitigation|
|---|---|---|---|
|R-SW-001|Battery life overclaimed based only on 2000 mAh capacity|High|Require Battery Life Validation Report|
|R-SW-002|Battery event switch misunderstood as direct load controller|High|Clearly label as event-only scene transmitter|
|R-SW-003|Relay load rating overclaimed without thermal and safety validation|High|Require relay, load, enclosure, and certification testing|
|R-SW-004|Touch false triggers under humidity or panel variation|Medium / High|Validate touch algorithm and panel stack|
|R-SW-005|BLE LPN communication instability|Medium / High|Validate Friend node strategy and polling profile|
|R-SW-006|Wi-Fi reconnection failure in powered variant|Medium|Validate reconnection and recovery behavior|
|R-SW-007|Unsupported dimming claim|High|Prohibit dimming claim unless hardware and firmware exist|
|R-SW-008|AC safety risk in in-wall relay variant|High|Apply UL / ETL certification strategy and isolation design|
|R-SW-009|Cloud dependency weakens local-first positioning|High|Clearly separate local-first and cloud-enhanced functions|
|R-SW-010|Product language exceeds tested capability|High|Apply Engineering Claim Policy|

## 中文表

|風險 ID|風險描述|影響|緩解措施|
|---|---|---|---|
|R-SW-001|僅基於 2000 mAh 電池容量過度宣稱電池壽命|高|必須取得電池壽命驗證報告|
|R-SW-002|電池事件開關被誤解為直接負載控制器|高|明確標註為事件型場景發射器|
|R-SW-003|未經熱與安規驗證過度宣稱繼電器負載能力|高|必須進行繼電器、負載、外殼與認證測試|
|R-SW-004|濕度或面板差異導致觸控誤觸|中 / 高|驗證觸控算法與面板堆疊|
|R-SW-005|BLE LPN 通訊不穩定|中 / 高|驗證 Friend 節點策略與輪詢曲線|
|R-SW-006|持續供電版本 Wi-Fi 重連失敗|中|驗證重連與恢復行為|
|R-SW-007|未支援調光卻進行調光宣稱|高|除非硬體與韌體已存在，否則禁止調光宣稱|
|R-SW-008|牆內繼電器版本存在 AC 安全風險|高|套用 UL / ETL 認證策略與隔離設計|
|R-SW-009|雲端依賴削弱本地優先定位|高|清楚區分本地優先與雲端增強功能|
|R-SW-010|產品語言超出已測試能力|高|套用工程宣稱政策|

---

# Appendix C — Validation Checklist

# 附錄 C｜驗證清單

## English Table

|Checklist Item|Required|Status|Evidence|
|---|---|---|---|
|Hardware specification completed|Yes|TBD|Schematic / BOM / enclosure design|
|nRF52833 firmware architecture completed|For battery variant|TBD|Firmware design document|
|ESP32-C3 firmware architecture completed|For powered relay variant|TBD|Firmware design document|
|Touch interface validated|Yes|TBD|Touch test report|
|BLE / BLE Mesh validated|For battery variant|TBD|BLE test report|
|BLE LPN / Friend behavior validated|For battery variant|TBD|LPN / Friend test report|
|Wi-Fi function validated|For powered variant|TBD|Wi-Fi test report|
|Battery life validated|For battery variant|TBD|Battery Life Validation Report|
|Relay behavior validated|For relay variant|TBD|Relay test report|
|Load rating validated|For relay variant|TBD|Load and thermal test report|
|Local-first behavior validated|Yes|TBD|Local operation test report|
|Gate integration validated|If applicable|TBD|Gate integration test|
|Hub integration validated|Yes|TBD|Hub integration test|
|Cloud-enhanced behavior validated|Yes|TBD|Cloud integration test|
|Remote control validated|For powered variant|TBD|App / cloud test|
|OTA update validated|Yes|TBD|OTA test report|
|Security mechanisms validated|Yes|TBD|Security test report|
|Failure behavior validated|Yes|TBD|Reliability test report|
|Certification path defined|Yes|TBD|Certification plan|
|Commercial claims reviewed|Yes|TBD|Claim review record|

## 中文表

|檢查項目|是否必要|狀態|證據|
|---|---|---|---|
|硬體規格已完成|是|TBD|原理圖 / BOM / 外殼設計|
|nRF52833 韌體架構已完成|電池版本需要|TBD|韌體設計文件|
|ESP32-C3 韌體架構已完成|持續供電繼電器版本需要|TBD|韌體設計文件|
|觸控介面已驗證|是|TBD|觸控測試報告|
|BLE / BLE Mesh 已驗證|電池版本需要|TBD|BLE 測試報告|
|BLE LPN / Friend 行為已驗證|電池版本需要|TBD|LPN / Friend 測試報告|
|Wi-Fi 功能已驗證|持續供電版本需要|TBD|Wi-Fi 測試報告|
|電池壽命已驗證|電池版本需要|TBD|電池壽命驗證報告|
|繼電器行為已驗證|繼電器版本需要|TBD|繼電器測試報告|
|負載額定值已驗證|繼電器版本需要|TBD|負載與熱測試報告|
|本地優先行為已驗證|是|TBD|本地運作測試報告|
|Gate 整合已驗證|如適用|TBD|Gate 整合測試|
|Hub 整合已驗證|是|TBD|Hub 整合測試|
|雲端增強行為已驗證|是|TBD|雲端整合測試|
|遠端控制已驗證|持續供電版本需要|TBD|App / 雲端測試|
|OTA 更新已驗證|是|TBD|OTA 測試報告|
|安全機制已驗證|是|TBD|安全測試報告|
|故障行為已驗證|是|TBD|可靠性測試報告|
|認證路線已定義|是|TBD|認證計畫|
|商業宣稱已審查|是|TBD|宣稱審查記錄|

---

# Document End

# 文件結束

## EN

This Artibird Switch Product Specification v1.0 defines Switch as the physical interaction, event, and relay control node of the Artibird ecosystem. It provides a controlled engineering and system-level reference for nRF52833 battery event switch design, ESP32-C3 zero-neutral relay switch design, touch interaction, BLE low-power behavior, relay execution, ArtiOS runtime participation, local-first operation, cloud-enhanced coordination, validation, certification, and commercial claim boundaries.

## ZH-TW

本《Artibird Switch 產品規格書 v1.0》將 Switch 定義為 Artibird 生態中的實體互動、事件與繼電器控制節點。它為 nRF52833 電池式事件開關設計、ESP32-C3 零火繼電器開關設計、觸控互動、BLE 低功耗行為、繼電器執行、ArtiOS Runtime 參與、本地優先運作、雲端增強協同、驗證、認證與商業宣稱邊界，提供受控的工程與系統級參考。

---

## Topic Extension

## 話題延伸

下一個建議寫：

**Artibird Panel Product Specification v1.0**  
**Artibird Panel 產品規格書 v1.0**

它可以統一你之前提到的：

**Control Panel / Scene Switch / Glass Touch Panel / Metal Frame Panel**  
**控制面板 / 場景開關 / 玻璃觸控面板 / 金屬框面板**