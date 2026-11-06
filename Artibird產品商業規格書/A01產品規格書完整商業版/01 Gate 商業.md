# Artibird Gate Commercial Specification v1.2-Candidate

# Artibird Gate 商業規格書 v1.2-Candidate

**Commercial + Marketing + Channel Enablement Edition**  
**商業、行銷與渠道賦能版本**

**Version Date**: 2026-11-06  
**Document Type**: Commercial Specification  
**Product Family**: Artibird Series  
**Product Category**: Localized Network Gateway / Device Access Node  
**System Architecture**: OceanAI Coordinated Intelligence Architecture  
**Runtime Ecosystem**: ArtiOS / Artibird Hub / OceanAI Edge / OceanAI Cloud  
**Hardware Foundation**: ESP32-C6

**版本日期**：2026-11-06  
**文件類型**：商業規格書  
**產品家族**：Artibird 系列  
**產品類別**：本地化網路網關 / 設備接入節點  
**系統架構**：OceanAI 協同智慧架構  
**Runtime 生態**：ArtiOS / Artibird Hub / OceanAI Edge / OceanAI Cloud  
**硬體基礎**：ESP32-C6

---

# 1. Document Information

# 1. 文件資訊

## English Table

|Item|Description|
|---|---|
|Document Name|Artibird Gate Commercial Specification|
|Version|v1.2-Candidate|
|Document Type|Commercial + Marketing + Channel Specification|
|Product Name|Artibird Gate|
|Product Category|Localized Network Gateway / Device Access Node|
|Product Family|Artibird Series|
|Hardware Foundation|ESP32-C6|
|System Architecture|OceanAI Coordinated Intelligence Architecture|
|Runtime Ecosystem|ArtiOS / Artibird Hub / OceanAI Edge / OceanAI Cloud|
|Related Engineering Specification|Artibird Gate Product Engineering Specification v1.1-Candidate|
|Intended Audience|Sales, Marketing, Channel Partners, Retail Teams, System Integrators, Business Development Teams|
|Revision Date|2026-11-06|
|Document Status|Revised candidate; product availability and validation remain unverified|

## 中文表

|項目|說明|
|---|---|
|文件名稱|Artibird Gate 商業規格書|
|文件版本|v1.2-Candidate|
|文件類型|商業、行銷與渠道規格書|
|產品名稱|Artibird Gate|
|產品類別|本地化網路網關 / 設備接入節點|
|產品家族|Artibird 系列|
|硬體基礎|ESP32-C6|
|系統架構|OceanAI 協同智慧架構|
|Runtime 生態|ArtiOS / Artibird Hub / OceanAI Edge / OceanAI Cloud|
|對應工程規格書|Artibird Gate 產品工程規格書 v1.1-Candidate|
|適用對象|銷售、行銷、渠道合作夥伴、零售團隊、系統整合商、商務拓展團隊|
|修訂日期|2026-11-06|
|文件狀態|修訂候選稿；產品供貨與驗證狀態仍未確認|

**Status note｜狀態說明**  
Approval of this document revision does not establish hardware validation, certification, or commercial availability. Each public capability must identify a product model, firmware version, operating profile, and evidence reference. Design intent in this document is not proof of implementation.

本次文件修訂獲准不代表硬體已驗證、已認證或已供貨。每項公開能力均須對應產品型號、韌體版本、運行配置與證據引用。本文設計方向不作已實作證明。

---

# 2. Commercial Positioning

# 2. 商業定位

## 2.1 Product Role｜產品角色

**EN**  
Artibird Gate connects supported Artibird devices to OceanAI Runtime services. It provides device onboarding, command delivery, event forwarding, and connection health reporting through the protocols and network links supported by each model.

**ZH-TW**  
Artibird Gate 將受支援的 Artibird 設備接入 OceanAI Runtime 服務。它透過各型號支援的協議與網路鏈路，提供設備入網、指令傳遞、事件轉發及連接健康回報。

## 2.2 Customer Value｜客戶價值

**EN**  
Gate is intended to make device access easier to deploy, observe, and maintain. Customers select it by supported device models, installation conditions, upstream connection, required runtime services, and validated operating limits.

**ZH-TW**  
Gate 旨在讓設備接入更易部署、觀察與維護。客戶應依受支援設備型號、安裝條件、上行連接、所需 Runtime 服務及已驗證運行限制選型。

## 2.3 Role Boundary｜責任範圍

