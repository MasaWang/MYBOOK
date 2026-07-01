# Artibird Sense Product Specification v1.0

# Artibird Sense 產品規格書 v1.0

**Engineering + System Specification Edition**  
**工程與系統規格書版本**

**Version Date**: 2026-05-08  
**Document Type**: Product Specification  
**Product Category**: Environmental Sensing Node / Occupancy Sensing Node / Runtime Context Node  
**Hardware Foundation**: ESP32-C3 / ESP32-C6 / nRF52-based Sensing Architecture  
**System Architecture**: OceanAI Coordinated Intelligence Architecture  
**Runtime Platform**: ArtiOS-compatible

**版本日期**：2026-05-08  
**文件類型**：產品規格書  
**產品類別**：環境感測節點 / 人在感測節點 / Runtime 上下文節點  
**硬體基礎**：ESP32-C3 / ESP32-C6 / nRF52 系列感測架構  
**系統架構**：OceanAI 協同智慧架構  
**Runtime 平台**：相容 ArtiOS

---

# 1. Document Information

# 1. 文件資訊

## English Table

|Item|Description|
|---|---|
|Document Name|Artibird Sense Product Specification|
|Version|v1.0|
|Document Type|Engineering + System Specification|
|Product Name|Artibird Sense|
|Product Category|Environmental Sensing Node / Occupancy Sensing Node / Runtime Context Node|
|System Architecture|OceanAI Coordinated Intelligence Architecture|
|Runtime Platform|ArtiOS-compatible|
|Hardware Foundation|ESP32-C3 / ESP32-C6 / nRF52-based sensing architecture|
|Specification Level|Engineering + System|
|Intended Audience|Hardware, Firmware, Software, Sensor, System, Testing, Certification, Product Teams|
|Release Date|2026-05-08|

## 中文表

| 項目         | 說明                                 |
| ---------- | ---------------------------------- |
| 文件名稱       | Artibird Sense 產品規格書               |
| 文件版本       | v1.0                               |
| 文件類型       | 工程與系統規格書                           |
| 產品名稱       | Artibird Sense                     |
| 產品類別       | 環境感測節點 / 人在感測節點 / Runtime 上下文節點    |
| 系統架構       | OceanAI 協同智慧架構                     |
| Runtime 平台 | 相容 ArtiOS                          |
| 硬體基礎       | ESP32-C3 / ESP32-C6 / nRF52 系列感測架構 |
| 規格書層級      | 工程與系統規格                            |
| 適用對象       | 硬體、韌體、軟體、感測器、系統、測試、認證、產品團隊         |
| 發布日期       | 2026-05-08                         |

---

# 2. Product Overview

# 2. 產品總覽

## EN

Artibird Sense is a distributed sensing node designed for the Artibird product ecosystem and the OceanAI coordinated intelligence architecture. It provides environmental awareness, occupancy-related context, sensor event generation, and runtime data participation for coordinated intelligent environments.

Within the Artibird ecosystem, Sense serves as the context acquisition layer. It collects environmental and spatial signals such as temperature, humidity, illumination, motion, occupancy, air quality, sound level, or other sensor data depending on the product variant. These signals are reported to Artibird Hub, ArtiOS, OceanAI Edge, OceanAI Cloud, and the Artibird App to support automation, scene adaptation, energy optimization, security awareness, and intelligent environmental control.

Artibird Sense follows a **local-first, cloud-enhanced** operating model. Local sensing, event reporting, threshold-based triggers, Hub-assisted automation, and local environmental coordination should remain available within the local environment whenever technically feasible. Cloud connectivity extends the system through historical analytics, multi-site monitoring, remote alerts, lifecycle management, model enhancement, and long-term data visualization. In this role, Artibird Sense becomes the environmental perception layer of the OceanAI runtime system.

## ZH-TW

Artibird Sense 是一款面向 Artibird 產品生態與 OceanAI 協同智慧架構設計的分布式感測節點。它為協同智慧環境提供環境感知、人在相關上下文、感測事件生成與 Runtime 數據參與能力。

在 Artibird 生態中，Sense 承擔上下文採集層角色。它依產品版本不同，採集溫度、濕度、光照、動作、人在、空氣品質、聲音強度或其他感測數據。這些信號會回報至 Artibird Hub、ArtiOS、OceanAI Edge、OceanAI Cloud 與 Artibird App，用於支援自動化、場景適應、能源優化、安全感知與智慧環境控制。

Artibird Sense 採用 **本地優先、雲端增強** 的運作模式。本地感測、事件回報、閾值觸發、Hub 輔助自動化與本地環境協同，應在技術可行條件下保持於本地環境中可用。雲端連接則透過歷史分析、多站點監測、遠端警報、生命週期管理、模型增強與長期數據可視化擴展系統能力。在此角色中，Artibird Sense 成為 OceanAI Runtime 系統中的環境感知層。

---

# 3. System Positioning & Role

# 3. 系統定位與角色

## English Table

|Item|Description|
|---|---|
|System Layer|Environmental Perception Layer / Context Layer / Sensor Layer|
|Primary Role|Collects environmental, occupancy, and spatial context data for runtime coordination|
|Runtime Participation|Reports sensor readings, generates threshold events, supports automation triggers, and contributes context data|
|Relationship with Gate|Battery or BLE variants may communicate through Artibird Gate or BLE-capable gateway path|
|Relationship with Hub|Hub processes sensor events, state, thresholds, automation logic, and local data storage|
|Relationship with Edge|Edge may use sensor data for inference, pattern recognition, scene understanding, and state estimation|
|Relationship with Cloud|Supports remote monitoring, historical analytics, alerts, synchronization, lifecycle management, and multi-site reporting|
|Local-first Capability|Yes|
|Offline Operation Scope|Local sensing, threshold events, Hub-assisted automation, and local alerts where supported|
|Remote Control Scope|Remote monitoring, alert configuration, data visualization, and cloud-assisted configuration where enabled|
|System Dependency|Gate-assisted for BLE variants; Hub-enhanced for automation and storage; Edge-enhanced for intelligence; cloud-enhanced for analytics|

## 中文表

|項目|說明|
|---|---|
|系統層級|環境感知層 / 上下文層 / 感測器層|
|主要角色|採集環境、人在與空間上下文數據，用於 Runtime 協同|
|Runtime 參與方式|回報感測讀數，生成閾值事件，支援自動化觸發，並提供上下文數據|
|與 Gate 的關係|電池或 BLE 版本可透過 Artibird Gate 或具 BLE 能力的網關路徑通訊|
|與 Hub 的關係|Hub 處理感測事件、狀態、閾值、自動化邏輯與本地資料儲存|
|與 Edge 的關係|Edge 可使用感測數據進行推理、模式識別、場景理解與狀態推定|
|與 Cloud 的關係|支援遠端監測、歷史分析、警報、同步、生命週期管理與多站點報告|
|本地優先能力|是|
|離線運作範圍|在支援條件下，本地感測、閾值事件、Hub 輔助自動化與本地警報可運作|
|遠端控制範圍|啟用時支援遠端監測、警報配置、數據可視化與雲端輔助配置|
|系統依賴關係|BLE 版本由 Gate 輔助；自動化與儲存由 Hub 增強；智慧由 Edge 增強；分析由雲端增強|

