# Artibird Panel Product Specification v1.0

# Artibird Panel 產品規格書 v1.0

**Engineering + System Specification Edition**  
**工程與系統規格書版本**

**Version Date**: 2026-05-08  
**Document Type**: Product Specification  
**Product Category**: Control Panel / Scene Panel / Human Interaction Node  
**Hardware Foundation**: Touch Panel Controller / Display or Non-Display Panel Architecture  
**System Architecture**: OceanAI Coordinated Intelligence Architecture  
**Runtime Platform**: ArtiOS-compatible

**版本日期**：2026-05-08  
**文件類型**：產品規格書  
**產品類別**：控制面板 / 場景面板 / 人機互動節點  
**硬體基礎**：觸控面板控制器 / 顯示或無顯示面板架構  
**系統架構**：OceanAI 協同智慧架構  
**Runtime 平台**：相容 ArtiOS

---

# 1. Document Information

# 1. 文件資訊

## English Table

|Item|Description|
|---|---|
|Document Name|Artibird Panel Product Specification|
|Version|v1.0|
|Document Type|Engineering + System Specification|
|Product Name|Artibird Panel|
|Product Category|Control Panel / Scene Panel / Human Interaction Node|
|System Architecture|OceanAI Coordinated Intelligence Architecture|
|Runtime Platform|ArtiOS-compatible|
|Hardware Foundation|Touch panel controller, optional display module, local communication module|
|Specification Level|Engineering + System|
|Intended Audience|Hardware, Firmware, Software, UI/UX, System, Testing, Certification, Product Teams|
|Release Date|2026-05-08|

## 中文表

| 項目         | 說明                           |
| ---------- | ---------------------------- |
| 文件名稱       | Artibird Panel 產品規格書         |
| 文件版本       | v1.0                         |
| 文件類型       | 工程與系統規格書                     |
| 產品名稱       | Artibird Panel               |
| 產品類別       | 控制面板 / 場景面板 / 人機互動節點         |
| 系統架構       | OceanAI 協同智慧架構               |
| Runtime 平台 | 相容 ArtiOS                    |
| 硬體基礎       | 觸控面板控制器、可選顯示模組、本地通訊模組        |
| 規格書層級      | 工程與系統規格                      |
| 適用對象       | 硬體、韌體、軟體、UI/UX、系統、測試、認證、產品團隊 |
| 發布日期       | 2026-05-08                   |

---

# 2. Product Overview

# 2. 產品總覽

## EN

Artibird Panel is a localized human interaction node designed for the Artibird product ecosystem and the OceanAI coordinated intelligence architecture. It provides a physical interface for scene control, device control, room-level coordination, system feedback, and runtime interaction within coordinated intelligent environments.

Within the Artibird ecosystem, Panel unifies the roles previously separated across control panels, scene switches, and glass touch panels. It functions as a spatial interaction surface that allows users to trigger scenes, adjust room behavior, control lighting or climate zones, view device status where display is available, and participate in ArtiOS runtime coordination.

Artibird Panel follows a **local-first, cloud-enhanced** operating model. Local touch interaction, scene execution, room control, status feedback, and Hub-assisted automation should remain available within the local environment whenever technically feasible. Cloud connectivity extends the system through remote configuration, scene synchronization, user profiles, lifecycle management, analytics, and multi-site coordination. In this role, Artibird Panel becomes the visible interaction layer of the OceanAI runtime system.

## ZH-TW

Artibird Panel 是一款面向 Artibird 產品生態與 OceanAI 協同智慧架構設計的本地化人機互動節點。它為協同智慧環境提供場景控制、設備控制、房間級協同、系統反饋與 Runtime 互動的實體介面。

在 Artibird 生態中，Panel 統一了過去分散於控制面板、場景開關與玻璃觸控面板中的角色。它作為空間互動表面，使用戶能夠觸發場景、調整房間行為、控制照明或空調區域、在具備顯示能力時查看設備狀態，並參與 ArtiOS Runtime 協同。

Artibird Panel 採用 **本地優先、雲端增強** 的運作模式。本地觸控互動、場景執行、房間控制、狀態反饋與 Hub 輔助自動化，應在技術可行條件下保持於本地環境中可用。雲端連接則透過遠端配置、場景同步、用戶配置、生命週期管理、分析與多站點協同擴展系統能力。在此角色中，Artibird Panel 成為 OceanAI Runtime 系統的可見互動層。

---

# 3. System Positioning & Role

# 3. 系統定位與角色

## English Table

|Item|Description|
|---|---|
|System Layer|Human Interaction Layer / Scene Control Layer / Room Interface Layer|
|Primary Role|Local human interaction node for scene control, device control, and room-level coordination|
|Runtime Participation|Generates user interaction events, displays or reports state, receives control configuration, and participates in ArtiOS runtime scenes|
|Relationship with Gate|May communicate through Gate for local device network access depending on wireless architecture|
|Relationship with Hub|Hub processes panel events, scene rules, device states, UI data, and automation coordination|
|Relationship with Edge|Edge may use panel interaction patterns and room context for intelligent scene interpretation|
|Relationship with Cloud|Supports scene synchronization, profile management, remote configuration, lifecycle management, and analytics|
|Local-first Capability|Yes|
|Offline Operation Scope|Local scene triggers, room control, device shortcuts, status display, and Hub-assisted automation where supported|
|Remote Control Scope|Remote configuration and scene synchronization through OceanAI Cloud where enabled|
|System Dependency|Hub-enhanced for state and scenes; cloud-enhanced for remote configuration; Edge-enhanced for adaptive intelligence|

## 中文表

|項目|說明|
|---|---|
|系統層級|人機互動層 / 場景控制層 / 房間介面層|
|主要角色|用於場景控制、設備控制與房間級協同的本地人機互動節點|
|Runtime 參與方式|生成用戶互動事件，顯示或回報狀態，接收控制配置，並參與 ArtiOS Runtime 場景|
|與 Gate 的關係|依無線架構可透過 Gate 接入本地設備網路|
|與 Hub 的關係|Hub 處理面板事件、場景規則、設備狀態、UI 數據與自動化協同|
|與 Edge 的關係|Edge 可使用面板互動模式與房間上下文進行智慧場景理解|
|與 Cloud 的關係|支援場景同步、用戶配置管理、遠端配置、生命週期管理與分析|
|本地優先能力|是|
|離線運作範圍|在支援條件下，本地場景觸發、房間控制、設備快捷操作、狀態顯示與 Hub 輔助自動化可運作|
|遠端控制範圍|在啟用條件下，透過 OceanAI Cloud 支援遠端配置與場景同步|
|系統依賴關係|狀態與場景由 Hub 增強；遠端配置由雲端增強；自適應智慧由 Edge 增強|

