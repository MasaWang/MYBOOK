# Artibird Vision Product Specification v1.0

# Artibird Vision 產品規格書 v1.0

**Engineering + System Specification Edition**  
**工程與系統規格書版本**

**Version Date**: 2026-05-08  
**Document Type**: Product Specification  
**Product Category**: AI Camera / Visual Sensing Node / Edge Vision Context Node  
**Hardware Foundation**: Camera Module / Vision SoC / Edge-Ready Visual Sensing Architecture  
**System Architecture**: OceanAI Coordinated Intelligence Architecture  
**Runtime Platform**: ArtiOS-compatible / OceanAI Edge-compatible

**版本日期**：2026-05-08  
**文件類型**：產品規格書  
**產品類別**：AI 攝像機 / 視覺感測節點 / 邊緣視覺上下文節點  
**硬體基礎**：攝像模組 / 視覺 SoC / Edge-ready 視覺感測架構  
**系統架構**：OceanAI 協同智慧架構  
**Runtime 平台**：相容 ArtiOS / 相容 OceanAI Edge

---

# 1. Document Information

# 1. 文件資訊

## English Table

|Item|Description|
|---|---|
|Document Name|Artibird Vision Product Specification|
|Version|v1.0|
|Document Type|Engineering + System Specification|
|Product Name|Artibird Vision|
|Product Category|AI Camera / Visual Sensing Node / Edge Vision Context Node|
|System Architecture|OceanAI Coordinated Intelligence Architecture|
|Runtime Platform|ArtiOS-compatible / OceanAI Edge-compatible|
|Hardware Foundation|Camera module, vision SoC, image sensor, local processing architecture|
|Specification Level|Engineering + System|
|Intended Audience|Hardware, Firmware, Software, AI, Vision, Privacy, System, Testing, Certification, Product Teams|
|Release Date|2026-05-08|

## 中文表

| 項目         | 說明                              |
| ---------- | ------------------------------- |
| 文件名稱       | Artibird Vision 產品規格書           |
| 文件版本       | v1.0                            |
| 文件類型       | 工程與系統規格書                        |
| 產品名稱       | Artibird Vision                 |
| 產品類別       | AI 攝像機 / 視覺感測節點 / 邊緣視覺上下文節點     |
| 系統架構       | OceanAI 協同智慧架構                  |
| Runtime 平台 | 相容 ArtiOS / 相容 OceanAI Edge     |
| 硬體基礎       | 攝像模組、視覺 SoC、圖像感測器、本地處理架構        |
| 規格書層級      | 工程與系統規格                         |
| 適用對象       | 硬體、韌體、軟體、AI、視覺、隱私、系統、測試、認證、產品團隊 |
| 發布日期       | 2026-05-08                      |

---

# 2. Product Overview

# 2. 產品總覽

## EN

Artibird Vision is a visual sensing and edge vision context node designed for the Artibird product ecosystem and the OceanAI coordinated intelligence architecture. It provides image capture, visual event generation, occupancy and activity context, privacy-aware visual processing, and runtime participation for coordinated intelligent environments.

Within the Artibird ecosystem, Vision serves as the visual perception layer. It captures visual information from rooms, classrooms, entrances, corridors, outdoor areas, or operational environments, and converts that visual input into structured runtime context such as motion events, occupancy status, human activity, object presence, area alerts, scene triggers, or security-related signals. Depending on the product variant, Artibird Vision may operate as a local AI camera, edge-connected camera, visual sensor, classroom vision node, security camera, or multi-sensor vision device.

Artibird Vision follows a **local-first, cloud-enhanced** operating model. Local image capture, event detection, privacy-aware processing, Hub-assisted automation, and Edge-assisted visual inference should remain available within the local environment whenever technically feasible. Cloud connectivity extends the system through remote viewing, event history, alert delivery, device lifecycle management, secure backup, multi-site monitoring, and model enhancement. In this role, Artibird Vision becomes the visual perception layer of the OceanAI runtime system.

## ZH-TW

Artibird Vision 是一款面向 Artibird 產品生態與 OceanAI 協同智慧架構設計的視覺感測與邊緣視覺上下文節點。它為協同智慧環境提供圖像採集、視覺事件生成、人在與活動上下文、隱私感知視覺處理，以及 Runtime 參與能力。

在 Artibird 生態中，Vision 承擔視覺感知層角色。它從房間、教室、入口、走廊、戶外區域或運行環境中採集視覺資訊，並將視覺輸入轉換為結構化 Runtime 上下文，例如動作事件、人在狀態、人物活動、物體存在、區域警報、場景觸發或安全相關信號。依產品版本不同，Artibird Vision 可作為本地 AI 攝像機、邊緣連接攝像機、視覺感測器、教室視覺節點、安全攝像機或多感測視覺設備運作。

Artibird Vision 採用 **本地優先、雲端增強** 的運作模式。本地圖像採集、事件檢測、隱私感知處理、Hub 輔助自動化與 Edge 輔助視覺推理，應在技術可行條件下保持於本地環境中可用。雲端連接則透過遠端查看、事件歷史、警報推送、設備生命週期管理、安全備份、多站點監測與模型增強擴展系統能力。在此角色中，Artibird Vision 成為 OceanAI Runtime 系統中的視覺感知層。

---

# 3. System Positioning & Role

# 3. 系統定位與角色

## English Table

|Item|Description|
|---|---|
|System Layer|Visual Perception Layer / Security Context Layer / Edge Vision Layer|
|Primary Role|Captures visual context, generates visual events, supports monitoring, and contributes edge-ready visual data|
|Runtime Participation|Reports visual events, occupancy context, activity context, alerts, device health, and inference results where supported|
|Relationship with Gate|May communicate through Gate or local network path depending on wireless architecture|
|Relationship with Hub|Hub processes visual events, automation triggers, metadata, local access, device state, and synchronization|
|Relationship with Edge|OceanAI Edge may process visual streams, object context, occupancy inference, activity analysis, and VLM-based interpretation|
|Relationship with Cloud|Supports remote viewing, event history, alert delivery, secure backup, lifecycle management, and multi-site monitoring|
|Local-first Capability|Yes|
|Offline Operation Scope|Local recording, local event detection, Hub-assisted automation, and Edge-assisted inference where supported|
|Remote Control Scope|Remote viewing, alert configuration, event review, and cloud-assisted device configuration where enabled|
|System Dependency|Hub-enhanced for state and automation; Edge-enhanced for visual intelligence; cloud-enhanced for remote access and history|

## 中文表

|項目|說明|
|---|---|
|系統層級|視覺感知層 / 安全上下文層 / 邊緣視覺層|
|主要角色|採集視覺上下文、生成視覺事件、支援監測，並提供 Edge-ready 視覺數據|
|Runtime 參與方式|在支援條件下回報視覺事件、人在上下文、活動上下文、警報、設備健康與推理結果|
|與 Gate 的關係|依無線架構可透過 Gate 或本地網路路徑通訊|
|與 Hub 的關係|Hub 處理視覺事件、自動化觸發、元數據、本地存取、設備狀態與同步|
|與 Edge 的關係|OceanAI Edge 可處理視覺流、物體上下文、人在推理、活動分析與基於 VLM 的理解|
|與 Cloud 的關係|支援遠端查看、事件歷史、警報推送、安全備份、生命週期管理與多站點監測|
|本地優先能力|是|
|離線運作範圍|在支援條件下，本地錄像、本地事件檢測、Hub 輔助自動化與 Edge 輔助推理可運作|
|遠端控制範圍|啟用時支援遠端查看、警報配置、事件回看與雲端輔助設備配置|
|系統依賴關係|狀態與自動化由 Hub 增強；視覺智慧由 Edge 增強；遠端存取與歷史由雲端增強|

