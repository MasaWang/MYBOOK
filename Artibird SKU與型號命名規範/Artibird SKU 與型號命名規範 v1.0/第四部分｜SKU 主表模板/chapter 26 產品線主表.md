# Artibird SKU & Model Naming Specification v1.0

# Artibird SKU 與型號命名規範 v1.0

## Chapter 26 — Product Line Master Table

## 第二十六章｜產品線主表

---

## 26.1 Purpose

## 26.1 目的

### EN

This chapter defines the Product Line Master Table for Artibird products and related OceanAI system-layer records.

The Product Line Master Table controls product line codes, product line names, system roles, customer-facing naming rules, internal model prefixes, allowed variants, restricted variants, package compatibility, certification relevance, and claim boundaries.

The purpose of this chapter is to ensure that every Artibird and OceanAI-related record begins from an approved product line identity before any SKU, internal model number, engineering model number, certification model number, manufacturing model number, or package model name is created.

### ZH-TW

本章定義 Artibird 產品與相關 OceanAI 系統層記錄使用的產品線主表。

產品線主表用於管控產品線代碼、產品線名稱、系統角色、面向客戶命名規則、內部型號前綴、可用版本、限制版本、包裝相容性、認證相關性與宣稱邊界。

本章目的，是確保每一個 Artibird 與 OceanAI 相關記錄，在建立 SKU、內部型號、工程型號、認證型號、生產型號或包裝型號名稱之前，都先從已核准產品線身份開始。

---

## 26.2 Product Line Master Table Definition

## 26.2 產品線主表定義

### EN

A Product Line Master Table is the controlled reference table that defines each approved product family.

It answers the following questions:

|Question|Description|
|---|---|
|What is the product line code?|HUB, GATE, SYNC, SW, PNL, ACT, SNS, VIS, APP, CLD, EDGE|
|What is the product line name?|Artibird Hub, Artibird Gate, Artibird Sync, etc.|
|What system role does it perform?|Runtime center, gateway, synchronizer, switch, panel, execution node, sensor, vision node, app, cloud, edge|
|What customer-facing name should be used?|Public product line name|
|What internal model prefix should be used?|Same product line code or approved internal prefix|
|What variants are allowed?|STD, PRO, E, SCN, RLY, CAM, CLM, etc.|
|What variants are restricted?|Variants that require engineering, certification, or claim review|
|What package types are allowed?|S, 2P, KIT, PROKIT, EDU, PRJ, DEMO, SAMPLE|
|What claims are allowed?|Product-line-specific claim boundaries|
|What records must it map to?|SKU, engineering, certification, manufacturing, packaging, service records|

### ZH-TW

產品線主表是一張受控參考表，用於定義每一個已核准產品家族。

它回答以下問題：

|問題|說明|
|---|---|
|產品線代碼是什麼？|HUB、GATE、SYNC、SW、PNL、ACT、SNS、VIS、APP、CLD、EDGE|
|產品線名稱是什麼？|Artibird Hub、Artibird Gate、Artibird Sync 等|
|它執行什麼系統角色？|Runtime 中樞、網關、同步器、開關、面板、執行節點、感測器、視覺節點、App、雲端、邊緣|
|應使用什麼面向客戶名稱？|公開產品線名稱|
|應使用什麼內部型號前綴？|相同產品線代碼或已核准內部前綴|
|允許哪些版本？|STD、PRO、E、SCN、RLY、CAM、CLM 等|
|哪些版本受限制？|需要工程、認證或宣稱審查的版本|
|允許哪些包裝類型？|S、2P、KIT、PROKIT、EDU、PRJ、DEMO、SAMPLE|
|允許哪些宣稱？|產品線特定宣稱邊界|
|必須映射至哪些記錄？|SKU、工程、認證、生產、包裝、服務記錄|

---

## 26.3 Product Line Governance Principle

## 26.3 產品線治理原則

### EN

The core principle of the Product Line Master Table is:

```text
One product line code = one approved product family or system-layer record type.
```

A product line code must not be reused for unrelated product families.  
A product line name must not be changed casually after it has been used in SKU records, product catalogs, package records, certification records, Amazon listings, or channel documents.

### ZH-TW

產品線主表的核心原則是：

```text
一個產品線代碼 = 一個已核准產品家族或系統層記錄類型。
```

產品線代碼不得重用於無關產品家族。  
產品線名稱一旦用於 SKU 記錄、產品型錄、包裝記錄、認證記錄、Amazon 上架或渠道文件後，不得隨意更改。

---

## 26.4 Standard Product Line Master Table

## 26.4 標準產品線主表

### EN