---

# 4. Core Design Principles

# 4. 核心設計原則

## 4.1 Local-First Runtime Architecture

## 4.1 本地優先 Runtime 架構

**EN**  
Artibird Sense prioritizes local sensing and local event responsiveness. Environmental readings, threshold triggers, occupancy events, and Hub-assisted automation should remain available locally whenever the deployment architecture permits.

**ZH-TW**  
Artibird Sense 優先保障本地感測與本地事件回應。環境讀數、閾值觸發、人在事件與 Hub 輔助自動化，應在部署架構允許的條件下保持本地可用。

## 4.2 Coordinated System Participation

## 4.2 協同式系統參與

**EN**  
Artibird Sense participates as a runtime context node. A sensor reading should not be treated as isolated data, but as environmental context that may coordinate lighting, climate, curtains, security, irrigation, appliance control, and energy optimization.

**ZH-TW**  
Artibird Sense 作為 Runtime 上下文節點參與運作。一次感測讀數不應被視為孤立數據，而應被視為可協同照明、空調、窗簾、安全、灌溉、家電控制與能源優化的環境上下文。

## 4.3 Cloud-Enhanced Intelligence

## 4.3 雲端增強智慧

**EN**  
Cloud services may extend Artibird Sense with historical analytics, multi-site monitoring, alert rules, long-term trend visualization, model enhancement, lifecycle management, and remote configuration. Cloud functions should enhance local sensing rather than replace local event availability.

**ZH-TW**  
雲端服務可透過歷史分析、多站點監測、警報規則、長期趨勢可視化、模型增強、生命週期管理與遠端配置來擴展 Artibird Sense。雲端功能應增強本地感測，而不是取代本地事件可用性。

## 4.4 Distributed Operational Resilience

## 4.4 分布式運作韌性

**EN**  
Artibird Sense should maintain predictable behavior under network instability, gateway disconnection, Hub disconnection, cloud unavailability, low battery, sensor drift, abnormal readings, firmware recovery, and runtime load variation.

**ZH-TW**  
Artibird Sense 應在網路不穩定、網關斷線、Hub 斷線、雲端不可用、低電量、感測漂移、異常讀數、韌體恢復與 Runtime 負載變化時保持可預期行為。

## 4.5 Security and Data Integrity by Design

## 4.5 安全與數據完整性預設設計

**EN**  
As a context-producing node, Artibird Sense must apply secure onboarding, authenticated reporting paths, encrypted communication where applicable, data integrity checks, sensor calibration records, secure OTA, and protected debug interfaces.

**ZH-TW**  
作為產生上下文的節點，Artibird Sense 必須採用安全入網、經身份認證的回報路徑、適用情況下的加密通訊、數據完整性檢查、感測器校準記錄、安全 OTA 與受保護的 Debug 介面。

---

# 5. Hardware Specification

# 5. 硬體規格

## English Table

|Item|Specification|
|---|---|
|Product Variants|Temperature / Humidity Sensor, Light Sensor, Motion Sensor, Occupancy Sensor, Air Quality Sensor, Multi-Sensor Node|
|Main Processor / SoC|ESP32-C3 / ESP32-C6 / nRF52-based controller depending on power and communication strategy|
|Communication|Wi-Fi / BLE / BLE Mesh / IEEE 802.15.4 depending on variant|
|Power Source|Battery / USB-C DC / DC wired / AC-powered sensor variant depending on deployment|
|Battery Strategy|Low-power sleep, periodic reporting, event-triggered wake, and low-battery reporting|
|Temperature Sensor|Optional / variant-specific|
|Humidity Sensor|Optional / variant-specific|
|Light Sensor|Optional / variant-specific|
|Motion Sensor|PIR / mmWave / accelerometer-based motion input depending on variant|
|Occupancy Sensor|PIR / mmWave / sensor-fusion-based occupancy depending on variant|
|Air Quality Sensor|CO₂ / VOC / PM / gas sensor optional depending on product class|
|Sound Level Sensor|Optional sound level or acoustic event input depending on privacy policy|
|External Sensor Interface|Optional I2C / UART / ADC / GPIO depending on hardware design|
|Local Indicator|Status LED / low-power indicator / optional buzzer|
|Antenna Type|PCB antenna / external antenna variant; RF-safe window required in metal enclosure designs|
|Enclosure Material|Flame-retardant PC / ABS; environmental or outdoor variants require rated enclosure|
|Mounting Method|Wall-mounted / ceiling-mounted / desktop / adhesive / embedded / outdoor enclosure|
|Operating Temperature|TBD based on sensor type, enclosure, and validation|
|Protection Features|ESD protection, reverse polarity protection where applicable, sensor protection, watchdog, secure boot support|
|Certification Direction|FCC / CE / RoHS; UL / ETL depending on power supply and installation scope|

## 中文表

|項目|規格|
|---|---|
|產品版本|溫濕度感測器、光照感測器、動作感測器、人在感測器、空氣品質感測器、多合一感測節點|
|主處理器 / SoC|依供電與通訊策略採用 ESP32-C3 / ESP32-C6 / nRF52 系列控制器|
|通訊方式|依版本採用 Wi-Fi / BLE / BLE Mesh / IEEE 802.15.4|
|供電方式|依部署採用電池 / USB-C DC / DC 有線 / AC 供電感測版本|
|電池策略|低功耗睡眠、週期上報、事件觸發喚醒與低電量回報|
|溫度感測器|選配 / 依版本配置|
|濕度感測器|選配 / 依版本配置|
|光照感測器|選配 / 依版本配置|
|動作感測器|依版本採用 PIR / mmWave / 加速度計動作輸入|
|人在感測器|依版本採用 PIR / mmWave / 感測融合人在判斷|
|空氣品質感測器|依產品級別選配 CO₂ / VOC / PM / 氣體感測器|
|聲音強度感測器|依隱私政策可選聲音強度或聲學事件輸入|
|外部感測介面|依硬體設計選配 I2C / UART / ADC / GPIO|
|本地指示|狀態 LED / 低功耗指示 / 可選蜂鳴器|
|天線類型|PCB 天線 / 外置天線版本；金屬外殼設計需預留 RF 安全窗口|
|外殼材質|阻燃 PC / ABS；環境或戶外版本需額定防護外殼|
|安裝方式|壁掛 / 吸頂 / 桌面 / 背膠 / 嵌入式 / 戶外外殼|
|工作溫度|依感測器類型、外殼與驗證確定|
|保護功能|ESD 保護、適用條件下的反接保護、感測器保護、Watchdog、Secure Boot 支援|
|認證方向|FCC / CE / RoHS；依供電與安裝範圍決定 UL / ETL|

---

# 6. Connectivity & Networking

# 6. 連接與網路能力