---

# 4. Core Design Principles

# 4. 核心設計原則

## 4.1 Local-First Runtime Architecture

## 4.1 本地優先 Runtime 架構

**EN**  
Artibird Vision prioritizes local visual sensing and local event responsiveness. Visual event detection, local alerts, privacy-aware processing, and Hub / Edge-assisted automation should remain available locally whenever the deployment architecture permits.

**ZH-TW**  
Artibird Vision 優先保障本地視覺感測與本地事件回應。視覺事件檢測、本地警報、隱私感知處理與 Hub / Edge 輔助自動化，應在部署架構允許的條件下保持本地可用。

## 4.2 Coordinated System Participation

## 4.2 協同式系統參與

**EN**  
Artibird Vision participates as a runtime visual context node. A visual event should not be treated only as a camera notification, but as spatial context that may coordinate lighting, climate, access, security, classroom operation, energy behavior, or emergency response.

**ZH-TW**  
Artibird Vision 作為 Runtime 視覺上下文節點參與運作。一次視覺事件不應只被視為攝像機通知，而應被視為可協同照明、空調、通行、安全、教室運行、能源行為或緊急響應的空間上下文。

## 4.3 Cloud-Enhanced Intelligence

## 4.3 雲端增強智慧

**EN**  
Cloud services may extend Artibird Vision with remote viewing, event timeline, alert delivery, encrypted backup, multi-site monitoring, model update, account management, and lifecycle services. Cloud functions should enhance local vision operation rather than replace local event availability.

**ZH-TW**  
雲端服務可透過遠端查看、事件時間線、警報推送、加密備份、多站點監測、模型更新、帳號管理與生命週期服務來擴展 Artibird Vision。雲端功能應增強本地視覺運作，而不是取代本地事件可用性。

## 4.4 Privacy-Aware Visual Processing

## 4.4 隱私感知視覺處理

**EN**  
Artibird Vision should apply privacy-aware design principles by minimizing unnecessary cloud video transfer, supporting local processing where feasible, defining video retention boundaries, protecting user access, and separating visual metadata from raw video where appropriate.

**ZH-TW**  
Artibird Vision 應採用隱私感知設計原則，包括減少不必要的雲端視頻傳輸、在可行條件下支援本地處理、定義視頻保存邊界、保護用戶存取權限，並在適用情況下將視覺元數據與原始視頻分離。

## 4.5 Distributed Operational Resilience

## 4.5 分布式運作韌性

**EN**  
Artibird Vision should maintain predictable behavior under network instability, Hub disconnection, Edge disconnection, cloud unavailability, storage limitation, camera obstruction, low light, firmware recovery, and runtime load variation.

**ZH-TW**  
Artibird Vision 應在網路不穩定、Hub 斷線、Edge 斷線、雲端不可用、儲存受限、攝像頭遮擋、低照度、韌體恢復與 Runtime 負載變化時保持可預期行為。

## 4.6 Security by Design

## 4.6 安全預設設計

**EN**  
As a visual sensing device, Artibird Vision must apply secure onboarding, authenticated video access, encrypted communication where applicable, protected storage, secure OTA, access logging, role-based control, and protected debug interfaces.

**ZH-TW**  
作為視覺感測設備，Artibird Vision 必須採用安全入網、經身份認證的視頻存取、適用情況下的加密通訊、受保護儲存、安全 OTA、存取日誌、角色權限控制與受保護的 Debug 介面。

---

# 5. Hardware Specification

# 5. 硬體規格

## English Table

|Item|Specification|
|---|---|
|Product Variants|Indoor Vision Node / Outdoor Vision Node / Classroom Vision Node / Edge Vision Camera / Visual Sensor|
|Main Processor / SoC|Vision SoC / ESP32-S3 class vision controller / Linux-based camera SoC / Edge-connected architecture depending on variant|
|Image Sensor|CMOS image sensor, resolution by variant|
|Resolution|1080p / 2K / 4MP / 5MP / 4K depending on product class|
|Lens|Fixed-focus / wide-angle / varifocal depending on variant|
|Field of View|TBD / Validated Value by lens and enclosure|
|Night Vision|IR LED / low-light sensor / optional white light depending on variant|
|Audio Input|Optional microphone, subject to privacy policy and product scope|
|Speaker / Audio Output|Optional speaker or buzzer depending on product class|
|Local Storage|Optional microSD / eMMC / local buffer depending on variant|
|Communication|Wi-Fi / Ethernet / optional BLE provisioning depending on product class|
|Power Source|USB-C DC / PoE / DC wired / AC adapter depending on deployment|
|Edge AI Capability|On-device inference optional; OceanAI Edge-assisted inference supported where architecture permits|
|Privacy Features|Physical privacy shutter / LED indicator / privacy mode optional by variant|
|Sensor Support|Optional PIR, light sensor, microphone, temperature, or tamper sensor|
|Antenna Type|PCB antenna / external antenna variant; RF-safe window required in metal enclosure designs|
|Enclosure Material|Flame-retardant PC / ABS; outdoor variants require weather-rated enclosure|
|Mounting Method|Desktop / wall-mounted / ceiling-mounted / pole-mounted / classroom-mounted / outdoor enclosure|
|Operating Temperature|TBD based on enclosure, sensor, and validation|
|Protection Features|ESD protection, power input protection, thermal protection, watchdog, secure boot, tamper detection where supported|
|Certification Direction|FCC / CE / RoHS; UL / ETL depending on power supply and installation scope|

## 中文表

|項目|規格|
|---|---|
|產品版本|室內視覺節點 / 戶外視覺節點 / 教室視覺節點 / Edge 視覺攝像機 / 視覺感測器|
|主處理器 / SoC|依版本採用視覺 SoC / ESP32-S3 等級視覺控制器 / Linux 攝像機 SoC / Edge-connected 架構|
|圖像感測器|CMOS 圖像感測器，解析度依版本定義|
|解析度|依產品級別可為 1080p / 2K / 4MP / 5MP / 4K|
|鏡頭|依版本採用定焦 / 廣角 / 變焦鏡頭|
|視場角|依鏡頭與外殼驗證定義 TBD / 已驗證數值|
|夜視能力|依版本採用 IR LED / 低照度感測器 / 可選白光補光|
|音訊輸入|可選麥克風，需符合隱私政策與產品範圍|
|揚聲器 / 音訊輸出|依產品級別可選揚聲器或蜂鳴器|
|本地儲存|依版本可選 microSD / eMMC / 本地緩衝|
|通訊方式|依產品級別採用 Wi-Fi / Ethernet / 可選 BLE 配網|
|供電方式|依部署採用 USB-C DC / PoE / DC 有線 / AC 適配器|
|邊緣 AI 能力|可選端側推理；在架構允許條件下支援 OceanAI Edge 輔助推理|
|隱私功能|依版本可選物理隱私遮擋、LED 指示、隱私模式|
|感測器支援|可選 PIR、光感、麥克風、溫度或防拆感測器|
|天線類型|PCB 天線 / 外置天線版本；金屬外殼設計需預留 RF 安全窗口|
|外殼材質|阻燃 PC / ABS；戶外版本需具備天候防護外殼|
|安裝方式|桌面式 / 壁掛式 / 吸頂式 / 桿裝 / 教室安裝 / 戶外外殼|
|工作溫度|依外殼、感測器與驗證確定|
|保護功能|ESD 保護、電源輸入保護、熱保護、Watchdog、Secure Boot、支援條件下的防拆檢測|
|認證方向|FCC / CE / RoHS；依供電與安裝範圍決定 UL / ETL|