|Product Line Code|Product Line Name|System Role|Customer-Facing Base Name|Internal Model Prefix|
|---|---|---|---|---|
|HUB|Artibird Hub|Local runtime center|Artibird Hub|HUB|
|GATE|Artibird Gate|Device access gateway|Artibird Gate|GATE|
|SYNC|Artibird Sync|IR / RF synchronization node|Artibird Sync|SYNC|
|SW|Artibird Switch|Switch / event / control input product|Artibird Switch|SW|
|PNL|Artibird Panel|Room-level interaction interface|Artibird Panel|PNL|
|ACT|Artibird Act|Electrical execution node|Artibird Act|ACT|
|SNS|Artibird Sense|Environmental sensing node|Artibird Sense|SNS|
|VIS|Artibird Vision|Visual perception node|Artibird Vision|VIS|
|APP|Artibird App|User control and setup interface|Artibird App|APP|
|CLD|OceanAI Cloud|Cloud service and remote system layer|OceanAI Cloud|CLD|
|EDGE|OceanAI Edge|Edge intelligence and local AI inference layer|OceanAI Edge|EDGE|

### ZH-TW

|產品線代碼|產品線名稱|系統角色|面向客戶基礎名稱|內部型號前綴|
|---|---|---|---|---|
|HUB|Artibird Hub|本地 Runtime 中樞|Artibird Hub|HUB|
|GATE|Artibird Gate|設備接入網關|Artibird Gate|GATE|
|SYNC|Artibird Sync|IR / RF 同步節點|Artibird Sync|SYNC|
|SW|Artibird Switch|開關 / 事件 / 控制輸入產品|Artibird Switch|SW|
|PNL|Artibird Panel|房間級互動介面|Artibird Panel|PNL|
|ACT|Artibird Act|電力執行節點|Artibird Act|ACT|
|SNS|Artibird Sense|環境感知節點|Artibird Sense|SNS|
|VIS|Artibird Vision|視覺感知節點|Artibird Vision|VIS|
|APP|Artibird App|用戶控制與設定介面|Artibird App|APP|
|CLD|OceanAI Cloud|雲端服務與遠端系統層|OceanAI Cloud|CLD|
|EDGE|OceanAI Edge|邊緣智慧與本地 AI 推理層|OceanAI Edge|EDGE|

---

## 26.5 Product Line Role Definitions

## 26.5 產品線角色定義

### EN

|Product Line|Role Definition|
|---|---|
|Artibird Hub|Maintains local runtime coordination, state management, local services, automation execution, MQTT participation, and ArtiOS-related operation where applicable|
|Artibird Gate|Provides device access, local gateway participation, network bridging, onboarding, and supported communication entry points|
|Artibird Sync|Maintains IR / RF command synchronization for appliances, AV devices, climate equipment, and supported synchronization workflows|
|Artibird Switch|Provides switch-class input, scene triggering, event participation, relay control, dimming, or manual control depending on validated variant|
|Artibird Panel|Provides room-level control, display, touch interaction, command access, and human-system interaction where applicable|
|Artibird Act|Executes electrical control, relay behavior, plug behavior, load participation, and energy-aware operation where validated|
|Artibird Sense|Provides environmental sensing such as temperature, humidity, light, occupancy-related input, climate context, or project-specific sensing|
|Artibird Vision|Provides camera, visual perception, vision event, or AI-assisted visual context where validated|
|Artibird App|Provides user setup, control, device onboarding, scene configuration, automation configuration, account access, and service interaction|
|OceanAI Cloud|Provides remote access, account services, multi-site coordination, subscription, data services, analytics, lifecycle services, and cloud-side orchestration where applicable|
|OceanAI Edge|Provides local AI inference, edge intelligence, sensor fusion, SLM / VLM-assisted analysis, vision processing, and advanced local decision support where validated|

### ZH-TW

|產品線|角色定義|
|---|---|
|Artibird Hub|維持本地 Runtime 協同、狀態管理、本地服務、自動化執行、MQTT 參與，以及適用時的 ArtiOS 相關運作|
|Artibird Gate|提供設備接入、本地網關參與、網路橋接、入網與受支援通訊入口|
|Artibird Sync|維持家電、影音設備、空調設備與受支援同步工作流中的 IR / RF 指令同步|
|Artibird Switch|依已驗證版本提供開關類輸入、場景觸發、事件參與、繼電器控制、調光或手動控制|
|Artibird Panel|提供房間級控制、顯示、觸控互動、指令入口與適用時的人機系統互動|
|Artibird Act|執行電力控制、繼電器行為、插座行為、負載參與，以及已驗證條件下的能源感知運作|
|Artibird Sense|提供溫度、濕度、光照、人體存在相關輸入、氣候上下文或專案特定感測|
|Artibird Vision|提供攝影機、視覺感知、視覺事件或已驗證條件下的 AI 輔助視覺上下文|
|Artibird App|提供用戶設定、控制、設備入網、場景配置、自動化配置、帳號存取與服務互動|
|OceanAI Cloud|提供遠端存取、帳號服務、多站點協同、訂閱、數據服務、分析、生命週期服務與適用時的雲端側編排|
|OceanAI Edge|提供本地 AI 推理、邊緣智慧、感測融合、SLM / VLM 輔助分析、視覺處理與已驗證條件下的高階本地決策支持|