---

# 4. Core Design Principles

# 4. 核心設計原則

## 4.1 Local-First Runtime Architecture

## 4.1 本地優先 Runtime 架構

**EN**  
Artibird Panel prioritizes local interaction and local response. Scene triggers, room control, device shortcuts, and status feedback should remain available locally whenever the deployment architecture permits.

**ZH-TW**  
Artibird Panel 優先保障本地互動與本地回應。場景觸發、房間控制、設備快捷操作與狀態反饋，應在部署架構允許的條件下保持本地可用。

## 4.2 Coordinated System Participation

## 4.2 協同式系統參與

**EN**  
Artibird Panel participates as a runtime interaction surface. A panel action should be treated as a system event that may coordinate lighting, climate, curtains, appliances, security, irrigation, or multi-room behavior.

**ZH-TW**  
Artibird Panel 作為 Runtime 互動表面參與運作。一次面板操作應被視為系統事件，可協同照明、空調、窗簾、家電、安全、灌溉或多房間行為。

## 4.3 Cloud-Enhanced Intelligence

## 4.3 雲端增強智慧

**EN**  
Cloud services may extend Artibird Panel with remote configuration, user profiles, scene synchronization, UI layout updates, lifecycle management, analytics, and multi-site management. Cloud functions should enhance local interaction rather than replace local control availability.

**ZH-TW**  
雲端服務可透過遠端配置、用戶配置、場景同步、UI 佈局更新、生命週期管理、分析與多站點管理來擴展 Artibird Panel。雲端功能應增強本地互動，而不是取代本地控制可用性。

## 4.4 Distributed Operational Resilience

## 4.4 分布式運作韌性

**EN**  
Artibird Panel should maintain predictable behavior under network instability, Hub disconnection, cloud unavailability, display failure, touch abnormality, firmware recovery, power interruption, and runtime load variation.

**ZH-TW**  
Artibird Panel 應在網路不穩定、Hub 斷線、雲端不可用、顯示失效、觸控異常、韌體恢復、電源中斷與 Runtime 負載變化時保持可預期行為。

## 4.5 Security by Design

## 4.5 安全預設設計

**EN**  
As a human interaction node, Artibird Panel must apply secure onboarding, authenticated control paths, role-based access where needed, encrypted communication where applicable, controlled remote configuration, secure OTA, and protected debug interfaces.

**ZH-TW**  
作為人機互動節點，Artibird Panel 必須採用安全入網、經身份認證的控制路徑、必要時的角色權限控制、適用情況下的加密通訊、受控遠端配置、安全 OTA 與受保護的 Debug 介面。

---

# 5. Hardware Specification

# 5. 硬體規格

## English Table

|Item|Specification|
|---|---|
|Product Variants|Scene Panel / Control Panel / Display Panel / Glass Touch Panel|
|Main Processor / SoC|TBD by panel type; ESP32-C3 / ESP32-S3 / embedded Linux variant depending on display and UI complexity|
|Display|Optional; non-display touch panel / LCD / IPS / OLED / touch display by variant|
|Touch Interface|Capacitive touch / multi-touch / glass touch surface|
|Button Structure|Virtual buttons / touch zones / gesture areas|
|Wireless Module|Wi-Fi / BLE depending on variant|
|Wired Interface|Optional Ethernet / USB-C / RS485 / service interface depending on deployment|
|Power Input|DC power / USB-C / AC-powered in-wall variant depending on design|
|Power Consumption|TBD by display type, brightness, wireless mode, and runtime profile|
|Sensor Support|Optional proximity, light, temperature, humidity, occupancy, microphone, or ambient sensor by variant|
|Indicator|Status LED / display feedback / haptic feedback optional|
|Audio Feedback|Optional buzzer / speaker depending on variant|
|Haptic Feedback|Optional vibration / tactile feedback depending on design|
|I/O Interface|GPIO / UART / I2C / SPI / USB depending on hardware design|
|Antenna Type|PCB antenna / external antenna variant; RF window required with metal frame designs|
|Enclosure Material|Flame-retardant PC / glass panel / aluminum or metal frame with RF-safe window|
|Mounting Method|Wall-mounted / 86-type panel / U.S. wall box / desktop / embedded cabinet variant|
|Operating Temperature|TBD based on enclosure, display, and certification validation|
|Protection Features|ESD protection, touch protection, power input protection, watchdog, secure boot support, display protection|
|Certification Direction|FCC / CE / RoHS; UL / ETL depending on power supply and in-wall installation scope|

## 中文表

|項目|規格|
|---|---|
|產品版本|場景面板 / 控制面板 / 顯示面板 / 玻璃觸控面板|
|主處理器 / SoC|依面板類型定義；可依顯示與 UI 複雜度選擇 ESP32-C3 / ESP32-S3 / 嵌入式 Linux 版本|
|顯示|選配；依版本可為無顯示觸控面板 / LCD / IPS / OLED / 觸控顯示屏|
|觸控介面|電容觸控 / 多點觸控 / 玻璃觸控表面|
|按鍵結構|虛擬按鍵 / 觸控區域 / 手勢區域|
|無線模組|Wi-Fi / BLE，依版本配置|
|有線介面|依部署需求選配 Ethernet / USB-C / RS485 / 維護介面|
|供電方式|DC 供電 / USB-C / AC 牆內供電版本，依設計定義|
|功耗|依顯示類型、亮度、無線模式與 Runtime 曲線定義|
|感測器支援|依版本可選配接近、光照、溫度、濕度、人在、麥克風或環境感測器|
|指示|狀態 LED / 顯示反饋 / 可選觸覺反饋|
|音訊反饋|依版本可選配蜂鳴器 / 揚聲器|
|觸覺反饋|依設計可選配震動 / 觸感反饋|
|I/O 介面|GPIO / UART / I2C / SPI / USB，依硬體設計|
|天線類型|PCB 天線 / 外置天線版本；金屬框設計需預留 RF 安全窗口|
|外殼材質|阻燃 PC / 玻璃面板 / 鋁合金或金屬框並設計 RF 安全窗口|
|安裝方式|壁掛式 / 86 型面板 / 美規牆盒 / 桌面式 / 嵌入式機櫃版本|
|工作溫度|TBD，依外殼、顯示與認證驗證確定|
|保護功能|ESD 保護、觸控保護、電源輸入保護、Watchdog、Secure Boot 支援、顯示保護|
|認證方向|FCC / CE / RoHS；依供電與牆內安裝範圍決定 UL / ETL|

