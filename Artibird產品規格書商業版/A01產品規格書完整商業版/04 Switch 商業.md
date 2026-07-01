# Artibird Switch Commercial Specification v1.0

# Artibird Switch 商業規格書 v1.0

**Commercial + Marketing + Channel Enablement Edition**  
**商業、行銷與渠道賦能版本**

**Version Date**: 2026-05-08  
**Document Type**: Commercial Specification  
**Product Family**: Artibird Series  
**Product Category**: Smart Switch / Event Node / Scene Trigger Node / Relay Control Node  
**System Architecture**: OceanAI Coordinated Intelligence Architecture  
**Runtime Ecosystem**: ArtiOS / Artibird Hub / Artibird Gate / OceanAI Edge / OceanAI Cloud  
**Hardware Foundation**: ESP32-C3 zero-neutral switch architecture / nRF52833 battery-powered event switch architecture

**版本日期**：2026-05-08  
**文件類型**：商業規格書  
**產品家族**：Artibird 系列  
**產品類別**：智慧開關 / 事件節點 / 場景觸發節點 / 繼電器控制節點  
**系統架構**：OceanAI 協同智慧架構  
**Runtime 生態**：ArtiOS / Artibird Hub / Artibird Gate / OceanAI Edge / OceanAI Cloud  
**硬體基礎**：ESP32-C3 零火智慧開關架構 / nRF52833 電池事件開關架構

---

# 1. Document Information

# 1. 文件資訊

## English Table

|Item|Description|
|---|---|
|Document Name|Artibird Switch Commercial Specification|
|Version|v1.0|
|Document Type|Commercial + Marketing + Channel Specification|
|Product Name|Artibird Switch|
|Product Category|Smart Switch / Event Node / Scene Trigger Node / Relay Control Node|
|Product Family|Artibird Series|
|Hardware Foundation|ESP32-C3 zero-neutral switch architecture / nRF52833 battery-powered event switch architecture|
|System Architecture|OceanAI Coordinated Intelligence Architecture|
|Runtime Ecosystem|ArtiOS / Artibird Hub / Artibird Gate / OceanAI Edge / OceanAI Cloud|
|Related Engineering Specification|Artibird Switch Product Specification v1.0|
|Intended Audience|Sales, Marketing, Channel Partners, Retail Teams, System Integrators, Business Development Teams|
|Release Date|2026-05-08|
|Approval Status|Draft / Internal Review|

## 中文表

|項目|說明|
|---|---|
|文件名稱|Artibird Switch 商業規格書|
|文件版本|v1.0|
|文件類型|商業、行銷與渠道規格書|
|產品名稱|Artibird Switch|
|產品類別|智慧開關 / 事件節點 / 場景觸發節點 / 繼電器控制節點|
|產品家族|Artibird 系列|
|硬體基礎|ESP32-C3 零火智慧開關架構 / nRF52833 電池事件開關架構|
|系統架構|OceanAI 協同智慧架構|
|Runtime 生態|ArtiOS / Artibird Hub / Artibird Gate / OceanAI Edge / OceanAI Cloud|
|對應工程規格書|Artibird Switch 產品規格書 v1.0|
|適用對象|銷售、行銷、渠道合作夥伴、零售團隊、系統整合商、商務拓展團隊|
|發布日期|2026-05-08|
|核准狀態|草稿 / 內部審閱|

---

# 2. Commercial Positioning

# 2. 商業定位

## 2.1 Hero Tagline

## 2.1 主標語

**EN**  
Touch, trigger, and coordinate intelligent spaces.

**ZH-TW**  
觸控、觸發，協同智慧空間。

---

## 2.2 Primary Positioning

## 2.2 主要定位

**EN**  
Artibird Switch is the intelligent interaction and switching product family of the Artibird ecosystem, designed to capture user intention, trigger scenes, control supported loads, and participate in local runtime coordination.

**ZH-TW**  
Artibird Switch 是 Artibird 生態中的智慧互動與開關產品家族，專為捕捉用戶意圖、觸發場景、控制受支援負載，並參與本地 Runtime 協同而設計。

