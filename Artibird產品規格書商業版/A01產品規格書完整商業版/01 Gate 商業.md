# Artibird Gate Commercial Specification v1.1-Final

# Artibird Gate 商業規格書 v1.1-Final

**Commercial + Marketing + Channel Enablement Edition**  
**商業、行銷與渠道賦能版本**

**Version Date**: 2026-05-08  
**Document Type**: Commercial Specification  
**Product Family**: Artibird Series  
**Product Category**: Localized Network Gateway / Device Access Node  
**System Architecture**: OceanAI Coordinated Intelligence Architecture  
**Runtime Ecosystem**: ArtiOS / Artibird Hub / OceanAI Edge / OceanAI Cloud  
**Hardware Foundation**: ESP32-C6

**版本日期**：2026-05-08  
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
|Version|v1.1-Final|
|Document Type|Commercial + Marketing + Channel Specification|
|Product Name|Artibird Gate|
|Product Category|Localized Network Gateway / Device Access Node|
|Product Family|Artibird Series|
|Hardware Foundation|ESP32-C6|
|System Architecture|OceanAI Coordinated Intelligence Architecture|
|Runtime Ecosystem|ArtiOS / Artibird Hub / OceanAI Edge / OceanAI Cloud|
|Related Engineering Specification|Artibird Gate Product Engineering Specification v1.0.1|
|Intended Audience|Sales, Marketing, Channel Partners, Retail Teams, System Integrators, Business Development Teams|
|Release Date|2026-05-08|
|Approval Status|Released Candidate / Final Commercial Draft|

## 中文表

|項目|說明|
|---|---|
|文件名稱|Artibird Gate 商業規格書|
|文件版本|v1.1-Final|
|文件類型|商業、行銷與渠道規格書|
|產品名稱|Artibird Gate|
|產品類別|本地化網路網關 / 設備接入節點|
|產品家族|Artibird 系列|
|硬體基礎|ESP32-C6|
|系統架構|OceanAI 協同智慧架構|
|Runtime 生態|ArtiOS / Artibird Hub / OceanAI Edge / OceanAI Cloud|
|對應工程規格書|Artibird Gate 產品工程規格書 v1.0.1|
|適用對象|銷售、行銷、渠道合作夥伴、零售團隊、系統整合商、商務拓展團隊|
|發布日期|2026-05-08|
|核准狀態|發布候選版 / 最終商業草案|

---

# 2. Commercial Positioning

# 2. 商業定位

## 2.1 Hero Tagline

## 2.1 主標語

**EN**  
Local-first connectivity. Stable coordination. Intelligent device access.

**ZH-TW**  
本地優先．穩定協同．智慧接入。

---

## 2.2 Primary Positioning

## 2.2 主要定位

**EN**  
Artibird Gate is the localized network gateway of the Artibird ecosystem, designed for spaces that require reliable device access, local coordination, and scalable system participation.

**ZH-TW**  
Artibird Gate 是 Artibird 生態中的本地化網路網關，專為需要可靠設備接入、本地協同與可擴展系統參與的空間而設計。

---

## 2.3 Short Positioning Line

## 2.3 簡短定位語

**EN**  
Connect supported Artibird devices into one coordinated local system.

**ZH-TW**  
將受支援 Artibird 設備連接為一個協同本地系統。

---

## 2.4 Core Value Proposition

## 2.4 核心價值主張

**EN**  
Artibird Gate provides local-first device access for distributed Artibird devices, helping them participate in the OceanAI coordinated intelligence system with greater local reliability, structured connectivity, and cloud-enhanced scalability.

**ZH-TW**  
Artibird Gate 為分布式 Artibird 設備提供本地優先的設備接入能力，幫助它們以更高本地可靠性、結構化連接能力與雲端增強擴展性，參與 OceanAI 協同智慧系統。

---

## 2.5 Differentiation

## 2.5 差異化

**EN**  
Unlike generic Wi-Fi accessories or simple repeaters, Artibird Gate is designed as a system-level network node focused on local runtime participation, device coordination, validated capacity management, and ecosystem integration.

**ZH-TW**  
不同於普通 Wi-Fi 配件或簡單中繼器，Artibird Gate 被設計為系統級網路節點，專注於本地 Runtime 參與、設備協同、已驗證容量管理與生態整合。

---

# 3. Product Commercial Overview

