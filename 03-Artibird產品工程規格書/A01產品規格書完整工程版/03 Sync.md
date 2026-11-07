# Artibird Sync Product Specification v1.0

# Artibird Sync 產品規格書 v1.0

**Engineering + System Specification Edition**  
**工程與系統規格書版本**

**Version Date**: 2026-05-08  
**Document Type**: Product Specification  
**Product Category**: IR / RF Synchronization Node  
**Hardware Foundation**: ESP32-based Synchronization Controller  
**System Architecture**: OceanAI Coordinated Intelligence Architecture  
**Runtime Platform**: ArtiOS-compatible

**版本日期**：2026-05-08  
**文件類型**：產品規格書  
**產品類別**：IR / RF 同步節點  
**硬體基礎**：ESP32 系列同步控制器  
**系統架構**：OceanAI 協同智慧架構  
**Runtime 平台**：相容 ArtiOS

---

# 1. Document Information

# 1. 文件資訊

## English Table

|Item|Description|
|---|---|
|Document Name|Artibird Sync Product Specification|
|Version|v1.0|
|Document Type|Engineering + System Specification|
|Product Name|Artibird Sync|
|Product Category|IR / RF Synchronization Node|
|System Architecture|OceanAI Coordinated Intelligence Architecture|
|Runtime Platform|ArtiOS-compatible|
|Hardware Foundation|ESP32-based synchronization controller|
|Specification Level|Engineering + System|
|Intended Audience|Hardware, Firmware, Software, System, Testing, Certification, Product Teams|
|Release Date|2026-05-08|

## 中文表

|項目|說明|
|---|---|
|文件名稱|Artibird Sync 產品規格書|
|文件版本|v1.0|
|文件類型|工程與系統規格書|
|產品名稱|Artibird Sync|
|產品類別|IR / RF 同步節點|
|系統架構|OceanAI 協同智慧架構|
|Runtime 平台|相容 ArtiOS|
|硬體基礎|ESP32 系列同步控制器|
|規格書層級|工程與系統規格|
|適用對象|硬體、韌體、軟體、系統、測試、認證、產品團隊|
|發布日期|2026-05-08|

---

# 2. Product Overview

# 2. 產品總覽

## EN

Artibird Sync is an IR / RF synchronization node designed for the Artibird product ecosystem and the OceanAI coordinated intelligence architecture. It enables infrared-controlled and RF-controlled appliances to participate in coordinated intelligent environments through localized signal transmission, signal learning, command mapping, state estimation, and runtime synchronization.

Within the Artibird ecosystem, Sync forms the legacy appliance participation layer. It connects air conditioners, TVs, fans, projectors, curtains, set-top boxes, and other remote-controlled devices into the Artibird runtime structure through defined IR and RF control paths. By translating system commands into appliance-specific signal actions, Artibird Sync extends coordinated operation to devices that do not natively support network communication.

Artibird Sync follows a **local-first, cloud-enhanced** operating model. Local command execution, signal transmission, learned-code control, and Hub-assisted automation should remain available within the local environment whenever technically feasible. Cloud connectivity extends the system through remote control, device code library updates, synchronization, lifecycle management, analytics, and intelligent enhancement. In this role, Artibird Sync provides a practical execution pathway for integrating traditional appliances into the OceanAI runtime system.

## ZH-TW

Artibird Sync 是一款面向 Artibird 產品生態與 OceanAI 協同智慧架構設計的 IR / RF 同步節點。它透過本地化信號發射、信號學習、指令映射、狀態推定與 Runtime 同步，使紅外線控制與 RF 控制的家電設備能夠參與協同智慧環境。

在 Artibird 生態中，Sync 構成傳統家電參與層。它透過明確的 IR 與 RF 控制路徑，將空調、電視、風扇、投影機、窗簾、機上盒與其他遙控設備接入 Artibird Runtime 結構。Artibird Sync 透過將系統指令轉換為特定設備信號動作，把協同運作能力延伸至原本不具備網路通訊能力的設備。

Artibird Sync 採用 **本地優先、雲端增強** 的運作模式。本地指令執行、信號發射、已學習碼控制與 Hub 輔助自動化，應在技術可行條件下保持於本地環境中可用。雲端連接則透過遠端控制、設備碼庫更新、同步、生命週期管理、分析與智慧增強擴展系統能力。在此角色中，Artibird Sync 提供了將傳統家電整合進 OceanAI Runtime 系統的實際執行路徑。

---

# 3. System Positioning & Role

# 3. 系統定位與角色

## English Table

|Item|Description|
|---|---|
|System Layer|Device Execution Layer / Synchronization Layer|
|Primary Role|IR / RF synchronization node for remote-controlled appliances|
|Runtime Participation|Receives system commands, maps them to IR / RF signals, executes signal transmission, and reports execution state|
|Relationship with Gate|May communicate through Gate or local network path depending on deployment architecture|
|Relationship with Hub|Receives automation commands, device profiles, signal mappings, and execution policies from Artibird Hub|
|Relationship with Edge|Provides appliance context and inferred device state to OceanAI Edge where supported|
|Relationship with Cloud|Supports remote access, code library update, account binding, lifecycle management, and cloud synchronization|
|Local-first Capability|Yes|
|Offline Operation Scope|Local IR / RF control, learned signal execution, Hub-assisted automation, and local App control where supported|
|Remote Control Scope|Remote appliance control through OceanAI Cloud when network, account binding, and security policy are available|
|System Dependency|Hub-enhanced, Cloud-enhanced, Edge-enhanced depending on deployment architecture|

## 中文表

|項目|說明|
|---|---|
|系統層級|設備執行層 / 同步層|
|主要角色|面向遙控家電的 IR / RF 同步節點|
|Runtime 參與方式|接收系統指令，映射為 IR / RF 信號，執行信號發射，並回報執行狀態|
|與 Gate 的關係|依部署架構可透過 Gate 或本地網路路徑通訊|
|與 Hub 的關係|從 Artibird Hub 接收自動化指令、設備配置、信號映射與執行策略|
|與 Edge 的關係|在支援條件下，向 OceanAI Edge 提供家電上下文與推定設備狀態|
|與 Cloud 的關係|支援遠端存取、碼庫更新、帳號綁定、生命週期管理與雲端同步|
|本地優先能力|是|
|離線運作範圍|在支援條件下，本地 IR / RF 控制、已學習信號執行、Hub 輔助自動化與 App 本地控制可運作|
|遠端控制範圍|當網路、帳號綁定與安全策略可用時，透過 OceanAI Cloud 進行遠端家電控制|
|系統依賴關係|依部署架構，可由 Hub 增強、Cloud 增強或 Edge 增強|