---

## 2.3 Short Positioning Line

## 2.3 簡短定位語

**EN**  
From touch events to coordinated system behavior.

**ZH-TW**  
從觸控事件到協同系統行為。

---

## 2.4 Core Value Proposition

## 2.4 核心價值主張

**EN**  
Artibird Switch helps users control lights, trigger scenes, and interact with intelligent environments through a local-first switching and event architecture. It supports both load-control switch variants and battery-powered event switch variants, allowing Artibird systems to serve different wiring conditions, installation needs, and interaction scenarios.

**ZH-TW**  
Artibird Switch 透過本地優先的開關與事件架構，幫助用戶控制照明、觸發場景並與智慧環境互動。它同時支援負載控制型開關版本與電池事件型開關版本，使 Artibird 系統能適應不同接線條件、安裝需求與互動場景。

---

## 2.5 Differentiation

## 2.5 差異化

**EN**  
Unlike a generic smart switch, Artibird Switch is not limited to turning a circuit on or off. It is designed as a runtime interaction node that can support relay control, scene triggering, device events, local automation, and ecosystem participation depending on product variant.

**ZH-TW**  
不同於普通智慧開關，Artibird Switch 不僅限於打開或關閉一條電路。它被設計為 Runtime 互動節點，可依產品版本支援繼電器控制、場景觸發、設備事件、本地自動化與生態參與。

---

# 3. Product Commercial Overview

# 3. 產品商業總覽

## EN

Artibird Switch is the smart switch and event interaction product family within the Artibird ecosystem. It provides physical touch interaction, lighting control, scene triggering, and local runtime participation for coordinated intelligent environments.

The Artibird Switch family may include two major product directions. The zero-neutral smart switch variant is designed for powered in-wall switch installations and may support relay-based load control through an ESP32-C3-based architecture. The battery-powered event switch variant is designed for flexible placement and scene triggering through a low-power nRF52833-based architecture. This battery-powered version is an event transmitter and should not be presented as a direct load controller unless a specific load-control hardware version is implemented and validated.

In homes, classrooms, offices, campuses, and commercial buildings, Artibird Switch provides a familiar physical interface for users while allowing the system to respond as a coordinated environment. A touch action may turn on lighting, activate a scene, trigger an automation, communicate with Hub and ArtiOS, or coordinate with Act, Sense, Panel, Sync, Vision, OceanAI Cloud, and OceanAI Edge depending on deployment configuration.

Artibird Switch follows a local-first, cloud-enhanced model. Supported local switch events, relay actions, and scene triggers are designed to remain available within the local environment when the required local components are present. Cloud services may enhance the system through remote control, synchronization, device lifecycle management, analytics, and multi-site visibility.

Artibird Switch should not be described as a single universal switch type. Commercial language must distinguish between relay-control models, event-only models, battery-powered models, zero-neutral models, and region-specific electrical versions.

## ZH-TW

Artibird Switch 是 Artibird 生態中的智慧開關與事件互動產品家族。它為協同智慧空間提供實體觸控互動、照明控制、場景觸發與本地 Runtime 參與能力。

Artibird Switch 家族可包含兩個主要產品方向。零火智慧開關版本面向有供電的牆內開關安裝，並可透過基於 ESP32-C3 的架構支援繼電器負載控制。電池事件開關版本則面向靈活放置與場景觸發，採用基於 nRF52833 的低功耗架構。該電池版本是事件發射節點，不應被描述為直接負載控制器，除非具體產品版本已實作並驗證負載控制硬體。

在住宅、教室、辦公室、校園與商業建築中，Artibird Switch 為用戶提供熟悉的實體互動介面，同時使系統能以協同環境方式回應。一次觸控動作可以打開照明、啟動場景、觸發自動化、與 Hub 和 ArtiOS 通訊，或根據部署配置與 Act、Sense、Panel、Sync、Vision、OceanAI Cloud、OceanAI Edge 協同。