# 3. 產品商業總覽

## EN

Artibird Gate is a localized network gateway built on ESP32-C6 for the Artibird product ecosystem. It provides reliable device access and communication support for distributed Artibird products such as switches, sensors, panels, execution nodes, and other supported device categories.

In residential, classroom, office, campus, and commercial building environments, Artibird Gate helps maintain local device connectivity and supports the event flow required for scenes, automation, and system coordination. When paired with Artibird Hub and ArtiOS, Gate becomes part of a local runtime structure that allows devices to operate as coordinated participants rather than isolated smart products.

Artibird Gate follows a local-first, cloud-enhanced model. Supported local functions are designed to remain available within the local environment when the required local system components are present. When connected to OceanAI Cloud, the system may gain remote monitoring, lifecycle management, multi-site visibility, synchronization, and cloud-assisted system enhancement.

Artibird Gate is therefore not a generic wireless accessory. It is a foundational network access node for building coordinated intelligent environments.

## ZH-TW

Artibird Gate 是一款基於 ESP32-C6、面向 Artibird 產品生態設計的本地化網路網關。它為分布式 Artibird 產品提供可靠的設備接入與通訊支援，例如開關、感測器、面板、執行節點與其他受支援設備類別。

在住宅、教室、辦公室、校園與商業建築環境中，Artibird Gate 幫助維持本地設備連接，並支援場景、自動化與系統協同所需的事件流。當它與 Artibird Hub 和 ArtiOS 配合使用時，Gate 成為本地 Runtime 結構的一部分，使設備不再只是孤立智慧產品，而是協同系統中的參與節點。

Artibird Gate 採用本地優先、雲端增強模式。在所需本地系統元件具備的條件下，受支援本地功能設計為可在本地環境中保持可用。當接入 OceanAI Cloud 後，系統可進一步獲得遠端監測、生命週期管理、多站點可視化、同步與雲端輔助系統增強能力。

因此，Artibird Gate 不是普通無線配件，而是構建協同智慧空間的基礎網路接入節點。

---

# 4. Sales Copy Module

# 4. 銷售文案模組

## 4.1 One-Line Description

## 4.1 一句話描述

**EN**  
Artibird Gate is a local-first ESP32-C6 gateway that connects supported Artibird devices into a coordinated intelligent environment.

**ZH-TW**  
Artibird Gate 是一款本地優先的 ESP32-C6 網關，用於將受支援 Artibird 設備接入協同智慧環境。

---

## 4.2 Short Description

## 4.2 簡短描述

**EN**  
Artibird Gate provides localized device access for the Artibird ecosystem. Built on ESP32-C6, it helps supported Artibird devices connect, report, and participate in local runtime coordination, while cloud services may extend the system with remote monitoring, lifecycle management, and multi-site visibility.

**ZH-TW**  
Artibird Gate 為 Artibird 生態提供本地化設備接入能力。它基於 ESP32-C6，幫助受支援 Artibird 設備連接、回報並參與本地 Runtime 協同；雲端服務則可進一步擴展遠端監測、生命週期管理與多站點可視化能力。

---

## 4.3 Long Description

## 4.3 長描述

**EN**  
Artibird Gate is designed for users, installers, and organizations that need reliable local device access rather than isolated device control. As a localized network gateway built on ESP32-C6, it enables supported Artibird devices—such as switches, sensors, panels, execution nodes, and other compatible devices—to participate in a coordinated runtime environment.

In a complete Artibird system, Gate works with Artibird Hub, ArtiOS, OceanAI Edge, and OceanAI Cloud to support local event flow, device onboarding, system coordination, remote monitoring, and lifecycle management. It is suitable for homes, classrooms, offices, campuses, smart buildings, and project-based deployments where device reliability and system continuity matter.

Artibird Gate does not make unlimited connection or universal compatibility claims. Device capacity, wireless range, protocol support, and large-scale deployment performance must be validated under defined conditions. This makes Gate suitable for commercial deployments that require clear boundaries, dependable planning, and controlled system growth.

**ZH-TW**  
Artibird Gate 面向需要可靠本地設備接入，而非孤立設備控制的用戶、安裝商與機構而設計。作為基於 ESP32-C6 的本地化網路網關，它使受支援 Artibird 設備——例如開關、感測器、面板、執行節點與其他相容設備——能夠參與協同 Runtime 環境。