---

## 26.6 Allowed Variant Matrix by Product Line

## 26.6 各產品線允許版本矩陣

### EN

|Product Line Code|Allowed Variant Codes|Notes|
|---|---|---|
|HUB|STD, PRO, EDU, CUSTOM|Pro, EDU, and Custom require defined deployment scope|
|GATE|STD, PRO, OUT, EDU, CUSTOM|OUT requires environmental validation|
|SYNC|STD, IR, RF, IRRF, PRO, CUSTOM|RF-related versions require regional certification review|
|SW|SCN, RLY, DIM, STD, CUSTOM|RLY and DIM require electrical and safety validation|
|PNL|STD, PRO, ROOM, EDU, CUSTOM|Display, touch, or control claims must be validated|
|ACT|STD, E, RLY, OUT, PRO, CUSTOM|E, OUT, and RLY require validation and claim boundary|
|SNS|STD, CLM, OUT, EDU, CUSTOM|Sensor accuracy and environmental claims require validation|
|VIS|CAM, EDGE, OUT, PRO, CUSTOM|Camera, privacy, wireless, and AI claims require review|
|APP|STD, PRO, EDU, BETA, CUSTOM|App release must map to software version and store record|
|CLD|STD, PRO, EDU, CUSTOM|Service tier and privacy policy mapping required|
|EDGE|STD, PRO, CAM, CUSTOM|AI and edge inference claims require validation|

### ZH-TW

|產品線代碼|允許版本代碼|備註|
|---|---|---|
|HUB|STD、PRO、EDU、CUSTOM|Pro、EDU 與 Custom 需要定義部署範圍|
|GATE|STD、PRO、OUT、EDU、CUSTOM|OUT 需要環境驗證|
|SYNC|STD、IR、RF、IRRF、PRO、CUSTOM|RF 相關版本需要區域性認證審查|
|SW|SCN、RLY、DIM、STD、CUSTOM|RLY 與 DIM 需要電氣與安全驗證|
|PNL|STD、PRO、ROOM、EDU、CUSTOM|顯示、觸控或控制宣稱必須驗證|
|ACT|STD、E、RLY、OUT、PRO、CUSTOM|E、OUT 與 RLY 需要驗證與宣稱邊界|
|SNS|STD、CLM、OUT、EDU、CUSTOM|感測精度與環境宣稱需要驗證|
|VIS|CAM、EDGE、OUT、PRO、CUSTOM|攝影機、隱私、無線與 AI 宣稱需要審查|
|APP|STD、PRO、EDU、BETA、CUSTOM|App 發布必須映射至軟體版本與商店記錄|
|CLD|STD、PRO、EDU、CUSTOM|需要映射服務層級與隱私政策|
|EDGE|STD、PRO、CAM、CUSTOM|AI 與邊緣推理宣稱需要驗證|

---

## 26.7 Restricted Variant Rules

## 26.7 限制版本規則

### EN

Certain variant codes may only be used after validation, certification review, or claim boundary approval.

|Variant Code|Restriction|
|---|---|
|PRO|Must represent documented professional or enhanced configuration|
|E|Must represent validated energy-aware or energy-monitoring capability|
|RLY|Must represent actual relay output or relay execution capability|
|DIM|Must represent validated dimming capability|
|OUT|Must represent outdoor-oriented configuration with environmental review|
|CAM|Must represent camera or vision capability with privacy and compliance review|
|EDGE|Must represent edge or local intelligence capability with defined processing boundary|
|IRRF|Must represent both IR and RF capability; RF requires regional review|
|CLM|Must represent climate-related sensing or environmental context|
|EDU|Must represent education-oriented configuration or package scope|
|CUSTOM|Must have project-specific approval and bounded use scope|

### ZH-TW

某些版本代碼只有在完成驗證、認證審查或宣稱邊界核准後才可使用。