Artibird Switch 採用本地優先、雲端增強模式。在所需本地元件具備的條件下，受支援本地開關事件、繼電器動作與場景觸發設計為可在本地環境中保持可用。雲端服務可進一步透過遠端控制、同步、設備生命週期管理、分析與多站點可視化增強系統能力。

Artibird Switch 不應被描述為單一通用開關類型。商業語言必須區分繼電器控制型、事件型、電池型、零火型與不同地區電氣版本。

---

# 4. Sales Copy Module

# 4. 銷售文案模組

## 4.1 One-Line Description

## 4.1 一句話描述

**EN**  
Artibird Switch turns touch actions into lighting control, scene triggers, and coordinated system behavior.

**ZH-TW**  
Artibird Switch 將觸控動作轉化為照明控制、場景觸發與協同系統行為。

---

## 4.2 Short Description

## 4.2 簡短描述

**EN**  
Artibird Switch is a smart switch and interaction node for the Artibird ecosystem. Depending on the model, it may support relay-based load control, scene triggering, battery-powered event transmission, local automation, and cloud-enhanced remote operation through Artibird Hub, Gate, ArtiOS, and OceanAI Cloud.

**ZH-TW**  
Artibird Switch 是 Artibird 生態中的智慧開關與互動節點。依型號不同，它可支援基於繼電器的負載控制、場景觸發、電池事件發射、本地自動化，以及透過 Artibird Hub、Gate、ArtiOS 與 OceanAI Cloud 實現的雲端增強遠端操作。

---

## 4.3 Long Description

## 4.3 長描述

**EN**  
Artibird Switch is designed for spaces where physical interaction remains important, but the result should go beyond a single circuit. It allows users to control lighting, trigger scenes, and initiate coordinated system behavior through familiar switch interaction.

For powered installations, selected Artibird Switch models may provide relay-based control for supported lighting or electrical loads. For flexible placement scenarios, battery-powered event switch models may provide touch-based scene and automation triggers without directly controlling a load. This distinction is important for safe installation, customer expectation, certification planning, and commercial communication.

In a complete Artibird deployment, Switch works with Artibird Hub, Gate, ArtiOS, Act, Sense, Panel, Sync, Vision, OceanAI Cloud, and OceanAI Edge. A touch event may trigger a lighting scene, control a relay, activate a room mode, adjust climate behavior, or launch automation depending on system configuration.

Artibird Switch does not make universal electrical compatibility claims. Load rating, wiring type, relay capability, battery life, wireless range, touch reliability, and regional electrical compliance must be defined by product variant and validated under specified conditions.

**ZH-TW**  
Artibird Switch 面向仍然需要實體互動，但結果不應只局限於單一電路的空間而設計。它讓用戶透過熟悉的開關互動控制照明、觸發場景並啟動協同系統行為。

對於有供電的安裝場景，部分 Artibird Switch 型號可為受支援照明或電氣負載提供基於繼電器的控制。對於靈活放置場景，電池事件開關型號可提供基於觸控的場景與自動化觸發，但不直接控制負載。這一區分對安全安裝、客戶預期、認證規劃與商業溝通非常重要。

在完整 Artibird 部署中，Switch 與 Artibird Hub、Gate、ArtiOS、Act、Sense、Panel、Sync、Vision、OceanAI Cloud 和 OceanAI Edge 協同。一次觸控事件可根據系統配置觸發照明場景、控制繼電器、啟動房間模式、調整空調行為或啟動自動化。

Artibird Switch 不宣稱通用電氣相容性。負載額定、接線類型、繼電器能力、電池壽命、無線距離、觸控可靠性與地區電氣合規，必須依產品版本定義並在指定條件下完成驗證。

---

# 5. Key Selling Points & Customer Benefits

# 5. 核心賣點與客戶收益

## English Table