---

# 6. Connectivity & Networking

# 6. 連接與網路能力

## EN

Artibird Vision provides localized visual data and event communication for the Artibird ecosystem. Depending on the variant, it may operate as a Wi-Fi camera, Ethernet camera, PoE camera, Edge-connected vision sensor, or privacy-aware visual context node. Its network role should support local video access, visual event reporting, Hub communication, Edge inference, and cloud-assisted monitoring.

For Vision-class products, video latency, event detection latency, stream reliability, image quality, storage reliability, privacy mode behavior, wireless stability, and remote viewing performance must be defined as validated system-level boundaries.

## ZH-TW

Artibird Vision 為 Artibird 生態提供本地化視覺數據與事件通訊能力。依版本不同，它可以作為 Wi-Fi 攝像機、Ethernet 攝像機、PoE 攝像機、Edge-connected 視覺感測器或隱私感知視覺上下文節點運作。其網路角色應支援本地視頻存取、視覺事件回報、Hub 通訊、Edge 推理與雲端輔助監測。

對 Vision 類產品而言，視頻延遲、事件檢測延遲、串流可靠性、圖像品質、儲存可靠性、隱私模式行為、無線穩定性與遠端查看性能，都必須被定義為經驗證的系統級邊界。

## English Table

|Item|Description|
|---|---|
|Primary Connectivity|Wi-Fi / Ethernet / PoE depending on variant|
|Secondary Connectivity|BLE provisioning / USB-C service path optional|
|Runtime Role|Visual sensing node / AI camera / edge vision context node|
|Local Network Access|Through Wi-Fi, Ethernet, Hub, Edge, or local network path depending on architecture|
|Cloud Connectivity|Through Hub, Edge, or direct cloud path depending on product strategy|
|Remote Viewing|Supported where cloud service and security policy are enabled|
|Offline Communication|Local video access, local event detection, and Edge-assisted inference where supported|
|Protocol Support|RTSP / WebRTC / MQTT / HTTP / WebSocket / local API depending on architecture|
|Video Stream|Local stream and remote stream depending on variant and policy|
|Event Metadata|Motion, human presence, object, area alert, tamper, and health metadata where supported|
|Video Latency|TBD / Validated Value|
|Event Detection Latency|TBD / Validated Value|
|Storage Retention|TBD by storage configuration and privacy policy|
|Capacity / Reliability Report|Required before public claims|

## 中文表

|項目|說明|
|---|---|
|主要連接能力|Wi-Fi / Ethernet / PoE，依版本配置|
|次要連接能力|可選 BLE 配網 / USB-C 維護路徑|
|Runtime 角色|視覺感測節點 / AI 攝像機 / 邊緣視覺上下文節點|
|本地網路存取|依架構透過 Wi-Fi、Ethernet、Hub、Edge 或本地網路路徑|
|雲端連接|依產品策略透過 Hub、Edge 或直連雲端路徑|
|遠端查看|在雲端服務與安全策略啟用條件下支援|
|離線通訊|在支援條件下支援本地視頻存取、本地事件檢測與 Edge 輔助推理|
|協議支援|RTSP / WebRTC / MQTT / HTTP / WebSocket / 本地 API，依架構定義|
|視頻串流|依版本與政策支援本地串流與遠端串流|
|事件元數據|在支援條件下生成動作、人在、物體、區域警報、防拆與健康元數據|
|視頻延遲|TBD / 已驗證數值|
|事件檢測延遲|TBD / 已驗證數值|
|儲存保存期|依儲存配置與隱私政策定義|
|容量 / 可靠性報告|公開宣稱前必須具備|

---

# 7. Software & Firmware Architecture

# 7. 軟體與韌體架構

## English Table

|Category|Status|Description|
|---|---|---|
|Runtime Platform|ArtiOS-compatible / OceanAI Edge-compatible|Participates in ArtiOS runtime communication and may provide visual context to OceanAI Edge|
|Firmware / Software Framework|Embedded Linux / RTOS / ESP-IDF / vendor camera SDK depending on hardware|Selected by camera SoC and AI capability|
|OTA Update|Supported|Secure firmware / software update with rollback or recovery strategy recommended|
|Camera Driver Layer|Supported|Interfaces with image sensor, ISP, exposure, gain, frame rate, and image pipeline|
|Video Stream Engine|Supported|Handles local stream, remote stream, encoding, bitrate, frame rate, and stream health|
|Visual Event Engine|Supported|Detects motion, human presence, area intrusion, tamper, or other visual events where implemented|
|AI Inference Engine|Optional / Edge-assisted|On-device inference or OceanAI Edge-assisted inference depending on product variant|
|Metadata Engine|Supported|Converts visual analysis into structured runtime events and metadata|
|Privacy Mode Manager|Recommended|Handles privacy mode, recording control, shutter state, indicator behavior, and retention policy|
|Storage Manager|Optional / Supported by storage variant|Handles local recording, event clips, retention, overwrite, and storage health|
|Event Engine|Supported|Handles visual events, alerts, execution reports, diagnostics, and health status|
|Security Features|Supported|Secure onboarding, authenticated stream access, credential protection, encrypted communication where implemented|
|Diagnostics|Supported|Camera health, network status, storage status, firmware version, image quality, obstruction, and error logs|
|Cloud Client|Optional / architecture-dependent|Handles remote viewing, event history, alert sync, backup, and lifecycle management|
|MQTT Client|Supported where architecture uses MQTT|Communicates visual metadata and events with Artibird Hub / ArtiOS|
|Local Web Service|Optional|Local setup, diagnostics, stream access, privacy settings, or service interface|
|Pairing Manager|Supported|Handles onboarding, binding, room assignment, zone assignment, and reset workflows|

## 中文表

|類別|狀態|說明|
|---|---|---|
|Runtime 平台|相容 ArtiOS / 相容 OceanAI Edge|參與 ArtiOS Runtime 通訊，並可向 OceanAI Edge 提供視覺上下文|
|韌體 / 軟體框架|依硬體採用 Embedded Linux / RTOS / ESP-IDF / 攝像機廠商 SDK|依 Camera SoC 與 AI 能力選擇|
|OTA 更新|支援|建議具備安全韌體 / 軟體更新與回滾 / 恢復策略|
|攝像機驅動層|支援|接入圖像感測器、ISP、曝光、增益、幀率與圖像管線|
|視頻串流引擎|支援|處理本地串流、遠端串流、編碼、碼率、幀率與串流健康|
|視覺事件引擎|支援|在已實作條件下檢測動作、人在、區域入侵、防拆或其他視覺事件|
|AI 推理引擎|選配 / Edge 輔助|依產品版本採用端側推理或 OceanAI Edge 輔助推理|
|元數據引擎|支援|將視覺分析轉換為結構化 Runtime 事件與元數據|
|隱私模式管理器|建議支援|處理隱私模式、錄像控制、遮擋狀態、指示燈行為與保存政策|
|儲存管理器|儲存版本選配 / 支援|處理本地錄像、事件片段、保存期、覆寫與儲存健康|
|事件引擎|支援|處理視覺事件、警報、執行回報、診斷與健康狀態|
|安全功能|支援|安全入網、經身份認證的串流存取、憑證保護、適用情況下的加密通訊|
|診斷功能|支援|攝像機健康、網路狀態、儲存狀態、韌體版本、圖像品質、遮擋與錯誤日誌|
|雲端客戶端|選配 / 依架構|處理遠端查看、事件歷史、警報同步、備份與生命週期管理|
|MQTT Client|採用 MQTT 架構時支援|與 Artibird Hub / ArtiOS 通訊視覺元數據與事件|
|本地 Web 服務|選配|本地設定、診斷、串流存取、隱私設定或維護介面|
|配對管理器|支援|處理入網、綁定、房間分配、區域分配與重置流程|