---

# 4. Core Design Principles

# 4. 核心設計原則

## 4.1 Local-First Runtime Architecture

## 4.1 本地優先 Runtime 架構

**EN**  
Artibird Sync prioritizes local signal execution and local command responsiveness. Once IR or RF codes are configured, learned, or matched, core appliance control should remain available within the local environment whenever the deployment architecture permits.

**ZH-TW**  
Artibird Sync 優先保障本地信號執行與本地指令回應。一旦 IR 或 RF 碼完成配置、學習或匹配，在部署架構允許的條件下，核心家電控制應保持於本地環境中可用。

## 4.2 Coordinated System Participation

## 4.2 協同式系統參與

**EN**  
Artibird Sync participates as a coordinated runtime execution node. It allows appliances controlled by IR or RF signals to become part of system-level scenes, automation rules, schedules, and environmental coordination.

**ZH-TW**  
Artibird Sync 作為協同 Runtime 執行節點參與運作。它使由 IR 或 RF 信號控制的家電設備，能夠成為系統級場景、自動化規則、排程與環境協同的一部分。

## 4.3 Cloud-Enhanced Intelligence

## 4.3 雲端增強智慧

**EN**  
Cloud services may extend Artibird Sync with remote control, IR code library updates, appliance model matching, account synchronization, usage analytics, and intelligent optimization. Cloud functions should enhance local execution rather than replace local control availability.

**ZH-TW**  
雲端服務可透過遠端控制、IR 碼庫更新、家電型號匹配、帳號同步、使用分析與智慧優化來擴展 Artibird Sync。雲端功能應增強本地執行，而不是取代本地控制可用性。

## 4.4 Distributed Operational Resilience

## 4.4 分布式運作韌性

**EN**  
Artibird Sync should maintain predictable behavior under network instability, Hub disconnection, cloud unavailability, failed signal learning, unsupported appliance protocols, firmware recovery, and runtime load variation.

**ZH-TW**  
Artibird Sync 應在網路不穩定、Hub 斷線、雲端不可用、信號學習失敗、不支援家電協議、韌體恢復與 Runtime 負載變化時保持可預期行為。

## 4.5 Security by Design

## 4.5 安全預設設計

**EN**  
As an execution node capable of controlling appliances, Artibird Sync must apply secure onboarding, authenticated command paths, encrypted communication where applicable, controlled remote access, secure OTA, and protected debug interfaces.

**ZH-TW**  
作為能夠控制家電的執行節點，Artibird Sync 必須採用安全入網、經身份認證的指令路徑、適用情況下的加密通訊、受控遠端存取、安全 OTA 與受保護的 Debug 介面。

---

# 5. Hardware Specification

# 5. 硬體規格

## English Table

|Item|Specification|
|---|---|
|Main Processor / SoC|ESP32-based controller, exact model by variant|
|CPU Architecture|TBD by selected ESP32 variant|
|Memory|Flash and optional external memory by variant|
|Wireless Module|Wi-Fi / BLE depending on selected ESP32 variant|
|IR Transmitter|High-power IR LED array or multi-direction IR emitter design|
|IR Receiver|IR demodulator / learning receiver recommended|
|RF Transmitter|433.92 MHz RF transmitter for fixed-code RF control where supported|
|RF Receiver|Optional 433.92 MHz RF receiver for learning or matching where supported|
|Wired Interface|USB-C for power and optional service access; optional UART / GPIO service interface|
|Power Input|USB-C DC input recommended|
|Power Consumption|TBD by signal transmission duty cycle, Wi-Fi mode, standby mode, and firmware workload|
|Sensor Support|Optional temperature, humidity, light, or external appliance-status input by variant|
|I/O Interface|GPIO / UART / I2C / SPI depending on hardware design|
|Antenna Type|PCB antenna / ceramic antenna / external antenna variant for Wi-Fi / RF|
|Enclosure Material|Flame-retardant PC / ABS recommended; IR-transparent window required|
|Mounting Method|Desktop / wall-mounted / ceiling-facing / appliance-facing placement|
|Operating Temperature|TBD based on enclosure and thermal validation|
|Storage Temperature|TBD|
|Protection Features|ESD protection, power input protection, watchdog, secure boot support, enclosure protection by variant|
|Certification Direction|FCC / CE / RoHS; optional UL / ETL depending on power supply and enclosure strategy|

## 中文表

|項目|規格|
|---|---|
|主處理器 / SoC|ESP32 系列控制器，具體型號依版本定義|
|CPU 架構|依所選 ESP32 版本定義|
|記憶體|Flash 與可選外部記憶體，依版本配置|
|無線模組|Wi-Fi / BLE，依所選 ESP32 版本配置|
|IR 發射器|高功率 IR LED 陣列或多方向 IR 發射設計|
|IR 接收器|建議配置 IR 解調 / 學習接收器|
|RF 發射器|在支援條件下提供 433.92 MHz 固定碼 RF 控制發射|
|RF 接收器|在支援條件下可選配 433.92 MHz RF 接收，用於學習或匹配|
|有線介面|USB-C 用於供電與可選維護接入；可選 UART / GPIO 維護介面|
|供電方式|建議 USB-C DC 輸入|
|功耗|依信號發射占空比、Wi-Fi 模式、待機模式與韌體負載定義|
|感測器支援|依版本可選配溫度、濕度、光照或外部家電狀態輸入|
|I/O 介面|GPIO / UART / I2C / SPI，依硬體設計|
|天線類型|Wi-Fi / RF 依版本採用 PCB 天線、陶瓷天線或外置天線|
|外殼材質|建議阻燃 PC / ABS；必須具備 IR 透射窗口|
|安裝方式|桌面式 / 壁掛式 / 朝天花板 / 朝家電方向放置|
|工作溫度|TBD，依外殼與散熱驗證確定|
|儲存溫度|TBD|
|保護功能|ESD 保護、電源輸入保護、Watchdog、Secure Boot 支援、依版本提供外殼防護|
|認證方向|FCC / CE / RoHS；依供電與外殼策略選配 UL / ETL|

---

# 6. Connectivity & Networking

# 6. 連接與網路能力

## EN

Artibird Sync provides localized control paths for IR and RF appliances and connects execution behavior to the broader Artibird / OceanAI architecture. It supports local signal execution, learned-code control, matched-code control, Hub communication, App-assisted setup, and cloud-assisted synchronization.