|版本代碼|限制|
|---|---|
|PRO|必須代表已記錄的專業或增強配置|
|E|必須代表已驗證的能源感知或電能監測能力|
|RLY|必須代表實際繼電器輸出或繼電器執行能力|
|DIM|必須代表已驗證調光能力|
|OUT|必須代表經環境審查的戶外導向配置|
|CAM|必須代表經隱私與合規審查的攝影機或視覺能力|
|EDGE|必須代表具備已定義處理邊界的邊緣或本地智慧能力|
|IRRF|必須代表同時具備 IR 與 RF 能力；RF 需要區域性審查|
|CLM|必須代表氣候相關感測或環境上下文|
|EDU|必須代表教育導向配置或包裝範圍|
|CUSTOM|必須具有專案特定核准與受限使用範圍|

---

## 26.8 Package Compatibility by Product Line

## 26.8 各產品線包裝相容性

### EN

|Product Line Code|Common Package Codes|Notes|
|---|---|---|
|HUB|S, KIT, EDU, PRJ, DEMO, SAMPLE|Often included in system or project kits|
|GATE|S, PROKIT, KIT, PRJ, DEMO, SAMPLE|Pro Kit supported where accessories are defined|
|SYNC|S, KIT, EDU, PRJ, DEMO, SAMPLE|Demo packages useful for IR/RF presentation|
|SW|S, 2P, 4P, KIT, EDU, PRJ, BULK, SAMPLE|Multi-pack and project pack commonly applicable|
|PNL|S, KIT, EDU, PRJ, DEMO, SAMPLE|Education and project deployment supported|
|ACT|S, 2P, 4P, KIT, EDU, PRJ, BULK, SAMPLE|Energy kits and project packs commonly applicable|
|SNS|S, 2P, 4P, KIT, EDU, PRJ, BULK, SAMPLE|Sensor multi-pack often applicable|
|VIS|S, PROKIT, PRJ, DEMO, SAMPLE|Privacy and camera package review required|
|APP|NA|Service or software record; no physical package unless bundled|
|CLD|NA, PRJ|Service record; package mapping only when bundled|
|EDGE|S, PROKIT, PRJ, DEMO, SAMPLE|Professional deployment package commonly applicable|

### ZH-TW

|產品線代碼|常用包裝代碼|備註|
|---|---|---|
|HUB|S、KIT、EDU、PRJ、DEMO、SAMPLE|常被納入系統或專案套組|
|GATE|S、PROKIT、KIT、PRJ、DEMO、SAMPLE|內含配件定義清楚時可支援 Pro Kit|
|SYNC|S、KIT、EDU、PRJ、DEMO、SAMPLE|展示包適合 IR/RF 演示|
|SW|S、2P、4P、KIT、EDU、PRJ、BULK、SAMPLE|多入裝與專案包常用|
|PNL|S、KIT、EDU、PRJ、DEMO、SAMPLE|支援教育與專案部署|
|ACT|S、2P、4P、KIT、EDU、PRJ、BULK、SAMPLE|常用於能源套組與專案包|
|SNS|S、2P、4P、KIT、EDU、PRJ、BULK、SAMPLE|感測器常適合多入裝|
|VIS|S、PROKIT、PRJ、DEMO、SAMPLE|需要隱私與攝影機包裝審查|
|APP|NA|軟體或服務記錄；除非被套組綁定，否則無實體包裝|
|CLD|NA、PRJ|服務記錄；僅在綁定套組時映射包裝|
|EDGE|S、PROKIT、PRJ、DEMO、SAMPLE|常用於專業部署包|

---

## 26.9 Product Line Naming Restrictions

## 26.9 產品線命名限制

### EN

|Product Line|Naming Restriction|
|---|---|
|Hub|Must not be described as cloud-only or AI-only unless those capabilities are explicitly provided by mapped records|
|Gate|Must not imply all protocols are supported unless validated|
|Sync|Must not imply universal IR / RF compatibility without tested scope|
|Switch|Scene, Relay, and Dimmer must not be confused; event-only products must not claim load control|
|Panel|Must not imply advanced display, voice, AI, or automation capability unless validated|
|Act|Must not imply energy savings, load rating, or certified safety without evidence and approval|
|Sense|Must not imply medical-grade, security-grade, or precision measurement unless validated|
|Vision|Must not imply surveillance, recognition, or AI security decision-making without privacy and compliance review|
|App|Must not claim unsupported device control, cloud capability, or automation behavior|
|Cloud|Must not claim privacy, uptime, analytics, or subscription capability beyond service documentation|
|Edge|Must not claim autonomous AI, safety decisions, or unrestricted model capability without validation|

### ZH-TW