---

# 8. Runtime Behavior & System Integration

# 8. Runtime 行為與系統整合

## EN

Artibird Vision operates as a visual context-producing node within the local Artibird environment. It captures visual input, generates events or metadata, reports device health, and provides visual context to Hub, ArtiOS, OceanAI Edge, OceanAI Cloud, and App layers.

## ZH-TW

Artibird Vision 作為本地 Artibird 環境中的視覺上下文生成節點運作。它採集視覺輸入，生成事件或元數據，回報設備健康狀態，並向 Hub、ArtiOS、OceanAI Edge、OceanAI Cloud 與 App 層提供視覺上下文。

## English Table

|Topic|Description|
|---|---|
|Device Onboarding & Pairing Flow|Vision is discovered and bound through App, Hub, Edge, or local setup workflow|
|Visual Capture|Captures video frames or image snapshots according to stream, event, or runtime configuration|
|Visual Event Reporting|Reports motion, human presence, area alert, tamper, obstruction, or custom visual events where supported|
|Metadata Generation|Generates structured metadata instead of raw video where appropriate for privacy and runtime efficiency|
|Local Automation Trigger|Visual events may trigger lighting, security, access, classroom, climate, or emergency workflows|
|Command / Configuration Handling|Receives privacy mode, stream quality, alert zones, recording schedule, and sensitivity settings|
|Integration with ArtiOS|Vision events participate in scenes, schedules, automations, and runtime coordination|
|Integration with Hub|Hub stores device state, visual event metadata, automation rules, and local access policies|
|Integration with Edge|Edge may process visual streams for inference, anomaly detection, VLM interpretation, and spatial context|
|Integration with Cloud|Cloud provides remote viewing, event history, alert delivery, secure backup, and lifecycle management|
|App Interaction|App supports setup, live view, event timeline, alert configuration, privacy mode, and device settings|
|Multi-Vision Deployment|Multiple Vision nodes can participate in room-level, corridor-level, campus-level, or outdoor context modeling|

## 中文表

|主題|說明|
|---|---|
|設備入網與配對流程|Vision 透過 App、Hub、Edge 或本地設定流程被發現與綁定|
|視覺採集|根據串流、事件或 Runtime 配置採集視頻幀或圖像快照|
|視覺事件回報|在支援條件下回報動作、人在、區域警報、防拆、遮擋或自定義視覺事件|
|元數據生成|在適用情況下生成結構化元數據，而不是原始視頻，以提升隱私與 Runtime 效率|
|本地自動化觸發|視覺事件可觸發照明、安全、通行、教室、空調或緊急流程|
|指令 / 配置處理|接收隱私模式、串流品質、警報區域、錄像排程與靈敏度設定|
|與 ArtiOS 整合|Vision 事件參與場景、排程、自動化與 Runtime 協同|
|與 Hub 整合|Hub 儲存設備狀態、視覺事件元數據、自動化規則與本地存取策略|
|與 Edge 整合|Edge 可處理視覺流，用於推理、異常檢測、VLM 理解與空間上下文|
|與 Cloud 整合|Cloud 提供遠端查看、事件歷史、警報推送、安全備份與生命週期管理|
|App 互動|App 支援設定、即時查看、事件時間線、警報配置、隱私模式與設備設定|
|多 Vision 部署|多個 Vision 節點可參與房間級、走廊級、校園級或戶外上下文建模|

---

# 9. Data & Event Flow

# 9. 數據與事件流

## EN

Artibird Vision manages bidirectional communication between visual sensing, visual metadata, system automation, local edge inference, and the Artibird / OceanAI runtime system.

Typical flows:

1. Visual Frame → Vision → Local Event Engine
    
2. Visual Event → Vision → Hub → ArtiOS Automation
    
3. Visual Metadata → Hub → OceanAI Edge → Inference Result
    
4. Event Clip → Local Storage / Cloud Backup
    
5. Alert Event → Hub / Cloud → App Notification
    
6. Edge Interpretation → ArtiOS → Lighting / Security / Climate Coordination
    

## ZH-TW

Artibird Vision 管理視覺感測、視覺元數據、系統自動化、本地邊緣推理與 Artibird / OceanAI Runtime 系統之間的雙向通訊。

典型流程：

1. Visual Frame → Vision → Local Event Engine
    
2. Visual Event → Vision → Hub → ArtiOS Automation
    
3. Visual Metadata → Hub → OceanAI Edge → Inference Result
    
4. Event Clip → Local Storage / Cloud Backup
    
5. Alert Event → Hub / Cloud → App Notification
    
6. Edge Interpretation → ArtiOS → Lighting / Security / Climate Coordination
    

## English Table

|Flow Type|Direction|Description|
|---|---|---|
|Visual Stream|Vision → App / Hub / Edge|Local or remote visual stream depending on policy and architecture|
|Visual Event|Vision → Hub / ArtiOS|Motion, human presence, area alert, tamper, obstruction, or custom event|
|Visual Metadata|Vision / Hub → Edge|Structured event metadata, object context, occupancy context, or scene context|
|Local Automation|Vision → Hub → Devices|Vision-triggered lighting, security, climate, access, or classroom action|
|Cloud Sync|Hub / Vision → Cloud|Event history, metadata, clips, configuration, alerts, and lifecycle data|
|Edge Inference|Vision / Hub → Edge → ArtiOS|AI / VLM-assisted interpretation and runtime decision|
|Health Report|Vision → Hub / Cloud|Network, camera, storage, stream, firmware, obstruction, and error status|
|Configuration Flow|App / Hub / Cloud → Vision|Stream quality, privacy mode, detection zone, sensitivity, schedule, and alert rules|

## 中文表

|流類型|方向|說明|
|---|---|---|
|視覺串流|Vision → App / Hub / Edge|依政策與架構提供本地或遠端視覺串流|
|視覺事件|Vision → Hub / ArtiOS|動作、人在、區域警報、防拆、遮擋或自定義事件|
|視覺元數據|Vision / Hub → Edge|結構化事件元數據、物體上下文、人在上下文或場景上下文|
|本地自動化|Vision → Hub → 設備|由 Vision 觸發的照明、安全、空調、通行或教室動作|
|雲端同步|Hub / Vision → Cloud|事件歷史、元數據、片段、配置、警報與生命週期數據|
|Edge 推理|Vision / Hub → Edge → ArtiOS|AI / VLM 輔助理解與 Runtime 決策|
|健康回報|Vision → Hub / Cloud|網路、攝像機、儲存、串流、韌體、遮擋與錯誤狀態|
|配置流|App / Hub / Cloud → Vision|串流品質、隱私模式、檢測區域、靈敏度、排程與警報規則|

---

# 10. Safety, Reliability & Failure Behavior

# 10. 安全、可靠性與故障行為

## EN

Artibird Vision must maintain predictable behavior under abnormal operating conditions. Since visual data may trigger security, access, classroom, and environmental automation, privacy protection, data validity, alert reliability, storage integrity, and safe automation boundaries are critical.