**EN**  
Gate handles device access and transport. The configured Hub / ArtiOS or Cloud Runtime handles system state, scenes, automation, and command policy. OceanAI Edge is an optional enhancement. The deployment profile must identify the authoritative Runtime and must not imply automatic Hub-to-Cloud failover.

**ZH-TW**  
Gate 負責設備接入與傳遞。已配置的 Hub / ArtiOS 或 Cloud Runtime 負責系統狀態、場景、自動化及指令策略。OceanAI Edge 為選配增強。部署配置必須指明權威 Runtime，不暗示 Hub 與 Cloud 會自動接管彼此。

---

# 3. Product Commercial Overview

# 3. 產品商業總覽

## EN

Artibird Gate is a device access gateway built on the ESP32-C6 baseline. Its device-side protocol and upstream network link are specified separately. For example, a validated BLE Mesh profile may carry switch and sensor events upstream over Wi-Fi or an implemented Ethernet interface.

Gate participates in local operation when the required local Runtime, network, device configuration, and credentials are available. Cloud-managed deployments use their configured Cloud Runtime path. Internet loss, Hub loss, and Cloud loss have different effects and must be described for each supported configuration.

Before purchase or project quotation, the model data sheet must identify supported devices, upstream interface, power input, installation conditions, firmware compatibility, tested capacity, package contents, and support terms. These values remain unverified until backed by the model record and test evidence.

## ZH-TW

Artibird Gate 是以 ESP32-C6 為現有基準的設備接入網關。設備側協議與上行網路鏈路分開列示。例如，經驗證的 BLE Mesh 配置可透過 Wi-Fi 或已實作的 Ethernet 介面，向上傳遞開關與感測事件。

當所需本地 Runtime、網路、設備配置與憑證可用時，Gate 參與本地運作。雲端管理部署採其已配置的 Cloud Runtime 路徑。Internet、Hub 與 Cloud 中斷的影響不同，須按每種受支援配置說明。

採購或項目報價前，型號資料表須列出受支援設備、上行介面、供電輸入、安裝條件、韌體相容性、已測容量、包裝內容與支援條款。未具備型號記錄及測試證據前，這些數值仍屬未確認。

---

# 4. Sales Copy Module

# 4. 銷售文案模組

## 4.1 One-Line Description｜一句話描述

**EN**  
Artibird Gate connects supported devices to OceanAI Runtime services and makes their connection status visible.

**ZH-TW**  
Artibird Gate 將受支援設備接入 OceanAI Runtime 服務，並呈現設備連接狀態。

## 4.2 Short Description｜簡短描述

**EN**  
Artibird Gate provides device onboarding, event forwarding, command delivery, and connection diagnostics for supported Artibird deployments. Each model specifies its device protocols, upstream link, required runtime services, and tested operating conditions.

**ZH-TW**  
Artibird Gate 為受支援的 Artibird 部署提供設備入網、事件轉發、指令傳遞與連接診斷。各型號分別列明設備協議、上行鏈路、所需 Runtime 服務及已測運行條件。

## 4.3 Publication Conditions｜發布條件

**EN**  
These descriptions are candidate copy. Publish only the functions implemented and validated for the named model. Keep planned protocols, capacity targets, and untested recovery behavior in the roadmap or engineering targets.

**ZH-TW**  
以上為候選文案。對外僅發布具名型號已實作並驗證的功能。規劃協議、容量目標與未測恢復行為保留於路線圖或工程目標。

---

# 5. Key Selling Points & Customer Benefits

# 5. 核心賣點與客戶收益

|Candidate value|Customer benefit|Evidence required before publication|
|---|---|---|
|Guided onboarding|Repeatable installation|Device / firmware compatibility and onboarding results|
|Connection visibility|Identify device, upstream, and Runtime access faults|Health fields, fault codes, and diagnostic tests|
|Defined local operation|Continue supported local functions during Internet loss|Local dependency matrix and outage tests|
|Controlled recovery|Make reconnection and replacement predictable|Recovery and replacement procedure with test results|
|Capacity-aware deployment|Plan a room or site from tested limits|Named profile, workload, latency, and capacity report|
|Optional remote services|Manage supported deployments off-site|Cloud profile, permissions, service availability, and tests|