## EN

Artibird Sense provides localized environmental and occupancy data communication for the Artibird ecosystem. Depending on the variant, it may operate as a low-power BLE sensor, Wi-Fi sensor, wired sensor, or multi-protocol sensing node. Its network role should support local sensor reporting, threshold events, Hub communication, Edge context generation, and cloud-assisted monitoring.

For Sense-class products, reporting interval, event latency, battery life, sensor accuracy, wireless stability, false trigger rate, occupancy detection reliability, and data integrity must be defined as validated system-level boundaries.

## ZH-TW

Artibird Sense 為 Artibird 生態提供本地化環境與人在數據通訊能力。依版本不同，它可以作為低功耗 BLE 感測器、Wi-Fi 感測器、有線感測器或多協議感測節點運作。其網路角色應支援本地感測回報、閾值事件、Hub 通訊、Edge 上下文生成與雲端輔助監測。

對 Sense 類產品而言，上報間隔、事件延遲、電池壽命、感測精度、無線穩定性、誤觸發率、人在檢測可靠性與數據完整性，都必須被定義為經驗證的系統級邊界。

## English Table

|Item|Description|
|---|---|
|Primary Connectivity|BLE / Wi-Fi / IEEE 802.15.4 depending on variant|
|Secondary Connectivity|BLE provisioning / USB-C service path / wired sensor interface optional|
|Runtime Role|Environmental sensing node / occupancy context node / automation trigger node|
|Local Network Access|Through Gate, Hub, BLE Friend, Wi-Fi, or wired path depending on architecture|
|Cloud Connectivity|Through Hub or direct cloud path depending on product strategy|
|Remote Monitoring|Supported where cloud synchronization is enabled|
|Offline Communication|Local sensing and Hub-assisted automation where supported|
|Protocol Support|MQTT / BLE / BLE Mesh / HTTP / WebSocket / local API depending on architecture|
|Reporting Interval|TBD / Validated Value|
|Event Latency|TBD / Validated Value|
|Battery Life Target|TBD by battery size, reporting interval, and sensor profile|
|Sensor Accuracy|Must be defined per sensor type|
|False Trigger Rate|Must be defined for motion and occupancy variants|
|Capacity / Reliability Report|Required before public claims|

## 中文表

|項目|說明|
|---|---|
|主要連接能力|BLE / Wi-Fi / IEEE 802.15.4，依版本配置|
|次要連接能力|可選 BLE 配網 / USB-C 維護路徑 / 有線感測介面|
|Runtime 角色|環境感測節點 / 人在上下文節點 / 自動化觸發節點|
|本地網路存取|依架構透過 Gate、Hub、BLE Friend、Wi-Fi 或有線路徑|
|雲端連接|依產品策略透過 Hub 或直連雲端路徑|
|遠端監測|啟用雲端同步時支援|
|離線通訊|在支援條件下，本地感測與 Hub 輔助自動化可運作|
|協議支援|MQTT / BLE / BLE Mesh / HTTP / WebSocket / 本地 API，依架構定義|
|上報間隔|TBD / 已驗證數值|
|事件延遲|TBD / 已驗證數值|
|電池壽命目標|依電池容量、上報間隔與感測器配置定義|
|感測精度|必須依感測器類型分別定義|
|誤觸發率|動作與人在版本必須定義|
|容量 / 可靠性報告|公開宣稱前必須具備|

---

# 7. Software & Firmware Architecture

# 7. 軟體與韌體架構

## English Table

|Category|Status|Description|
|---|---|---|
|Runtime Platform|ArtiOS-compatible|Participates in ArtiOS runtime communication through Gate, Hub, or defined interface|
|Firmware Framework|ESP-IDF / Nordic nRF Connect SDK / Zephyr depending on SoC|Selected by hardware platform and power strategy|
|OTA Update|Supported / variant-dependent|Secure OTA or service update depending on power and protocol constraints|
|Sensor Driver Layer|Supported|Interfaces with temperature, humidity, light, motion, occupancy, air quality, or other sensors|
|Sensor Calibration Manager|Recommended|Maintains calibration parameters, offsets, drift compensation, and factory data|
|Event Engine|Supported|Handles threshold events, change events, occupancy events, alarms, and diagnostics|
|Reporting Manager|Supported|Manages periodic reporting, event-triggered reporting, batching, and rate limits|
|Power Management|Required for battery variant|Sleep profile, wake interval, sensor duty cycle, low-battery behavior|
|State Management|Supported|Maintains sensor state, battery state, connectivity state, calibration state, and runtime metadata|
|Data Integrity Monitor|Recommended|Detects invalid readings, stuck sensor values, abnormal jumps, and sensor failure|
|Local Threshold Engine|Optional / Recommended|Supports local threshold-based event generation|
|Security Features|Supported|Secure onboarding, credential protection, encrypted communication where implemented|
|Diagnostics|Supported|Sensor health, battery, signal, firmware version, calibration state, and error logs|
|Cloud Client|Optional / architecture-dependent|Handles remote monitoring, alert sync, historical data, and lifecycle services|
|MQTT Client|Supported where architecture uses MQTT|Communicates with Artibird Hub / ArtiOS MQTT services|
|Pairing Manager|Supported|Handles onboarding, binding, room assignment, sensor assignment, and reset workflows|

## 中文表

|類別|狀態|說明|
|---|---|---|
|Runtime 平台|相容 ArtiOS|透過 Gate、Hub 或已定義介面參與 ArtiOS Runtime 通訊|
|韌體框架|ESP-IDF / Nordic nRF Connect SDK / Zephyr，依 SoC|依硬體平台與供電策略選擇|
|OTA 更新|支援 / 依版本|依供電與協議限制支援安全 OTA 或維護更新|
|感測器驅動層|支援|接入溫度、濕度、光照、動作、人在、空氣品質或其他感測器|
|感測器校準管理器|建議支援|維護校準參數、偏移、漂移補償與工廠資料|
|事件引擎|支援|處理閾值事件、變化事件、人在事件、警報與診斷|
|上報管理器|支援|管理週期上報、事件觸發上報、批量上報與頻率限制|
|電源管理|電池版本必須支援|睡眠曲線、喚醒間隔、感測占空比與低電量行為|
|狀態管理|支援|維護感測器狀態、電池狀態、連接狀態、校準狀態與 Runtime 元數據|
|數據完整性監測器|建議支援|偵測無效讀數、感測器卡死、異常跳變與感測器失效|
|本地閾值引擎|選配 / 建議支援|支援基於本地閾值的事件生成|
|安全功能|支援|安全入網、憑證保護、適用情況下的加密通訊|
|診斷功能|支援|感測器健康、電池、信號、韌體版本、校準狀態與錯誤日誌|
|雲端客戶端|選配 / 依架構|處理遠端監測、警報同步、歷史數據與生命週期服務|
|MQTT Client|採用 MQTT 架構時支援|與 Artibird Hub / ArtiOS MQTT 服務通訊|
|配對管理器|支援|處理入網、綁定、房間分配、感測器分配與重置流程|