---

# 6. Connectivity & Networking

# 6. 連接與網路能力

## EN

Artibird Panel provides localized interaction communication for the Artibird ecosystem. Depending on the variant, it may operate as a low-complexity scene panel, a room control interface, or an advanced display-based control surface. Its network role should support local interaction, Hub communication, scene execution, status synchronization, and cloud-assisted configuration.

For Panel-class products, interaction latency, touch reliability, UI update reliability, status synchronization, and scene execution success rate must be defined as validated system-level boundaries.

## ZH-TW

Artibird Panel 為 Artibird 生態提供本地化互動通訊能力。依版本不同，它可以作為低複雜度場景面板、房間控制介面，或基於顯示屏的進階控制表面運作。其網路角色應支援本地互動、Hub 通訊、場景執行、狀態同步與雲端輔助配置。

對 Panel 類產品而言，互動延遲、觸控可靠性、UI 更新可靠性、狀態同步與場景執行成功率，都必須被定義為經驗證的系統級邊界。

## English Table

|Item|Description|
|---|---|
|Primary Connectivity|Wi-Fi / BLE depending on variant|
|Secondary Connectivity|Ethernet / RS485 / USB-C service path optional|
|Runtime Role|Human interaction node / scene control node / room interface|
|Local Network Access|Through Wi-Fi, Ethernet, Gate, or Hub path depending on architecture|
|Cloud Connectivity|Through Hub or direct cloud path depending on product strategy|
|Remote Configuration|Supported where cloud synchronization is enabled|
|Remote Control|Typically supports remote configuration and status sync; direct device control depends on architecture|
|Offline Communication|Local scene and room control where Hub and local runtime are available|
|Protocol Support|MQTT / HTTP / WebSocket / local API depending on architecture|
|UI Data Sync|Scene layout, room status, device status, user profile, and configuration|
|Max Scene Capacity|TBD / Validated Value|
|Max Device Shortcut Capacity|TBD / Validated Value|
|UI Response Latency|TBD / Validated Value|
|Capacity / Reliability Report|Required before public claims|

## 中文表

|項目|說明|
|---|---|
|主要連接能力|Wi-Fi / BLE，依版本配置|
|次要連接能力|可選 Ethernet / RS485 / USB-C 維護路徑|
|Runtime 角色|人機互動節點 / 場景控制節點 / 房間介面|
|本地網路存取|依架構透過 Wi-Fi、Ethernet、Gate 或 Hub 路徑|
|雲端連接|依產品策略透過 Hub 或直連雲端路徑|
|遠端配置|啟用雲端同步時支援|
|遠端控制|通常支援遠端配置與狀態同步；直接設備控制取決於架構|
|離線通訊|在 Hub 與本地 Runtime 可用時，支援本地場景與房間控制|
|協議支援|MQTT / HTTP / WebSocket / 本地 API，依架構定義|
|UI 數據同步|場景佈局、房間狀態、設備狀態、用戶配置與設定|
|最大場景容量|TBD / 已驗證數值|
|最大設備快捷容量|TBD / 已驗證數值|
|UI 回應延遲|TBD / 已驗證數值|
|容量 / 可靠性報告|公開宣稱前必須具備|

---

# 7. Software & Firmware Architecture

# 7. 軟體與韌體架構

## English Table

|Category|Status|Description|
|---|---|---|
|Runtime Platform|ArtiOS-compatible|Participates in ArtiOS runtime communication through Hub or defined interface|
|Firmware / Software Framework|ESP-IDF / LVGL / embedded Linux / custom UI stack depending on variant|Selected by display and UI complexity|
|OTA Update|Supported|Secure OTA or software update with rollback or recovery strategy recommended|
|UI Engine|Supported where display or dynamic UI exists|Manages layout, pages, controls, feedback, and local UI state|
|Touch Processing|Supported|Handles touch detection, debounce, gestures, long press, and false-trigger filtering|
|Scene Engine|Supported|Maps panel actions to scenes, room modes, or device shortcuts|
|Device Shortcut Manager|Supported|Stores and executes frequently used device controls where permitted|
|State Display Manager|Optional / Supported by display variant|Shows device state, room state, climate status, or system feedback|
|Event Engine|Supported|Handles interaction events, command dispatch, execution report, and diagnostics|
|User Profile Manager|Optional|Supports user-specific layouts, permissions, and preferences|
|Security Features|Supported|Secure onboarding, authentication, credential storage, encrypted communication where implemented|
|Diagnostics|Supported|Touch status, display status, network status, firmware version, error logs|
|Cloud Client|Optional / architecture-dependent|Handles remote configuration, UI sync, profile sync, and lifecycle services|
|MQTT Client|Supported where architecture uses MQTT|Communicates with Artibird Hub / ArtiOS MQTT services|
|Local Web Service|Optional|Local setup, diagnostics, UI configuration, or service interface|
|Pairing Manager|Supported|Handles onboarding, binding, room assignment, and reset workflows|

## 中文表

|類別|狀態|說明|
|---|---|---|
|Runtime 平台|相容 ArtiOS|透過 Hub 或已定義介面參與 ArtiOS Runtime 通訊|
|韌體 / 軟體框架|ESP-IDF / LVGL / 嵌入式 Linux / 自定義 UI Stack，依版本|依顯示與 UI 複雜度選擇|
|OTA 更新|支援|建議具備安全 OTA 或軟體更新與回滾 / 恢復策略|
|UI 引擎|顯示或動態 UI 版本支援|管理佈局、頁面、控制、反饋與本地 UI 狀態|
|觸控處理|支援|處理觸控偵測、防抖、手勢、長按與誤觸過濾|
|場景引擎|支援|將面板操作映射至場景、房間模式或設備快捷操作|
|設備快捷管理器|支援|在允許條件下儲存並執行常用設備控制|
|狀態顯示管理器|顯示版本選配 / 支援|顯示設備狀態、房間狀態、空調狀態或系統反饋|
|事件引擎|支援|處理互動事件、指令分發、執行回報與診斷|
|用戶配置管理器|選配|支援用戶級佈局、權限與偏好|
|安全功能|支援|安全入網、身份認證、憑證儲存、適用情況下的加密通訊|
|診斷功能|支援|觸控狀態、顯示狀態、網路狀態、韌體版本與錯誤日誌|
|雲端客戶端|選配 / 依架構|處理遠端配置、UI 同步、用戶配置同步與生命週期服務|
|MQTT Client|採用 MQTT 架構時支援|與 Artibird Hub / ArtiOS MQTT 服務通訊|
|本地 Web 服務|選配|本地設定、診斷、UI 配置或維護介面|
|配對管理器|支援|處理入網、綁定、房間分配與重置流程|