|候選價值|客戶收益|發布前所需證據|
|---|---|---|
|引導式入網|可重複的安裝流程|設備／韌體相容性及入網結果|
|連接狀態可見|定位設備、上行與 Runtime 存取故障|健康欄位、故障碼及診斷測試|
|明確本地運行|Internet 中斷時維持受支援本地功能|本地依賴矩陣及斷網測試|
|受控恢復|讓重連與替換行為可預期|恢復及替換流程與實測|
|依容量部署|按已測限制規劃房間或站點|具名配置、負載、延遲及容量報告|
|選配遠端服務|在站點外管理受支援部署|雲端配置、權限、服務可用性及測試|

ESP32-C6 is the hardware baseline, not a validated customer benefit by itself. All rows are candidate values until supported by the actual model record.

ESP32-C6 為硬體基準，其本身不構成已驗證客戶收益。以上各項在取得實際型號記錄前均屬候選價值。

---

# 6. Local, Cloud, and Remote Capabilities

# 6. 本地、雲端與遠端能力

|Function|Execution location / dependencies|Internet or Cloud loss|Hub unavailable|
|---|---|---|---|
|Device-side transport|Gate and configured device protocol|May continue in a validated local profile|Transport may remain active; system coordination is profile-dependent|
|Onboarding / binding|Gate plus configured installer interface, credentials, and authority|Available only if the setup profile supports local authorization|No general claim; identify provisioning authority|
|Scenes / automation|Configured Hub / ArtiOS or Cloud Runtime|Local Runtime profile may continue|Only preconfigured, validated binding / fallback; no full-scene claim|
|Health / diagnostics|Gate plus a reachable local or remote interface|Local diagnostics may remain available|Report Hub loss through available interface; buffering is bounded|
|Remote control / fleet service|Cloud Runtime / services, network, account, permissions|Unavailable through the affected cloud path|Cloud-managed profile only; no automatic takeover implied|
|OTA / replacement|Named update / recovery profile and authorized credentials|Local maintenance only where implemented and validated|Follow model-specific recovery procedure|

|功能|執行位置／依賴|Internet 或 Cloud 中斷|Hub 不可用|
|---|---|---|---|
|設備側傳遞|Gate 及已配置設備協議|經驗證本地配置可繼續|傳遞可能持續；系統協同依配置而定|
|入網／綁定|Gate、安裝介面、憑證及配置權威|僅在設定配置支援本地授權時可用|不得泛稱可用；須指明入網權威|
|場景／自動化|已配置 Hub / ArtiOS 或 Cloud Runtime|本地 Runtime 配置可繼續|僅限預先配置且已驗證的綁定／回退；不宣稱完整場景可用|
|健康／診斷|Gate 及可達本地或遠端介面|本地診斷可依配置保持|由可用介面回報 Hub 中斷；緩衝有界|
|遠端控制／機群服務|Cloud Runtime／服務、網路、帳號、權限|受影響雲端路徑不可用|僅限雲端管理配置；不暗示自動接管|
|OTA／替換|具名更新／恢復配置及授權憑證|僅限已實作並驗證的本地維護|依型號恢復流程執行|

Each model must supply firmware versions, evidence references, and supported / unsupported results for this matrix before commercial release.

商業發布前，各型號須為本矩陣補齊韌體版本、證據引用及支援／不支援結果。

---

# 7. Use Cases

# 7. 使用場景

## English Table

|Use Case|Description|
|---|---|
|Smart Home|Provides local device access for whole-home Artibird systems, including switches, sensors, panels, execution nodes, and synchronization devices.|
|Smart Classroom|Supports classroom devices such as switches, sensors, panels, power-control nodes, and visual context devices for local coordination and automation.|
|Smart Office|Helps conference rooms, work areas, and shared spaces maintain structured device access and local coordination.|
|Smart Building|Supports multi-room and multi-zone device access for commercial buildings, apartments, and shared facilities.|
|Campus and Institutional Deployment|Enables standardized gateway deployment across classrooms, offices, corridors, and public areas.|
|Smart Agriculture|Supports selected sensing and execution deployments where environmental, enclosure, power, and wireless conditions are validated.|

## 中文表

|使用場景|描述|
|---|---|
|智慧住宅|為全屋 Artibird 系統提供本地設備接入，包括開關、感測器、面板、執行節點與同步設備。|
|智慧教室|支援教室中的開關、感測器、面板、電力控制節點與視覺上下文設備，用於本地協同與自動化。|
|智慧辦公|幫助會議室、工位區與共享空間維持結構化設備接入與本地協同。|
|智慧建築|支援商業建築、公寓與共享設施中的多房間、多區域設備接入。|
|校園與機構部署|支援教室、辦公區、走廊與公共區域的標準化網關部署。|
|智慧農業|在環境、外殼、供電與無線條件經驗證後，支援特定感測與執行部署。|