|產品線|命名限制|
|---|---|
|Hub|除非映射記錄明確提供能力，否則不得描述為 cloud-only 或 AI-only|
|Gate|除非已驗證，否則不得暗示支援所有協議|
|Sync|未定義測試範圍前，不得暗示 universal IR / RF 相容性|
|Switch|Scene、Relay 與 Dimmer 不得混淆；event-only 產品不得宣稱負載控制|
|Panel|除非已驗證，不得暗示高階顯示、語音、AI 或自動化能力|
|Act|無證據與核准前，不得暗示節能、負載額定或已認證安全|
|Sense|除非已驗證，不得暗示醫療級、安全級或精密計量|
|Vision|未經隱私與合規審查，不得暗示監控、識別或 AI 安全決策|
|App|不得宣稱未支援的設備控制、雲端能力或自動化行為|
|Cloud|不得宣稱超出服務文件的隱私、上線率、分析或訂閱能力|
|Edge|未經驗證，不得宣稱自主 AI、安全決策或不受限制的模型能力|

---

## 26.10 Product Line to Internal Model Prefix Mapping

## 26.10 產品線至內部型號前綴映射

### EN

|Product Line Code|Internal Model Prefix|Example Internal Model|
|---|---|---|
|HUB|HUB|HUB-G1|
|GATE|GATE|GATE-G1-PRO|
|SYNC|SYNC|SYNC-G1-IRRF|
|SW|SW|SW-G1-SCN|
|PNL|PNL|PNL-G1-ROOM|
|ACT|ACT|ACT-G1-E|
|SNS|SNS|SNS-G1-CLM|
|VIS|VIS|VIS-G1-EDGE|
|APP|APP|APP-G1|
|CLD|CLD|CLD-G1|
|EDGE|EDGE|EDGE-G1|

### ZH-TW

|產品線代碼|內部型號前綴|內部型號示例|
|---|---|---|
|HUB|HUB|HUB-G1|
|GATE|GATE|GATE-G1-PRO|
|SYNC|SYNC|SYNC-G1-IRRF|
|SW|SW|SW-G1-SCN|
|PNL|PNL|PNL-G1-ROOM|
|ACT|ACT|ACT-G1-E|
|SNS|SNS|SNS-G1-CLM|
|VIS|VIS|VIS-G1-EDGE|
|APP|APP|APP-G1|
|CLD|CLD|CLD-G1|
|EDGE|EDGE|EDGE-G1|

---

## 26.11 Product Line to Customer-Facing Name Mapping

## 26.11 產品線至面向客戶名稱映射

### EN

|Product Line Code|Customer-Facing Name Pattern|Example|
|---|---|---|
|HUB|Artibird Hub [Generation]|Artibird Hub G1|
|GATE|Artibird Gate [Variant]|Artibird Gate Pro|
|SYNC|Artibird Sync [Capability]|Artibird Sync IR/RF|
|SW|Artibird Switch [Type]|Artibird Switch Scene|
|PNL|Artibird Panel [Use Case]|Artibird Panel Room|
|ACT|Artibird Act[-Variant]|Artibird Act-E|
|SNS|Artibird Sense [Sensor Context]|Artibird Sense Climate|
|VIS|Artibird Vision [Capability]|Artibird Vision Edge|
|APP|Artibird App|Artibird App|
|CLD|OceanAI Cloud [Service Tier]|OceanAI Cloud|
|EDGE|OceanAI Edge [Capability / Tier]|OceanAI Edge Pro|

### ZH-TW

|產品線代碼|面向客戶名稱模式|示例|
|---|---|---|
|HUB|Artibird Hub [世代]|Artibird Hub G1|
|GATE|Artibird Gate [版本]|Artibird Gate Pro|
|SYNC|Artibird Sync [能力]|Artibird Sync IR/RF|
|SW|Artibird Switch [類型]|Artibird Switch Scene|
|PNL|Artibird Panel [使用場景]|Artibird Panel Room|
|ACT|Artibird Act[-版本]|Artibird Act-E|
|SNS|Artibird Sense [感測上下文]|Artibird Sense Climate|
|VIS|Artibird Vision [能力]|Artibird Vision Edge|
|APP|Artibird App|Artibird App|
|CLD|OceanAI Cloud [服務層級]|OceanAI Cloud|
|EDGE|OceanAI Edge [能力 / 層級]|OceanAI Edge Pro|

---

## 26.12 Product Line to Certification Relevance

## 26.12 產品線至認證相關性

### EN