## ZH-TW

Artibird Vision 必須在異常運作條件下保持可預期行為。由於視覺數據可能觸發安全、通行、教室與環境自動化，隱私保護、數據有效性、警報可靠性、儲存完整性與安全自動化邊界非常重要。

## English Table

|Item|Description|
|---|---|
|Watchdog|Detects firmware or service lockup and triggers recovery|
|Brownout Detection|Detects voltage instability and protects runtime behavior where supported|
|Video Validity Check|Detects black frame, frozen frame, overexposure, underexposure, or image pipeline failure|
|Obstruction Detection|Detects lens cover, obstruction, severe dirt, or abnormal visibility where supported|
|False Alert Handling|Applies zone filtering, sensitivity control, multi-frame confirmation, or sensor fusion where applicable|
|Privacy Mode Behavior|Defines camera-off, shutter, indicator, recording disable, and metadata behavior|
|Storage Failure Handling|Reports full storage, write failure, corrupted clips, or media failure where supported|
|Fail-Safe Behavior|Prevents unsafe automation based on invalid, uncertain, or privacy-disabled visual data|
|Power Failure Recovery|Restores configuration, stream settings, privacy mode, recording policy, and runtime state after reboot|
|OTA Failure Recovery|Supports rollback or safe firmware recovery strategy|
|Hub / Edge Disconnection Behavior|Maintains local visual event logic where supported and attempts reconnection|
|Cloud Disconnection Behavior|Maintains local operation and resynchronizes after recovery|
|Security Mechanisms|Authentication, stream authorization, encrypted communication where applicable, secure pairing, secure OTA|
|Debug Protection|Production system should disable or protect debug interfaces|

## 中文表

|項目|說明|
|---|---|
|Watchdog|偵測韌體或服務鎖死並觸發恢復|
|低壓檢測|在支援條件下偵測電壓不穩並保護 Runtime 行為|
|視頻有效性檢查|偵測黑畫面、畫面凍結、過曝、欠曝或圖像管線失效|
|遮擋檢測|在支援條件下偵測鏡頭遮蓋、遮擋、嚴重污損或異常可視狀態|
|誤警處理|在適用情況下採用區域過濾、靈敏度控制、多幀確認或感測融合|
|隱私模式行為|定義攝像關閉、遮擋、指示燈、錄像停用與元數據行為|
|儲存失效處理|在支援條件下回報儲存已滿、寫入失敗、片段損壞或介質失效|
|故障安全行為|防止基於無效、不確定或隱私停用的視覺數據觸發不安全自動化|
|斷電恢復|重啟後恢復配置、串流設定、隱私模式、錄像政策與 Runtime 狀態|
|OTA 失敗恢復|支援回滾或安全韌體恢復策略|
|Hub / Edge 斷線行為|在支援條件下維持本地視覺事件邏輯並嘗試重新連接|
|雲端斷線行為|維持本地運作，並於恢復後重新同步|
|安全機制|身份認證、串流授權、適用情況下的加密通訊、安全配對、安全 OTA|
|Debug 保護|量產系統應停用或保護 Debug 介面|

---

# 11. Installation, Deployment & Maintenance

# 11. 安裝、部署與維護

## English Table

|Item|Description|
|---|---|
|Installation Method|Desktop / wall-mounted / ceiling-mounted / pole-mounted / outdoor enclosure / classroom-mounted|
|Deployment Scenario|Home / classroom / office / corridor / entrance / campus / smart building / agriculture / infrastructure|
|Installer Type|End user for simple indoor variants; technician or system integrator for outdoor, PoE, ceiling, or multi-camera deployments|
|Power Requirement|USB-C DC / PoE / DC wired / AC adapter depending on variant|
|Network Requirement|Wi-Fi / Ethernet / PoE depending on variant|
|Placement Requirement|Clear field of view, privacy-sensitive placement review, lighting condition validation, and network coverage|
|Mounting Requirement|Stand, wall bracket, ceiling bracket, pole mount, screw mount, outdoor enclosure, or anti-tamper mount|
|Calibration Requirement|Field of view, detection zones, privacy zones, image quality, and AI sensitivity configuration|
|LED / Indicator Function|Power, recording, privacy mode, network, local mode, cloud status, fault|
|Button Function|Reset, pairing, privacy mode, local mode, factory reset|
|Maintenance Method|Artibird App, Hub console, Edge console, cloud console, local service interface, physical reset|
|Firmware / Software Update Method|OTA / local update / service tool depending on variant|
|Replacement Procedure|Vision replacement, room / zone binding, privacy zone restore, detection rule restore, re-pairing workflow|
|Service Access|Controlled admin or service access required|

## 中文表

|項目|說明|
|---|---|
|安裝方式|桌面式 / 壁掛式 / 吸頂式 / 桿裝 / 戶外外殼 / 教室安裝|
|部署場景|住宅 / 教室 / 辦公室 / 走廊 / 入口 / 校園 / 智慧建築 / 農業 / 基礎設施|
|安裝人員類型|簡單室內版本可由用戶安裝；戶外、PoE、吸頂或多攝像機部署需技術員或系統整合商|
|供電要求|依版本採用 USB-C DC / PoE / DC 有線 / AC 適配器|
|網路要求|依版本採用 Wi-Fi / Ethernet / PoE|
|放置要求|需具備清晰視野、隱私敏感位置審查、照明條件驗證與網路覆蓋|
|固定要求|支架、壁掛支架、吸頂支架、桿裝、螺絲固定、戶外外殼或防拆安裝|
|校準要求|配置視場角、檢測區域、隱私區域、圖像品質與 AI 靈敏度|
|LED / 指示功能|電源、錄像、隱私模式、網路、本地模式、雲端狀態、故障|
|按鍵功能|重置、配對、隱私模式、本地模式、恢復出廠設定|
|維護方式|Artibird App、Hub Console、Edge Console、Cloud Console、本地維護介面、實體重置|
|韌體 / 軟體更新方式|依版本採用 OTA / 本地更新 / 維護工具|
|更換流程|Vision 替換、房間 / 區域綁定、隱私區域恢復、檢測規則恢復、重新配對流程|
|服務存取|必須具備受控管理員或維護存取|

---

# 12. Testing, Validation & Certification

# 12. 測試、驗證與認證

## EN

Artibird Vision must be validated as a visual sensing device, runtime context node, security-related device, and edge-ready vision data source. Testing must cover image quality, stream reliability, event detection accuracy, false alert rate, privacy mode behavior, storage reliability, local inference, Edge integration, Hub integration, cloud synchronization, security, and long-duration reliability.

## ZH-TW

Artibird Vision 必須作為視覺感測設備、Runtime 上下文節點、安全相關設備與 Edge-ready 視覺數據來源進行驗證。測試必須涵蓋圖像品質、串流可靠性、事件檢測精度、誤警率、隱私模式行為、儲存可靠性、本地推理、Edge 整合、Hub 整合、雲端同步、安全與長時間可靠性。

## English Table