---

# 8. Target Customers

# 8. 目標客戶

## English Table

|Customer Segment|Description|
|---|---|
|Stability-Focused Smart Home Users|Users who want reliable local device access and coordinated home operation.|
|Education Institutions|Schools and classrooms that need standardized local device connection and automation infrastructure.|
|Small and Medium Offices|Offices that need room-level control, sensing, and device coordination.|
|Commercial Space Managers|Managers of shops, facilities, apartments, and buildings that require scalable device access.|
|System Integrators|Installers and contractors deploying smart spaces, classrooms, buildings, and campuses.|
|Channel Partners|Distributors and resellers building Artibird product bundles.|
|Technology Enthusiasts and Project Developers|Users building complete Artibird / OceanAI ecosystem deployments.|

## 中文表

|客戶群體|描述|
|---|---|
|注重穩定性的智慧家居用戶|希望獲得可靠本地設備接入與協同家庭運作的用戶。|
|教育機構|需要標準化本地設備連接與自動化基礎設施的學校與教室。|
|中小型辦公空間|需要房間級控制、感測與設備協同的辦公空間。|
|商業空間管理者|需要可擴展設備接入的商店、設施、公寓與建築管理者。|
|系統整合商|部署智慧空間、教室、建築與校園的安裝商與承包商。|
|渠道合作夥伴|構建 Artibird 產品套裝的分銷商與轉售商。|
|科技愛好者與項目開發商|搭建完整 Artibird / OceanAI 生態部署的用戶。|

---

# 9. Ecosystem Compatibility

# 9. 生態相容性

## English Table

|Compatibility Area|Commercial Description|Boundary|
|---|---|---|
|Artibird Hub|Works with Artibird Hub to support local runtime coordination|Supported Hub versions must be defined|
|ArtiOS|Participates in ArtiOS-based device access and event flow|Supported ArtiOS versions must be defined|
|OceanAI Edge|May provide device context for Edge-assisted intelligence|Depends on deployment architecture|
|OceanAI Cloud|May support remote monitoring, lifecycle, synchronization, and multi-site visibility|Requires Cloud connectivity and account binding|
|Artibird App|Supports setup, binding, and status visibility where implemented|iOS / Android versions must be defined|
|Artibird Devices|Only named device models and protocol paths in the validated compatibility matrix|Compatibility matrix required|
|Wi-Fi Routers|Can operate with standard Wi-Fi infrastructure where configured correctly|Router compatibility and network conditions affect performance|

## 中文表

|相容範圍|商業描述|邊界|
|---|---|---|
|Artibird Hub|與 Artibird Hub 協同，支援本地 Runtime 協同|必須定義受支援 Hub 版本|
|ArtiOS|參與基於 ArtiOS 的設備接入與事件流|必須定義受支援 ArtiOS 版本|
|OceanAI Edge|可為 Edge 輔助智慧提供設備上下文|取決於部署架構|
|OceanAI Cloud|可支援遠端監測、生命週期、同步與多站點可視化|需要 Cloud 連接與帳號綁定|
|Artibird App|在已實作條件下支援設定、綁定與狀態可視化|必須定義 iOS / Android 版本|
|Artibird 設備|僅限已驗證相容性矩陣內的設備型號與協議路徑|需要相容性矩陣|
|Wi-Fi 路由器|在正確配置條件下可與標準 Wi-Fi 基礎設施配合使用|路由器相容性與網路條件會影響性能|

---

**Compatibility record｜相容性記錄**  
Record device model, device protocol / model identifiers, device firmware, Gate firmware, Runtime version, onboarding method, supported commands / events, limitations, and test reference. A Wi-Fi device may connect directly to the Runtime through the site AP. Vision media follows its specified IP path; listing Vision in the ecosystem does not imply video transport through Gate.

記錄設備型號、設備協議／Model 識別、設備韌體、Gate 韌體、Runtime 版本、入網方式、受支援指令／事件、限制及測試引用。Wi-Fi 設備可依架構經站點 AP 直連 Runtime。Vision 媒體依指定 IP 路徑傳輸；列為生態產品不代表視訊經由 Gate 傳遞。

---

# 10. Package Contents & SKU

# 10. 包裝內容與 SKU

## English Table