For Sync-class products, signal compatibility and execution reliability must be defined as **validated system-level boundaries**. IR learning, one-key matching, RF fixed-code control, appliance compatibility, transmission range, angle coverage, and command success rate must be validated under defined conditions.

## ZH-TW

Artibird Sync 為 IR 與 RF 家電提供本地化控制路徑，並將執行行為接入更大的 Artibird / OceanAI 架構。它支援本地信號執行、已學習碼控制、匹配碼控制、Hub 通訊、App 輔助設定與雲端輔助同步。

對 Sync 類產品而言，信號相容性與執行可靠性必須被定義為 **經驗證的系統級邊界**。IR 學習、一鍵匹配、RF 固定碼控制、家電相容性、發射距離、角度覆蓋與指令成功率，都必須在明確條件下驗證。

## English Table

|Item|Description|
|---|---|
|Primary Connectivity|Wi-Fi, depending on ESP32 variant|
|Secondary Connectivity|BLE setup or provisioning, depending on variant|
|IR Control|Supported|
|IR Learning|Supported / To be validated by receiver design and protocol coverage|
|IR Code Library|Supported through local storage and optional cloud updates|
|RF Control|433.92 MHz fixed-code RF where supported|
|RF Learning / Matching|Optional depending on hardware and firmware strategy|
|Supported Network Mode|Local execution node / Hub-connected node / cloud-enhanced node|
|Protocol Support|MQTT / HTTP / WebSocket / local API depending on architecture|
|Local Network Access|Supported where Hub or local setup path is available|
|Cloud Connectivity|Supported through Hub or direct cloud path depending on architecture|
|Remote Control|Supported through OceanAI Cloud when enabled|
|Offline Communication|Local IR / RF execution where codes and local control path are available|
|Max Appliance Profile Capacity|TBD / Validated Value|
|Signal Compatibility Report|Required before any compatibility claim|
|Command Success Rate|Must be validated by appliance type, distance, angle, and environment|
|Reconnection Strategy|Required for Hub reconnect, network reconnect, and cloud recovery|

## 中文表

|項目|說明|
|---|---|
|主要連接能力|Wi-Fi，依 ESP32 版本配置|
|次要連接能力|BLE 設定或配網，依版本配置|
|IR 控制|支援|
|IR 學習|支援 / 需依接收器設計與協議覆蓋進行驗證|
|IR 碼庫|支援本地儲存與可選雲端更新|
|RF 控制|在支援條件下提供 433.92 MHz 固定碼 RF 控制|
|RF 學習 / 匹配|依硬體與韌體策略選配|
|支援網路模式|本地執行節點 / Hub 連接節點 / 雲端增強節點|
|協議支援|MQTT / HTTP / WebSocket / 本地 API，依架構定義|
|本地網路存取|在 Hub 或本地設定路徑可用時支援|
|雲端連接|依架構可透過 Hub 或直連雲端路徑支援|
|遠端控制|啟用時透過 OceanAI Cloud 支援|
|離線通訊|在已配置碼與本地控制路徑可用時，支援本地 IR / RF 執行|
|最大家電配置容量|TBD / 已驗證數值|
|信號相容性報告|任何相容性宣稱前必須具備|
|指令成功率|必須依家電類型、距離、角度與環境進行驗證|
|重連策略|必須支援 Hub 重連、網路重連與雲端恢復|

---

# 7. Software & Firmware Architecture

# 7. 軟體與韌體架構

## English Table

|Category|Status|Description|
|---|---|---|
|Runtime Platform|ArtiOS-compatible|Participates in ArtiOS runtime communication through Hub or defined interface|
|Firmware Framework|ESP-IDF recommended|ESP32 firmware implementation|
|OTA Update|Supported|Secure OTA update with rollback or recovery strategy recommended|
|Local Rule Engine|Optional|Sync may execute limited local fallback or scheduled signal execution; primary automation belongs to Hub / ArtiOS|
|Signal Mapping Engine|Supported|Maps system commands to IR / RF signal actions|
|IR Learning Engine|Supported|Captures and stores supported IR signals where receiver design permits|
|IR Protocol Template Engine|Recommended|Improves support for air conditioners and protocol-based signal generation|
|RF Control Engine|Optional / Supported by variant|Handles supported 433.92 MHz RF fixed-code transmission|
|Appliance Profile Manager|Supported|Stores appliance profiles, learned codes, matched codes, and command mappings|
|State Estimation Engine|Optional / Recommended|Estimates appliance state based on commands, sensor feedback, power data, or runtime context|
|Event Engine|Supported|Handles command events, execution reports, success / failure status, and diagnostics|
|Security Features|Supported|Secure Boot, Flash Encryption, credential storage, encrypted communication where implemented|
|Diagnostics|Supported|Signal test, command history, learning result, firmware version, error logs, device online status|
|Cloud Client|Optional / architecture-dependent|May communicate through Hub or directly with OceanAI Cloud depending on product strategy|
|MQTT Client|Supported|Communicates with Artibird Hub / ArtiOS MQTT services|
|Local Web Service|Optional|Local setup, diagnostics, signal testing, or service interface|
|Pairing Manager|Supported|Handles onboarding, binding, room assignment, and reset workflows|

## 中文表

|類別|狀態|說明|
|---|---|---|
|Runtime 平台|相容 ArtiOS|透過 Hub 或已定義介面參與 ArtiOS Runtime 通訊|
|韌體框架|建議 ESP-IDF|ESP32 韌體實作|
|OTA 更新|支援|建議具備安全 OTA 更新與回滾或恢復策略|
|本地規則引擎|選配|Sync 可執行有限的本地回退或排程信號執行；主要自動化屬於 Hub / ArtiOS|
|信號映射引擎|支援|將系統指令映射為 IR / RF 信號動作|
|IR 學習引擎|支援|在接收器設計允許條件下捕獲並儲存支援的 IR 信號|
|IR 協議模板引擎|建議支援|提升空調與協議型信號生成能力|
|RF 控制引擎|依版本選配 / 支援|處理支援的 433.92 MHz 固定碼 RF 發射|
|家電配置管理器|支援|儲存家電配置、已學習碼、匹配碼與指令映射|
|狀態推定引擎|選配 / 建議支援|根據指令、感測反饋、電力數據或 Runtime 上下文推定家電狀態|
|事件引擎|支援|處理指令事件、執行回報、成功 / 失敗狀態與診斷|
|安全功能|支援|Secure Boot、Flash Encryption、憑證儲存、加密通訊，依實作|
|診斷功能|支援|信號測試、指令歷史、學習結果、韌體版本、錯誤日誌、設備在線狀態|
|雲端客戶端|選配 / 依架構|可依產品策略透過 Hub 或直接與 OceanAI Cloud 通訊|
|MQTT Client|支援|與 Artibird Hub / ArtiOS MQTT 服務通訊|
|本地 Web 服務|選配|本地設定、診斷、信號測試或維護介面|
|配對管理器|支援|處理入網、綁定、房間分配與重置流程|