---

# 8. Runtime Behavior & System Integration

# 8. Runtime 行為與系統整合

## EN

Artibird Panel operates as a local interaction surface within the Artibird environment. It receives user inputs, maps them to scenes or controls, displays state where available, coordinates with Hub services, and participates in runtime behavior through ArtiOS.

## ZH-TW

Artibird Panel 作為 Artibird 環境中的本地互動表面運作。它接收用戶輸入，將其映射為場景或控制，並在具備顯示能力時呈現狀態，與 Hub 服務協同，並透過 ArtiOS 參與 Runtime 行為。

## English Table

|Topic|Description|
|---|---|
|Device Onboarding & Pairing Flow|Panel is discovered and bound through App, Hub, or local setup workflow|
|UI / Touch Interaction|User interacts through touch zones, virtual buttons, gestures, or display UI|
|Scene Control|Panel triggers scenes, room modes, device shortcuts, or automation flows|
|State Display|Display variant may show device state, room state, climate, lighting, curtain, or security status|
|Event Reporting|Panel reports interaction events, execution requests, UI status, and diagnostics|
|Local Control Logic|Panel sends local commands to Hub / ArtiOS for execution|
|Command Execution Priority|Safety command > local physical action > Hub / ArtiOS automation > cloud configuration > non-critical sync|
|Integration with ArtiOS|Panel actions participate in scenes, schedules, automations, and runtime coordination|
|Integration with Hub|Hub stores scene rules, UI state, device states, user profiles, and execution logic|
|Integration with Gate|Gate may support local network path depending on deployment|
|Integration with Edge|Edge may use panel interaction data as intention and room-context signals|
|Integration with Cloud|Cloud provides remote configuration, UI sync, profile sync, analytics, and lifecycle management|
|App Interaction|App supports panel setup, layout configuration, scene binding, user profile, and remote configuration|
|Multi-Panel Deployment|Multiple panels can participate in room-level, floor-level, or building-level interaction logic|

## 中文表

|主題|說明|
|---|---|
|設備入網與配對流程|Panel 透過 App、Hub 或本地設定流程被發現與綁定|
|UI / 觸控互動|用戶透過觸控區域、虛擬按鍵、手勢或顯示 UI 進行互動|
|場景控制|Panel 觸發場景、房間模式、設備快捷操作或自動化流程|
|狀態顯示|顯示版本可呈現設備狀態、房間狀態、空調、照明、窗簾或安全狀態|
|事件回報|Panel 回報互動事件、執行請求、UI 狀態與診斷|
|本地控制邏輯|Panel 向 Hub / ArtiOS 發送本地指令進行執行|
|指令執行優先級|安全指令 > 本地實體操作 > Hub / ArtiOS 自動化 > 雲端配置 > 非關鍵同步|
|與 ArtiOS 整合|Panel 操作參與場景、排程、自動化與 Runtime 協同|
|與 Hub 整合|Hub 儲存場景規則、UI 狀態、設備狀態、用戶配置與執行邏輯|
|與 Gate 整合|Gate 可依部署提供本地網路路徑|
|與 Edge 整合|Edge 可將面板互動數據作為意圖與房間上下文信號|
|與 Cloud 整合|Cloud 提供遠端配置、UI 同步、用戶配置同步、分析與生命週期管理|
|App 互動|App 支援面板設定、佈局配置、場景綁定、用戶配置與遠端配置|
|多 Panel 部署|多個 Panel 可參與房間級、樓層級或建築級互動邏輯|

---

# 9. Data & Event Flow

# 9. 數據與事件流

## EN

Artibird Panel manages bidirectional communication between user interaction, scene control, device status, and the Artibird / OceanAI runtime system.

Typical flows:

1. User Touch → Panel → Hub → ArtiOS Scene
    
2. Panel Shortcut → Hub → Device / Gate / Sync / Switch / Act
    
3. Device State → Hub → Panel Display
    
4. App Configuration → Cloud / Hub → Panel UI Layout
    
5. Panel Interaction → Hub → Edge Context
    
6. Hub Automation Result → Panel Status Feedback
    

## ZH-TW

Artibird Panel 管理用戶互動、場景控制、設備狀態與 Artibird / OceanAI Runtime 系統之間的雙向通訊。

典型流程：

1. User Touch → Panel → Hub → ArtiOS Scene
    
2. Panel Shortcut → Hub → Device / Gate / Sync / Switch / Act
    
3. Device State → Hub → Panel Display
    
4. App Configuration → Cloud / Hub → Panel UI Layout
    
5. Panel Interaction → Hub → Edge Context
    
6. Hub Automation Result → Panel Status Feedback
    

## English Table

|Flow Type|Direction|Description|
|---|---|---|
|Touch Event|Panel → Hub / ArtiOS|User interaction, scene trigger, or control request|
|Scene Execution|Panel → Hub → Devices|Panel-triggered scene or room mode execution|
|Device Shortcut|Panel → Hub → Device|Direct or shortcut control for configured devices|
|State Display|Hub → Panel|Device state, room state, environment state, or system feedback|
|UI Configuration|App / Cloud / Hub → Panel|Layout, scene binding, user profile, permissions, and display settings|
|Remote Configuration|Cloud → Hub / Panel|Remote layout or scene configuration where enabled|
|Health Report|Panel → Hub / Cloud|Connectivity, touch, display, firmware, error, and runtime status|
|Edge Context|Panel / Hub → Edge|Human intention, room interaction pattern, and scene context data|

## 中文表

|流類型|方向|說明|
|---|---|---|
|觸控事件|Panel → Hub / ArtiOS|用戶互動、場景觸發或控制請求|
|場景執行|Panel → Hub → Devices|由 Panel 觸發的場景或房間模式執行|
|設備快捷|Panel → Hub → Device|對已配置設備進行直接或快捷控制|
|狀態顯示|Hub → Panel|設備狀態、房間狀態、環境狀態或系統反饋|
|UI 配置|App / Cloud / Hub → Panel|佈局、場景綁定、用戶配置、權限與顯示設定|
|遠端配置|Cloud → Hub / Panel|啟用條件下的遠端佈局或場景配置|
|健康回報|Panel → Hub / Cloud|連接、觸控、顯示、韌體、錯誤與 Runtime 狀態|
|Edge 上下文|Panel / Hub → Edge|人的意圖、房間互動模式與場景上下文數據|