|Item|Description|
|---|---|
|Product Name|Artibird Gate|
|SKU Name|Artibird Gate + approved model / configuration; unassigned|
|SKU Code|TBD|
|Model Number|TBD|
|Hardware Foundation|ESP32-C6|
|Package Contents|Artibird Gate main unit; USB-C power cable; optional wall-mount accessories; quick start guide; warranty card|
|Box Language|English / bilingual / multilingual depending on market|
|Retail Channel|Amazon, OceanAI website, distributor channel, installer channel, B2B project channel|
|Warranty|TBD by region and channel|
|Optional Bundle|Hub + Gate Starter Kit; Gate + Switch Kit; Gate + Sense Kit; Classroom Starter Kit|

## 中文表

|項目|說明|
|---|---|
|產品名稱|Artibird Gate|
|SKU 名稱|Artibird Gate ＋已核准型號／配置；尚未指派|
|SKU 編碼|TBD|
|型號|TBD|
|硬體基礎|ESP32-C6|
|包裝內容|Artibird Gate 主機；USB-C 電源線；選配壁掛配件；快速安裝指南；保固卡|
|包裝語言|依市場採用英文 / 雙語 / 多語|
|零售渠道|Amazon、OceanAI 官網、分銷渠道、安裝商渠道、B2B 項目渠道|
|保固|依地區與渠道待定|
|可選套裝|Hub + Gate 入門套裝；Gate + Switch 套裝；Gate + Sense 套裝；教室入門套裝|

---

**Required model data｜型號必填資料**  
Device-side protocol and roles; upstream interface; power voltage / current and adapter inclusion; enclosure / mounting and environment; Gate / device / Runtime firmware compatibility; validated workload and capacity; package contents; warranty and support. Values are unverified / unassigned until backed by the model record. Outdoor and agriculture use requires a separately validated environmental configuration.

設備側協議及角色；上行介面；供電電壓／電流及是否附變壓器；外殼／固定與環境；Gate／設備／Runtime 韌體相容性；已驗證負載及容量；包裝內容；保固及支援。取得型號記錄前，各值仍未確認／未指派。戶外及農業用途須另有已驗證環境配置。

---

# 11. Channel Partner Enablement

# 11. 渠道合作賦能

## English Table

|Channel Factor|Description|
|---|---|
|Best Channel Type|Distributor, installer, system integrator, B2B project, ecosystem starter kit|
|Installation Complexity|Low to medium, depending on deployment scale and gateway placement|
|Bundle Opportunity|Hub + Gate; Gate + Switch; Gate + Sense; Gate + Act; Gate + Panel; classroom starter kit; campus deployment kit|
|Training Requirement|Basic product training for retail; deployment, placement, capacity, and troubleshooting training for installers|
|Support Requirement|Setup support, device onboarding support, firmware update guidance, coverage troubleshooting, compatibility guidance|
|Upsell Path|Artibird Hub, additional Gate units, Switch, Sense, Panel, Act, OceanAI Cloud, OceanAI Edge|
|Project Fit|Residential, classroom, office, campus, smart building, selected agriculture and infrastructure deployments|
|Partner Margin Logic|Hardware margin, installation service, system configuration, cloud service plan, maintenance contract|
|Service Opportunity|Device setup, site survey, gateway placement, coverage validation, lifecycle maintenance|

## 中文表

|渠道因素|說明|
|---|---|
|最佳渠道類型|分銷商、安裝商、系統整合商、B2B 項目、生態入門套裝|
|安裝複雜度|低到中，取決於部署規模與網關放置|
|套裝機會|Hub + Gate；Gate + Switch；Gate + Sense；Gate + Act；Gate + Panel；教室入門套裝；校園部署套裝|
|培訓要求|零售需要基礎產品培訓；安裝商需要部署、放置、容量與故障排查培訓|
|支援要求|設定支援、設備入網支援、韌體更新指引、覆蓋故障排查、相容性指引|
|加售路徑|Artibird Hub、更多 Gate 單元、Switch、Sense、Panel、Act、OceanAI Cloud、OceanAI Edge|
|項目適配|住宅、教室、辦公、校園、智慧建築，以及特定農業與基礎設施部署|
|合作夥伴利潤邏輯|硬體毛利、安裝服務、系統配置、雲端服務方案、維護合約|
|服務機會|設備設定、現場勘測、網關放置、覆蓋驗證、生命週期維護|

---

# 12. Commercial Claim Policy

# 12. 商業宣稱政策