---

# 8. Runtime Behavior & System Integration

# 8. Runtime 行為與系統整合

## EN

Artibird Sync operates as a device-side execution and synchronization node within the local Artibird environment. It receives commands from App, Hub, ArtiOS, Edge, or Cloud paths, translates them into IR / RF signal actions, executes the transmission, and reports execution status back to the system.

## ZH-TW

Artibird Sync 作為本地 Artibird 環境中的設備側執行與同步節點運作。它接收來自 App、Hub、ArtiOS、Edge 或 Cloud 路徑的指令，將其轉換為 IR / RF 信號動作，執行發射，並將執行狀態回報至系統。

## English Table

|Topic|Description|
|---|---|
|Device Onboarding & Pairing Flow|Sync is discovered and bound through App, Hub, or local setup workflow|
|Appliance Setup Flow|User selects code library, performs one-key matching, or learns IR / RF signals|
|Event Handling & Reporting|Sync reports command execution, learning status, signal failure, and device profile status|
|State Management & Synchronization|Sync maintains appliance profiles, learned codes, matched codes, and inferred state|
|Local Control Logic|Sync executes configured IR / RF commands through local control path|
|Command Execution Priority|Safety / stop command > local user command > Hub / ArtiOS automation > cloud command > non-critical sync|
|Integration with ArtiOS|Sync participates in runtime command execution and appliance-state coordination|
|Integration with Hub|Hub stores automation logic and sends execution commands to Sync|
|Integration with Gate|Gate may provide network access where required by deployment architecture|
|Integration with Edge|Edge may use appliance context, sensor data, or power data to improve state estimation|
|Integration with Cloud|Cloud provides remote access, code library updates, account binding, analytics, and lifecycle management|
|App Interaction|App supports appliance setup, signal learning, one-key matching, local control, and remote control where enabled|
|Multi-Sync Deployment|Multiple Sync nodes may be used for different rooms or appliance zones; coverage and interference must be validated|

## 中文表

|主題|說明|
|---|---|
|設備入網與配對流程|Sync 透過 App、Hub 或本地設定流程被發現與綁定|
|家電設定流程|用戶選擇碼庫、一鍵匹配，或學習 IR / RF 信號|
|事件處理與回報|Sync 回報指令執行、學習狀態、信號失敗與設備配置狀態|
|狀態管理與同步|Sync 維護家電配置、已學習碼、匹配碼與推定狀態|
|本地控制邏輯|Sync 透過本地控制路徑執行已配置的 IR / RF 指令|
|指令執行優先級|安全 / 停止指令 > 本地用戶指令 > Hub / ArtiOS 自動化 > 雲端指令 > 非關鍵同步|
|與 ArtiOS 整合|Sync 參與 Runtime 指令執行與家電狀態協同|
|與 Hub 整合|Hub 儲存自動化邏輯並向 Sync 發送執行指令|
|與 Gate 整合|在部署架構需要時，Gate 可提供網路接入|
|與 Edge 整合|Edge 可使用家電上下文、感測數據或電力數據改進狀態推定|
|與 Cloud 整合|Cloud 提供遠端存取、碼庫更新、帳號綁定、分析與生命週期管理|
|App 互動|App 支援家電設定、信號學習、一鍵匹配、本地控制與啟用條件下的遠端控制|
|多 Sync 部署|多個 Sync 節點可用於不同房間或家電區域；覆蓋與干擾必須驗證|

---

# 9. Data & Event Flow

# 9. 數據與事件流

## EN

Artibird Sync manages bidirectional communication between system commands and appliance-side IR / RF execution.

Typical flows:

1. App / Hub Command → Sync → IR / RF Appliance
    
2. Hub Automation Event → Sync → Appliance Signal Execution
    
3. Cloud Remote Command → Hub / Sync → Appliance Signal Execution
    
4. IR Learning Input → Sync → Appliance Profile Storage
    
5. Sync Execution Report → Hub → ArtiOS / Cloud
    
6. Sensor / Power Feedback → Hub / Edge → State Estimation → Sync Control
    

## ZH-TW

Artibird Sync 管理系統指令與家電側 IR / RF 執行之間的雙向通訊。

典型流程：

1. App / Hub 指令 → Sync → IR / RF 家電
    
2. Hub 自動化事件 → Sync → 家電信號執行
    
3. Cloud 遠端指令 → Hub / Sync → 家電信號執行
    
4. IR 學習輸入 → Sync → 家電配置儲存
    
5. Sync 執行回報 → Hub → ArtiOS / Cloud
    
6. 感測 / 電力反饋 → Hub / Edge → 狀態推定 → Sync 控制
    

## English Table

|Flow Type|Direction|Description|
|---|---|---|
|Local Command|App / Hub / ArtiOS → Sync → Appliance|Local control or automation command|
|Remote Command|Cloud / App → Hub / Sync → Appliance|Remote appliance control command|
|Signal Execution|Sync → Appliance|IR / RF signal transmission|
|Signal Learning|Appliance Remote → Sync|Captures supported IR / RF signal where hardware permits|
|Profile Sync|Sync / Hub → Cloud|Appliance profile, code mapping, metadata, and configuration|
|Execution Report|Sync → Hub / Cloud|Command success, failure, timestamp, and diagnostics|
|State Estimation|Hub / Edge → Sync / App|Estimated appliance state based on commands, sensors, or power feedback|
|Health Report|Sync → Hub / Cloud|Connectivity, signal status, firmware, error, profile, and protocol status|
|Code Library Update|Cloud → Hub / Sync|Updates supported appliance code templates where available|

## 中文表

|流類型|方向|說明|
|---|---|---|
|本地指令|App / Hub / ArtiOS → Sync → 家電|本地控制或自動化指令|
|遠端指令|Cloud / App → Hub / Sync → 家電|遠端家電控制指令|
|信號執行|Sync → 家電|IR / RF 信號發射|
|信號學習|家電遙控器 → Sync|在硬體允許條件下捕獲支援的 IR / RF 信號|
|配置同步|Sync / Hub → Cloud|家電配置、碼值映射、元數據與設定|
|執行回報|Sync → Hub / Cloud|指令成功、失敗、時間戳與診斷|
|狀態推定|Hub / Edge → Sync / App|基於指令、感測或電力反饋推定家電狀態|
|健康回報|Sync → Hub / Cloud|連接、信號狀態、韌體、錯誤、配置與協議狀態|
|碼庫更新|Cloud → Hub / Sync|在可用條件下更新支援的家電碼庫模板|