---

# 10. Safety, Reliability & Failure Behavior

# 10. 安全、可靠性與故障行為

## EN

Artibird Panel must maintain predictable behavior under abnormal operating conditions. Since it may control scenes, rooms, and device shortcuts, command validation, UI consistency, local fallback, and access control are critical.

## ZH-TW

Artibird Panel 必須在異常運作條件下保持可預期行為。由於它可控制場景、房間與設備快捷操作，指令驗證、UI 一致性、本地回退與存取控制非常重要。

## English Table

|Item|Description|
|---|---|
|Watchdog|Detects firmware or service lockup and triggers recovery|
|Brownout Detection|Detects voltage instability and protects runtime behavior where supported|
|Fail-Safe Behavior|Avoids uncontrolled scene or device command execution during fault conditions|
|Command Validation|Validates user action, permission, scene binding, and target device before execution|
|UI Consistency|Maintains consistent state between displayed status and actual system state|
|Touch Failure Handling|Detects abnormal touch input, false trigger, stuck touch, or sensitivity drift|
|Display Failure Handling|For display variants, defines fallback state and error indication|
|Power Failure Recovery|Restores panel configuration, UI layout, scene binding, and runtime state after reboot|
|OTA Failure Recovery|Supports rollback or safe firmware recovery strategy|
|Hub Disconnection Behavior|Maintains limited local UI and attempts reconnection|
|Cloud Disconnection Behavior|Maintains local operation where supported and resynchronizes after recovery|
|Security Mechanisms|Authentication, role control where needed, encrypted communication where applicable, secure OTA|
|Debug Protection|Production system should disable or protect debug interfaces|

## 中文表

|項目|說明|
|---|---|
|Watchdog|偵測韌體或服務鎖死並觸發恢復|
|低壓檢測|在支援條件下偵測電壓不穩並保護 Runtime 行為|
|故障安全行為|在故障條件下避免失控場景或設備指令執行|
|指令驗證|執行前驗證用戶操作、權限、場景綁定與目標設備|
|UI 一致性|維持顯示狀態與實際系統狀態之間的一致性|
|觸控失效處理|偵測異常觸控、誤觸、觸控卡死或靈敏度漂移|
|顯示失效處理|對顯示版本定義回退狀態與錯誤指示|
|斷電恢復|重啟後恢復面板配置、UI 佈局、場景綁定與 Runtime 狀態|
|OTA 失敗恢復|支援回滾或安全韌體恢復策略|
|Hub 斷線行為|維持有限本地 UI 並嘗試重新連接|
|雲端斷線行為|在支援條件下維持本地運作，並於恢復後重新同步|
|安全機制|身份認證、必要時的角色控制、適用情況下的加密通訊、安全 OTA|
|Debug 保護|量產系統應停用或保護 Debug 介面|

---

# 11. Installation, Deployment & Maintenance

# 11. 安裝、部署與維護

## English Table

|Item|Description|
|---|---|
|Installation Method|Wall-mounted / 86-type panel / U.S. wall box / desktop / embedded cabinet variant|
|Deployment Scenario|Home / classroom / office / hotel / smart building / campus / conference room|
|Installer Type|End user for low-voltage or wireless panels; qualified installer for AC-powered in-wall variants|
|Power Requirement|DC / USB-C / AC in-wall depending on variant|
|Wiring Requirement|Low-voltage wiring or AC wiring depending on variant; must be clearly defined|
|Mounting Requirement|Wall box, panel frame, screws, magnetic faceplate, bracket, or embedded structure|
|Placement Requirement|User-accessible height, clear visibility, reliable touch access, RF-safe location|
|LED / Display Function|Power, pairing, network, local mode, cloud status, scene feedback, fault|
|Button / Touch Function|Reset, pairing, scene selection, room mode, navigation, factory reset|
|Maintenance Method|Artibird App, Hub console, cloud console, local service interface, physical reset|
|Firmware / Software Update Method|OTA / local update / service tool depending on variant|
|Replacement Procedure|Panel replacement, room binding, scene binding, UI layout restore, user profile restore|
|Service Access|Controlled admin or service access required|

## 中文表

|項目|說明|
|---|---|
|安裝方式|壁掛式 / 86 型面板 / 美規牆盒 / 桌面式 / 嵌入式機櫃版本|
|部署場景|住宅 / 教室 / 辦公室 / 酒店 / 智慧建築 / 校園 / 會議室|
|安裝人員類型|低壓或無線面板可由用戶安裝；AC 牆內供電版本需合格安裝人員|
|供電要求|依版本採用 DC / USB-C / AC 牆內供電|
|接線要求|依版本採用低壓接線或 AC 接線，必須明確定義|
|固定要求|牆盒、面板框、螺絲、磁吸面蓋、支架或嵌入式結構|
|放置要求|用戶可接觸高度、清晰可視、可靠觸控、RF 安全位置|
|LED / 顯示功能|電源、配對、網路、本地模式、雲端狀態、場景反饋、故障|
|按鍵 / 觸控功能|重置、配對、場景選擇、房間模式、導航、恢復出廠設定|
|維護方式|Artibird App、Hub Console、Cloud Console、本地維護介面、實體重置|
|韌體 / 軟體更新方式|依版本採用 OTA / 本地更新 / 維護工具|
|更換流程|Panel 替換、房間綁定、場景綁定、UI 佈局恢復、用戶配置恢復|
|服務存取|必須具備受控管理員或維護存取|

---

# 12. Testing, Validation & Certification

# 12. 測試、驗證與認證

## EN

Artibird Panel must be validated as a physical interaction device, room control surface, and runtime participation node. Testing must cover touch reliability, UI consistency, local scene execution, Hub integration, cloud synchronization, security, display behavior where applicable, and long-duration reliability.

## ZH-TW

Artibird Panel 必須作為實體互動設備、房間控制表面與 Runtime 參與節點進行驗證。測試必須涵蓋觸控可靠性、UI 一致性、本地場景執行、Hub 整合、雲端同步、安全、適用情況下的顯示行為，以及長時間可靠性。

## English Table