|Test Category|Objective|
|---|---|
|Functional Test|Verify Vision core functions, stream, event reporting, alerts, and state reports|
|Image Quality Test|Verify resolution, sharpness, exposure, color, low-light performance, and lens distortion|
|Stream Reliability Test|Verify local stream, remote stream, bitrate, frame rate, latency, and reconnect behavior|
|Visual Event Test|Verify motion, human presence, area alert, tamper, obstruction, or supported visual events|
|Detection Accuracy Test|Verify true positive, false positive, false negative, and detection latency under defined scenarios|
|Privacy Mode Test|Verify camera-off behavior, shutter, indicator, recording disable, and metadata policy|
|Storage Test|Verify local recording, event clip retention, overwrite behavior, corruption handling, and storage health|
|Night Vision Test|Verify IR illumination, low-light visibility, reflection, and image usability|
|Network Test|Verify Wi-Fi / Ethernet / PoE connectivity, reconnect, bandwidth, and local communication|
|Local Control Test|Verify visual event-triggered automation and Hub-assisted execution|
|Edge Integration Test|Verify video stream, metadata, inference request, and VLM-ready data interface with OceanAI Edge|
|Hub Integration Test|Verify communication with Artibird Hub and ArtiOS services|
|Cloud Sync Test|Verify remote viewing, event history, metadata, alerts, account, logs, and lifecycle synchronization|
|Security Test|Verify authentication, stream authorization, encryption, credential protection, access logs, and debug protection|
|Stress Test|Verify long-duration streaming, recording, event detection, and high-frequency alert behavior|
|OTA Test|Verify firmware / software update, rollback, and recovery behavior|
|Reliability Test|Verify stability under power, network, storage, camera, low light, thermal, and runtime variation|
|Certification Test|Verify compliance for FCC, CE, RoHS, UL / ETL where applicable|
|Claim Validation|Verify public product claims with formal test evidence|

## 中文表

|測試類別|目標|
|---|---|
|功能測試|驗證 Vision 核心功能、串流、事件回報、警報與狀態回報|
|圖像品質測試|驗證解析度、銳度、曝光、色彩、低照度性能與鏡頭畸變|
|串流可靠性測試|驗證本地串流、遠端串流、碼率、幀率、延遲與重連行為|
|視覺事件測試|驗證動作、人在、區域警報、防拆、遮擋或受支援視覺事件|
|檢測精度測試|在明確場景下驗證真陽性、假陽性、假陰性與檢測延遲|
|隱私模式測試|驗證攝像關閉、遮擋、指示燈、錄像停用與元數據政策|
|儲存測試|驗證本地錄像、事件片段保存、覆寫行為、損壞處理與儲存健康|
|夜視測試|驗證 IR 補光、低照度可視性、反射與圖像可用性|
|網路測試|驗證 Wi-Fi / Ethernet / PoE 連接、重連、頻寬與本地通訊|
|本地控制測試|驗證視覺事件觸發的自動化與 Hub 輔助執行|
|Edge 整合測試|驗證與 OceanAI Edge 的視頻流、元數據、推理請求與 VLM-ready 數據介面|
|Hub 整合測試|驗證與 Artibird Hub 及 ArtiOS 服務的通訊|
|雲端同步測試|驗證遠端查看、事件歷史、元數據、警報、帳號、日誌與生命週期同步|
|安全測試|驗證身份認證、串流授權、加密、憑證保護、存取日誌與 Debug 保護|
|壓力測試|驗證長時間串流、錄像、事件檢測與高頻警報行為|
|OTA 測試|驗證韌體 / 軟體更新、回滾與恢復行為|
|可靠性測試|驗證電源、網路、儲存、攝像機、低照度、熱與 Runtime 變化下的穩定性|
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
|UL / ETL|Required where power supply, installation, or electrical safety scope applies|
|Cybersecurity Labeling|Strongly recommended depending on market and retail channel|
|Wi-Fi Certification|Optional depending on commercial strategy|
|Bluetooth Qualification|Required if using Bluetooth branding|
|Privacy / Data Protection Review|Required for camera and visual data products|
|ONVIF / RTSP Compatibility|Optional depending on product strategy and ecosystem claim|

|認證|適用範圍|
|---|---|
|FCC|美國無線市場需要|
|CE|歐盟市場需要|
|RoHS|環保合規|
|REACH|歐盟市場建議|
|UL / ETL|若涉及供電、安裝或電氣安全範圍則需要|
|網路安全標籤|依市場與零售渠道強烈建議|
|Wi-Fi 認證|依商業策略選配|
|Bluetooth 資格認證|若使用 Bluetooth 品牌則需要|
|隱私 / 數據保護審查|攝像機與視覺數據產品必須進行|
|ONVIF / RTSP 相容性|依產品策略與生態宣稱選配|

---

# 13. Product Variants

# 13. 產品版本

## English Table

|Variant / SKU|Hardware Difference|Software Difference|Market / Region|Certification Difference|Notes|
|---|---|---|---|---|---|
|Artibird Vision Indoor|Indoor camera, Wi-Fi, local event detection|Indoor monitoring and event profile|Home / office / classroom|FCC / CE / RoHS|General indoor visual sensing|
|Artibird Vision Outdoor|Weather-rated enclosure, IR night vision, stronger mounting|Outdoor event and weather profile|Outdoor / entrance / campus|Environmental and enclosure validation|Requires outdoor validation|
|Artibird Vision Edge|Edge-connected camera or Edge-ready visual node|Edge inference and metadata profile|Smart building / campus / AI deployment|Edge integration validation|Designed for OceanAI Edge|
|Artibird Vision Classroom|Classroom-mounted vision node|Classroom occupancy and safety profile|Education / classroom / campus|Privacy and deployment validation|Focused on classroom operation|
|Artibird Vision Security|Security-oriented camera with storage and alert functions|Security event and alert profile|Home / building / campus|Cybersecurity and storage validation|Security monitoring use|
|Artibird Vision Multi|Camera + PIR / audio / light / temperature optional|Multi-sensor fusion profile|Home / office / building|Multi-sensor validation required|Rich visual context node|
|Artibird Vision PoE|Ethernet / PoE camera form|Wired stream and enterprise deployment profile|Building / campus / infrastructure|PoE and EMC validation|Professional deployment|

## 中文表

|版本 / SKU|硬體差異|軟體差異|市場 / 地區|認證差異|備註|
|---|---|---|---|---|---|
|Artibird Vision Indoor|室內攝像機、Wi-Fi、本地事件檢測|室內監測與事件配置|住宅 / 辦公室 / 教室|FCC / CE / RoHS|通用室內視覺感測|
|Artibird Vision Outdoor|天候防護外殼、IR 夜視、增強安裝結構|戶外事件與天候配置|戶外 / 入口 / 校園|需環境與外殼驗證|需要戶外驗證|
|Artibird Vision Edge|Edge-connected 攝像機或 Edge-ready 視覺節點|Edge 推理與元數據配置|智慧建築 / 校園 / AI 部署|需 Edge 整合驗證|面向 OceanAI Edge|
|Artibird Vision Classroom|教室安裝視覺節點|教室人在與安全配置|教育 / 教室 / 校園|需隱私與部署驗證|面向教室運行|
|Artibird Vision Security|具儲存與警報功能的安全攝像機|安全事件與警報配置|住宅 / 建築 / 校園|需網路安全與儲存驗證|安全監測用途|
|Artibird Vision Multi|攝像機 + 可選 PIR / 音訊 / 光感 / 溫度|多感測融合配置|住宅 / 辦公室 / 建築|需多感測驗證|豐富視覺上下文節點|
|Artibird Vision PoE|Ethernet / PoE 攝像機形態|有線串流與企業部署配置|建築 / 校園 / 基礎設施|需 PoE 與 EMC 驗證|專業部署版本|

---

# 14. Commercial Positioning

# 14. 商業定位

## EN