---

# 10. Safety, Reliability & Failure Behavior

# 10. 安全、可靠性與故障行為

## EN

Artibird Sync must maintain predictable behavior under abnormal operating conditions. Since Sync can execute appliance-control signals, command validation, signal reliability, state uncertainty handling, and safe recovery are critical.

## ZH-TW

Artibird Sync 必須在異常運作條件下保持可預期行為。由於 Sync 能夠執行家電控制信號，指令驗證、信號可靠性、狀態不確定性處理與安全恢復非常重要。

## English Table

|Item|Description|
|---|---|
|Watchdog|Detects firmware lockup and triggers recovery|
|Brownout Detection|Detects voltage instability and protects runtime behavior|
|Fail-Safe Behavior|Avoids repeated uncontrolled signal transmission during fault conditions|
|Command Validation|Validates command source, device profile, and signal mapping before execution|
|Signal Retry Policy|Defines retry behavior for failed or uncertain command execution|
|State Uncertainty Handling|Marks appliance state as estimated or unknown when direct feedback is unavailable|
|Learning Failure Handling|Reports unsupported signal, noisy capture, or incomplete learning result|
|Protocol Unsupported Behavior|Guides fallback to code library, one-key matching, or manual learning|
|Power Failure Recovery|Restores network configuration, appliance profiles, and learned codes after reboot|
|OTA Failure Recovery|Supports rollback or safe firmware recovery strategy|
|Hub Disconnection Behavior|Maintains local profiles and attempts reconnection|
|Cloud Disconnection Behavior|Maintains local control where supported and resynchronizes after recovery|
|Security Mechanisms|Authentication, encrypted communication where applicable, secure pairing, credential protection, secure OTA|
|Debug Protection|Production system should disable or protect debug interfaces|

## 中文表

|項目|說明|
|---|---|
|Watchdog|偵測韌體鎖死並觸發恢復|
|低壓檢測|偵測電壓不穩並保護 Runtime 行為|
|故障安全行為|在故障條件下避免重複失控信號發射|
|指令驗證|執行前驗證指令來源、設備配置與信號映射|
|信號重試策略|定義失敗或不確定指令執行下的重試行為|
|狀態不確定性處理|當缺乏直接反饋時，將家電狀態標記為推定或未知|
|學習失敗處理|回報不支援信號、噪聲捕獲或不完整學習結果|
|協議不支援行為|引導回退至碼庫、一鍵匹配或手動學習|
|斷電恢復|重啟後恢復網路配置、家電配置與已學習碼|
|OTA 失敗恢復|支援回滾或安全韌體恢復策略|
|Hub 斷線行為|維持本地配置並嘗試重新連接|
|雲端斷線行為|在支援條件下維持本地控制，並於恢復後重新同步|
|安全機制|身份認證、適用情況下的加密通訊、安全配對、憑證保護、安全 OTA|
|Debug 保護|量產系統應停用或保護 Debug 介面|

---

# 11. Installation, Deployment & Maintenance

# 11. 安裝、部署與維護

## English Table

|Item|Description|
|---|---|
|Installation Method|Desktop / wall-mounted / ceiling-facing / appliance-facing placement|
|Deployment Scenario|Home / classroom / office / conference room / smart building / campus|
|Installer Type|End user / technician / system integrator|
|Power Requirement|USB-C DC power recommended|
|Network Requirement|Wi-Fi recommended; BLE setup optional by variant|
|Placement Requirement|Clear IR line-of-sight or reflective coverage path required for IR control|
|RF Placement Requirement|RF range and interference must be validated where RF control is used|
|LED Function|Power, pairing, Wi-Fi, signal test, learning mode, cloud status, fault|
|Button Function|Reset, pairing, learning mode, signal test, factory reset|
|Maintenance Method|Artibird App, local setup interface, Hub console, cloud console, service tool|
|Firmware Update Method|OTA / local update / service tool|
|Replacement Procedure|Sync replacement, appliance profile migration, code revalidation, re-pairing workflow|
|Service Access|Controlled admin or service access required|

## 中文表

|項目|說明|
|---|---|
|安裝方式|桌面式 / 壁掛式 / 朝天花板 / 朝家電方向放置|
|部署場景|住宅 / 教室 / 辦公室 / 會議室 / 智慧建築 / 校園|
|安裝人員類型|終端用戶 / 技術員 / 系統整合商|
|供電要求|建議 USB-C DC 供電|
|網路要求|建議 Wi-Fi；BLE 設定依版本選配|
|放置要求|IR 控制需要清晰視線路徑或可靠反射覆蓋路徑|
|RF 放置要求|使用 RF 控制時，必須驗證 RF 距離與干擾|
|LED 功能|電源、配對、Wi-Fi、信號測試、學習模式、雲端狀態、故障|
|按鍵功能|重置、配對、學習模式、信號測試、恢復出廠設定|
|維護方式|Artibird App、本地設定介面、Hub Console、Cloud Console、維護工具|
|韌體更新方式|OTA / 本地更新 / 維護工具|
|更換流程|Sync 替換、家電配置遷移、碼值重新驗證、重新配對流程|
|服務存取|必須具備受控管理員或維護存取|

---

# 12. Testing, Validation & Certification

# 12. 測試、驗證與認證

## EN

Artibird Sync must be validated as an IR / RF synchronization node, appliance execution controller, signal learning device, and runtime participant. Testing must cover IR transmission, IR learning, RF transmission, signal compatibility, appliance profile reliability, command success rate, local execution, Hub integration, cloud synchronization, security, and long-duration reliability.

## ZH-TW

Artibird Sync 必須作為 IR / RF 同步節點、家電執行控制器、信號學習設備與 Runtime 參與者進行驗證。測試必須涵蓋 IR 發射、IR 學習、RF 發射、信號相容性、家電配置可靠性、指令成功率、本地執行、Hub 整合、雲端同步、安全與長時間可靠性。

## English Table