在完整 Artibird 系統中，Gate 與 Artibird Hub、ArtiOS、OceanAI Edge 和 OceanAI Cloud 協同，支援本地事件流、設備入網、系統協同、遠端監測與生命週期管理。它適用於住宅、教室、辦公室、校園、智慧建築與項目型部署，尤其適合重視設備可靠性與系統連續性的場景。

Artibird Gate 不宣稱無限制連接或通用相容性。設備容量、無線距離、協議支援與大規模部署性能，均必須在明確條件下完成驗證。這使 Gate 更適合需要清晰邊界、可靠規劃與受控系統成長的商業部署。

---

# 5. Key Selling Points & Customer Benefits

# 5. 核心賣點與客戶收益

## English Table

|Selling Point|Customer Benefit|Key Advantage|
|---|---|---|
|Local-First Architecture|Supported core functions can remain available within the local environment|More reliable system experience under defined local conditions|
|ESP32-C6 Hardware Foundation|Provides a modern wireless foundation for gateway-class product development|Supports scalable gateway product architecture|
|Multi-Device Access Support|Helps supported Artibird devices connect and participate in system coordination|Enables structured ecosystem growth|
|Deep OceanAI Integration|Works with Artibird Hub, ArtiOS, OceanAI Edge, and OceanAI Cloud|Supports long-term system expansion|
|Guided Device Onboarding|Helps users and installers add supported devices through defined setup workflows|Easier installation and maintenance|
|Capacity-Aware Design|Connection capacity is treated as a validated system boundary|Better for project planning and commercial deployment|
|Cloud-Enhanced Capabilities|Cloud may add remote monitoring, synchronization, analytics, and lifecycle services|Extends local systems into managed intelligent environments|
|Secure System Participation|Designed for authenticated access, controlled management, and protected device participation where implemented|Supports safer ecosystem deployment|

## 中文表

|賣點|客戶收益|核心優勢|
|---|---|---|
|本地優先架構|受支援核心功能可在本地環境中保持可用|在明確本地條件下提供更可靠的系統體驗|
|ESP32-C6 硬體基礎|為網關級產品開發提供現代無線基礎|支援可擴展網關產品架構|
|多設備接入支援|幫助受支援 Artibird 設備連接並參與系統協同|支援結構化生態擴展|
|深度 OceanAI 整合|與 Artibird Hub、ArtiOS、OceanAI Edge 和 OceanAI Cloud 協同|支援長期系統擴展|
|引導式設備入網|幫助用戶與安裝商透過明確流程添加受支援設備|降低安裝與維護難度|
|容量感知設計|將連接容量視為需要驗證的系統邊界|更適合項目規劃與商業部署|
|雲端增強能力|雲端可增加遠端監測、同步、分析與生命週期服務|將本地系統擴展為可管理智慧環境|
|安全系統參與|在已實作條件下支援身份認證、受控管理與受保護設備參與|支援更安全的生態部署|

---

# 6. Local, Cloud, and Remote Capabilities

# 6. 本地、雲端與遠端能力

## English Table

|Capability|Local-First|Cloud-Enhanced|Remote Access|Notes|
|---|---|---|---|---|
|Device Connection|Yes|Enhanced|Partial / Yes|Supports validated device categories and capacity|
|Device Onboarding|Yes|Enhanced|Partial|Requires App / Hub / supported setup workflow|
|Basic Automation Support|Yes / Partial|Enhanced|Partial|Automation logic depends on Hub / ArtiOS|
|Scene & Control Support|Yes / Partial|Enhanced|Partial / Yes|Scene execution typically requires Hub support|
|Monitoring & Alerts|Partial|Yes|Yes|Remote alerts require Cloud connectivity|
|Gateway Health Reporting|Yes / Partial|Yes|Yes|Depends on firmware, Hub, and Cloud support|
|Firmware Updates|Partial|Yes|Partial / Yes|OTA path depends on product configuration|
|Multi-Site Management|Limited|Yes|Yes|Requires OceanAI Cloud and site/account structure|
|Capacity Management|Yes|Enhanced|Partial|Requires validated connection capacity report|

## 中文表