Artibird Vision is positioned as the visual perception node for coordinated intelligent environments. It allows the system to understand activity, presence, security context, spatial usage, and visual events, enabling lighting, climate, safety, classroom operation, and energy behavior to respond with greater awareness.

## ZH-TW

Artibird Vision 被定位為協同智慧空間中的視覺感知節點。它使系統能夠理解活動、人在、安全上下文、空間使用與視覺事件，使照明、空調、安全、教室運行與能源行為能夠以更高感知能力回應。

## English Table

|Item|Description|
|---|---|
|Target Market|Residential, classroom, office, campus, smart building, security, agriculture, infrastructure|
|Key Selling Points|Visual sensing, local-first event detection, privacy-aware processing, OceanAI Edge integration, cloud-enhanced monitoring|
|Use Cases|Security monitoring, classroom awareness, occupancy context, lighting automation, entrance alerts, visual event history, edge AI analysis|
|Compatibility Statement|Designed for Artibird Hub, Artibird Gate, ArtiOS, OceanAI Cloud, OceanAI Edge, Artibird App, and supported automation flows|
|Local-first Statement|Visual event detection and supported local automation remain available where deployment architecture permits|
|Cloud-enhanced Statement|Cloud adds remote viewing, event history, alerts, secure backup, multi-site monitoring, and lifecycle management|
|Remote Viewing Statement|Remote viewing requires OceanAI Cloud connectivity, account binding, network availability, and supported product variant|
|Privacy Statement|Video, metadata, storage, and remote access behavior must follow defined privacy and data protection policy|
|Detection Claim|Must reference Visual Detection Validation Report|
|Prohibited Claims|Perfect human detection, medical-grade analysis, unrestricted surveillance, unencrypted remote viewing, unlimited cloud storage, unvalidated AI accuracy|

## 中文表

|項目|說明|
|---|---|
|目標市場|住宅、教室、辦公室、校園、智慧建築、安全、農業、基礎設施|
|核心賣點|視覺感測、本地優先事件檢測、隱私感知處理、OceanAI Edge 整合、雲端增強監測|
|使用場景|安全監測、教室感知、人在上下文、照明自動化、入口警報、視覺事件歷史、Edge AI 分析|
|相容性聲明|面向 Artibird Hub、Artibird Gate、ArtiOS、OceanAI Cloud、OceanAI Edge、Artibird App 與受支援自動化流程設計|
|本地優先聲明|在部署架構允許條件下，視覺事件檢測與受支援本地自動化保持可用|
|雲端增強聲明|雲端增加遠端查看、事件歷史、警報、安全備份、多站點監測與生命週期管理|
|遠端查看聲明|遠端查看需要 OceanAI Cloud 連接、帳號綁定、網路可用與受支援產品版本|
|隱私聲明|視頻、元數據、儲存與遠端存取行為必須遵循已定義的隱私與數據保護政策|
|檢測宣稱|必須引用視覺檢測驗證報告|
|禁止宣稱|完美人體檢測、醫療級分析、無限制監控、未加密遠端查看、無限制雲儲存、未驗證 AI 精度|

---

# 15. Engineering Claim Policy

# 15. 工程宣稱政策

## Mandatory Statement

## 強制聲明

**EN**  
All Artibird Vision performance claims, especially image quality, visual detection accuracy, AI inference capability, video latency, stream reliability, storage retention, remote viewing performance, privacy behavior, cybersecurity, and reliability, must be based on validated test reports under defined conditions. Camera sensor datasheet values, model benchmark numbers, or ideal laboratory AI performance shall not be used as product claims.

**ZH-TW**  
所有 Artibird Vision 性能宣稱，尤其是圖像品質、視覺檢測精度、AI 推理能力、視頻延遲、串流可靠性、儲存保存期、遠端查看性能、隱私行為、網路安全與可靠性，必須基於明確條件下的已驗證測試報告。攝像頭感測器資料手冊數值、模型基準分數或理想實驗室 AI 性能，不得直接作為產品宣稱。

## English Table — Claim Policy

|Claim Type|Requirement|
|---|---|
|Image Quality|Must reference resolution, lighting condition, lens, compression, frame rate, and test method|
|Visual Detection Accuracy|Must reference detection scenario, target type, lighting, angle, distance, false positive rate, and false negative rate|
|AI Inference Capability|Must define on-device, Edge-assisted, or cloud-assisted inference boundary|
|Video Latency|Must reference local or remote path, network condition, codec, resolution, and bitrate|
|Stream Reliability|Must reference duration, reconnect behavior, bandwidth, and concurrent viewer conditions|
|Storage Retention|Must define storage size, recording mode, clip length, overwrite policy, and privacy policy|
|Remote Viewing|Must define cloud, account, network, region, and security dependency|
|Privacy Mode|Must define exact camera, recording, metadata, indicator, and access behavior|
|Cybersecurity|Must reference authentication, encryption, access logs, credential storage, and test evidence|
|Local-first Capability|Must define exact offline visual functions and dependency conditions|
|Compatibility|Must define supported platforms, protocols, mounting types, power conditions, and network environments|

## 中文表 — 宣稱政策

|宣稱類型|要求|
|---|---|
|圖像品質|必須引用解析度、照明條件、鏡頭、壓縮、幀率與測試方法|
|視覺檢測精度|必須引用檢測場景、目標類型、照明、角度、距離、誤報率與漏報率|
|AI 推理能力|必須定義端側推理、Edge 輔助推理或雲端輔助推理邊界|
|視頻延遲|必須引用本地或遠端路徑、網路條件、編碼、解析度與碼率|
|串流可靠性|必須引用測試時長、重連行為、頻寬與併發查看條件|
|儲存保存期|必須定義儲存容量、錄像模式、片段長度、覆寫策略與隱私政策|
|遠端查看|必須定義雲端、帳號、網路、區域與安全依賴|
|隱私模式|必須定義攝像、錄像、元數據、指示燈與存取行為|
|網路安全|必須引用身份認證、加密、存取日誌、憑證儲存與測試證據|
|本地優先能力|必須定義具體離線視覺功能與依賴條件|
|相容性|必須定義支援平台、協議、安裝類型、供電條件與網路環境|

---

# 16. Revision History

# 16. 版本記錄

## English Table

|Version|Date|Author|Description|
|---|---|---|---|
|v1.0|2026-05-08|OceanAI / Artibird Product Team|Initial Artibird Vision Product Specification based on Artibird Product Specification Template v1.1|

## 中文表

| 版本 | 日期 | 作者 | 說明 |  
|---|---|---|  
| v1.0 | 2026-05-08 | OceanAI / Artibird Product Team | 基於 Artibird 產品規格書標準模板 v1.1 建立的 Artibird Vision 初始產品規格書 |

---

# Appendix A — Terminology

# 附錄 A｜術語對照表

|English Term|中文術語|Definition|
|---|---|---|
|Artibird Vision|Artibird Vision|Visual sensing and edge vision context node for coordinated intelligent environments|
|Visual Perception|視覺感知|Capture and interpretation of visual information from physical environments|
|Visual Metadata|視覺元數據|Structured information derived from visual input, such as motion, object, occupancy, or event data|
|Edge Vision|邊緣視覺|Visual processing performed locally or through OceanAI Edge rather than relying only on cloud processing|
|VLM|視覺語言模型|Model capable of interpreting visual content with language-based reasoning or description|
|Privacy Mode|隱私模式|Operational mode that limits or disables video capture, recording, streaming, or metadata generation|
|Event Clip|事件片段|Short video segment associated with a detected event|
|Detection Zone|檢測區域|User-defined visual region used for event detection or filtering|
|Local-first|本地優先|Core functions are designed to operate locally whenever possible|
|Cloud-enhanced|雲端增強|Cloud services extend local operation with remote, sync, analytics, or AI capabilities|