---

# 8. Runtime Behavior & System Integration

# 8. Runtime 行為與系統整合

## EN

Artibird Sense operates as a context-producing node within the local Artibird environment. It collects sensor readings, generates threshold or state-change events, reports sensor health, and provides environmental context to Hub, ArtiOS, Edge, Cloud, and App layers.

## ZH-TW

Artibird Sense 作為本地 Artibird 環境中的上下文生成節點運作。它採集感測讀數，生成閾值或狀態變化事件，回報感測器健康狀態，並向 Hub、ArtiOS、Edge、Cloud 與 App 層提供環境上下文。

## English Table

|Topic|Description|
|---|---|
|Device Onboarding & Pairing Flow|Sense is discovered and bound through App, Gate, Hub, or local setup workflow|
|Sensor Sampling|Collects sensor readings according to configured interval, trigger condition, or runtime request|
|Event Reporting|Reports threshold events, occupancy events, abnormal values, battery events, and sensor health|
|State Management & Synchronization|Maintains sensor state, battery state, calibration state, room assignment, and runtime metadata|
|Local Automation Trigger|Sensor events can trigger lighting, climate, curtain, security, irrigation, or energy-control automation|
|Command / Configuration Handling|Receives reporting interval, threshold, sensitivity, calibration, and alert configuration|
|Integration with ArtiOS|Sense data participates in scenes, schedules, automations, and runtime coordination|
|Integration with Gate|BLE or low-power variants may communicate through Gate or Friend node|
|Integration with Hub|Hub stores sensor data, applies rules, generates automation, and synchronizes state|
|Integration with Edge|Edge may use sensor data for inference, anomaly detection, and state estimation|
|Integration with Cloud|Cloud provides monitoring, historical analytics, alerting, synchronization, and lifecycle management|
|App Interaction|App supports setup, room assignment, live readings, history, alerts, and configuration|
|Multi-Sense Deployment|Multiple Sense nodes can participate in room-level, zone-level, campus-level, or agriculture-level context modeling|

## 中文表

|主題|說明|
|---|---|
|設備入網與配對流程|Sense 透過 App、Gate、Hub 或本地設定流程被發現與綁定|
|感測取樣|依配置上報間隔、觸發條件或 Runtime 請求採集感測讀數|
|事件回報|回報閾值事件、人在事件、異常數值、電池事件與感測器健康|
|狀態管理與同步|維護感測器狀態、電池狀態、校準狀態、房間分配與 Runtime 元數據|
|本地自動化觸發|感測事件可觸發照明、空調、窗簾、安全、灌溉或能源控制自動化|
|指令 / 配置處理|接收上報間隔、閾值、靈敏度、校準與警報配置|
|與 ArtiOS 整合|Sense 數據參與場景、排程、自動化與 Runtime 協同|
|與 Gate 整合|BLE 或低功耗版本可透過 Gate 或 Friend 節點通訊|
|與 Hub 整合|Hub 儲存感測數據、套用規則、生成自動化並同步狀態|
|與 Edge 整合|Edge 可使用感測數據進行推理、異常檢測與狀態推定|
|與 Cloud 整合|Cloud 提供監測、歷史分析、警報、同步與生命週期管理|
|App 互動|App 支援設定、房間分配、即時讀數、歷史、警報與配置|
|多 Sense 部署|多個 Sense 節點可參與房間級、區域級、校園級或農業級上下文建模|

---

# 9. Data & Event Flow

# 9. 數據與事件流

## EN

Artibird Sense manages bidirectional communication between sensor readings, environmental events, system automation, and the Artibird / OceanAI runtime system.

Typical flows:

1. Sensor Reading → Sense → Gate / Hub → ArtiOS
    
2. Threshold Event → Hub → Automation Execution
    
3. Occupancy Event → Hub / Edge → Lighting / Climate Coordination
    
4. Sensor History → Hub → Cloud Analytics
    
5. Abnormal Reading → Hub → App Alert
    
6. Edge Inference → ArtiOS → Scene / Energy Optimization
    

## ZH-TW

Artibird Sense 管理感測讀數、環境事件、系統自動化與 Artibird / OceanAI Runtime 系統之間的雙向通訊。

典型流程：

1. Sensor Reading → Sense → Gate / Hub → ArtiOS
    
2. Threshold Event → Hub → Automation Execution
    
3. Occupancy Event → Hub / Edge → Lighting / Climate Coordination
    
4. Sensor History → Hub → Cloud Analytics
    
5. Abnormal Reading → Hub → App Alert
    
6. Edge Inference → ArtiOS → Scene / Energy Optimization
    

## English Table

|Flow Type|Direction|Description|
|---|---|---|
|Sensor Reading|Sense → Gate / Hub|Temperature, humidity, light, motion, occupancy, air quality, or other sensor data|
|Threshold Event|Sense → Hub / ArtiOS|Event generated when configured threshold is crossed|
|Occupancy Event|Sense → Hub / Edge|Motion, presence, or occupancy-related context|
|Local Automation|Sense → Hub → Devices|Sensor-triggered lighting, climate, curtain, irrigation, or energy action|
|Cloud Sync|Hub / Sense → Cloud|Sensor history, metadata, configuration, alerts, and lifecycle data|
|Edge Context|Sense / Hub → Edge|Environmental context for inference, state estimation, or anomaly detection|
|Health Report|Sense → Hub / Cloud|Battery, signal, sensor health, firmware, calibration, and error status|
|Configuration Flow|App / Hub / Cloud → Sense|Reporting interval, threshold, sensitivity, calibration, and alert configuration|

## 中文表

|流類型|方向|說明|
|---|---|---|
|感測讀數|Sense → Gate / Hub|溫度、濕度、光照、動作、人在、空氣品質或其他感測數據|
|閾值事件|Sense → Hub / ArtiOS|超過設定閾值時生成的事件|
|人在事件|Sense → Hub / Edge|動作、存在或人在相關上下文|
|本地自動化|Sense → Hub → 設備|由感測器觸發的照明、空調、窗簾、灌溉或能源動作|
|雲端同步|Hub / Sense → Cloud|感測歷史、元數據、配置、警報與生命週期數據|
|Edge 上下文|Sense / Hub → Edge|用於推理、狀態推定或異常檢測的環境上下文|
|健康回報|Sense → Hub / Cloud|電池、信號、感測器健康、韌體、校準與錯誤狀態|
|配置流|App / Hub / Cloud → Sense|上報間隔、閾值、靈敏度、校準與警報配置|

---

# 10. Safety, Reliability & Failure Behavior

# 10. 安全、可靠性與故障行為

## EN

Artibird Sense must maintain predictable behavior under abnormal operating conditions. Since sensor data may trigger automation and environmental control, sensor validity, event reliability, data integrity, calibration behavior, and safe automation boundaries are critical.

## ZH-TW

Artibird Sense 必須在異常運作條件下保持可預期行為。由於感測數據可能觸發自動化與環境控制，感測有效性、事件可靠性、數據完整性、校準行為與安全自動化邊界非常重要。