|Test Category|Objective|
|---|---|
|Functional Test|Verify panel core functions, scene control, shortcut control, and status display|
|Touch Test|Verify touch sensitivity, false trigger rate, debounce, gesture accuracy, and long press|
|UI Test|Verify layout accuracy, status consistency, navigation, brightness, and feedback behavior|
|Display Test|Verify display quality, burn-in risk, brightness, viewing angle, and failure behavior where applicable|
|Network Test|Verify Wi-Fi / BLE / Ethernet connection, reconnect, latency, and local communication|
|Local Control Test|Verify local scene execution and Hub-assisted room control|
|Remote Configuration Test|Verify cloud-assisted layout, scene, and profile synchronization|
|Hub Integration Test|Verify communication with Artibird Hub and ArtiOS services|
|Gate Integration Test|Verify local network path where Gate is used|
|Edge Integration Test|Verify panel interaction data availability for spatial context and intelligence|
|Cloud Sync Test|Verify scene layout, user profile, state, account, log, and lifecycle synchronization|
|Stress Test|Verify long-duration and high-frequency interaction behavior|
|OTA Test|Verify firmware / software update, rollback, and recovery behavior|
|Security Test|Verify authentication, permission control, encryption, secure pairing, credential protection, and debug protection|
|Reliability Test|Verify stability under power, network, touch, display, and runtime variation|
|Certification Test|Verify compliance for FCC, CE, RoHS, UL / ETL where applicable|
|Claim Validation|Verify public product claims with formal test evidence|

## 中文表

|測試類別|目標|
|---|---|
|功能測試|驗證面板核心功能、場景控制、快捷控制與狀態顯示|
|觸控測試|驗證觸控靈敏度、誤觸率、防抖、手勢準確性與長按|
|UI 測試|驗證佈局準確性、狀態一致性、導航、亮度與反饋行為|
|顯示測試|在適用條件下驗證顯示品質、烙印風險、亮度、視角與失效行為|
|網路測試|驗證 Wi-Fi / BLE / Ethernet 連接、重連、延遲與本地通訊|
|本地控制測試|驗證本地場景執行與 Hub 輔助房間控制|
|遠端配置測試|驗證雲端輔助的佈局、場景與用戶配置同步|
|Hub 整合測試|驗證與 Artibird Hub 及 ArtiOS 服務的通訊|
|Gate 整合測試|在使用 Gate 的情況下驗證本地網路路徑|
|Edge 整合測試|驗證面板互動數據可用於空間上下文與智慧處理|
|雲端同步測試|驗證場景佈局、用戶配置、狀態、帳號、日誌與生命週期同步|
|壓力測試|驗證長時間與高頻互動行為|
|OTA 測試|驗證韌體 / 軟體更新、回滾與恢復行為|
|安全測試|驗證身份認證、權限控制、加密、安全配對、憑證保護與 Debug 保護|
|可靠性測試|驗證電源、網路、觸控、顯示與 Runtime 變化下的穩定性|
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
|UL / ETL|Required for AC-powered in-wall panel variants|
|Bluetooth Qualification|Required if using Bluetooth branding|
|Wi-Fi Certification|Optional depending on commercial strategy|
|Cybersecurity Labeling|Optional depending on market and retail channel|

|認證|適用範圍|
|---|---|
|FCC|美國無線市場需要|
|CE|歐盟市場需要|
|RoHS|環保合規|
|REACH|歐盟市場建議|
|UL / ETL|AC 供電牆內面板版本需要|
|Bluetooth 資格認證|若使用 Bluetooth 品牌則需要|
|Wi-Fi 認證|依商業策略選配|
|網路安全標籤|依市場與零售渠道選配|

---

# 13. Product Variants

# 13. 產品版本

## English Table

|Variant / SKU|Hardware Difference|Software Difference|Market / Region|Certification Difference|Notes|
|---|---|---|---|---|---|
|Artibird Panel Scene|Non-display touch zones|Scene trigger profile|Residential / classroom / office|FCC / CE / RoHS|Scene-focused panel|
|Artibird Panel Control|Touch panel with device shortcuts|Room control and shortcut profile|Residential / hotel / office|FCC / CE / RoHS|Device and room control|
|Artibird Panel Display|Touch display with UI pages|Display UI and state feedback profile|Home / office / building|Display and EMC validation|Advanced interface|
|Artibird Panel Glass|Glass touch surface, optional metal frame|Touch calibration profile|Premium residential / commercial|RF and enclosure validation|Requires antenna window design|
|Artibird Panel Climate|Display or touch panel optimized for climate control|Climate UI and room mode profile|Home / classroom / office|Regional compliance required|HVAC-oriented panel|
|Artibird Panel Campus|Multi-room deployment profile|Campus room control and reporting|Education / campus|Capacity and deployment validation required|For classroom and campus deployment|

## 中文表

|版本 / SKU|硬體差異|軟體差異|市場 / 地區|認證差異|備註|
|---|---|---|---|---|---|
|Artibird Panel Scene|無顯示觸控區域|場景觸發配置|住宅 / 教室 / 辦公室|FCC / CE / RoHS|以場景為核心的面板|
|Artibird Panel Control|具設備快捷操作的觸控面板|房間控制與快捷配置|住宅 / 酒店 / 辦公室|FCC / CE / RoHS|設備與房間控制|
|Artibird Panel Display|具 UI 頁面的觸控顯示屏|顯示 UI 與狀態反饋配置|住宅 / 辦公 / 建築|需顯示與 EMC 驗證|進階互動介面|
|Artibird Panel Glass|玻璃觸控表面、可選金屬框|觸控校準配置|高端住宅 / 商業|需 RF 與外殼驗證|需要天線窗口設計|
|Artibird Panel Climate|面向空調控制優化的顯示或觸控面板|空調 UI 與房間模式配置|住宅 / 教室 / 辦公室|需地區合規|面向 HVAC 的面板|
|Artibird Panel Campus|多房間部署配置|校園房間控制與報告|教育 / 校園|需容量與部署驗證|用於教室與校園部署|

---

# 14. Commercial Positioning

# 14. 商業定位

## EN

Artibird Panel is positioned as the local human interaction surface for coordinated intelligent environments. It allows users to control scenes, rooms, devices, and system modes through a refined physical interface connected to the OceanAI runtime system.

## ZH-TW

Artibird Panel 被定位為協同智慧空間中的本地人機互動表面。它使用戶能夠透過精緻的實體介面，控制場景、房間、設備與系統模式，並接入 OceanAI Runtime 系統。

## English Table