|Selling Point|Customer Benefit|Key Advantage|
|---|---|---|
|Touch-Based Interaction|Users can interact with the system through familiar switch behavior|Natural and intuitive daily control|
|Scene Trigger Capability|A switch action can trigger scenes and automations where configured|Extends switches beyond simple on/off control|
|Relay-Control Variant|Selected zero-neutral models may control supported loads|Suitable for powered in-wall lighting control|
|Battery Event Variant|Battery-powered models can be placed flexibly as event transmitters|Useful where rewiring is difficult or scene control is needed|
|Local-First Operation|Supported local events and relay actions can operate locally where system components are present|Better responsiveness and system continuity|
|Hub and Gate Integration|Works with Hub and Gate for runtime participation and device communication|Makes Switch part of the broader Artibird system|
|Cloud-Enhanced Remote Operation|Cloud may support remote control, status visibility, and lifecycle management|Extends local control into managed smart environments|
|Variant-Bound Safety|Commercial claims are tied to specific electrical and event-only models|Reduces confusion and supports safer product communication|

## 中文表

|賣點|客戶收益|核心優勢|
|---|---|---|
|觸控式互動|用戶可透過熟悉的開關行為與系統互動|自然、直覺的日常控制|
|場景觸發能力|在配置條件下，一次開關動作可觸發場景與自動化|讓開關超越簡單開 / 關控制|
|繼電器控制版本|部分零火型號可控制受支援負載|適用於有供電的牆內照明控制|
|電池事件版本|電池型號可靈活放置，作為事件發射節點|適用於不便重新接線或需要場景控制的場景|
|本地優先運作|在系統元件具備時，受支援本地事件與繼電器動作可本地運行|提升回應速度與系統連續性|
|Hub 與 Gate 整合|與 Hub 和 Gate 配合進行 Runtime 參與與設備通訊|使 Switch 成為更大 Artibird 系統的一部分|
|雲端增強遠端操作|雲端可支援遠端控制、狀態可視化與生命週期管理|將本地控制延伸為可管理智慧環境|
|版本邊界安全|商業宣稱綁定具體電氣版本與事件型版本|降低混淆並支援更安全的產品溝通|

---

# 6. Local, Cloud, and Remote Capabilities

# 6. 本地、雲端與遠端能力

## English Table

|Capability|Local-First|Cloud-Enhanced|Remote Access|Notes|
|---|---|---|---|---|
|Touch Event Reporting|Yes|Enhanced|Partial / Yes|Depends on Hub / Gate / device communication path|
|Relay Load Control|Yes / Variant-specific|Enhanced|Partial / Yes|Only for validated relay-control models|
|Scene Trigger|Yes / Partial|Enhanced|Partial / Yes|Depends on Hub / ArtiOS scene configuration|
|Automation Trigger|Yes / Partial|Enhanced|Partial / Yes|Depends on supported automation logic|
|Battery Event Transmission|Yes / Variant-specific|Enhanced|Partial|Applies to battery-powered event switch models|
|Device Status Visibility|Partial / Yes|Yes|Yes|Depends on model and Hub / Cloud support|
|Remote Control|No / Partial / Variant-specific|Yes|Yes|Requires Cloud, account binding, and supported model|
|Firmware Updates|Partial|Yes|Partial / Yes|Depends on product configuration and power profile|
|Battery Monitoring|Yes / Variant-specific|Enhanced|Partial / Yes|Applies to battery-powered versions|
|Multi-Site Management|Limited|Yes|Yes|Requires OceanAI Cloud and site/account structure|

## 中文表

|能力|本地優先|雲端增強|遠端存取|備註|
|---|---|---|---|---|
|觸控事件回報|是|增強|部分 / 是|取決於 Hub / Gate / 設備通訊路徑|
|繼電器負載控制|是 / 依版本|增強|部分 / 是|僅適用於已驗證繼電器控制型號|
|場景觸發|是 / 部分|增強|部分 / 是|取決於 Hub / ArtiOS 場景配置|
|自動化觸發|是 / 部分|增強|部分 / 是|取決於受支援自動化邏輯|
|電池事件發射|是 / 依版本|增強|部分|適用於電池事件開關型號|
|設備狀態可視化|部分 / 是|是|是|取決於型號與 Hub / Cloud 支援|
|遠端控制|否 / 部分 / 依版本|是|是|需要 Cloud、帳號綁定與受支援型號|
|韌體更新|部分|是|部分 / 是|取決於產品配置與供電曲線|
|電池監測|是 / 依版本|增強|部分 / 是|適用於電池版本|
|多站點管理|有限|是|是|需要 OceanAI Cloud 與站點 / 帳號結構|