## English Table

|Item|Description|
|---|---|
|Watchdog|Detects firmware lockup and triggers recovery|
|Brownout Detection|Detects voltage instability and protects runtime behavior where supported|
|Sensor Validity Check|Detects invalid, out-of-range, frozen, or impossible values|
|Sensor Drift Handling|Applies calibration offset, drift detection, or maintenance warning where supported|
|False Trigger Handling|Applies debounce, filtering, confirmation, or sensor fusion where applicable|
|Fail-Safe Behavior|Prevents unsafe automation based on invalid or uncertain sensor data|
|Low Battery Handling|Battery variant reports low battery and enters power-saving behavior|
|Data Integrity|Validates sensor payloads, timestamps, sequence numbers, and configuration consistency|
|Power Failure Recovery|Restores configuration, reporting profile, threshold settings, and runtime state after reboot|
|OTA Failure Recovery|Supports rollback or safe firmware recovery strategy where applicable|
|Hub Disconnection Behavior|Buffers limited events or maintains local threshold logic where supported|
|Cloud Disconnection Behavior|Maintains local sensing and resynchronizes after recovery|
|Security Mechanisms|Authentication, encrypted communication where applicable, secure pairing, credential protection, secure OTA|
|Debug Protection|Production system should disable or protect debug interfaces|

## 中文表

|項目|說明|
|---|---|
|Watchdog|偵測韌體鎖死並觸發恢復|
|低壓檢測|在支援條件下偵測電壓不穩並保護 Runtime 行為|
|感測有效性檢查|偵測無效、超範圍、凍結或不可能的數值|
|感測漂移處理|在支援條件下套用校準偏移、漂移檢測或維護提醒|
|誤觸發處理|在適用情況下採用防抖、濾波、確認或感測融合|
|故障安全行為|防止基於無效或不確定感測數據觸發不安全自動化|
|低電量處理|電池版本回報低電量並進入節能行為|
|數據完整性|驗證感測資料、時間戳、序列號與配置一致性|
|斷電恢復|重啟後恢復配置、上報曲線、閾值設定與 Runtime 狀態|
|OTA 失敗恢復|在適用條件下支援回滾或安全韌體恢復策略|
|Hub 斷線行為|在支援條件下緩存有限事件或維持本地閾值邏輯|
|雲端斷線行為|維持本地感測，並於恢復後重新同步|
|安全機制|身份認證、適用情況下的加密通訊、安全配對、憑證保護、安全 OTA|
|Debug 保護|量產系統應停用或保護 Debug 介面|

---

# 11. Installation, Deployment & Maintenance

# 11. 安裝、部署與維護

## English Table

|Item|Description|
|---|---|
|Installation Method|Wall-mounted / ceiling-mounted / desktop / adhesive / embedded / outdoor enclosure|
|Deployment Scenario|Home / classroom / office / hotel / campus / smart building / agriculture / infrastructure|
|Installer Type|End user for simple battery sensors; technician or system integrator for wired, ceiling, outdoor, or calibrated variants|
|Power Requirement|Battery / USB-C / DC wired / AC-powered variant depending on product class|
|Placement Requirement|Sensor-specific placement required for accurate temperature, light, motion, occupancy, or air quality readings|
|Mounting Requirement|Adhesive, screws, bracket, ceiling mount, wall mount, DIN rail, or outdoor enclosure depending on variant|
|Calibration Requirement|Factory calibration or field calibration depending on sensor type|
|LED Function|Power, pairing, sensing event, battery status, network status, fault|
|Button Function|Reset, pairing, calibration, test mode, factory reset|
|Maintenance Method|Artibird App, Hub console, cloud console, local service interface, physical reset|
|Firmware Update Method|BLE OTA / Wi-Fi OTA / local update / service tool depending on variant|
|Replacement Procedure|Sense replacement, room binding, sensor assignment, calibration restore, re-pairing workflow|
|Service Access|Controlled admin or service access required|

## 中文表

|項目|說明|
|---|---|
|安裝方式|壁掛 / 吸頂 / 桌面 / 背膠 / 嵌入式 / 戶外外殼|
|部署場景|住宅 / 教室 / 辦公室 / 酒店 / 校園 / 智慧建築 / 農業 / 基礎設施|
|安裝人員類型|簡單電池感測器可由用戶安裝；有線、吸頂、戶外或需校準版本由技術員或系統整合商安裝|
|供電要求|依產品級別採用電池 / USB-C / DC 有線 / AC 供電版本|
|放置要求|必須依感測器類型進行放置，以確保溫度、光照、動作、人在或空氣品質讀數準確|
|固定要求|依版本採用背膠、螺絲、支架、吸頂、壁掛、DIN Rail 或戶外外殼|
|校準要求|依感測器類型採用工廠校準或現場校準|
|LED 功能|電源、配對、感測事件、電池狀態、網路狀態、故障|
|按鍵功能|重置、配對、校準、測試模式、恢復出廠設定|
|維護方式|Artibird App、Hub Console、Cloud Console、本地維護介面、實體重置|
|韌體更新方式|依版本採用 BLE OTA / Wi-Fi OTA / 本地更新 / 維護工具|
|更換流程|Sense 替換、房間綁定、感測器分配、校準恢復、重新配對流程|
|服務存取|必須具備受控管理員或維護存取|

---

# 12. Testing, Validation & Certification

# 12. 測試、驗證與認證

## EN

Artibird Sense must be validated as an environmental sensing device and runtime context node. Testing must cover sensor accuracy, reporting reliability, event latency, false trigger rate, battery life, wireless communication, local automation behavior, Hub integration, cloud synchronization, security, and long-duration reliability.

## ZH-TW

Artibird Sense 必須作為環境感測設備與 Runtime 上下文節點進行驗證。測試必須涵蓋感測精度、上報可靠性、事件延遲、誤觸發率、電池壽命、無線通訊、本地自動化行為、Hub 整合、雲端同步、安全與長時間可靠性。

## English Table

|Test Category|Objective|
|---|---|
|Functional Test|Verify Sense core functions, readings, events, and state reports|
|Sensor Accuracy Test|Verify accuracy for each sensor type under defined environmental conditions|
|Sensor Drift Test|Verify long-term drift, calibration behavior, and maintenance requirements|
|Motion / Occupancy Test|Verify detection range, latency, false trigger rate, and missed detection rate|
|Light Sensor Test|Verify lux range, accuracy, response time, and placement sensitivity|
|Temperature / Humidity Test|Verify accuracy, response time, and enclosure influence|
|Air Quality Test|Verify sensor response, calibration, warm-up behavior, and environmental sensitivity|
|Battery Life Test|Validate battery life under defined reporting interval, event rate, and sleep profile|
|BLE / Wi-Fi / 802.15.4 Test|Verify connectivity, reconnect, range, latency, and local communication|
|Local Control Test|Verify sensor-triggered local automation and Hub-assisted execution|
|Remote Monitoring Test|Verify cloud-assisted monitoring, alerts, and historical data where enabled|
|MQTT Test|Verify message delivery, reconnect, QoS behavior, and routing where implemented|
|Hub Integration Test|Verify communication with Artibird Hub and ArtiOS services|
|Gate Integration Test|Verify BLE or low-power gateway path where applicable|
|Edge Integration Test|Verify sensor context availability for inference, anomaly detection, and state estimation|
|Cloud Sync Test|Verify readings, metadata, alerts, account, log, and lifecycle synchronization|
|Stress Test|Verify long-duration reporting and high-frequency event behavior|
|OTA Test|Verify firmware update, rollback, and recovery behavior|
|Security Test|Verify authentication, encryption, secure pairing, credential protection, and debug protection|
|Reliability Test|Verify stability under power, network, sensor, RF, enclosure, and runtime variation|
|Certification Test|Verify compliance for FCC, CE, RoHS, UL / ETL where applicable|
|Claim Validation|Verify public product claims with formal test evidence|