|Test Category|Objective|
|---|---|
|Functional Test|Verify Sync core functions and appliance control behavior|
|IR Transmission Test|Verify IR range, angle, coverage, signal strength, and execution reliability|
|IR Learning Test|Verify learning success rate across remote types and protocol families|
|IR Protocol Template Test|Verify template-based command generation, especially for air conditioners|
|RF Transmission Test|Verify 433.92 MHz fixed-code RF transmission where supported|
|RF Learning / Matching Test|Verify RF learning or matching if implemented|
|Appliance Compatibility Test|Verify supported appliance categories, brands, and command coverage|
|Command Success Rate Test|Verify execution success under defined distance, angle, and environment|
|Local Control Test|Verify local command execution and Hub-assisted operation|
|Remote Control Test|Verify cloud-assisted remote operation where enabled|
|MQTT Test|Verify message delivery, reconnect, QoS behavior, and routing|
|Hub Integration Test|Verify communication with Artibird Hub and ArtiOS services|
|Edge Integration Test|Verify appliance context and state estimation data availability|
|Cloud Sync Test|Verify profile, code mapping, account, log, and lifecycle synchronization|
|Stress Test|Verify long-duration and high-load command execution|
|Event Burst Test|Verify multi-command or multi-appliance execution behavior|
|OTA Test|Verify firmware update, rollback, and recovery behavior|
|Security Test|Verify authentication, encryption, secure pairing, credential protection, and debug protection|
|Reliability Test|Verify stability under power, network, RF, IR, and runtime variation|
|Certification Test|Verify compliance for FCC, CE, RoHS, and other applicable requirements|
|Claim Validation|Verify public product claims with formal test evidence|

## 中文表

|測試類別|目標|
|---|---|
|功能測試|驗證 Sync 核心功能與家電控制行為|
|IR 發射測試|驗證 IR 距離、角度、覆蓋、信號強度與執行可靠性|
|IR 學習測試|驗證跨遙控器類型與協議族的學習成功率|
|IR 協議模板測試|驗證模板化指令生成，尤其針對空調|
|RF 發射測試|驗證支援條件下的 433.92 MHz 固定碼 RF 發射|
|RF 學習 / 匹配測試|若已實作，驗證 RF 學習或匹配能力|
|家電相容性測試|驗證支援家電類別、品牌與指令覆蓋|
|指令成功率測試|在定義距離、角度與環境下驗證執行成功率|
|本地控制測試|驗證本地指令執行與 Hub 輔助運作|
|遠端控制測試|驗證啟用條件下的雲端輔助遠端運作|
|MQTT 測試|驗證消息投遞、重連、QoS 行為與路由|
|Hub 整合測試|驗證與 Artibird Hub 及 ArtiOS 服務的通訊|
|Edge 整合測試|驗證家電上下文與狀態推定數據可用性|
|雲端同步測試|驗證配置、碼值映射、帳號、日誌與生命週期同步|
|壓力測試|驗證長時間與高負載指令執行|
|事件突發測試|驗證多指令或多家電執行行為|
|OTA 測試|驗證韌體更新、回滾與恢復行為|
|安全測試|驗證身份認證、加密、安全配對、憑證保護與 Debug 保護|
|可靠性測試|驗證電源、網路、RF、IR 與 Runtime 變化下的穩定性|
|認證測試|驗證 FCC、CE、RoHS 與其他適用要求|
|宣稱驗證|以正式測試證據驗證公開產品宣稱|

## Certification Targets

## 認證目標

|Certification|Applicability|
|---|---|
|FCC|Required for U.S. wireless / RF market|
|CE|Required for EU market|
|RoHS|Environmental compliance|
|REACH|Recommended for EU market|
|UL / ETL|Depends on final power supply, enclosure, and electrical safety scope|
|Bluetooth Qualification|Required if using Bluetooth branding|
|Wi-Fi Certification|Optional depending on commercial strategy|
|Cybersecurity Labeling|Optional depending on market and retail channel|

|認證|適用範圍|
|---|---|
|FCC|美國無線 / RF 市場需要|
|CE|歐盟市場需要|
|RoHS|環保合規|
|REACH|歐盟市場建議|
|UL / ETL|依最終供電、外殼與電氣安全範圍而定|
|Bluetooth 資格認證|若使用 Bluetooth 品牌則需要|
|Wi-Fi 認證|依商業策略選配|
|網路安全標籤|依市場與零售渠道選配|

---

# 13. Product Variants

# 13. 產品版本

## English Table

|Variant / SKU|Hardware Difference|Firmware Difference|Market / Region|Certification Difference|Notes|
|---|---|---|---|---|---|
|Artibird Sync IR|IR transmitter + IR receiver|IR learning and code library profile|Residential / office / classroom|FCC / CE / RoHS by region|Standard IR appliance control|
|Artibird Sync IR+RF|IR + 433.92 MHz RF transmitter|IR / RF control profile|Residential / smart building|RF validation required|Supports IR and selected RF devices|
|Artibird Sync Pro|Multi-direction IR, improved RF, optional sensors|Enhanced signal engine and diagnostics|Larger home / classroom / conference room|Additional RF / IR validation|Extended coverage and diagnostics|
|Artibird Sync Climate|IR control + optional temp / humidity / power-context integration|AC state estimation profile|Home / office / classroom|Regional compliance required|Optimized for air conditioner control|
|Artibird Sync Embedded|Embedded module form|Embedded integration firmware profile|Panel / hub / appliance-side integration|Depends on host product|For integrated systems|
|Artibird Sync Campus|Multi-room deployment profile|Multi-Sync management and reporting|Education / campus|Capacity and coverage validation required|For classroom and campus deployment|

## 中文表

|版本 / SKU|硬體差異|韌體差異|市場 / 地區|認證差異|備註|
|---|---|---|---|---|---|
|Artibird Sync IR|IR 發射器 + IR 接收器|IR 學習與碼庫配置|住宅 / 辦公室 / 教室|依地區 FCC / CE / RoHS|標準 IR 家電控制|
|Artibird Sync IR+RF|IR + 433.92 MHz RF 發射器|IR / RF 控制配置|住宅 / 智慧建築|必須 RF 驗證|支援 IR 與部分 RF 設備|
|Artibird Sync Pro|多方向 IR、改良 RF、可選感測器|增強信號引擎與診斷|大型住宅 / 教室 / 會議室|需額外 RF / IR 驗證|擴展覆蓋與診斷|
|Artibird Sync Climate|IR 控制 + 可選溫濕度 / 電力上下文整合|空調狀態推定配置|住宅 / 辦公室 / 教室|需地區合規|針對空調控制優化|
|Artibird Sync Embedded|嵌入式模組形態|嵌入式整合韌體配置|面板 / Hub / 家電側整合|依主產品而定|用於整合系統|
|Artibird Sync Campus|多房間部署配置|多 Sync 管理與報告|教育 / 校園|必須容量與覆蓋驗證|用於教室與校園部署|

---

# 14. Commercial Positioning