## EN

All Artibird Gate commercial claims must remain consistent with the related engineering specification and validation results. Commercial materials must not use absolute claims such as “unlimited connection,” “never disconnects,” “works with all devices,” or “guaranteed range.”

Capacity-related claims must reference validated test conditions and official validation reports. Terms such as “strong multi-device support,” “stable connection,” or “large deployment support” should only be used with clear boundaries, such as supported device categories, tested firmware versions, defined network conditions, and validated concurrent connection limits.

## ZH-TW

所有 Artibird Gate 商業宣稱必須與對應工程規格書與驗證結果保持一致。商業資料不得使用「無限連接」「永不掉線」「支援所有設備」「保證距離」等絕對化宣稱。

容量相關宣稱必須引用已驗證測試條件與官方驗證報告。「強多設備支援」「穩定連接」「大規模部署支援」等表述，只有在具備清晰邊界時才可使用，例如受支援設備類別、已測韌體版本、明確網路條件與已驗證併發連接上限。

## English Table

|Claim Type|Required Boundary|
|---|---|
|Device Capacity|Must reference Max Concurrent Device Connections validation|
|Wireless Range|Must reference RF test condition, antenna design, enclosure, and deployment environment|
|Protocol Support|Must list only implemented and validated protocols|
|Device Compatibility|Must follow the official compatibility matrix|
|Local-First Capability|Must define exact local functions and required local components|
|Remote Management|Must require OceanAI Cloud, account binding, network availability, and supported configuration|
|Stability|Must reference validated test conditions or use cautious wording|
|Security|Must match implemented security features and validation status|

## 中文表

|宣稱類型|必要邊界|
|---|---|
|設備容量|必須引用最大併發設備連接數驗證|
|無線距離|必須引用 RF 測試條件、天線設計、外殼與部署環境|
|協議支援|僅可列出已實作並驗證的協議|
|設備相容性|必須遵循官方相容性矩陣|
|本地優先能力|必須定義具體本地功能與所需本地元件|
|遠端管理|必須需要 OceanAI Cloud、帳號綁定、網路可用與受支援配置|
|穩定性|必須引用已驗證測試條件，或使用謹慎表述|
|安全性|必須與已實作安全功能與驗證狀態一致|

---

# 13. Revision History

# 13. 版本記錄

## English Table

|Version|Date|Description|
|---|---|---|
|v1.0|2026-05-08|Initial Artibird Gate Commercial Specification|
|v1.1|2026-05-08|Optimized structure, enhanced bilingual commercial language, improved marketing flow, strengthened capacity claim control, and refined channel enablement|
|v1.1-Final|2026-05-08|Finalized commercial specification version for customer-facing, marketing-facing, retail-facing, and channel-facing reference|
|v1.2-Candidate|2026-11-06|Align engineering reference; clarify device access, dependencies, compatibility, model data, and evidence status|

## 中文表

|版本|日期|說明|
|---|---|---|
|v1.0|2026-05-08|建立 Artibird Gate 初始商業規格書|
|v1.1|2026-05-08|優化章節結構，強化雙語商業語言，提升行銷敘事流暢度，加強容量宣稱控制，並完善渠道賦能內容|
|v1.1-Final|2026-05-08|完成最終商業規格版本，可供客戶、行銷、零售與渠道參考使用|
|v1.2-Candidate|2026-11-06|對齊工程引用，釐清設備接入、依賴、相容性、型號資料及證據狀態|

---

# Document End

# 文件結束

## EN

This Artibird Gate Commercial Specification v1.2-Candidate describes Artibird Gate as the localized network gateway and device access node of the Artibird ecosystem. It presents Gate in customer-facing, marketing-facing, retail-facing, and channel-facing language while preserving engineering boundaries, local-first positioning, cloud-enhanced capability, ESP32-C6 hardware identity, ecosystem compatibility, and validated commercial claim control.

## ZH-TW

本《Artibird Gate 商業規格書 v1.2-Candidate》將 Artibird Gate 定義為 Artibird 生態中的本地化網路網關與設備接入節點。它以面向客戶、行銷、零售與渠道的語言呈現 Gate，同時保留工程邊界、本地優先定位、雲端增強能力、ESP32-C6 硬體身份、生態相容性與已驗證商業宣稱控制。

---

## 話題延伸

## Topic Extension

下一步可直接生成：

**Artibird Hub Commercial Specification v1.0**  
**Artibird Hub 商業規格書 v1.0**