## 中文表

|測試類別|目標|
|---|---|
|功能測試|驗證 Sense 核心功能、讀數、事件與狀態回報|
|感測精度測試|在明確環境條件下驗證各類感測器精度|
|感測漂移測試|驗證長期漂移、校準行為與維護要求|
|動作 / 人在測試|驗證偵測距離、延遲、誤觸發率與漏檢率|
|光照感測測試|驗證 lux 範圍、精度、回應時間與放置敏感性|
|溫濕度測試|驗證精度、回應時間與外殼影響|
|空氣品質測試|驗證感測器回應、校準、預熱行為與環境敏感性|
|電池壽命測試|在明確上報間隔、事件頻率與睡眠曲線下驗證電池壽命|
|BLE / Wi-Fi / 802.15.4 測試|驗證連接、重連、距離、延遲與本地通訊|
|本地控制測試|驗證感測器觸發的本地自動化與 Hub 輔助執行|
|遠端監測測試|驗證啟用條件下的雲端輔助監測、警報與歷史數據|
|MQTT 測試|在實作條件下驗證消息投遞、重連、QoS 行為與路由|
|Hub 整合測試|驗證與 Artibird Hub 及 ArtiOS 服務的通訊|
|Gate 整合測試|在適用條件下驗證 BLE 或低功耗網關路徑|
|Edge 整合測試|驗證感測上下文可用於推理、異常檢測與狀態推定|
|雲端同步測試|驗證讀數、元數據、警報、帳號、日誌與生命週期同步|
|壓力測試|驗證長時間上報與高頻事件行為|
|OTA 測試|驗證韌體更新、回滾與恢復行為|
|安全測試|驗證身份認證、加密、安全配對、憑證保護與 Debug 保護|
|可靠性測試|驗證電源、網路、感測器、RF、外殼與 Runtime 變化下的穩定性|
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
|UL / ETL|Required where AC power, in-wall installation, or electrical safety scope applies|
|Bluetooth Qualification|Required if using Bluetooth branding|
|Wi-Fi Certification|Optional depending on commercial strategy|
|Cybersecurity Labeling|Optional depending on market and retail channel|

|認證|適用範圍|
|---|---|
|FCC|美國無線市場需要|
|CE|歐盟市場需要|
|RoHS|環保合規|
|REACH|歐盟市場建議|
|UL / ETL|若涉及 AC 供電、牆內安裝或電氣安全範圍則需要|
|Bluetooth 資格認證|若使用 Bluetooth 品牌則需要|
|Wi-Fi 認證|依商業策略選配|
|網路安全標籤|依市場與零售渠道選配|

---

# 13. Product Variants

# 13. 產品版本

## English Table

|Variant / SKU|Hardware Difference|Firmware Difference|Market / Region|Certification Difference|Notes|
|---|---|---|---|---|---|
|Artibird Sense TH|Temperature and humidity sensor|Environmental reporting profile|Home / classroom / office|FCC / CE / RoHS|Basic environmental sensing|
|Artibird Sense Light|Light / illumination sensor|Light threshold and automation profile|Home / classroom / building|FCC / CE / RoHS|Lighting automation|
|Artibird Sense Motion|PIR or motion sensing hardware|Motion trigger profile|Home / office / security|FCC / CE / RoHS|Motion-based automation|
|Artibird Sense Presence|mmWave or occupancy sensor|Occupancy detection profile|Home / classroom / office|Additional RF / placement validation|Presence-aware automation|
|Artibird Sense Air|CO₂ / VOC / PM / air quality sensors|Air-quality reporting and alert profile|Classroom / office / building|Sensor and environmental validation|Air quality monitoring|
|Artibird Sense Multi|Temperature, humidity, light, motion, and optional presence|Multi-sensor fusion profile|Home / campus / building|Multi-sensor validation required|Context-rich sensing|
|Artibird Sense Agriculture|Soil moisture, temperature, light, humidity, outdoor sensors|Agriculture sensing profile|Agriculture / irrigation / outdoor|Environmental enclosure validation|Outdoor and irrigation use|

## 中文表

|版本 / SKU|硬體差異|韌體差異|市場 / 地區|認證差異|備註|
|---|---|---|---|---|---|
|Artibird Sense TH|溫度與濕度感測器|環境上報配置|住宅 / 教室 / 辦公室|FCC / CE / RoHS|基礎環境感測|
|Artibird Sense Light|光照 / 照度感測器|光照閾值與自動化配置|住宅 / 教室 / 建築|FCC / CE / RoHS|照明自動化|
|Artibird Sense Motion|PIR 或動作感測硬體|動作觸發配置|住宅 / 辦公 / 安防|FCC / CE / RoHS|基於動作的自動化|
|Artibird Sense Presence|mmWave 或人在感測器|人在檢測配置|住宅 / 教室 / 辦公室|需額外 RF / 放置驗證|人在感知自動化|
|Artibird Sense Air|CO₂ / VOC / PM / 空氣品質感測器|空氣品質回報與警報配置|教室 / 辦公室 / 建築|需感測器與環境驗證|空氣品質監測|
|Artibird Sense Multi|溫度、濕度、光照、動作與可選人在|多感測融合配置|住宅 / 校園 / 建築|需多感測驗證|上下文豐富感測|
|Artibird Sense Agriculture|土壤濕度、溫度、光照、濕度、戶外感測器|農業感測配置|農業 / 灌溉 / 戶外|需環境外殼驗證|戶外與灌溉使用|

---

# 14. Commercial Positioning

# 14. 商業定位

## EN

Artibird Sense is positioned as the environmental perception node for coordinated intelligent environments. It allows the system to understand environmental conditions, occupancy patterns, and spatial context, enabling lighting, climate, energy, security, and irrigation behavior to respond with greater precision.

## ZH-TW

Artibird Sense 被定位為協同智慧空間中的環境感知節點。它使系統能夠理解環境條件、人在模式與空間上下文，使照明、空調、能源、安全與灌溉行為能夠以更高精度回應。

## English Table