|能力|本地優先|雲端增強|遠端存取|備註|
|---|---|---|---|---|
|設備連接|是|增強|部分 / 是|支援已驗證設備類別與容量|
|設備入網|是|增強|部分|需要 App / Hub / 受支援設定流程|
|基礎自動化支援|是 / 部分|增強|部分|自動化邏輯依賴 Hub / ArtiOS|
|場景與控制支援|是 / 部分|增強|部分 / 是|場景執行通常需要 Hub 支援|
|監測與警報|部分|是|是|遠端警報需要 Cloud 連接|
|網關健康回報|是 / 部分|是|是|取決於韌體、Hub 與 Cloud 支援|
|韌體更新|部分|是|部分 / 是|OTA 路徑取決於產品配置|
|多站點管理|有限|是|是|需要 OceanAI Cloud 與站點 / 帳號結構|
|容量管理|是|增強|部分|需要已驗證連接容量報告|

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
|Artibird Devices|Designed for supported Artibird Switch, Sense, Panel, Act, Sync, and Vision devices|Compatibility matrix required|
|Wi-Fi Routers|Can operate with standard Wi-Fi infrastructure where configured correctly|Router compatibility and network conditions affect performance|

## 中文表

|相容範圍|商業描述|邊界|
|---|---|---|
|Artibird Hub|與 Artibird Hub 協同，支援本地 Runtime 協同|必須定義受支援 Hub 版本|
|ArtiOS|參與基於 ArtiOS 的設備接入與事件流|必須定義受支援 ArtiOS 版本|
|OceanAI Edge|可為 Edge 輔助智慧提供設備上下文|取決於部署架構|
|OceanAI Cloud|可支援遠端監測、生命週期、同步與多站點可視化|需要 Cloud 連接與帳號綁定|
|Artibird App|在已實作條件下支援設定、綁定與狀態可視化|必須定義 iOS / Android 版本|
|Artibird 設備|面向受支援 Artibird Switch、Sense、Panel、Act、Sync 與 Vision 設備設計|需要相容性矩陣|
|Wi-Fi 路由器|在正確配置條件下可與標準 Wi-Fi 基礎設施配合使用|路由器相容性與網路條件會影響性能|

---

# 10. Package Contents & SKU

# 10. 包裝內容與 SKU

## English Table

|Item|Description|
|---|---|
|Product Name|Artibird Gate|
|SKU Name|Artibird Gate ESP32-C6|
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
|SKU 名稱|Artibird Gate ESP32-C6|
|SKU 編碼|TBD|
|型號|TBD|
|硬體基礎|ESP32-C6|
|包裝內容|Artibird Gate 主機；USB-C 電源線；選配壁掛配件；快速安裝指南；保固卡|
|包裝語言|依市場採用英文 / 雙語 / 多語|
|零售渠道|Amazon、OceanAI 官網、分銷渠道、安裝商渠道、B2B 項目渠道|
|保固|依地區與渠道待定|
|可選套裝|Hub + Gate 入門套裝；Gate + Switch 套裝；Gate + Sense 套裝；教室入門套裝|

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

## 中文表

|版本|日期|說明|
|---|---|---|
|v1.0|2026-05-08|建立 Artibird Gate 初始商業規格書|
|v1.1|2026-05-08|優化章節結構，強化雙語商業語言，提升行銷敘事流暢度，加強容量宣稱控制，並完善渠道賦能內容|
|v1.1-Final|2026-05-08|完成最終商業規格版本，可供客戶、行銷、零售與渠道參考使用|

---

# Document End

# 文件結束

## EN

This Artibird Gate Commercial Specification v1.1-Final defines Artibird Gate as the localized network gateway and device access node of the Artibird ecosystem. It presents Gate in customer-facing, marketing-facing, retail-facing, and channel-facing language while preserving engineering boundaries, local-first positioning, cloud-enhanced capability, ESP32-C6 hardware identity, ecosystem compatibility, and validated commercial claim control.

## ZH-TW

本《Artibird Gate 商業規格書 v1.1-Final》將 Artibird Gate 定義為 Artibird 生態中的本地化網路網關與設備接入節點。它以面向客戶、行銷、零售與渠道的語言呈現 Gate，同時保留工程邊界、本地優先定位、雲端增強能力、ESP32-C6 硬體身份、生態相容性與已驗證商業宣稱控制。

---

## 話題延伸

## Topic Extension

下一步可直接生成：

**Artibird Hub Commercial Specification v1.0**  
**Artibird Hub 商業規格書 v1.0**