|Item|Description|
|---|---|
|Target Market|Residential, classroom, office, hotel, campus, smart building, conference room|
|Key Selling Points|Unified scene and control panel, glass touch design, local-first interaction, ArtiOS integration, cloud-enhanced configuration|
|Use Cases|Scene control, room mode control, lighting shortcut, climate control, curtain control, classroom control, meeting room control|
|Compatibility Statement|Designed for Artibird Hub, Artibird Gate, ArtiOS, OceanAI Cloud, OceanAI Edge, Artibird App, and Artibird devices|
|Local-first Statement|Physical interaction and supported local scenes remain available where deployment architecture permits|
|Cloud-enhanced Statement|Cloud adds remote configuration, scene synchronization, user profiles, analytics, and lifecycle management|
|Remote Configuration Statement|Remote configuration requires OceanAI Cloud connectivity, account binding, and network availability|
|Touch Claim|Must reference Touch Reliability Validation Report|
|UI Claim|Must reference UI Performance and Consistency Validation Report where display is included|
|Prohibited Claims|Unlimited scene capacity, unsupported direct device control, unvalidated display performance, unverified touch reliability, uncertified in-wall safety|

## 中文表

|項目|說明|
|---|---|
|目標市場|住宅、教室、辦公室、酒店、校園、智慧建築、會議室|
|核心賣點|統一場景與控制面板、玻璃觸控設計、本地優先互動、ArtiOS 整合、雲端增強配置|
|使用場景|場景控制、房間模式控制、照明快捷、空調控制、窗簾控制、教室控制、會議室控制|
|相容性聲明|面向 Artibird Hub、Artibird Gate、ArtiOS、OceanAI Cloud、OceanAI Edge、Artibird App 與 Artibird 設備設計|
|本地優先聲明|在部署架構允許條件下，實體互動與受支援本地場景保持可用|
|雲端增強聲明|雲端增加遠端配置、場景同步、用戶配置、分析與生命週期管理|
|遠端配置聲明|遠端配置需要 OceanAI Cloud 連接、帳號綁定與網路可用|
|觸控宣稱|必須引用觸控可靠性驗證報告|
|UI 宣稱|若包含顯示功能，必須引用 UI 性能與一致性驗證報告|
|禁止宣稱|無限制場景容量、未支援直接設備控制、未驗證顯示性能、未驗證觸控可靠性、未認證牆內安全|

---

# 15. Engineering Claim Policy

# 15. 工程宣稱政策

## Mandatory Statement

## 強制聲明

**EN**  
All Artibird Panel performance claims, especially touch reliability, UI response time, scene capacity, device shortcut capacity, display quality, wireless range, local response time, remote configuration performance, reliability, and safety, must be based on validated test reports under defined conditions. Theoretical chip specifications, display module specifications, or generic touch controller capabilities shall not be used as product claims.

**ZH-TW**  
所有 Artibird Panel 性能宣稱，尤其是觸控可靠性、UI 回應時間、場景容量、設備快捷容量、顯示品質、無線距離、本地回應時間、遠端配置性能、可靠性與安全性，必須基於明確條件下的已驗證測試報告。晶片理論規格、顯示模組規格或泛化觸控控制器能力，不得直接作為產品宣稱。

## English Table — Claim Policy

|Claim Type|Requirement|
|---|---|
|Touch Reliability|Must reference touch test condition, panel material, humidity, false-trigger rate, and gesture accuracy|
|UI Response Time|Must reference firmware version, UI workload, display type, and network condition|
|Scene Capacity|Must reference scene storage, Hub integration, and validation test|
|Device Shortcut Capacity|Must reference UI layout, memory, and runtime validation|
|Display Quality|Must reference display test condition, brightness, viewing angle, and aging behavior|
|Wireless Range|Must reference RF test condition, antenna design, enclosure, and environment|
|Local-first Capability|Must define exact offline functions and dependency conditions|
|Remote Configuration|Must define cloud, account, network, and version dependency|
|Direct Device Control|Must define supported target devices and architecture path|
|Safety|Must reference certification path and implemented protection mechanisms|
|Compatibility|Must define tested platforms, panel variants, mounting types, and power conditions|

## 中文表 — 宣稱政策

|宣稱類型|要求|
|---|---|
|觸控可靠性|必須引用觸控測試條件、面板材料、濕度、誤觸率與手勢準確性|
|UI 回應時間|必須引用韌體版本、UI 負載、顯示類型與網路條件|
|場景容量|必須引用場景儲存、Hub 整合與驗證測試|
|設備快捷容量|必須引用 UI 佈局、記憶體與 Runtime 驗證|
|顯示品質|必須引用顯示測試條件、亮度、視角與老化行為|
|無線距離|必須引用 RF 測試條件、天線設計、外殼與環境|
|本地優先能力|必須定義具體離線功能與依賴條件|
|遠端配置|必須定義雲端、帳號、網路與版本依賴|
|直接設備控制|必須定義支援目標設備與架構路徑|
|安全性|必須引用認證路線與已實作保護機制|
|相容性|必須定義已測平台、面板版本、安裝類型與供電條件|

---

# 16. Revision History

# 16. 版本記錄

## English Table

|Version|Date|Author|Description|
|---|---|---|---|
|v1.0|2026-05-08|OceanAI / Artibird Product Team|Initial Artibird Panel Product Specification based on Artibird Product Specification Template v1.1|

## 中文表

|版本|日期|作者|說明|
|---|---|---|---|
|v1.0|2026-05-08|OceanAI / Artibird Product Team|基於 Artibird 產品規格書標準模板 v1.1 建立的 Artibird Panel 初始產品規格書|

---

# Appendix A — Terminology

# 附錄 A｜術語對照表

|English Term|中文術語|Definition|
|---|---|---|
|Artibird Panel|Artibird Panel|Local human interaction node for scene, room, and device control|
|Scene Panel|場景面板|Panel focused on scene trigger and room mode selection|
|Control Panel|控制面板|Panel used for device shortcuts, room control, and system interaction|
|Display Panel|顯示面板|Panel with screen-based UI and status feedback|
|Glass Touch Panel|玻璃觸控面板|Panel using a glass surface and capacitive touch input|
|Room Mode|房間模式|A coordinated room-level state such as Home, Away, Sleep, Class, Meeting, or Energy Saving|
|UI Layout|UI 佈局|Arrangement of controls, pages, shortcuts, and feedback elements|
|Local-first|本地優先|Core functions are designed to operate locally whenever possible|
|Cloud-enhanced|雲端增強|Cloud services extend local operation with remote, sync, analytics, or AI capabilities|
|Touch Reliability Validation Report|觸控可靠性驗證報告|Formal report validating touch behavior under defined conditions|

---

# Appendix B — Risk Register

# 附錄 B｜風險登記表

## English Table