|Product Line Code|Certification Relevance|Notes|
|---|---|---|
|HUB|Medium to High|Depends on power, wireless, enclosure, and adapter configuration|
|GATE|High|Wireless, Ethernet, RF, adapter, and gateway behavior may require review|
|SYNC|High|IR / RF and adapter configuration require market-specific review|
|SW|High|Battery, BLE, relay, AC, dimmer, and installation differences require review|
|PNL|Medium to High|Wireless, display, power, touch, enclosure, and adapter review may apply|
|ACT|High|AC mains, load control, relay, energy monitoring, and safety review required|
|SNS|Medium|Battery, wireless, sensor, and environmental claims require review|
|VIS|High|Camera, wireless, EMC, privacy, power, and enclosure review required|
|APP|Low to Medium|App store, privacy, data, cloud, and user claims require review|
|CLD|Medium|Privacy, data handling, subscription, security, and service claims require review|
|EDGE|High|Hardware, power, AI, camera, local data, and safety-related claims require review|

### ZH-TW

|產品線代碼|認證相關性|備註|
|---|---|---|
|HUB|中至高|取決於供電、無線、外殼與適配器配置|
|GATE|高|無線、Ethernet、RF、適配器與網關行為可能需要審查|
|SYNC|高|IR / RF 與適配器配置需要市場特定審查|
|SW|高|電池、BLE、繼電器、AC、調光與安裝差異需要審查|
|PNL|中至高|可能涉及無線、顯示、供電、觸控、外殼與適配器審查|
|ACT|高|需要 AC 市電、負載控制、繼電器、能源監測與安全審查|
|SNS|中|電池、無線、感測器與環境宣稱需要審查|
|VIS|高|需要攝影機、無線、EMC、隱私、供電與外殼審查|
|APP|低至中|需要 App Store、隱私、數據、雲端與用戶宣稱審查|
|CLD|中|需要隱私、數據處理、訂閱、安全與服務宣稱審查|
|EDGE|高|需要硬體、供電、AI、攝影機、本地數據與安全相關宣稱審查|

---

## 26.13 Product Line Master Table Template

## 26.13 產品線主表模板

### EN

|Field|Entry|
|---|---|
|Product Line Code|TBD|
|Product Line Name|TBD|
|Product Category|Hardware / Software / Service / System Layer|
|System Role|TBD|
|Customer-Facing Base Name|TBD|
|Internal Model Prefix|TBD|
|Allowed Generation Codes|G1 / G2 / G3 / Other|
|Allowed Variant Codes|TBD|
|Restricted Variant Codes|TBD|
|Common Package Codes|TBD|
|Certification Relevance|Low / Medium / High|
|Engineering Owner|TBD|
|Product Owner|TBD|
|Compliance Owner|TBD|
|Public Use Approved?|Yes / No|
|Claim Boundary Notes|TBD|
|Approval Status|Draft / Pending / Approved / Deprecated / Archived|
|Revision Date|TBD|
|Change Log Reference|TBD|

### ZH-TW

|欄位|填寫|
|---|---|
|產品線代碼|TBD|
|產品線名稱|TBD|
|產品類別|Hardware / Software / Service / System Layer|
|系統角色|TBD|
|面向客戶基礎名稱|TBD|
|內部型號前綴|TBD|
|允許世代代碼|G1 / G2 / G3 / Other|
|允許版本代碼|TBD|
|限制版本代碼|TBD|
|常用包裝代碼|TBD|
|認證相關性|Low / Medium / High|
|工程負責人|TBD|
|產品負責人|TBD|
|合規負責人|TBD|
|是否核准公開使用|Yes / No|
|宣稱邊界備註|TBD|
|核准狀態|Draft / Pending / Approved / Deprecated / Archived|
|修訂日期|TBD|
|變更記錄引用|TBD|

---

## 26.14 Completed Example — ACT Product Line

## 26.14 完整示例 — ACT 產品線

### EN

|Field|Entry|
|---|---|
|Product Line Code|ACT|
|Product Line Name|Artibird Act|
|Product Category|Hardware|
|System Role|Electrical execution node|
|Customer-Facing Base Name|Artibird Act|
|Internal Model Prefix|ACT|
|Allowed Generation Codes|G1, G2|
|Allowed Variant Codes|STD, E, RLY, OUT, PRO, CUSTOM|
|Restricted Variant Codes|E, RLY, OUT, PRO, CUSTOM|
|Common Package Codes|S, 2P, 4P, KIT, EDU, PRJ, BULK, SAMPLE|
|Certification Relevance|High|
|Engineering Owner|TBD|
|Product Owner|TBD|
|Compliance Owner|TBD|
|Public Use Approved?|Pending|
|Claim Boundary Notes|Electrical execution may be described when validated; energy monitoring requires validation; energy savings, load rating, and certification claims require evidence and approval|
|Approval Status|Pending Review|
|Revision Date|TBD|
|Change Log Reference|CR-PL-ACT-001|