---

# 7. Use Cases

# 7. 使用場景

## English Table

|Use Case|Description|
|---|---|
|Smart Home Lighting|Controls supported lighting loads or triggers lighting scenes depending on model and wiring.|
|Scene Switch Deployment|Battery-powered or wall-mounted variants can trigger room scenes, away mode, night mode, or custom automations.|
|Smart Classroom|Supports classroom lighting, projector scenes, AC scenes, and teacher-friendly room control when configured.|
|Smart Office|Enables conference room, workspace, and shared-area control through scenes and device actions.|
|Smart Building|Supports standardized wall control, scene triggering, and load-control deployment across rooms or zones.|
|Renovation-Friendly Control|Battery event models may reduce the need for rewiring where only scene triggering is required.|
|Energy-Aware Control|Works with Sense and Act to support occupancy, lighting, and energy-aware workflows where validated.|
|Local Automation Trigger|Touch events can trigger local automation through Hub and ArtiOS where supported.|

## 中文表

|使用場景|描述|
|---|---|
|智慧住宅照明|依型號與接線條件，控制受支援照明負載或觸發照明場景。|
|場景開關部署|電池型或牆面安裝版本可觸發房間場景、離家模式、夜間模式或自定義自動化。|
|智慧教室|在配置條件下支援教室照明、投影機場景、空調場景與教師友好的房間控制。|
|智慧辦公|透過場景與設備動作支援會議室、工位區與共享區域控制。|
|智慧建築|支援跨房間或區域的標準化牆面控制、場景觸發與負載控制部署。|
|友好改造控制|當只需要場景觸發時，電池事件型號可降低重新接線需求。|
|能源感知控制|與 Sense 和 Act 配合，在已驗證條件下支援人在、照明與能源感知工作流。|
|本地自動化觸發|在支援條件下，觸控事件可透過 Hub 與 ArtiOS 觸發本地自動化。|

---

# 8. Target Customers

# 8. 目標客戶

## English Table

|Customer Segment|Description|
|---|---|
|Smart Home Users|Users who want familiar wall control combined with scenes, automation, and remote visibility.|
|Renovation Users|Users who need flexible placement or scene triggering without major rewiring.|
|Education Institutions|Schools and classrooms that need simple physical controls for lighting, scenes, and room modes.|
|Offices and Commercial Spaces|Spaces that need room-level switch control, scene control, and coordinated device behavior.|
|Smart Building Managers|Managers who need standardized wall-control deployment across rooms or zones.|
|System Integrators|Installers and contractors deploying smart switches, scene switches, and local automation systems.|
|Channel Partners|Distributors and resellers building Artibird switch bundles and starter kits.|
|Technology Enthusiasts and Project Developers|Users building complete Artibird / OceanAI deployments with touch-based system interaction.|

## 中文表

|客戶群體|描述|
|---|---|
|智慧家居用戶|希望將熟悉牆面控制與場景、自動化、遠端可視化結合的用戶。|
|改造型用戶|需要靈活放置或場景觸發，但不希望大規模重新接線的用戶。|
|教育機構|需要簡單實體控制來管理照明、場景與房間模式的學校與教室。|
|辦公與商業空間|需要房間級開關控制、場景控制與協同設備行為的空間。|
|智慧建築管理者|需要跨房間或區域標準化牆面控制部署的管理者。|
|系統整合商|部署智慧開關、場景開關與本地自動化系統的安裝商與承包商。|
|渠道合作夥伴|構建 Artibird 開關套裝與入門套裝的分銷商與轉售商。|
|科技愛好者與項目開發商|搭建具備觸控式系統互動能力的完整 Artibird / OceanAI 部署的用戶。|