|Risk ID|Risk Description|Impact|Mitigation|
|---|---|---|---|
|R-PANEL-001|Touch false triggers under humidity, panel variation, or noise|High|Require touch reliability validation under environmental variation|
|R-PANEL-002|UI state inconsistent with actual device state|High|Define state synchronization and stale-state display policy|
|R-PANEL-003|Overclaiming scene or shortcut capacity|Medium / High|Require scene and UI capacity validation|
|R-PANEL-004|Metal frame reduces RF performance|High|Require RF window design and final enclosure RF validation|
|R-PANEL-005|Display aging, burn-in, or brightness degradation|Medium / High|Validate display type and aging behavior|
|R-PANEL-006|Cloud dependency weakens local-first positioning|High|Clearly separate local-first and cloud-enhanced functions|
|R-PANEL-007|Unauthorized control through panel access|High|Apply role control, authentication, and sensitive action restrictions|
|R-PANEL-008|Firmware or UI update failure|High|Implement rollback and recovery mechanism|
|R-PANEL-009|AC-powered in-wall panel safety risk|High|Apply UL / ETL certification strategy and isolation design|
|R-PANEL-010|Product language exceeds tested capability|High|Apply Engineering Claim Policy|

## 中文表

|風險 ID|風險描述|影響|緩解措施|
|---|---|---|---|
|R-PANEL-001|濕度、面板差異或噪聲導致觸控誤觸|高|必須在環境變化條件下進行觸控可靠性驗證|
|R-PANEL-002|UI 狀態與實際設備狀態不一致|高|定義狀態同步與過期狀態顯示策略|
|R-PANEL-003|過度宣稱場景或快捷容量|中 / 高|必須進行場景與 UI 容量驗證|
|R-PANEL-004|金屬框降低 RF 性能|高|必須設計 RF 窗口並進行最終外殼 RF 驗證|
|R-PANEL-005|顯示老化、烙印或亮度衰減|中 / 高|驗證顯示類型與老化行為|
|R-PANEL-006|雲端依賴削弱本地優先定位|高|清楚區分本地優先與雲端增強功能|
|R-PANEL-007|透過面板未授權控制|高|套用角色控制、身份認證與敏感操作限制|
|R-PANEL-008|韌體或 UI 更新失敗|高|實作回滾與恢復機制|
|R-PANEL-009|AC 牆內供電面板存在安全風險|高|套用 UL / ETL 認證策略與隔離設計|
|R-PANEL-010|產品語言超出已測試能力|高|套用工程宣稱政策|

---

# Appendix C — Validation Checklist

# 附錄 C｜驗證清單

## English Table

|Checklist Item|Required|Status|Evidence|
|---|---|---|---|
|Hardware specification completed|Yes|TBD|Schematic / BOM / enclosure design|
|Firmware / software architecture completed|Yes|TBD|Firmware / UI design document|
|Touch interface validated|Yes|TBD|Touch Reliability Validation Report|
|UI behavior validated|If display or dynamic UI exists|TBD|UI Performance and Consistency Report|
|Display behavior validated|If display exists|TBD|Display test report|
|Wi-Fi / BLE communication validated|If wireless|TBD|RF / network test report|
|Local-first behavior validated|Yes|TBD|Local operation test report|
|Hub integration validated|Yes|TBD|Hub integration test|
|Gate integration validated|If applicable|TBD|Gate integration test|
|Cloud-enhanced behavior validated|Yes|TBD|Cloud integration test|
|Remote configuration validated|If applicable|TBD|App / cloud configuration test|
|Scene capacity validated|Yes|TBD|Scene capacity validation report|
|Device shortcut capacity validated|If applicable|TBD|Shortcut capacity validation report|
|OTA update validated|Yes|TBD|OTA test report|
|Security mechanisms validated|Yes|TBD|Security test report|
|Failure behavior validated|Yes|TBD|Reliability test report|
|Certification path defined|Yes|TBD|Certification plan|
|Commercial claims reviewed|Yes|TBD|Claim review record|

## 中文表

|檢查項目|是否必要|狀態|證據|
|---|---|---|---|
|硬體規格已完成|是|TBD|原理圖 / BOM / 外殼設計|
|韌體 / 軟體架構已完成|是|TBD|韌體 / UI 設計文件|
|觸控介面已驗證|是|TBD|觸控可靠性驗證報告|
|UI 行為已驗證|若具備顯示或動態 UI 則需要|TBD|UI 性能與一致性報告|
|顯示行為已驗證|若具備顯示則需要|TBD|顯示測試報告|
|Wi-Fi / BLE 通訊已驗證|若為無線產品|TBD|RF / 網路測試報告|
|本地優先行為已驗證|是|TBD|本地運作測試報告|
|Hub 整合已驗證|是|TBD|Hub 整合測試|
|Gate 整合已驗證|如適用|TBD|Gate 整合測試|
|雲端增強行為已驗證|是|TBD|雲端整合測試|
|遠端配置已驗證|如適用|TBD|App / 雲端配置測試|
|場景容量已驗證|是|TBD|場景容量驗證報告|
|設備快捷容量已驗證|如適用|TBD|快捷容量驗證報告|
|OTA 更新已驗證|是|TBD|OTA 測試報告|
|安全機制已驗證|是|TBD|安全測試報告|
|故障行為已驗證|是|TBD|可靠性測試報告|
|認證路線已定義|是|TBD|認證計畫|
|商業宣稱已審查|是|TBD|宣稱審查記錄|

---

# Document End

# 文件結束

## EN

This Artibird Panel Product Specification v1.0 defines Panel as the local human interaction surface of the Artibird ecosystem. It provides a controlled engineering and system-level reference for scene control, room control, glass touch design, optional display interaction, ArtiOS runtime participation, local-first operation, cloud-enhanced configuration, validation, certification, and commercial claim boundaries.

## ZH-TW

本《Artibird Panel 產品規格書 v1.0》將 Panel 定義為 Artibird 生態中的本地人機互動表面。它為場景控制、房間控制、玻璃觸控設計、可選顯示互動、ArtiOS Runtime 參與、本地優先運作、雲端增強配置、驗證、認證與商業宣稱邊界，提供受控的工程與系統級參考。

---

## Topic Extension

## 話題延伸

下一個建議寫：

**Artibird Act Product Specification v1.0**  
**Artibird Act 產品規格書 v1.0**

它可以統一你之前提到的：

**Relay / Plug / Power Execution Node / Energy Measurement Variant**  
**繼電器 / 插座 / 電力執行節點 / 電能計量版本**