|Item|Description|
|---|---|
|Target Market|Residential, classroom, office, campus, smart building, agriculture, infrastructure|
|Key Selling Points|Environmental sensing, occupancy context, local-first automation triggers, ArtiOS integration, Edge-ready context, cloud-enhanced monitoring|
|Use Cases|Lighting automation, climate optimization, classroom air monitoring, energy saving, security awareness, irrigation control|
|Compatibility Statement|Designed for Artibird Hub, Artibird Gate, ArtiOS, OceanAI Cloud, OceanAI Edge, Artibird App, and supported automation flows|
|Local-first Statement|Sensor readings and supported local automation triggers remain available where deployment architecture permits|
|Cloud-enhanced Statement|Cloud adds historical analytics, alerts, multi-site monitoring, trend visualization, and lifecycle management|
|Remote Monitoring Statement|Remote monitoring requires OceanAI Cloud connectivity, account binding, network availability, and supported product variant|
|Sensor Accuracy Claim|Must reference Sensor Accuracy Validation Report|
|Occupancy Claim|Must reference Occupancy Detection Validation Report where applicable|
|Prohibited Claims|Perfect presence detection, medical-grade sensing, unlimited battery life, unvalidated air quality accuracy, unsupported outdoor rating|

## 中文表

|項目|說明|
|---|---|
|目標市場|住宅、教室、辦公室、校園、智慧建築、農業、基礎設施|
|核心賣點|環境感測、人在上下文、本地優先自動化觸發、ArtiOS 整合、Edge-ready 上下文、雲端增強監測|
|使用場景|照明自動化、空調優化、教室空氣監測、節能、安全感知、灌溉控制|
|相容性聲明|面向 Artibird Hub、Artibird Gate、ArtiOS、OceanAI Cloud、OceanAI Edge、Artibird App 與受支援自動化流程設計|
|本地優先聲明|在部署架構允許條件下，感測讀數與受支援本地自動化觸發保持可用|
|雲端增強聲明|雲端增加歷史分析、警報、多站點監測、趨勢可視化與生命週期管理|
|遠端監測聲明|遠端監測需要 OceanAI Cloud 連接、帳號綁定、網路可用與受支援產品版本|
|感測精度宣稱|必須引用感測精度驗證報告|
|人在宣稱|適用情況下必須引用人在檢測驗證報告|
|禁止宣稱|完美人在檢測、醫療級感測、無限制電池壽命、未驗證空氣品質精度、未支援戶外等級|

---

# 15. Engineering Claim Policy

# 15. 工程宣稱政策

## Mandatory Statement

## 強制聲明

**EN**  
All Artibird Sense performance claims, especially sensor accuracy, detection range, occupancy reliability, false trigger rate, reporting latency, battery life, wireless range, air quality accuracy, remote monitoring performance, reliability, and security, must be based on validated test reports under defined conditions. Theoretical sensor datasheet values, chip specifications, or ideal laboratory values shall not be used as product claims.

**ZH-TW**  
所有 Artibird Sense 性能宣稱，尤其是感測精度、偵測距離、人在可靠性、誤觸發率、上報延遲、電池壽命、無線距離、空氣品質精度、遠端監測性能、可靠性與安全性，必須基於明確條件下的已驗證測試報告。感測器資料手冊理論值、晶片規格或理想實驗室數值，不得直接作為產品宣稱。

## English Table — Claim Policy

|Claim Type|Requirement|
|---|---|
|Sensor Accuracy|Must reference sensor type, calibration condition, temperature range, humidity range, and test method|
|Detection Range|Must reference sensor type, mounting height, angle, environment, and target condition|
|Occupancy Reliability|Must reference occupancy test scenarios, false positive rate, false negative rate, and duration|
|Motion Detection|Must reference PIR / mmWave / sensor-fusion method and validation condition|
|Air Quality Accuracy|Must reference calibration, warm-up behavior, sensor aging, environmental interference, and test range|
|Battery Life|Must reference battery profile, reporting interval, event frequency, sleep strategy, and validation duration|
|Wireless Range|Must reference RF test condition, antenna design, enclosure, and environment|
|Local-first Capability|Must define exact offline sensing and automation functions|
|Remote Monitoring|Must define cloud, account, network, and supported variant dependency|
|Security|Must reference implemented mechanisms and test evidence|
|Compatibility|Must define supported sensor types, installation methods, environments, and operating ranges|

## 中文表 — 宣稱政策

|宣稱類型|要求|
|---|---|
|感測精度|必須引用感測器類型、校準條件、溫度範圍、濕度範圍與測試方法|
|偵測距離|必須引用感測器類型、安裝高度、角度、環境與目標條件|
|人在可靠性|必須引用人在測試場景、誤報率、漏報率與測試時長|
|動作偵測|必須引用 PIR / mmWave / 感測融合方法與驗證條件|
|空氣品質精度|必須引用校準、預熱行為、感測器老化、環境干擾與測試範圍|
|電池壽命|必須引用電池曲線、上報間隔、事件頻率、睡眠策略與驗證時長|
|無線距離|必須引用 RF 測試條件、天線設計、外殼與環境|
|本地優先能力|必須定義具體離線感測與自動化功能|
|遠端監測|必須定義雲端、帳號、網路與支援版本依賴|
|安全性|必須引用已實作機制與測試證據|
|相容性|必須定義支援感測器類型、安裝方式、環境與工作範圍|

---

# 16. Revision History

# 16. 版本記錄

## English Table

|Version|Date|Author|Description|
|---|---|---|---|
|v1.0|2026-05-08|OceanAI / Artibird Product Team|Initial Artibird Sense Product Specification based on Artibird Product Specification Template v1.1|

## 中文表

|版本|日期|作者|說明|
|---|---|---|---|
|v1.0|2026-05-08|OceanAI / Artibird Product Team|基於 Artibird 產品規格書標準模板 v1.1 建立的 Artibird Sense 初始產品規格書|

---

# Appendix A — Terminology

# 附錄 A｜術語對照表

|English Term|中文術語|Definition|
|---|---|---|
|Artibird Sense|Artibird Sense|Environmental and context sensing node for coordinated intelligent environments|
|Environmental Sensing|環境感測|Measurement of conditions such as temperature, humidity, light, and air quality|
|Occupancy Sensing|人在感測|Detection or estimation of human presence or space usage|
|Motion Detection|動作偵測|Detection of movement using PIR, mmWave, accelerometer, or other sensing methods|
|Sensor Fusion|感測融合|Combining multiple sensor signals to improve context reliability|
|Threshold Event|閾值事件|Event generated when a sensor reading crosses a configured threshold|
|Sensor Drift|感測漂移|Gradual deviation of sensor readings over time or environmental exposure|
|Local-first|本地優先|Core functions are designed to operate locally whenever possible|
|Cloud-enhanced|雲端增強|Cloud services extend local operation with remote, sync, analytics, or AI capabilities|
|Sensor Accuracy Validation Report|感測精度驗證報告|Formal report validating sensor performance under defined conditions|

---