---

# 9. Ecosystem Compatibility

# 9. 生態相容性

## English Table

|Compatibility Area|Commercial Description|Boundary|
|---|---|---|
|Artibird Hub|Supports local runtime coordination, scenes, automation, and state management|Supported Hub versions must be defined|
|Artibird Gate|Supports communication path for selected wireless or battery variants|Supported Gate versions and protocols must be defined|
|ArtiOS|Participates in ArtiOS-based event flow, scene logic, and automation|Supported ArtiOS versions must be defined|
|OceanAI Cloud|May support remote control, synchronization, lifecycle management, and multi-site visibility|Requires Cloud connectivity and account binding|
|OceanAI Edge|May use switch events and state context for AI-assisted environment response|Depends on deployment architecture|
|Artibird App|Supports setup, binding, room assignment, scene configuration, and remote operation where implemented|iOS / Android versions must be defined|
|Artibird Act|Switch events may trigger Act execution or power-control workflows|Requires compatible Act variant and automation setup|
|Artibird Sense|Sensor data may combine with Switch events for occupancy, lighting, and environment control|Requires automation configuration|
|Artibird Panel|Panel and Switch may share scene-control logic|Requires scene configuration|
|Artibird Sync|Switch events may trigger appliance actions such as AC or projector control|Requires compatible Sync and configured scene logic|
|Artibird Vision|Switch events may participate in security or room-state workflows where configured|Privacy and data policies apply|
|Electrical Infrastructure|Relay-control models depend on wiring type, load type, voltage, current, and regional standards|Must follow product variant and certification scope|

## 中文表

|相容範圍|商業描述|邊界|
|---|---|---|
|Artibird Hub|支援本地 Runtime 協同、場景、自動化與狀態管理|必須定義受支援 Hub 版本|
|Artibird Gate|為特定無線或電池版本提供通訊路徑|必須定義受支援 Gate 版本與協議|
|ArtiOS|參與基於 ArtiOS 的事件流、場景邏輯與自動化|必須定義受支援 ArtiOS 版本|
|OceanAI Cloud|可支援遠端控制、同步、生命週期管理與多站點可視化|需要 Cloud 連接與帳號綁定|
|OceanAI Edge|可使用開關事件與狀態上下文進行 AI 輔助環境回應|取決於部署架構|
|Artibird App|在已實作條件下支援設定、綁定、房間分配、場景配置與遠端操作|必須定義 iOS / Android 版本|
|Artibird Act|Switch 事件可觸發 Act 執行或電力控制工作流|需要相容 Act 版本與自動化設定|
|Artibird Sense|感測數據可與 Switch 事件結合，用於人在、照明與環境控制|需要自動化配置|
|Artibird Panel|Panel 與 Switch 可共享場景控制邏輯|需要場景配置|
|Artibird Sync|Switch 事件可觸發空調或投影機等家電動作|需要相容 Sync 與已配置場景邏輯|
|Artibird Vision|在配置條件下，Switch 事件可參與安全或房間狀態工作流|適用隱私與數據政策|
|電氣基礎設施|繼電器控制型號取決於接線類型、負載類型、電壓、電流與地區標準|必須遵循產品版本與認證範圍|

---

# 10. Package Contents & SKU

# 10. 包裝內容與 SKU

## English Table

|Item|Description|
|---|---|
|Product Name|Artibird Switch|
|SKU Name|Artibird Switch [Variant Name]|
|SKU Code|TBD|
|Model Number|TBD|
|Hardware Foundation|ESP32-C3 zero-neutral switch architecture / nRF52833 battery event switch architecture|
|Product Variants|Zero-neutral relay switch; battery-powered event switch; scene switch; multi-gang switch; regional electrical variants|
|Package Contents|Artibird Switch main unit; mounting screws or bracket; installation guide; wiring label if applicable; warranty card|
|Box Language|English / bilingual / multilingual depending on market|
|Retail Channel|Amazon, OceanAI website, distributor channel, installer channel, B2B project channel|
|Warranty|TBD by region and channel|
|Optional Bundle|Switch + Hub Kit; Switch + Gate Kit; Switch + Sense Kit; Switch + Act Kit; Room Scene Control Kit|