### ZH-TW

|欄位|填寫|
|---|---|
|產品線代碼|ACT|
|產品線名稱|Artibird Act|
|產品類別|Hardware|
|系統角色|電力執行節點|
|面向客戶基礎名稱|Artibird Act|
|內部型號前綴|ACT|
|允許世代代碼|G1、G2|
|允許版本代碼|STD、E、RLY、OUT、PRO、CUSTOM|
|限制版本代碼|E、RLY、OUT、PRO、CUSTOM|
|常用包裝代碼|S、2P、4P、KIT、EDU、PRJ、BULK、SAMPLE|
|認證相關性|High|
|工程負責人|TBD|
|產品負責人|TBD|
|合規負責人|TBD|
|是否核准公開使用|Pending|
|宣稱邊界備註|已驗證後可描述電力執行；能源監測需要驗證；節能、負載額定與認證宣稱需要證據與核准|
|核准狀態|Pending Review|
|修訂日期|TBD|
|變更記錄引用|CR-PL-ACT-001|

---

## 26.15 Completed Example — SW Product Line

## 26.15 完整示例 — SW 產品線

### EN

|Field|Entry|
|---|---|
|Product Line Code|SW|
|Product Line Name|Artibird Switch|
|Product Category|Hardware|
|System Role|Switch / event / manual input and control product|
|Customer-Facing Base Name|Artibird Switch|
|Internal Model Prefix|SW|
|Allowed Generation Codes|G1, G2|
|Allowed Variant Codes|SCN, RLY, DIM, STD, CUSTOM|
|Restricted Variant Codes|RLY, DIM, CUSTOM|
|Common Package Codes|S, 2P, 4P, KIT, EDU, PRJ, BULK, SAMPLE|
|Certification Relevance|High|
|Engineering Owner|TBD|
|Product Owner|TBD|
|Compliance Owner|TBD|
|Public Use Approved?|Pending|
|Claim Boundary Notes|Scene switch must be treated as event-only unless relay output exists; relay and dimmer variants require electrical, load, and safety validation|
|Approval Status|Pending Review|
|Revision Date|TBD|
|Change Log Reference|CR-PL-SW-001|

### ZH-TW

|欄位|填寫|
|---|---|
|產品線代碼|SW|
|產品線名稱|Artibird Switch|
|產品類別|Hardware|
|系統角色|開關 / 事件 / 手動輸入與控制產品|
|面向客戶基礎名稱|Artibird Switch|
|內部型號前綴|SW|
|允許世代代碼|G1、G2|
|允許版本代碼|SCN、RLY、DIM、STD、CUSTOM|
|限制版本代碼|RLY、DIM、CUSTOM|
|常用包裝代碼|S、2P、4P、KIT、EDU、PRJ、BULK、SAMPLE|
|認證相關性|High|
|工程負責人|TBD|
|產品負責人|TBD|
|合規負責人|TBD|
|是否核准公開使用|Pending|
|宣稱邊界備註|Scene switch 必須被視為 event-only，除非存在繼電器輸出；Relay 與 Dimmer 版本需要電氣、負載與安全驗證|
|核准狀態|Pending Review|
|修訂日期|TBD|
|變更記錄引用|CR-PL-SW-001|

---

## 26.16 Product Line Change Rules

## 26.16 產品線變更規則

### EN

|Change Scenario|Product Line Master Review Required?|Notes|
|---|--:|---|
|New product line is created|Yes|New product line code required|
|Product line code changes|Yes|Strongly restricted after use|
|Product line name changes|Yes|Public, SKU, package, and channel impact|
|System role changes|Yes|May affect architecture and naming|
|Allowed variant list changes|Yes|Variant governance impact|
|Restricted variant list changes|Yes|Claim and compliance impact|
|Package compatibility changes|Yes|SKU and package record impact|
|Certification relevance changes|Yes|Compliance review required|
|Customer-facing base name changes|Yes|Website, package, Amazon, and catalog impact|
|Internal model prefix changes|Yes|Engineering, firmware, and SKU mapping impact|
|Claim boundary changes|Yes|Legal, compliance, and commercial review required|

### ZH-TW

|變更場景|是否需要產品線主表審查？|備註|
|---|--:|---|
|建立新產品線|是|需要新產品線代碼|
|產品線代碼變更|是|使用後高度限制|
|產品線名稱變更|是|影響公開、SKU、包裝與渠道|
|系統角色變更|是|可能影響架構與命名|
|允許版本清單變更|是|影響版本治理|
|限制版本清單變更|是|影響宣稱與合規|
|包裝相容性變更|是|影響 SKU 與包裝記錄|
|認證相關性變更|是|需要合規審查|
|面向客戶基礎名稱變更|是|影響網站、包裝、Amazon 與型錄|
|內部型號前綴變更|是|影響工程、韌體與 SKU 映射|
|宣稱邊界變更|是|需要法律、合規與商業審查|