# Appendix B — Risk Register

# 附錄 B｜風險登記表

## English Table

|Risk ID|Risk Description|Impact|Mitigation|
|---|---|---|---|
|R-SENSE-001|Overclaiming sensor accuracy based on datasheet values|High|Require Sensor Accuracy Validation Report under product enclosure conditions|
|R-SENSE-002|Occupancy false positives or false negatives|High|Validate detection scenarios and apply sensor fusion where needed|
|R-SENSE-003|Battery life overclaimed based on capacity only|High|Require Battery Life Validation Report with reporting profile|
|R-SENSE-004|Sensor placement affects measurement accuracy|Medium / High|Provide placement guide and validate common installation conditions|
|R-SENSE-005|Sensor drift affects automation reliability|Medium / High|Apply calibration, drift detection, and maintenance reminders|
|R-SENSE-006|Cloud dependency weakens local-first positioning|High|Clearly separate local sensing and cloud-enhanced monitoring|
|R-SENSE-007|Air quality readings misunderstood as medical or regulatory-grade|High|Define consumer / environmental monitoring scope clearly|
|R-SENSE-008|RF performance degraded by enclosure or placement|Medium / High|Validate RF performance in final enclosure and placement conditions|
|R-SENSE-009|Invalid sensor data triggers unsafe automation|High|Apply data validity checks and automation safety boundaries|
|R-SENSE-010|Product language exceeds tested capability|High|Apply Engineering Claim Policy|

## 中文表

|風險 ID|風險描述|影響|緩解措施|
|---|---|---|---|
|R-SENSE-001|基於資料手冊數值過度宣稱感測精度|高|必須在產品外殼條件下取得感測精度驗證報告|
|R-SENSE-002|人在誤報或漏報|高|驗證偵測場景，必要時採用感測融合|
|R-SENSE-003|僅基於電池容量過度宣稱電池壽命|高|必須依上報曲線取得電池壽命驗證報告|
|R-SENSE-004|感測器放置影響量測精度|中 / 高|提供放置指南並驗證常見安裝條件|
|R-SENSE-005|感測漂移影響自動化可靠性|中 / 高|採用校準、漂移檢測與維護提醒|
|R-SENSE-006|雲端依賴削弱本地優先定位|高|清楚區分本地感測與雲端增強監測|
|R-SENSE-007|空氣品質讀數被誤解為醫療或法規級|高|明確定義消費級 / 環境監測範圍|
|R-SENSE-008|外殼或放置導致 RF 性能下降|中 / 高|在最終外殼與放置條件下驗證 RF 性能|
|R-SENSE-009|無效感測數據觸發不安全自動化|高|套用數據有效性檢查與自動化安全邊界|
|R-SENSE-010|產品語言超出已測試能力|高|套用工程宣稱政策|

---

# Appendix C — Validation Checklist

# 附錄 C｜驗證清單

## English Table

|Checklist Item|Required|Status|Evidence|
|---|---|---|---|
|Hardware specification completed|Yes|TBD|Schematic / BOM / enclosure design|
|Firmware architecture completed|Yes|TBD|Firmware design document|
|Sensor driver validated|Yes|TBD|Sensor driver test report|
|Sensor accuracy validated|Yes|TBD|Sensor Accuracy Validation Report|
|Sensor placement validated|Yes|TBD|Placement validation report|
|Occupancy detection validated|If applicable|TBD|Occupancy Detection Validation Report|
|False trigger rate validated|If applicable|TBD|False Trigger Validation Report|
|Battery life validated|For battery variant|TBD|Battery Life Validation Report|
|Wireless communication validated|If wireless|TBD|RF / network test report|
|Local-first behavior validated|Yes|TBD|Local operation test report|
|Gate integration validated|If applicable|TBD|Gate integration test|
|Hub integration validated|Yes|TBD|Hub integration test|
|Edge integration validated|If applicable|TBD|Edge integration test|
|Cloud-enhanced behavior validated|Yes|TBD|Cloud integration test|
|Remote monitoring validated|If applicable|TBD|App / cloud monitoring test|
|OTA update validated|Yes|TBD|OTA test report|
|Security mechanisms validated|Yes|TBD|Security test report|
|Failure behavior validated|Yes|TBD|Reliability test report|
|Certification path defined|Yes|TBD|Certification plan|
|Commercial claims reviewed|Yes|TBD|Claim review record|

## 中文表

|檢查項目|是否必要|狀態|證據|
|---|---|---|---|
|硬體規格已完成|是|TBD|原理圖 / BOM / 外殼設計|
|韌體架構已完成|是|TBD|韌體設計文件|
|感測器驅動已驗證|是|TBD|感測器驅動測試報告|
|感測精度已驗證|是|TBD|感測精度驗證報告|
|感測器放置已驗證|是|TBD|放置驗證報告|
|人在檢測已驗證|如適用|TBD|人在檢測驗證報告|
|誤觸發率已驗證|如適用|TBD|誤觸發驗證報告|
|電池壽命已驗證|電池版本需要|TBD|電池壽命驗證報告|
|無線通訊已驗證|若為無線產品|TBD|RF / 網路測試報告|
|本地優先行為已驗證|是|TBD|本地運作測試報告|
|Gate 整合已驗證|如適用|TBD|Gate 整合測試|
|Hub 整合已驗證|是|TBD|Hub 整合測試|
|Edge 整合已驗證|如適用|TBD|Edge 整合測試|
|雲端增強行為已驗證|是|TBD|雲端整合測試|
|遠端監測已驗證|如適用|TBD|App / 雲端監測測試|
|OTA 更新已驗證|是|TBD|OTA 測試報告|
|安全機制已驗證|是|TBD|安全測試報告|
|故障行為已驗證|是|TBD|可靠性測試報告|
|認證路線已定義|是|TBD|認證計畫|
|商業宣稱已審查|是|TBD|宣稱審查記錄|

---

# Document End

# 文件結束

## EN

This Artibird Sense Product Specification v1.0 defines Sense as the environmental perception and runtime context node of the Artibird ecosystem. It provides a controlled engineering and system-level reference for environmental sensing, occupancy sensing, sensor data integrity, ArtiOS runtime participation, local-first operation, cloud-enhanced monitoring, Edge-ready context, validation, certification, and commercial claim boundaries.

## ZH-TW

本《Artibird Sense 產品規格書 v1.0》將 Sense 定義為 Artibird 生態中的環境感知與 Runtime 上下文節點。它為環境感測、人在感測、感測數據完整性、ArtiOS Runtime 參與、本地優先運作、雲端增強監測、Edge-ready 上下文、驗證、認證與商業宣稱邊界，提供受控的工程與系統級參考。

---

## Topic Extension

## 話題延伸

下一個建議寫：

**Artibird Vision Product Specification v1.0**  
**Artibird Vision 產品規格書 v1.0**

它可以統一：

**AI Camera / Visual Sensing Node / Edge Vision Context Node**  
**AI 攝像機 / 視覺感測節點 / 邊緣視覺上下文節點**