## 中文表

|項目|說明|
|---|---|
|產品名稱|Artibird Switch|
|SKU 名稱|Artibird Switch [版本名稱]|
|SKU 編碼|TBD|
|型號|TBD|
|硬體基礎|ESP32-C3 零火智慧開關架構 / nRF52833 電池事件開關架構|
|產品版本|零火繼電器開關；電池事件開關；場景開關；多鍵開關；地區電氣版本|
|包裝內容|Artibird Switch 主機；安裝螺絲或支架；安裝指南；適用時包含接線標籤；保固卡|
|包裝語言|依市場採用英文 / 雙語 / 多語|
|零售渠道|Amazon、OceanAI 官網、分銷渠道、安裝商渠道、B2B 項目渠道|
|保固|依地區與渠道待定|
|可選套裝|Switch + Hub 套裝；Switch + Gate 套裝；Switch + Sense 套裝；Switch + Act 套裝；房間場景控制套裝|

---

# 11. Channel Partner Enablement

# 11. 渠道合作賦能

## English Table

|Channel Factor|Description|
|---|---|
|Best Channel Type|Retail, distributor, electrician, installer, system integrator, smart building project|
|Installation Complexity|Low for battery event variants; medium to high for in-wall relay-control variants depending on electrical requirements|
|Bundle Opportunity|Switch + Hub; Switch + Gate; Switch + Sense; Switch + Act; Switch + Panel; room control kit; classroom control kit|
|Training Requirement|Product variant training, wiring-type guidance, battery event switch distinction, relay load boundary, scene setup, troubleshooting|
|Support Requirement|Installation support, wiring guidance, pairing support, scene configuration, battery support, firmware update guidance|
|Upsell Path|Artibird Hub, Gate, Sense, Panel, Act, Sync, OceanAI Cloud, additional Switch units|
|Project Fit|Residential, classroom, office, smart building, renovation, commercial room control|
|Partner Margin Logic|Hardware margin, installation service, wiring upgrade, scene setup, system configuration, maintenance contract|
|Service Opportunity|Site survey, wiring assessment, device installation, scene programming, lifecycle maintenance|

## 中文表

|渠道因素|說明|
|---|---|
|最佳渠道類型|零售、分銷商、電工、安裝商、系統整合商、智慧建築項目|
|安裝複雜度|電池事件版本低；牆內繼電器控制版本依電氣要求為中到高|
|套裝機會|Switch + Hub；Switch + Gate；Switch + Sense；Switch + Act；Switch + Panel；房間控制套裝；教室控制套裝|
|培訓要求|產品版本培訓、接線類型指引、電池事件開關區分、繼電器負載邊界、場景設定、故障排查|
|支援要求|安裝支援、接線指引、配對支援、場景配置、電池支援、韌體更新指引|
|加售路徑|Artibird Hub、Gate、Sense、Panel、Act、Sync、OceanAI Cloud、更多 Switch 單元|
|項目適配|住宅、教室、辦公室、智慧建築、改造場景、商業房間控制|
|合作夥伴利潤邏輯|硬體毛利、安裝服務、接線升級、場景設定、系統配置、維護合約|
|服務機會|現場勘測、接線評估、設備安裝、場景編程、生命週期維護|

---

# 12. Commercial Claim Policy

# 12. 商業宣稱政策

## EN

All Artibird Switch commercial claims must remain consistent with the related engineering specification and validation results. Commercial materials must not use absolute claims such as “works with all wiring,” “supports all lights,” “unlimited battery life,” “no wiring needed for all models,” “universal load control,” or “guaranteed compatibility.”

Switch claims must distinguish clearly between relay-control models and event-only models. Battery-powered nRF52833 switch variants should be described as event transmitters or scene switches, not direct load controllers, unless a specific hardware version includes validated load-control capability.