# 14. 商業定位

## EN

Artibird Sync is positioned as the IR / RF synchronization node for coordinated intelligent environments. It enables traditional remote-controlled appliances to participate in Artibird scenes, automation, remote control, and runtime coordination.

## ZH-TW

Artibird Sync 被定位為協同智慧空間中的 IR / RF 同步節點。它使傳統遙控家電能夠參與 Artibird 場景、自動化、遠端控制與 Runtime 協同。

## English Table

|Item|Description|
|---|---|
|Target Market|Residential, classroom, office, conference room, campus, smart building|
|Key Selling Points|IR / RF synchronization, appliance integration, signal learning, code matching, local-first execution, cloud-enhanced remote access|
|Use Cases|Air conditioner control, TV control, fan control, projector control, curtain control, classroom appliance automation|
|Compatibility Statement|Designed for supported IR and RF appliances, Artibird Hub, ArtiOS, OceanAI Cloud, OceanAI Edge, and Artibird App|
|Local-first Statement|Configured IR / RF commands can execute locally where supported|
|Cloud-enhanced Statement|Cloud adds remote access, code library updates, synchronization, analytics, and lifecycle management|
|Remote Control Statement|Remote control requires OceanAI Cloud connectivity, account binding, and network availability|
|Compatibility Claim|Must reference Signal Compatibility Validation Report|
|Prohibited Claims|Universal support for all appliances, unsupported RF protocols, guaranteed AC state feedback without sensors, uncertified RF range claims|

## 中文表

|項目|說明|
|---|---|
|目標市場|住宅、教室、辦公室、會議室、校園、智慧建築|
|核心賣點|IR / RF 同步、家電整合、信號學習、碼值匹配、本地優先執行、雲端增強遠端存取|
|使用場景|空調控制、電視控制、風扇控制、投影機控制、窗簾控制、教室家電自動化|
|相容性聲明|面向受支援 IR 與 RF 家電、Artibird Hub、ArtiOS、OceanAI Cloud、OceanAI Edge 與 Artibird App 設計|
|本地優先聲明|在支援條件下，已配置 IR / RF 指令可本地執行|
|雲端增強聲明|雲端增加遠端存取、碼庫更新、同步、分析與生命週期管理|
|遠端控制聲明|遠端控制需要 OceanAI Cloud 連接、帳號綁定與網路可用|
|相容性宣稱|必須引用信號相容性驗證報告|
|禁止宣稱|支援所有家電、未支援 RF 協議、無感測器條件下保證空調狀態反饋、未認證 RF 距離宣稱|

---

# 15. Engineering Claim Policy

# 15. 工程宣稱政策

## Mandatory Statement

## 強制聲明

**EN**  
All Artibird Sync performance claims, especially IR range, IR learning success rate, appliance compatibility, RF support, command success rate, remote control performance, reliability, and security, must be based on validated test reports under defined conditions. Theoretical transmitter range, generic code library size, or unsupported appliance assumptions shall not be used as product claims.

**ZH-TW**  
所有 Artibird Sync 性能宣稱，尤其是 IR 距離、IR 學習成功率、家電相容性、RF 支援、指令成功率、遠端控制性能、可靠性與安全性，必須基於明確條件下的已驗證測試報告。理論發射距離、泛化碼庫數量或未驗證家電假設不得作為產品宣稱。

## English Table — Claim Policy

|Claim Type|Requirement|
|---|---|
|IR Range|Must reference distance, angle, environment, emitter design, and appliance receiver condition|
|IR Learning Success Rate|Must reference tested protocol families, sample size, and remote types|
|Appliance Compatibility|Must reference Signal Compatibility Validation Report|
|Air Conditioner Support|Must distinguish between code library matching, learned control, protocol template support, and state estimation|
|RF Support|Must define supported frequency, code type, and validated device categories|
|RF Range|Must reference RF test environment and certification constraints|
|Command Success Rate|Must reference appliance category, command type, distance, angle, and test duration|
|Local-first Capability|Must define exact offline functions and dependency conditions|
|Cloud Functionality|Must distinguish cloud-enhanced functions from local-first functions|
|Remote Control|Must define account, cloud, and network dependency|
|Security|Must reference implemented mechanisms and test evidence|
|Reliability|Must reference test duration and test conditions|

## 中文表 — 宣稱政策

|宣稱類型|要求|
|---|---|
|IR 距離|必須引用距離、角度、環境、發射器設計與家電接收條件|
|IR 學習成功率|必須引用已測協議族、樣本數與遙控器類型|
|家電相容性|必須引用信號相容性驗證報告|
|空調支援|必須區分碼庫匹配、學習控制、協議模板支援與狀態推定|
|RF 支援|必須定義支援頻率、碼類型與已驗證設備類別|
|RF 距離|必須引用 RF 測試環境與認證限制|
|指令成功率|必須引用家電類別、指令類型、距離、角度與測試時長|
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
|v1.0|2026-05-08|OceanAI / Artibird Product Team|Initial Artibird Sync Product Specification based on Artibird Product Specification Template v1.1|

## 中文表

|版本|日期|作者|說明|
|---|---|---|---|
|v1.0|2026-05-08|OceanAI / Artibird Product Team|基於 Artibird 產品規格書標準模板 v1.1 建立的 Artibird Sync 初始產品規格書|

---

# Appendix A — Terminology

# 附錄 A｜術語對照表

| English Term          | 中文術語          | Definition                                                                             |
| --------------------- | ------------- | -------------------------------------------------------------------------------------- |
| Artibird Sync         | Artibird Sync | IR / RF synchronization node for remote-controlled appliances                          |
| IR                    | 紅外線           | Infrared signal used by many appliance remote controls                                 |
| RF                    | 射頻            | Radio frequency signal used by selected remote-controlled devices                      |
| 433.92 MHz            | 433.92 MHz    | Common RF frequency used by certain fixed-code remote devices                          |
| IR Learning           | IR 學習         | Capturing and storing supported IR signals from a remote control                       |
| One-Key Matching      | 一鍵匹配          | Selecting or matching an appliance control profile from a code library                 |
| Signal Mapping Engine | 信號映射引擎        | Converts system commands into IR / RF signal actions                                   |
| Appliance Profile     | 家電配置          | Stored control profile, learned codes, matched codes, and metadata for an appliance    |
| State Estimation      | 狀態推定          | Estimated appliance state based on commands, sensors, power feedback, or context       |
| Local-first           | 本地優先          | Core functions are designed to operate locally whenever possible                       |
| Cloud-enhanced        | 雲端增強          | Cloud services extend local operation with remote, sync, analytics, or AI capabilities |