---

# Appendix B — Risk Register

# 附錄 B｜風險登記表

## English Table

|Risk ID|Risk Description|Impact|Mitigation|
|---|---|---|---|
|R-VISION-001|Overclaiming AI detection accuracy based on benchmark or lab result|High|Require Visual Detection Validation Report under real deployment conditions|
|R-VISION-002|Privacy risk from unnecessary video upload or unclear retention|High|Define privacy mode, retention policy, access control, and local-first processing boundaries|
|R-VISION-003|Unauthorized remote viewing|High|Enforce authentication, stream authorization, encryption, and access logging|
|R-VISION-004|False alerts under lighting, motion, weather, or reflection variation|Medium / High|Validate detection scenarios and apply zone filtering or sensor fusion|
|R-VISION-005|Storage failure causes missing events|Medium / High|Implement storage health checks, overwrite policy, and failure reporting|
|R-VISION-006|Cloud dependency weakens local-first positioning|High|Clearly separate local vision events and cloud-enhanced monitoring|
|R-VISION-007|Edge inference overload or latency|Medium / High|Define Edge workload boundary and fallback policy|
|R-VISION-008|Unclear audio recording behavior|High|Define microphone scope, user consent, indicator behavior, and privacy policy|
|R-VISION-009|Outdoor enclosure or low-light performance overclaimed|Medium / High|Validate enclosure rating, night vision, lens, and image quality|
|R-VISION-010|Product language exceeds tested capability|High|Apply Engineering Claim Policy|

## 中文表

|風險 ID|風險描述|影響|緩解措施|
|---|---|---|---|
|R-VISION-001|基於基準測試或實驗室結果過度宣稱 AI 檢測精度|高|必須在真實部署條件下取得視覺檢測驗證報告|
|R-VISION-002|不必要視頻上傳或不清晰保存政策造成隱私風險|高|定義隱私模式、保存政策、存取控制與本地優先處理邊界|
|R-VISION-003|未授權遠端查看|高|強制身份認證、串流授權、加密與存取日誌|
|R-VISION-004|照明、動作、天氣或反射變化造成誤警|中 / 高|驗證檢測場景並採用區域過濾或感測融合|
|R-VISION-005|儲存失效導致事件缺失|中 / 高|實作儲存健康檢查、覆寫策略與失效回報|
|R-VISION-006|雲端依賴削弱本地優先定位|高|清楚區分本地視覺事件與雲端增強監測|
|R-VISION-007|Edge 推理過載或延遲|中 / 高|定義 Edge 工作負載邊界與回退策略|
|R-VISION-008|音訊錄製行為不清晰|高|定義麥克風範圍、用戶同意、指示行為與隱私政策|
|R-VISION-009|戶外外殼或低照度性能過度宣稱|中 / 高|驗證外殼等級、夜視、鏡頭與圖像品質|
|R-VISION-010|產品語言超出已測試能力|高|套用工程宣稱政策|

---

# Appendix C — Validation Checklist

# 附錄 C｜驗證清單

## English Table

|Checklist Item|Required|Status|Evidence|
|---|---|---|---|
|Hardware specification completed|Yes|TBD|Schematic / BOM / enclosure design|
|Camera firmware / software architecture completed|Yes|TBD|Firmware / software design document|
|Image quality validated|Yes|TBD|Image Quality Validation Report|
|Stream reliability validated|Yes|TBD|Stream Reliability Test Report|
|Visual detection validated|If claimed|TBD|Visual Detection Validation Report|
|Privacy mode validated|Yes|TBD|Privacy Behavior Test Report|
|Storage behavior validated|If storage is included|TBD|Storage Test Report|
|Night vision validated|If included|TBD|Night Vision Test Report|
|Local-first behavior validated|Yes|TBD|Local operation test report|
|Hub integration validated|Yes|TBD|Hub integration test|
|Edge integration validated|If applicable|TBD|Edge integration test|
|Cloud-enhanced behavior validated|Yes|TBD|Cloud integration test|
|Remote viewing validated|If applicable|TBD|App / cloud viewing test|
|Security mechanisms validated|Yes|TBD|Security test report|
|OTA update validated|Yes|TBD|OTA test report|
|Failure behavior validated|Yes|TBD|Reliability test report|
|Privacy and data protection reviewed|Yes|TBD|Privacy review record|
|Certification path defined|Yes|TBD|Certification plan|
|Commercial claims reviewed|Yes|TBD|Claim review record|

## 中文表

|檢查項目|是否必要|狀態|證據|
|---|---|---|---|
|硬體規格已完成|是|TBD|原理圖 / BOM / 外殼設計|
|攝像機韌體 / 軟體架構已完成|是|TBD|韌體 / 軟體設計文件|
|圖像品質已驗證|是|TBD|圖像品質驗證報告|
|串流可靠性已驗證|是|TBD|串流可靠性測試報告|
|視覺檢測已驗證|如有宣稱則需要|TBD|視覺檢測驗證報告|
|隱私模式已驗證|是|TBD|隱私行為測試報告|
|儲存行為已驗證|若包含儲存則需要|TBD|儲存測試報告|
|夜視已驗證|若包含夜視則需要|TBD|夜視測試報告|
|本地優先行為已驗證|是|TBD|本地運作測試報告|
|Hub 整合已驗證|是|TBD|Hub 整合測試|
|Edge 整合已驗證|如適用|TBD|Edge 整合測試|
|雲端增強行為已驗證|是|TBD|雲端整合測試|
|遠端查看已驗證|如適用|TBD|App / 雲端查看測試|
|安全機制已驗證|是|TBD|安全測試報告|
|OTA 更新已驗證|是|TBD|OTA 測試報告|
|故障行為已驗證|是|TBD|可靠性測試報告|
|隱私與數據保護已審查|是|TBD|隱私審查記錄|
|認證路線已定義|是|TBD|認證計畫|
|商業宣稱已審查|是|TBD|宣稱審查記錄|

---

# Document End

# 文件結束

## EN

This Artibird Vision Product Specification v1.0 defines Vision as the visual perception and edge vision context node of the Artibird ecosystem. It provides a controlled engineering and system-level reference for image capture, visual event generation, visual metadata, privacy-aware processing, ArtiOS runtime participation, OceanAI Edge integration, local-first operation, cloud-enhanced monitoring, validation, certification, and commercial claim boundaries.

## ZH-TW

本《Artibird Vision 產品規格書 v1.0》將 Vision 定義為 Artibird 生態中的視覺感知與邊緣視覺上下文節點。它為圖像採集、視覺事件生成、視覺元數據、隱私感知處理、ArtiOS Runtime 參與、OceanAI Edge 整合、本地優先運作、雲端增強監測、驗證、認證與商業宣稱邊界，提供受控的工程與系統級參考。

---

## Topic Extension

## 話題延伸

下一個建議整理：

**Artibird Product Specification Master Index v1.0**  
**Artibird 產品規格書總索引 v1.0**

它可以把目前已完成的：

**Gate / Hub / Sync / Switch / Panel / Act / Sense / Vision**  
**網關 / 中樞 / 同步器 / 開關 / 面板 / 執行節點 / 感測節點 / 視覺節點**

統一成一份完整的產品規格書目錄與版本管理表。