Electrical, safety, load, wireless, battery, and installation claims must be defined by product variant, wiring type, load type, regional standard, certification status, and validation report.

## ZH-TW

所有 Artibird Switch 商業宣稱必須與對應工程規格書與驗證結果保持一致。商業資料不得使用「適用所有接線」「支援所有燈具」「無限制電池壽命」「所有型號都無需接線」「通用負載控制」「保證相容」等絕對化宣稱。

Switch 相關宣稱必須清楚區分繼電器控制型號與事件型號。基於 nRF52833 的電池開關版本應描述為事件發射器或場景開關，而不是直接負載控制器，除非具體硬體版本已包含並驗證負載控制能力。

電氣、安全、負載、無線、電池與安裝宣稱，必須依產品版本、接線類型、負載類型、地區標準、認證狀態與驗證報告定義。

## English Table

|Claim Type|Required Boundary|
|---|---|
|Load Control|Must apply only to validated relay-control models|
|Event-Only Switch|Must clearly state that it triggers events or scenes and does not directly control loads|
|Wiring Compatibility|Must define zero-neutral, single-line, battery, or regional wiring scope|
|Load Rating|Must reference validated voltage, current, load type, thermal behavior, and certification status|
|Battery Life|Must reference battery capacity, reporting behavior, event frequency, and validation conditions|
|Touch Reliability|Must reference material, environment, humidity, noise, and validation method|
|Wireless Range|Must reference RF test conditions, enclosure, placement, and network architecture|
|Remote Control|Must require Cloud, account binding, network availability, and supported model|
|Local Control|Must define exact local functions and required local components|
|Safety / Certification|Must match actual certification status and regional compliance scope|

## 中文表

|宣稱類型|必要邊界|
|---|---|
|負載控制|僅適用於已驗證繼電器控制型號|
|事件型開關|必須清楚說明其觸發事件或場景，不直接控制負載|
|接線相容性|必須定義零火、單火、電池或地區接線範圍|
|負載額定|必須引用已驗證電壓、電流、負載類型、熱行為與認證狀態|
|電池壽命|必須引用電池容量、上報行為、事件頻率與驗證條件|
|觸控可靠性|必須引用材料、環境、濕度、噪聲與驗證方法|
|無線距離|必須引用 RF 測試條件、外殼、放置與網路架構|
|遠端控制|必須需要 Cloud、帳號綁定、網路可用與受支援型號|
|本地控制|必須定義具體本地功能與所需本地元件|
|安全 / 認證|必須與實際認證狀態與地區合規範圍一致|

---

# 13. Revision History

# 13. 版本記錄

## English Table

|Version|Date|Description|
|---|---|---|
|v1.0|2026-05-08|Initial Artibird Switch Commercial Specification based on Artibird Commercial Specification Template v1.1|

## 中文表

|版本|日期|說明|
|---|---|---|
|v1.0|2026-05-08|基於 Artibird 商業規格書標準模板 v1.1 建立 Artibird Switch 初始商業規格書|

---

# Document End

# 文件結束

## EN

This Artibird Switch Commercial Specification v1.0 defines Artibird Switch as the smart switch, event node, scene trigger, and relay-control product family of the Artibird ecosystem. It presents Switch in customer-facing, marketing-facing, retail-facing, and channel-facing language while preserving engineering boundaries, model distinctions, local-first positioning, cloud-enhanced capability, wiring and load-control limits, battery event-switch positioning, ecosystem integration, and commercial claim control.

## ZH-TW

本《Artibird Switch 商業規格書 v1.0》將 Artibird Switch 定義為 Artibird 生態中的智慧開關、事件節點、場景觸發與繼電器控制產品家族。它以面向客戶、行銷、零售與渠道的語言呈現 Switch，同時保留工程邊界、型號區分、本地優先定位、雲端增強能力、接線與負載控制限制、電池事件開關定位、生態整合與商業宣稱控制。

---

## 話題延伸

## Topic Extension

下一步可生成：

**Artibird Panel Commercial Specification v1.0**  
**Artibird Panel 商業規格書 v1.0**