---

# Appendix B — Risk Register

# 附錄 B｜風險登記表

## English Table

|Risk ID|Risk Description|Impact|Mitigation|
|---|---|---|---|
|R-SYNC-001|Overclaiming universal appliance compatibility|High|Require Signal Compatibility Validation Report before public claims|
|R-SYNC-002|IR learning fails for certain air conditioner remotes|High|Implement protocol template engine and code-library matching fallback|
|R-SYNC-003|RF support misunderstood as universal RF compatibility|High|Define supported frequency, code type, and device category|
|R-SYNC-004|Appliance state becomes inaccurate without feedback|Medium / High|Mark state as estimated or unknown; use sensor or power feedback where possible|
|R-SYNC-005|IR coverage degraded by placement or enclosure design|High|Validate IR angle, distance, window material, and placement guidance|
|R-SYNC-006|Repeated signal execution causes appliance confusion|Medium|Define retry policy and command debounce logic|
|R-SYNC-007|Cloud dependency weakens local-first positioning|High|Clearly separate local-first and cloud-enhanced functions|
|R-SYNC-008|Firmware update failure|High|Implement rollback and recovery mechanism|
|R-SYNC-009|Unsupported protocol claim|High|Require implementation, validation, and certification evidence|
|R-SYNC-010|Product language exceeds tested capability|High|Apply Engineering Claim Policy|

## 中文表

|風險 ID|風險描述|影響|緩解措施|
|---|---|---|---|
|R-SYNC-001|過度宣稱支援所有家電|高|公開宣稱前必須取得信號相容性驗證報告|
|R-SYNC-002|某些空調遙控器 IR 學習失敗|高|實作協議模板引擎與碼庫匹配回退|
|R-SYNC-003|RF 支援被誤解為通用 RF 相容|高|定義支援頻率、碼類型與設備類別|
|R-SYNC-004|無反饋條件下家電狀態不準確|中 / 高|將狀態標記為推定或未知；盡可能使用感測或電力反饋|
|R-SYNC-005|放置位置或外殼設計導致 IR 覆蓋下降|高|驗證 IR 角度、距離、窗口材料與放置指引|
|R-SYNC-006|重複信號執行導致家電狀態混亂|中|定義重試策略與指令防抖邏輯|
|R-SYNC-007|雲端依賴削弱本地優先定位|高|清楚區分本地優先與雲端增強功能|
|R-SYNC-008|韌體更新失敗|高|實作回滾與恢復機制|
|R-SYNC-009|未支援協議宣稱|高|必須具備實作、驗證與認證證據|
|R-SYNC-010|產品語言超出已測試能力|高|套用工程宣稱政策|

---

# Appendix C — Validation Checklist

# 附錄 C｜驗證清單

## English Table

|Checklist Item|Required|Status|Evidence|
|---|---|---|---|
|Hardware specification completed|Yes|TBD|Schematic / BOM / enclosure design|
|ESP32 firmware architecture completed|Yes|TBD|Firmware design document|
|IR transmission validated|Yes|TBD|IR transmission test report|
|IR learning validated|Yes|TBD|IR learning test report|
|IR protocol template engine validated|Recommended|TBD|Protocol template test report|
|RF function validated|If applicable|TBD|RF test report|
|Appliance compatibility validated|Yes|TBD|Signal Compatibility Validation Report|
|Command success rate validated|Yes|TBD|Command execution test report|
|Local-first behavior validated|Yes|TBD|Local operation test report|
|Hub integration validated|Yes|TBD|Hub integration test|
|Cloud-enhanced behavior validated|Yes|TBD|Cloud integration test|
|Remote control validated|If applicable|TBD|App / cloud test|
|RF / IR performance validated|Yes|TBD|RF / IR performance report|
|OTA update validated|Yes|TBD|OTA test report|
|Security mechanisms validated|Yes|TBD|Security test report|
|Failure behavior validated|Yes|TBD|Reliability test report|
|Certification path defined|Yes|TBD|Certification plan|
|Commercial claims reviewed|Yes|TBD|Claim review record|

## 中文表

|檢查項目|是否必要|狀態|證據|
|---|---|---|---|
|硬體規格已完成|是|TBD|原理圖 / BOM / 外殼設計|
|ESP32 韌體架構已完成|是|TBD|韌體設計文件|
|IR 發射已驗證|是|TBD|IR 發射測試報告|
|IR 學習已驗證|是|TBD|IR 學習測試報告|
|IR 協議模板引擎已驗證|建議|TBD|協議模板測試報告|
|RF 功能已驗證|如適用|TBD|RF 測試報告|
|家電相容性已驗證|是|TBD|信號相容性驗證報告|
|指令成功率已驗證|是|TBD|指令執行測試報告|
|本地優先行為已驗證|是|TBD|本地運作測試報告|
|Hub 整合已驗證|是|TBD|Hub 整合測試|
|雲端增強行為已驗證|是|TBD|雲端整合測試|
|遠端控制已驗證|如適用|TBD|App / 雲端測試|
|RF / IR 性能已驗證|是|TBD|RF / IR 性能報告|
|OTA 更新已驗證|是|TBD|OTA 測試報告|
|安全機制已驗證|是|TBD|安全測試報告|
|故障行為已驗證|是|TBD|可靠性測試報告|
|認證路線已定義|是|TBD|認證計畫|
|商業宣稱已審查|是|TBD|宣稱審查記錄|

---

# Document End

# 文件結束

## EN

This Artibird Sync Product Specification v1.0 defines Sync as the IR / RF synchronization node of the Artibird ecosystem. It provides a controlled engineering and system-level reference for signal execution, signal learning, appliance profile management, ArtiOS runtime participation, local-first operation, cloud-enhanced coordination, validation, certification, and commercial claim boundaries.

## ZH-TW

本《Artibird Sync 產品規格書 v1.0》將 Sync 定義為 Artibird 生態中的 IR / RF 同步節點。它為信號執行、信號學習、家電配置管理、ArtiOS Runtime 參與、本地優先運作、雲端增強協同、驗證、認證與商業宣稱邊界，提供受控的工程與系統級參考。

---

## Topic Extension

## 話題延伸

下一個建議寫：

**Artibird Switch Product Specification v1.0**  
**Artibird Switch 產品規格書 v1.0**

它可以同時覆蓋兩個重要版本：

**nRF52833 battery-powered single-live event switch**  
**nRF52833 電池式單火事件開關**

以及：

**ESP32-C3 zero-neutral relay switch**  
**ESP32-C3 零火繼電器開關**