---

## 26.17 Product Line Master Table Governance Rules

## 26.17 產品線主表治理規則

### EN

|Rule|Requirement|
|---|---|
|Product line codes must be approved before SKU creation|No SKU should use an unapproved product line code|
|Product line names must remain stable|Public and operational consistency depends on stable names|
|Internal model prefix must match product line identity|Prevents engineering and SKU mismatch|
|Allowed variants must be listed|Prevents unsupported variant creation|
|Restricted variants must be reviewed|Prevents unsafe or unsupported claims|
|Package compatibility must be defined|Prevents incorrect kit, FBA, or project package use|
|Certification relevance must be recorded|Supports compliance planning|
|Claim boundaries must be defined|Prevents overclaiming|
|Deprecated product lines must remain archived|Historical SKU traceability must be preserved|
|Product line changes require change log|No silent changes allowed|

### ZH-TW

|規則|要求|
|---|---|
|產品線代碼必須在 SKU 建立前核准|不得使用未核准產品線代碼建立 SKU|
|產品線名稱必須保持穩定|公開與運營一致性依賴穩定名稱|
|內部型號前綴必須匹配產品線身份|防止工程與 SKU 映射錯誤|
|必須列出允許版本|防止建立未支援版本|
|限制版本必須審查|防止不安全或未支援宣稱|
|必須定義包裝相容性|防止錯誤使用套組、FBA 或專案包|
|必須記錄認證相關性|支援合規規劃|
|必須定義宣稱邊界|防止過度宣稱|
|已停用產品線必須歸檔|必須保留歷史 SKU 可追蹤性|
|產品線變更必須有變更記錄|不允許靜默變更|

---

## 26.18 Spreadsheet Column Recommendation

## 26.18 表格欄位建議

### EN

For Excel, Google Sheets, Airtable, ERP staging tables, or PLM reference tables, the following column order is recommended:

```text
Product Line Code
Product Line Name
Product Category
System Role
Customer-Facing Base Name
Internal Model Prefix
Allowed Generation Codes
Allowed Variant Codes
Restricted Variant Codes
Common Package Codes
Certification Relevance
Engineering Owner
Product Owner
Compliance Owner
Public Use Approved
Claim Boundary Notes
Approval Status
Revision Date
Change Log Reference
```

### ZH-TW

對於 Excel、Google Sheets、Airtable、ERP 暫存表或 PLM 參考表，建議使用以下欄位順序：

```text
Product Line Code
Product Line Name
Product Category
System Role
Customer-Facing Base Name
Internal Model Prefix
Allowed Generation Codes
Allowed Variant Codes
Restricted Variant Codes
Common Package Codes
Certification Relevance
Engineering Owner
Product Owner
Compliance Owner
Public Use Approved
Claim Boundary Notes
Approval Status
Revision Date
Change Log Reference
```

---

## 26.19 Chapter Conclusion

## 26.19 本章結論

### EN

The Product Line Master Table is the foundation of the Artibird SKU and model naming system.

Before any SKU, internal model, engineering model, certification model, manufacturing model, or package model name is created, the product line must first be defined and approved.

A controlled product line table ensures that Artibird Hub, Gate, Sync, Switch, Panel, Act, Sense, Vision, App, OceanAI Cloud, and OceanAI Edge remain structurally consistent across naming, engineering, certification, packaging, production, Amazon listing, sales, channel, support, retirement, and archival workflows.

### ZH-TW

產品線主表是 Artibird SKU 與型號命名系統的基礎。

在建立任何 SKU、內部型號、工程型號、認證型號、生產型號或包裝型號名稱之前，必須先定義並核准產品線。

受控的產品線主表可確保 Artibird Hub、Gate、Sync、Switch、Panel、Act、Sense、Vision、App、OceanAI Cloud 與 OceanAI Edge，在命名、工程、認證、包裝、生產、Amazon 上架、銷售、渠道、支持、退市與歸檔流程中保持結構一致。

---

**話題延伸｜互動建議**  
下一章可以繼續寫 **Chapter 27 — Region and Market Master Table｜第二十七章｜區域與市場主表**，把 US、CA、EU、UK、CN、TW、JP、AU、GL、INT 的市場用途、認證要求、標籤語言、包裝限制與銷售邊界整理成一張區域級主表。