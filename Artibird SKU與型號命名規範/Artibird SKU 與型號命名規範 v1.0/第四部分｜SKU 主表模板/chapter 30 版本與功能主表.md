# Artibird SKU & Model Naming Specification v1.0

# Artibird SKU 與型號命名規範 v1.0

## Chapter 30 — Variant and Function Master Table

## 第三十章｜版本與功能主表

---

## 30.1 Purpose

## 30.1 目的

### EN

This chapter defines the Variant and Function Master Table used by Artibird SKU records, internal model numbers, customer-facing model names, engineering records, certification records, packaging records, Amazon listings, product catalogs, and commercial claim reviews.

The variant code identifies the major functional, commercial, or deployment-specific version of a product.

The purpose of this chapter is to ensure that variant codes are used consistently and accurately across product planning, engineering validation, certification preparation, manufacturing, packaging, sales, support, and customer-facing communication.

### ZH-TW

本章定義 Artibird SKU 記錄、內部型號、面向客戶型號名稱、工程記錄、認證記錄、包裝記錄、Amazon 上架、產品型錄與商業宣稱審查中使用的版本與功能主表。

版本代碼用於識別產品的主要功能版本、商業版本或部署特定版本。

本章目的，是確保版本代碼在產品規劃、工程驗證、認證準備、生產、包裝、銷售、支持與面向客戶溝通中被一致且準確地使用。

---

## 30.2 Variant Code Definition

## 30.2 版本代碼定義

### EN

A variant code defines what major functional or commercial difference a SKU represents.

It answers the following questions:

|Question|Description|
|---|---|
|What kind of product version is this?|Standard, Pro, Energy, Scene, Relay, Dimmer, Climate, Camera, Edge, Education, Custom|
|Does the variant change product function?|Example: Scene vs Relay vs Dimmer|
|Does the variant change engineering requirements?|Example: Energy monitoring, relay output, camera, edge AI|
|Does the variant change certification scope?|Example: RF, AC load, dimming, camera, outdoor, power metering|
|Does the variant change customer-facing claims?|Example: Pro, Energy, Climate, Vision, Edge|
|Does the variant change package or channel use?|Example: EDU, CUSTOM, PROKIT|
|Does the variant require special approval?|Many variants require engineering, compliance, or legal review|

### ZH-TW

版本代碼定義某一 SKU 代表哪一種主要功能或商業差異。

它回答以下問題：

|問題|說明|
|---|---|
|這是哪一種產品版本？|Standard、Pro、Energy、Scene、Relay、Dimmer、Climate、Camera、Edge、Education、Custom|
|該版本是否改變產品功能？|例如 Scene vs Relay vs Dimmer|
|該版本是否改變工程要求？|例如能源監測、繼電器輸出、攝影機、邊緣 AI|
|該版本是否改變認證範圍？|例如 RF、AC 負載、調光、攝影機、戶外、電能計量|
|該版本是否改變面向客戶宣稱？|例如 Pro、Energy、Climate、Vision、Edge|
|該版本是否改變包裝或渠道用途？|例如 EDU、CUSTOM、PROKIT|
|該版本是否需要特殊核准？|多數版本需要工程、合規或法律審查|

---

## 30.3 Variant Governance Principle

## 30.3 版本治理原則

### EN

The core principle of variant governance is:

```text
One variant code = one controlled functional, commercial, or deployment-specific meaning.
```

A variant code must not be used as a vague marketing label.  
It must map to real product capability, validated behavior, package scope, or deployment condition.

For example:

```text
E = Energy-aware or energy-monitoring variant
```

It does not automatically mean:

```text
Energy saving
Certified energy metering
Utility-grade accuracy
Lower electricity bills
```

Those claims require measurement method, validation data, certification review where applicable, and approved claim wording.

### ZH-TW

版本治理的核心原則是：

```text
一個版本代碼 = 一種受控功能、商業或部署特定含義。
```

版本代碼不得作為模糊行銷標籤使用。  
它必須映射至真實產品能力、已驗證行為、包裝範圍或部署條件。

例如：

```text
E = 能源感知或電能監測版本
```

它不自動代表：

```text
節能
已認證電能計量
公用事業級精度
降低電費
```

這些宣稱需要測量方法、驗證數據、適用時的認證審查，以及已核准宣稱文字。

---

## 30.4 Standard Variant and Function Master Table

## 30.4 標準版本與功能主表

### EN

|Variant Code|Variant Name|Meaning|Typical Use|
|---|---|---|---|
|STD|Standard|Base standard configuration|Most product lines|
|PRO|Professional|Enhanced or professional configuration|Gate, Hub, Panel, Edge, Vision|
|MINI|Mini|Smaller or simplified configuration|Hub, Gate, Sync, Sense|
|E|Energy|Energy-aware or energy-monitoring version|Act, Plug, energy kits|
|SCN|Scene|Scene trigger or event-only version|Switch|
|RLY|Relay|Relay-based control or execution version|Switch, Act|
|DIM|Dimmer|Dimming-capable version|Switch, lighting control|
|CLM|Climate|Climate or environmental sensing version|Sense|
|CAM|Camera|Camera or visual input version|Vision|
|EDGE|Edge|Edge intelligence or local AI-related version|Vision, Edge|
|IR|Infrared|Infrared-only capability version|Sync|
|RF|Radio Frequency|RF-only capability version|Sync|
|IRRF|Infrared + RF|Combined IR and RF capability version|Sync|
|OUT|Outdoor|Outdoor-oriented configuration|Gate, Act, Sense, Vision|
|EDU|Education|Education-oriented configuration|Kits, Panel, Hub, Cloud|
|CUSTOM|Custom|Project-specific or custom configuration|B2B projects|
|BETA|Beta|Pre-release software or controlled trial version|App, software, cloud|
|DEV|Development|Engineering or development-only version|Internal use only|

### ZH-TW

|版本代碼|版本名稱|含義|典型用途|
|---|---|---|---|
|STD|Standard|基礎標準配置|大多數產品線|
|PRO|Professional|增強或專業配置|Gate、Hub、Panel、Edge、Vision|
|MINI|Mini|更小或精簡配置|Hub、Gate、Sync、Sense|
|E|Energy|能源感知或電能監測版本|Act、Plug、能源套組|
|SCN|Scene|場景觸發或 event-only 版本|Switch|
|RLY|Relay|繼電器控制或執行版本|Switch、Act|
|DIM|Dimmer|支援調光版本|Switch、照明控制|
|CLM|Climate|氣候或環境感知版本|Sense|
|CAM|Camera|攝影機或視覺輸入版本|Vision|
|EDGE|Edge|邊緣智慧或本地 AI 相關版本|Vision、Edge|
|IR|Infrared|紅外-only 能力版本|Sync|
|RF|Radio Frequency|RF-only 能力版本|Sync|
|IRRF|Infrared + RF|IR 與 RF 複合能力版本|Sync|
|OUT|Outdoor|戶外導向配置|Gate、Act、Sense、Vision|
|EDU|Education|教育導向配置|套組、Panel、Hub、Cloud|
|CUSTOM|Custom|專案特定或客製配置|B2B 專案|
|BETA|Beta|預發布軟體或受控試用版本|App、軟體、雲端|
|DEV|Development|工程或開發-only 版本|僅限內部使用|

---

## 30.5 Variant Code Usage in SKU Format

## 30.5 版本代碼在 SKU 格式中的使用

### EN

The variant code appears in the seventh field of the official SKU structure:

```text
ATB-[PRODUCT]-[GEN]-[REGION]-[CONNECTIVITY]-[POWER]-[VARIANT]-[PACKAGE]
```

Example:

```text
ATB-ACT-G1-US-WF-AC-E-S
```

This means:

|Field|Value|Meaning|
|---|---|---|
|Brand|ATB|Artibird|
|Product|ACT|Artibird Act|
|Generation|G1|First generation|
|Region|US|United States market configuration|
|Connectivity|WF|Wi-Fi|
|Power|AC|AC mains-powered|
|Variant|E|Energy-aware version|
|Package|S|Single unit|

The variant code must match actual product capability, engineering records, certification scope, packaging text, Amazon listing, and customer-facing claims.

### ZH-TW

版本代碼出現在官方 SKU 結構的第七個欄位：

```text
ATB-[產品]-[世代]-[區域]-[連接]-[供電]-[版本]-[包裝]
```

示例：

```text
ATB-ACT-G1-US-WF-AC-E-S
```

表示：

|欄位|數值|含義|
|---|---|---|
|品牌|ATB|Artibird|
|產品|ACT|Artibird Act|
|世代|G1|第一代|
|區域|US|美國市場配置|
|連接|WF|Wi-Fi|
|供電|AC|AC 市電供電|
|版本|E|能源感知版本|
|包裝|S|單品|

版本代碼必須匹配實際產品能力、工程記錄、認證範圍、包裝文字、Amazon 上架與面向客戶宣稱。

---

## 30.6 Standard Variant Code — STD

## 30.6 標準版本代碼 — STD

### EN

The STD code is used for the standard baseline configuration of a product.

|Field|Requirement|
|---|---|
|Variant Code|STD|
|Variant Name|Standard|
|Typical Product Lines|Hub, Gate, Sync, Switch, Panel, Act, Sense, App, Cloud|
|Engineering Impact|Baseline engineering configuration|
|Certification Impact|Depends on product line, power, connectivity, and region|
|Claim Boundary|Do not imply advanced, Pro, energy, AI, camera, dimming, or outdoor capability unless separately supported|

STD should represent the simplest approved configuration of a product line.

### ZH-TW

STD 代碼用於產品的標準基礎配置。

|欄位|要求|
|---|---|
|版本代碼|STD|
|版本名稱|Standard|
|典型產品線|Hub、Gate、Sync、Switch、Panel、Act、Sense、App、Cloud|
|工程影響|基礎工程配置|
|認證影響|取決於產品線、供電、連接與區域|
|宣稱邊界|除非另有支持，不得暗示進階、Pro、能源、AI、攝影機、調光或戶外能力|

STD 應代表某一產品線最簡單的已核准配置。

---

## 30.7 Professional Variant Code — PRO

## 30.7 專業版本代碼 — PRO

### EN

The PRO code is used for a documented professional or enhanced configuration.

|Field|Requirement|
|---|---|
|Variant Code|PRO|
|Variant Name|Professional|
|Typical Product Lines|Gate, Hub, Panel, Vision, Edge|
|Engineering Impact|Must represent enhanced hardware, software, interface, deployment, or system capability|
|Certification Impact|May increase certification scope depending on added capability|
|Commercial Impact|May support professional channel, project deployment, or higher-tier package|
|Claim Boundary|Do not use PRO unless the difference from STD is documented|

PRO must not be used only because it sounds premium. It must reflect real configuration difference.

### ZH-TW

PRO 代碼用於已記錄的專業或增強配置。

|欄位|要求|
|---|---|
|版本代碼|PRO|
|版本名稱|Professional|
|典型產品線|Gate、Hub、Panel、Vision、Edge|
|工程影響|必須代表增強硬體、軟體、介面、部署或系統能力|
|認證影響|依新增能力可能擴大認證範圍|
|商業影響|可支援專業渠道、專案部署或更高階包裝|
|宣稱邊界|除非與 STD 的差異已記錄，否則不得使用 PRO|

PRO 不得僅因聽起來高階而使用。它必須反映真實配置差異。

---

## 30.8 Energy Variant Code — E

## 30.8 能源版本代碼 — E

### EN

The E code is used for energy-aware, energy-monitoring, or power-measurement-related products.

|Field|Requirement|
|---|---|
|Variant Code|E|
|Variant Name|Energy|
|Typical Product Lines|Act, Plug, energy kits, Cloud service records where applicable|
|Engineering Impact|Requires metering IC, current / voltage sensing, algorithm, calibration, or data reporting where applicable|
|Certification Impact|May affect electrical, safety, measurement, and label review|
|Commercial Impact|Supports energy dashboard, energy reporting, or energy-aware automation where validated|
|Claim Boundary|Do not claim energy savings, certified metering accuracy, or utility-grade measurement without evidence|

E means energy-aware capability. It does not automatically mean verified energy-saving performance.

### ZH-TW

E 代碼用於能源感知、電能監測或功率測量相關產品。

|欄位|要求|
|---|---|
|版本代碼|E|
|版本名稱|Energy|
|典型產品線|Act、Plug、能源套組、適用時的 Cloud 服務記錄|
|工程影響|適用時需要計量 IC、電流 / 電壓感測、算法、校準或數據報告|
|認證影響|可能影響電氣、安全、測量與標籤審查|
|商業影響|已驗證時可支援能源儀表板、能源報告或能源感知自動化|
|宣稱邊界|無證據前不得宣稱節能、已認證計量精度或公用事業級測量|

E 表示能源感知能力，不自動代表已驗證節能效果。

---

## 30.9 Scene Variant Code — SCN

## 30.9 場景版本代碼 — SCN

### EN

The SCN code is used for scene-triggering or event-only products.

|Field|Requirement|
|---|---|
|Variant Code|SCN|
|Variant Name|Scene|
|Typical Product Lines|Switch|
|Engineering Impact|Event input, BLE / BLE Mesh behavior, battery profile, button / touch input|
|Certification Impact|Wireless and battery review may apply|
|Commercial Impact|Used for scene switch, scene transmitter, or event input product|
|Claim Boundary|Must not imply load control, relay output, dimming, or direct power switching|

For Artibird planning, the battery-powered nRF52833 single-live switch should be treated as SCN when it functions as an event-only scene transmitter.

### ZH-TW

SCN 代碼用於場景觸發或 event-only 產品。

|欄位|要求|
|---|---|
|版本代碼|SCN|
|版本名稱|Scene|
|典型產品線|Switch|
|工程影響|事件輸入、BLE / BLE Mesh 行為、電池功耗特性、按鍵 / 觸控輸入|
|認證影響|可能涉及無線與電池審查|
|商業影響|用於場景開關、場景發射器或事件輸入產品|
|宣稱邊界|不得暗示負載控制、繼電器輸出、調光或直接電力開關|

在 Artibird 規劃中，電池供電 nRF52833 單火開關若作為 event-only 場景發射器，應歸為 SCN。

---

## 30.10 Relay Variant Code — RLY

## 30.10 繼電器版本代碼 — RLY

### EN

The RLY code is used for products with relay-based control or relay execution capability.

|Field|Requirement|
|---|---|
|Variant Code|RLY|
|Variant Name|Relay|
|Typical Product Lines|Switch, Act|
|Engineering Impact|Relay selection, load rating, isolation, protection, thermal design, fail-safe behavior|
|Certification Impact|High for AC, in-wall, plug, and load-control products|
|Commercial Impact|Allows relay-control product positioning where validated|
|Claim Boundary|Do not claim load rating, motor compatibility, dimming, or safety certification without validation|

RLY must be used only when the product includes actual relay output or relay-based execution.

### ZH-TW

RLY 代碼用於具備繼電器控制或繼電器執行能力的產品。

|欄位|要求|
|---|---|
|版本代碼|RLY|
|版本名稱|Relay|
|典型產品線|Switch、Act|
|工程影響|繼電器選型、負載額定、隔離、保護、熱設計、故障安全行為|
|認證影響|對 AC、牆內、插座與負載控制產品影響高|
|商業影響|已驗證時可作為繼電器控制產品定位|
|宣稱邊界|未驗證前不得宣稱負載額定、馬達相容、調光或安全認證|

RLY 只有在產品具備實際繼電器輸出或繼電器執行能力時才可使用。

---

## 30.11 Dimmer Variant Code — DIM

## 30.11 調光版本代碼 — DIM

### EN

The DIM code is used for dimming-capable lighting control products.

|Field|Requirement|
|---|---|
|Variant Code|DIM|
|Variant Name|Dimmer|
|Typical Product Lines|Switch, lighting-control products|
|Engineering Impact|Dimming topology, MOSFET / TRIAC selection, load compatibility, thermal design, EMI / EMC behavior|
|Certification Impact|High|
|Commercial Impact|Allows dimmer product positioning only after load validation|
|Claim Boundary|Do not claim flicker-free, no-noise, universal LED compatibility, or all-load dimming without validation|

DIM must not be used for simple relay switches.

### ZH-TW

DIM 代碼用於具備調光能力的照明控制產品。

|欄位|要求|
|---|---|
|版本代碼|DIM|
|版本名稱|Dimmer|
|典型產品線|Switch、照明控制產品|
|工程影響|調光拓撲、MOSFET / TRIAC 選型、負載相容性、熱設計、EMI / EMC 行為|
|認證影響|高|
|商業影響|只有完成負載驗證後，才可作為調光產品定位|
|宣稱邊界|未驗證前不得宣稱無頻閃、無噪音、通用 LED 相容或支援所有負載調光|

DIM 不得用於普通繼電器開關。

---

## 30.12 Climate Variant Code — CLM

## 30.12 氣候版本代碼 — CLM

### EN

The CLM code is used for climate or environmental sensing products.

|Field|Requirement|
|---|---|
|Variant Code|CLM|
|Variant Name|Climate|
|Typical Product Lines|Sense|
|Engineering Impact|Temperature, humidity, light, occupancy-related input, sensor calibration, sampling rate|
|Certification Impact|Usually medium; wireless and battery review may apply|
|Commercial Impact|Supports environmental sensing, climate context, or energy-context use cases|
|Claim Boundary|Do not claim medical-grade, safety-grade, precision metering, or HVAC control accuracy without validation|

CLM may describe environmental context, but it must not overstate sensor accuracy.

### ZH-TW

CLM 代碼用於氣候或環境感知產品。

|欄位|要求|
|---|---|
|版本代碼|CLM|
|版本名稱|Climate|
|典型產品線|Sense|
|工程影響|溫度、濕度、光照、人體存在相關輸入、感測校準、採樣率|
|認證影響|通常為中等；可能涉及無線與電池審查|
|商業影響|支援環境感知、氣候上下文或能源上下文使用場景|
|宣稱邊界|未驗證前不得宣稱醫療級、安全級、精密計量或 HVAC 控制精度|

CLM 可描述環境上下文，但不得過度宣稱感測精度。

---

## 30.13 Camera Variant Code — CAM

## 30.13 攝影機版本代碼 — CAM

### EN

The CAM code is used for products with camera or visual input capability.

|Field|Requirement|
|---|---|
|Variant Code|CAM|
|Variant Name|Camera|
|Typical Product Lines|Vision|
|Engineering Impact|Camera module, image pipeline, privacy indicator, storage, network, security|
|Certification Impact|Medium to High depending on wireless, power, enclosure, and market|
|Commercial Impact|Supports visual monitoring or visual context products where validated|
|Claim Boundary|Do not imply facial recognition, surveillance, security decision-making, or AI detection unless approved|

CAM products require privacy, data handling, cybersecurity, and claim review.

### ZH-TW

CAM 代碼用於具備攝影機或視覺輸入能力的產品。

|欄位|要求|
|---|---|
|版本代碼|CAM|
|版本名稱|Camera|
|典型產品線|Vision|
|工程影響|攝影機模組、影像管線、隱私指示、儲存、網路、安全|
|認證影響|取決於無線、供電、外殼與市場，通常為中至高|
|商業影響|已驗證時可支援視覺監測或視覺上下文產品|
|宣稱邊界|未核准前不得暗示人臉識別、監控、安全決策或 AI 偵測|

CAM 產品需要隱私、數據處理、網路安全與宣稱審查。

---

## 30.14 Edge Variant Code — EDGE

## 30.14 邊緣版本代碼 — EDGE

### EN

The EDGE code is used for products with edge intelligence, local AI inference, local processing, or edge-assisted perception.

|Field|Requirement|
|---|---|
|Variant Code|EDGE|
|Variant Name|Edge|
|Typical Product Lines|Vision, Edge|
|Engineering Impact|Local inference engine, model runtime, compute module, memory, thermal, storage, sensor fusion|
|Certification Impact|Depends on hardware, wireless, camera, power, and enclosure|
|Commercial Impact|Supports local AI or edge intelligence positioning where validated|
|Claim Boundary|Do not claim autonomous AI, safety decisions, unlimited model capability, or guaranteed intelligence without validation|

EDGE must define what local processing is actually performed and what remains cloud-dependent or unsupported.

### ZH-TW

EDGE 代碼用於具備邊緣智慧、本地 AI 推理、本地處理或邊緣輔助感知的產品。

|欄位|要求|
|---|---|
|版本代碼|EDGE|
|版本名稱|Edge|
|典型產品線|Vision、Edge|
|工程影響|本地推理引擎、模型 Runtime、運算模組、記憶體、熱、儲存、感測融合|
|認證影響|取決於硬體、無線、攝影機、供電與外殼|
|商業影響|已驗證時可支援本地 AI 或邊緣智慧定位|
|宣稱邊界|未驗證前不得宣稱自主 AI、安全決策、無限制模型能力或保證智慧效果|

EDGE 必須定義實際執行哪些本地處理，以及哪些仍依賴雲端或尚不支援。

---

## 30.15 Infrared / RF Variant Codes — IR, RF, IRRF

## 30.15 紅外 / 射頻版本代碼 — IR、RF、IRRF

### EN

IR, RF, and IRRF may be used as variant codes when the primary product difference is control capability.

|Variant Code|Use Case|Claim Boundary|
|---|---|---|
|IR|Infrared-only control or learning|Must define supported device types and protocol scope|
|RF|RF-only control or learning|Must define frequency, protocol type, and regional approval|
|IRRF|Combined infrared and RF capability|Must define both IR and RF support scope|

These variants are most suitable for Artibird Sync. They must not imply universal compatibility.

### ZH-TW

當主要產品差異是控制能力時，可使用 IR、RF 與 IRRF 作為版本代碼。

|版本代碼|使用場景|宣稱邊界|
|---|---|---|
|IR|紅外-only 控制或學習|必須定義支援設備類型與協議範圍|
|RF|RF-only 控制或學習|必須定義頻率、協議類型與區域核准|
|IRRF|紅外與 RF 複合能力|必須同時定義 IR 與 RF 支援範圍|

這些版本最適合 Artibird Sync，不得暗示 universal 相容性。

---

## 30.16 Outdoor Variant Code — OUT

## 30.16 戶外版本代碼 — OUT

### EN

The OUT code is used for outdoor-oriented or environmental-exposure product configurations.

|Field|Requirement|
|---|---|
|Variant Code|OUT|
|Variant Name|Outdoor|
|Typical Product Lines|Gate, Act, Sense, Vision|
|Engineering Impact|Enclosure, seal, UV resistance, thermal, humidity, dust, water, mounting|
|Certification Impact|Medium to High depending on exposure and region|
|Commercial Impact|May support outdoor deployment only after environmental validation|
|Claim Boundary|Do not claim waterproof, weatherproof, IP rating, or outdoor durability without testing|

OUT must be supported by environmental validation and label / manual review.

### ZH-TW

OUT 代碼用於戶外導向或會暴露於環境條件中的產品配置。

|欄位|要求|
|---|---|
|版本代碼|OUT|
|版本名稱|Outdoor|
|典型產品線|Gate、Act、Sense、Vision|
|工程影響|外殼、密封、抗 UV、熱、濕度、防塵、防水、安裝|
|認證影響|取決於暴露條件與區域，通常為中至高|
|商業影響|只有環境驗證完成後，才可支援戶外部署|
|宣稱邊界|未測試前不得宣稱防水、耐候、IP 等級或戶外耐用性|

OUT 必須由環境驗證與標籤 / 手冊審查支持。

---

## 30.17 Education Variant Code — EDU

## 30.17 教育版本代碼 — EDU

### EN

The EDU code is used for education-oriented configurations, classroom kits, school deployment packages, or institutional education use cases.

|Field|Requirement|
|---|---|
|Variant Code|EDU|
|Variant Name|Education|
|Typical Product Lines|Hub, Panel, Cloud, kits, project packages|
|Engineering Impact|May require classroom control flows, role-based access, multi-room management, simplified installation|
|Certification Impact|Depends on included hardware|
|Commercial Impact|Supports education channel, classroom deployment, school projects, and institutional quotes|
|Claim Boundary|Do not imply school procurement approval, safety certification, or learning outcome without evidence|

EDU should be tied to package, deployment, or channel records.

### ZH-TW

EDU 代碼用於教育導向配置、教室套組、學校部署包或機構教育使用場景。

|欄位|要求|
|---|---|
|版本代碼|EDU|
|版本名稱|Education|
|典型產品線|Hub、Panel、Cloud、套組、專案包|
|工程影響|可能需要教室控制流程、角色權限、多房間管理、簡化安裝|
|認證影響|取決於內含硬體|
|商業影響|支援教育渠道、教室部署、學校專案與機構報價|
|宣稱邊界|無證據前不得暗示已通過學校採購、安全認證或提升學習成效|

EDU 應與包裝、部署或渠道記錄綁定。

---

## 30.18 Custom Variant Code — CUSTOM

## 30.18 客製版本代碼 — CUSTOM

### EN

The CUSTOM code is used for project-specific or customer-specific configurations.

|Field|Requirement|
|---|---|
|Variant Code|CUSTOM|
|Variant Name|Custom|
|Typical Product Lines|Most product lines under B2B or project conditions|
|Engineering Impact|Must define exact changes from standard configuration|
|Certification Impact|Must be reviewed case by case|
|Commercial Impact|Used for project, institutional, integrator, or partner-specific deployments|
|Claim Boundary|Must not be treated as standard public product unless converted into released SKU|

CUSTOM records must include project scope, approval owner, deployment boundary, and support boundary.

### ZH-TW

CUSTOM 代碼用於專案特定或客戶特定配置。

|欄位|要求|
|---|---|
|版本代碼|CUSTOM|
|版本名稱|Custom|
|典型產品線|大多數產品線，在 B2B 或專案條件下使用|
|工程影響|必須定義與標準配置的確切差異|
|認證影響|必須逐案審查|
|商業影響|用於專案、機構、整合商或合作夥伴特定部署|
|宣稱邊界|除非轉換為已發布 SKU，否則不得視為標準公開產品|

CUSTOM 記錄必須包含專案範圍、核准負責人、部署邊界與支持邊界。

---

## 30.19 Beta and Development Variant Codes — BETA, DEV

## 30.19 測試與開發版本代碼 — BETA、DEV

### EN

BETA and DEV are restricted variant codes for software, firmware, cloud, app, or internal engineering use.

|Variant Code|Use Case|Restriction|
|---|---|---|
|BETA|Controlled pre-release trial|May be used for software, app, cloud, or controlled pilot only|
|DEV|Engineering development use|Internal engineering use only; not for public or commercial release|

BETA and DEV must not appear on public packaging, Amazon listings, or customer-facing product names unless specifically approved as a controlled trial program.

### ZH-TW

BETA 與 DEV 是受限制版本代碼，用於軟體、韌體、雲端、App 或內部工程用途。

|版本代碼|使用場景|限制|
|---|---|---|
|BETA|受控預發布試用|僅可用於軟體、App、雲端或受控試點|
|DEV|工程開發用途|僅限內部工程使用；不得用於公開或商業發布|

除非作為受控試用計劃獲得特別核准，BETA 與 DEV 不得出現在公開包裝、Amazon 上架或面向客戶產品名稱中。

---

## 30.20 Product Line Compatibility Matrix

## 30.20 產品線相容矩陣

### EN

|Product Line Code|STD|PRO|MINI|E|SCN|RLY|DIM|CLM|CAM|EDGE|IRRF|OUT|EDU|CUSTOM|
|---|--:|--:|--:|--:|--:|--:|--:|--:|--:|--:|--:|--:|--:|--:|
|HUB|Yes|Yes|Maybe|No|No|No|No|No|No|Maybe|No|No|Yes|Yes|
|GATE|Yes|Yes|Maybe|No|No|No|No|No|No|Maybe|Maybe|Maybe|Yes|Yes|
|SYNC|Yes|Maybe|Maybe|No|No|No|No|No|No|No|Yes|No|Maybe|Yes|
|SW|Yes|No|Maybe|No|Yes|Yes|Yes|No|No|No|No|No|Maybe|Yes|
|PNL|Yes|Yes|Maybe|No|Maybe|No|No|No|No|Maybe|No|No|Yes|Yes|
|ACT|Yes|Maybe|No|Yes|No|Yes|No|No|No|No|No|Maybe|Maybe|Yes|
|SNS|Yes|Maybe|Maybe|No|No|No|No|Yes|No|No|No|Maybe|Yes|Yes|
|VIS|Yes|Yes|Maybe|No|No|No|No|No|Yes|Yes|No|Maybe|Maybe|Yes|
|APP|Yes|Yes|No|No|No|No|No|No|No|Maybe|No|No|Yes|Yes|
|CLD|Yes|Yes|No|Maybe|No|No|No|No|No|Maybe|No|No|Yes|Yes|
|EDGE|Yes|Yes|No|No|No|No|No|No|Maybe|Yes|No|No|Maybe|Yes|

### ZH-TW

|產品線代碼|STD|PRO|MINI|E|SCN|RLY|DIM|CLM|CAM|EDGE|IRRF|OUT|EDU|CUSTOM|
|---|--:|--:|--:|--:|--:|--:|--:|--:|--:|--:|--:|--:|--:|--:|
|HUB|是|是|視情況|否|否|否|否|否|否|視情況|否|否|是|是|
|GATE|是|是|視情況|否|否|否|否|否|否|視情況|視情況|視情況|是|是|
|SYNC|是|視情況|視情況|否|否|否|否|否|否|否|是|否|視情況|是|
|SW|是|否|視情況|否|是|是|是|否|否|否|否|否|視情況|是|
|PNL|是|是|視情況|否|視情況|否|否|否|否|視情況|否|否|是|是|
|ACT|是|視情況|否|是|否|是|否|否|否|否|否|視情況|視情況|是|
|SNS|是|視情況|視情況|否|否|否|否|是|否|否|否|視情況|是|是|
|VIS|是|是|視情況|否|否|否|否|否|是|是|否|視情況|視情況|是|
|APP|是|是|否|否|否|否|否|否|否|視情況|否|否|是|是|
|CLD|是|是|否|視情況|否|否|否|否|否|視情況|否|否|是|是|
|EDGE|是|是|否|否|否|否|否|否|視情況|是|否|否|視情況|是|

---

## 30.21 Variant and Certification Impact Matrix

## 30.21 版本與認證影響矩陣

### EN

|Variant Code|Certification Impact|Review Notes|
|---|---|---|
|STD|Depends|Depends on product line, power, region, and connectivity|
|PRO|Medium to High|Added features may change certification scope|
|MINI|Low to Medium|Mechanical, RF, thermal, and adapter changes may apply|
|E|Medium to High|Energy measurement, AC, safety, label, and claim review may apply|
|SCN|Medium|Wireless and battery review may apply|
|RLY|High|Load, relay, AC, thermal, and safety review required|
|DIM|High|Dimming, load compatibility, EMC, thermal, and safety review required|
|CLM|Medium|Sensor, wireless, battery, and accuracy claim review may apply|
|CAM|Medium to High|Camera, privacy, wireless, EMC, and power review required|
|EDGE|Medium to High|AI, compute, thermal, privacy, and local data review required|
|IR / RF / IRRF|Medium to High|RF requires region-specific wireless review|
|OUT|Medium to High|Environmental and enclosure review required|
|EDU|Depends|Depends on included products and deployment context|
|CUSTOM|Case-by-case|Project-specific review required|
|BETA / DEV|Internal only|Public use requires special approval|

### ZH-TW

|版本代碼|認證影響|審查備註|
|---|---|---|
|STD|視情況|取決於產品線、供電、區域與連接|
|PRO|中至高|新增功能可能改變認證範圍|
|MINI|低至中|可能涉及機構、RF、熱與適配器變更|
|E|中至高|可能涉及能源測量、AC、安全、標籤與宣稱審查|
|SCN|中|可能涉及無線與電池審查|
|RLY|高|需要負載、繼電器、AC、熱與安全審查|
|DIM|高|需要調光、負載相容、EMC、熱與安全審查|
|CLM|中|可能涉及感測器、無線、電池與精度宣稱審查|
|CAM|中至高|需要攝影機、隱私、無線、EMC 與供電審查|
|EDGE|中至高|需要 AI、運算、熱、隱私與本地數據審查|
|IR / RF / IRRF|中至高|RF 需要區域特定無線審查|
|OUT|中至高|需要環境與外殼審查|
|EDU|視情況|取決於內含產品與部署上下文|
|CUSTOM|逐案審查|需要專案特定審查|
|BETA / DEV|僅內部|公開使用需要特別核准|

---

## 30.22 Variant Claim Boundary Rules

## 30.22 版本宣稱邊界規則

### EN

|Claim Type|Rule|
|---|---|
|“Standard”|Must not imply reduced compliance or lower safety|
|“Pro”|Must be backed by documented enhanced configuration|
|“Energy”|Must not imply savings, certified metering, or utility-grade accuracy without evidence|
|“Scene”|Must not imply load control or relay output|
|“Relay”|Must not imply all-load compatibility without validation|
|“Dimmer”|Must not imply universal LED compatibility, flicker-free, or no-noise without validation|
|“Climate”|Must not imply medical-grade or precision environmental measurement|
|“Camera”|Must not imply facial recognition, surveillance, or security decisions unless approved|
|“Edge”|Must not imply autonomous AI or unlimited local intelligence|
|“IR/RF”|Must not imply universal remote compatibility|
|“Outdoor”|Must not imply waterproof, IP rating, or weatherproof without testing|
|“Education”|Must not imply school procurement approval or learning outcome|
|“Custom”|Must not be treated as a public standard SKU unless converted and approved|
|“Beta / Dev”|Must not be used as standard commercial product names|

### ZH-TW

|宣稱類型|規則|
|---|---|
|“Standard”|不得暗示較低合規或較低安全|
|“Pro”|必須由已記錄增強配置支持|
|“Energy”|無證據前不得暗示節能、已認證計量或公用事業級精度|
|“Scene”|不得暗示負載控制或繼電器輸出|
|“Relay”|無驗證前不得暗示適用所有負載|
|“Dimmer”|無驗證前不得暗示通用 LED 相容、無頻閃或無噪音|
|“Climate”|不得暗示醫療級或精密環境測量|
|“Camera”|未核准前不得暗示人臉識別、監控或安全決策|
|“Edge”|不得暗示自主 AI 或無限制本地智慧|
|“IR/RF”|不得暗示 universal remote 相容性|
|“Outdoor”|未測試前不得暗示防水、IP 等級或耐候|
|“Education”|不得暗示學校採購核准或學習成效|
|“Custom”|除非轉換並核准，否則不得視為公開標準 SKU|
|“Beta / Dev”|不得作為標準商業產品名稱使用|

---

## 30.23 Variant Change Rules

## 30.23 版本變更規則

### EN

Changing a variant code is a controlled action. A new SKU, engineering model, certification model, manufacturing model, package record, label, Amazon listing, or customer-facing name may be required.

|Change Scenario|New SKU Required?|Additional Review|
|---|--:|---|
|STD changed to PRO|Usually yes|Product, engineering, commercial, claim review|
|STD changed to E|Yes|Energy measurement, engineering, certification, claim review|
|SCN changed to RLY|Yes|Hardware, relay, power, load, safety review|
|RLY changed to DIM|Yes|Dimming, load, thermal, EMC, certification review|
|CLM added to Sense product|Usually yes|Sensor validation and claim review|
|CAM added to Vision product|Yes|Camera, privacy, wireless, packaging, claim review|
|EDGE added to Vision product|Usually yes|AI, compute, privacy, thermal, claim review|
|IR product changed to IRRF|Yes|RF certification and compatibility review|
|Indoor product changed to OUT|Yes|Environmental, enclosure, label, certification review|
|EDU package changed to public retail SKU|Yes|Commercial, packaging, channel, claim review|
|CUSTOM converted to standard product|Yes|Full SKU approval and public release review|
|Variant typo in draft SKU|No, if unreleased|Correct draft record|
|Variant typo in released SKU|Change request required|Correction or replacement SKU may be needed|

### ZH-TW

變更版本代碼是一項受控動作。可能需要新 SKU、工程型號、認證型號、生產型號、包裝記錄、標籤、Amazon 上架或面向客戶名稱。

|變更場景|是否需要新 SKU？|附加審查|
|---|--:|---|
|STD 變更為 PRO|通常是|產品、工程、商業、宣稱審查|
|STD 變更為 E|是|能源測量、工程、認證、宣稱審查|
|SCN 變更為 RLY|是|硬體、繼電器、供電、負載、安全審查|
|RLY 變更為 DIM|是|調光、負載、熱、EMC、認證審查|
|Sense 產品新增 CLM|通常是|感測驗證與宣稱審查|
|Vision 產品新增 CAM|是|攝影機、隱私、無線、包裝、宣稱審查|
|Vision 產品新增 EDGE|通常是|AI、運算、隱私、熱、宣稱審查|
|IR 產品變更為 IRRF|是|RF 認證與相容性審查|
|室內產品變更為 OUT|是|環境、外殼、標籤、認證審查|
|EDU 包裝變更為公開零售 SKU|是|商業、包裝、渠道、宣稱審查|
|CUSTOM 轉換為標準產品|是|完整 SKU 核准與公開發布審查|
|草案 SKU 中版本代碼錯誤|若未發布則不需要|修正草案記錄|
|已發布 SKU 中版本代碼錯誤|需要變更申請|可能需要修正或替代 SKU|

---

## 30.24 Variant and Function Master Table Template

## 30.24 版本與功能主表模板

### EN

|Field|Entry|
|---|---|
|Variant Code|TBD|
|Variant Name|TBD|
|Variant Type|Functional / Commercial / Deployment / Software / Internal|
|Description|TBD|
|Typical Product Lines|TBD|
|Compatible Product Lines|TBD|
|Restricted Product Lines|TBD|
|Engineering Requirements|TBD|
|Certification Impact|Low / Medium / High / Case-by-case|
|Packaging Impact|TBD|
|Customer-Facing Name Impact|TBD|
|Amazon / Website Claim Impact|TBD|
|Claim Boundary Notes|TBD|
|Approval Status|Draft / Pending / Approved / Deprecated / Archived|
|Product Owner|TBD|
|Engineering Owner|TBD|
|Compliance Owner|TBD|
|Revision Date|TBD|
|Change Log Reference|TBD|

### ZH-TW

|欄位|填寫|
|---|---|
|版本代碼|TBD|
|版本名稱|TBD|
|版本類型|Functional / Commercial / Deployment / Software / Internal|
|說明|TBD|
|典型產品線|TBD|
|相容產品線|TBD|
|限制產品線|TBD|
|工程要求|TBD|
|認證影響|Low / Medium / High / Case-by-case|
|包裝影響|TBD|
|面向客戶名稱影響|TBD|
|Amazon / Website 宣稱影響|TBD|
|宣稱邊界備註|TBD|
|核准狀態|Draft / Pending / Approved / Deprecated / Archived|
|產品負責人|TBD|
|工程負責人|TBD|
|合規負責人|TBD|
|修訂日期|TBD|
|變更記錄引用|TBD|

---

## 30.25 Completed Example — E Variant Record

## 30.25 完整示例 — E 版本記錄

### EN

|Field|Entry|
|---|---|
|Variant Code|E|
|Variant Name|Energy|
|Variant Type|Functional|
|Description|Energy-aware or energy-monitoring version|
|Typical Product Lines|ACT, Plug-class products, energy kits, Cloud service records where applicable|
|Compatible Product Lines|ACT, selected CLD / KIT records|
|Restricted Product Lines|SW-SCN, PNL, VIS unless specifically approved|
|Engineering Requirements|Metering circuit, current / voltage sensing, calibration, firmware data reporting, validation data|
|Certification Impact|Medium to High|
|Packaging Impact|Energy capability must be described accurately and not overclaimed|
|Customer-Facing Name Impact|May use Act-E or Energy Starter Kit where approved|
|Amazon / Website Claim Impact|Energy monitoring may be described only after validation|
|Claim Boundary Notes|No energy savings, utility-grade accuracy, or certified metering claim without evidence and approval|
|Approval Status|Pending Review|
|Product Owner|TBD|
|Engineering Owner|TBD|
|Compliance Owner|TBD|
|Revision Date|TBD|
|Change Log Reference|CR-VAR-E-001|

### ZH-TW

|欄位|填寫|
|---|---|
|版本代碼|E|
|版本名稱|Energy|
|版本類型|Functional|
|說明|能源感知或電能監測版本|
|典型產品線|ACT、Plug 類產品、能源套組、適用時的 Cloud 服務記錄|
|相容產品線|ACT、特定 CLD / KIT 記錄|
|限制產品線|SW-SCN、PNL、VIS，除非特別核准|
|工程要求|計量電路、電流 / 電壓感測、校準、韌體數據報告、驗證數據|
|認證影響|Medium to High|
|包裝影響|必須準確描述能源能力，不得過度宣稱|
|面向客戶名稱影響|核准後可使用 Act-E 或 Energy Starter Kit|
|Amazon / Website 宣稱影響|僅在驗證後可描述電能監測|
|宣稱邊界備註|無證據與核准前，不得宣稱節能、公用事業級精度或已認證計量|
|核准狀態|Pending Review|
|產品負責人|TBD|
|工程負責人|TBD|
|合規負責人|TBD|
|修訂日期|TBD|
|變更記錄引用|CR-VAR-E-001|

---

## 30.26 Completed Example — SCN Variant Record

## 30.26 完整示例 — SCN 版本記錄

### EN

|Field|Entry|
|---|---|
|Variant Code|SCN|
|Variant Name|Scene|
|Variant Type|Functional|
|Description|Scene trigger or event-only input version|
|Typical Product Lines|SW|
|Compatible Product Lines|SW battery-powered or event-only products|
|Restricted Product Lines|Load-control products unless separately approved|
|Engineering Requirements|Button / touch input, BLE / BLE Mesh event transmission, battery profile, wake strategy|
|Certification Impact|Medium|
|Packaging Impact|Must clearly state scene / event use where needed|
|Customer-Facing Name Impact|May use Artibird Switch Scene|
|Amazon / Website Claim Impact|Must not imply relay, load control, or dimming|
|Claim Boundary Notes|Event-only switch; no load-control claim unless hardware supports load control and new SKU is approved|
|Approval Status|Pending Review|
|Product Owner|TBD|
|Engineering Owner|TBD|
|Compliance Owner|TBD|
|Revision Date|TBD|
|Change Log Reference|CR-VAR-SCN-001|

### ZH-TW

|欄位|填寫|
|---|---|
|版本代碼|SCN|
|版本名稱|Scene|
|版本類型|Functional|
|說明|場景觸發或 event-only 輸入版本|
|典型產品線|SW|
|相容產品線|SW 電池供電或 event-only 產品|
|限制產品線|負載控制產品，除非另行核准|
|工程要求|按鍵 / 觸控輸入、BLE / BLE Mesh 事件傳輸、電池功耗特性、喚醒策略|
|認證影響|Medium|
|包裝影響|必要時必須清楚說明場景 / 事件用途|
|面向客戶名稱影響|可使用 Artibird Switch Scene|
|Amazon / Website 宣稱影響|不得暗示繼電器、負載控制或調光|
|宣稱邊界備註|Event-only 開關；除非硬體支援負載控制且新 SKU 已核准，否則不得宣稱負載控制|
|核准狀態|Pending Review|
|產品負責人|TBD|
|工程負責人|TBD|
|合規負責人|TBD|
|修訂日期|TBD|
|變更記錄引用|CR-VAR-SCN-001|

---

## 30.27 Completed Example — EDGE Variant Record

## 30.27 完整示例 — EDGE 版本記錄

### EN

|Field|Entry|
|---|---|
|Variant Code|EDGE|
|Variant Name|Edge|
|Variant Type|Functional / System-layer|
|Description|Edge intelligence, local inference, or local AI-assisted processing version|
|Typical Product Lines|VIS, EDGE|
|Compatible Product Lines|VIS, EDGE, selected Hub or Cloud-linked system records|
|Restricted Product Lines|SW, ACT, SNS unless explicitly approved|
|Engineering Requirements|Local compute, model runtime, memory, storage, thermal design, inference boundary, data handling|
|Certification Impact|Medium to High|
|Packaging Impact|Must accurately describe local processing and privacy boundary|
|Customer-Facing Name Impact|May use Artibird Vision Edge or OceanAI Edge where approved|
|Amazon / Website Claim Impact|AI and local intelligence claims require validation|
|Claim Boundary Notes|No autonomous AI, safety decision, unrestricted model, or guaranteed intelligence claim without validation|
|Approval Status|Pending Review|
|Product Owner|TBD|
|Engineering Owner|TBD|
|Compliance Owner|TBD|
|Revision Date|TBD|
|Change Log Reference|CR-VAR-EDGE-001|

### ZH-TW

|欄位|填寫|
|---|---|
|版本代碼|EDGE|
|版本名稱|Edge|
|版本類型|Functional / System-layer|
|說明|邊緣智慧、本地推理或本地 AI 輔助處理版本|
|典型產品線|VIS、EDGE|
|相容產品線|VIS、EDGE、特定 Hub 或 Cloud-linked 系統記錄|
|限制產品線|SW、ACT、SNS，除非明確核准|
|工程要求|本地運算、模型 Runtime、記憶體、儲存、熱設計、推理邊界、數據處理|
|認證影響|Medium to High|
|包裝影響|必須準確描述本地處理與隱私邊界|
|面向客戶名稱影響|核准後可使用 Artibird Vision Edge 或 OceanAI Edge|
|Amazon / Website 宣稱影響|AI 與本地智慧宣稱需要驗證|
|宣稱邊界備註|無驗證前不得宣稱自主 AI、安全決策、不受限制模型或保證智慧效果|
|核准狀態|Pending Review|
|產品負責人|TBD|
|工程負責人|TBD|
|合規負責人|TBD|
|修訂日期|TBD|
|變更記錄引用|CR-VAR-EDGE-001|

---

## 30.28 Variant Master Governance Rules

## 30.28 版本主表治理規則

### EN

|Rule|Requirement|
|---|---|
|Variant codes must be approved before SKU creation|No SKU should use an undefined variant code|
|Variant code must match actual capability|Do not encode planned capability as current capability|
|Functional variants require engineering mapping|E, RLY, DIM, CAM, EDGE, IRRF require technical records|
|Safety-impacting variants require compliance review|RLY, DIM, AC-related, OUT, battery, and energy variants require review|
|Claim-sensitive variants require legal / compliance review|E, CAM, EDGE, OUT, EDU, PRO require claim control|
|SCN must remain event-only unless hardware changes|Scene switch must not be confused with relay switch|
|CUSTOM must remain bounded|Custom SKU must define project and support scope|
|BETA and DEV must remain controlled|Not for normal public commercial release|
|Variant changes require change control|No silent variant change|
|Deprecated variant codes must remain archived|Historical SKU traceability must be preserved|

### ZH-TW

|規則|要求|
|---|---|
|版本代碼必須在 SKU 建立前核准|不得使用未定義版本代碼建立 SKU|
|版本代碼必須匹配實際能力|不得將計劃能力編為當前能力|
|功能版本需要工程映射|E、RLY、DIM、CAM、EDGE、IRRF 需要技術記錄|
|影響安全的版本需要合規審查|RLY、DIM、AC 相關、OUT、電池與能源版本需要審查|
|宣稱敏感版本需要法律 / 合規審查|E、CAM、EDGE、OUT、EDU、PRO 需要宣稱管控|
|SCN 必須保持 event-only，除非硬體變更|場景開關不得與繼電器開關混淆|
|CUSTOM 必須保持邊界|客製 SKU 必須定義專案與支持範圍|
|BETA 與 DEV 必須受控|不用於正常公開商業發布|
|版本變更需要變更管控|不得靜默變更版本|
|已停用版本代碼必須歸檔|必須保留歷史 SKU 可追蹤性|

---

## 30.29 Spreadsheet Column Recommendation

## 30.29 表格欄位建議

### EN

For Excel, Google Sheets, Airtable, ERP staging tables, or PLM reference tables, the following column order is recommended:

```text
Variant Code
Variant Name
Variant Type
Description
Typical Product Lines
Compatible Product Lines
Restricted Product Lines
Engineering Requirements
Certification Impact
Packaging Impact
Customer-Facing Name Impact
Amazon / Website Claim Impact
Claim Boundary Notes
Approval Status
Product Owner
Engineering Owner
Compliance Owner
Revision Date
Change Log Reference
```

### ZH-TW

對於 Excel、Google Sheets、Airtable、ERP 暫存表或 PLM 參考表，建議使用以下欄位順序：

```text
Variant Code
Variant Name
Variant Type
Description
Typical Product Lines
Compatible Product Lines
Restricted Product Lines
Engineering Requirements
Certification Impact
Packaging Impact
Customer-Facing Name Impact
Amazon / Website Claim Impact
Claim Boundary Notes
Approval Status
Product Owner
Engineering Owner
Compliance Owner
Revision Date
Change Log Reference
```

---

## 30.30 Chapter Conclusion

## 30.30 本章結論

### EN

The Variant and Function Master Table controls how Artibird products describe major functional, commercial, deployment, software, and project-specific differences.

Variant codes are not decorative naming elements. They define what the product is allowed to be, what it is allowed to claim, what engineering evidence is required, what certification review may apply, and how the SKU may be packaged, sold, supported, and governed.

A controlled variant table allows Artibird to manage STD, PRO, MINI, E, SCN, RLY, DIM, CLM, CAM, EDGE, IR, RF, IRRF, OUT, EDU, CUSTOM, BETA, and DEV records consistently across SKU creation, engineering validation, certification review, manufacturing, packaging, Amazon listing, channel release, support, retirement, and lifecycle governance.

### ZH-TW

版本與功能主表管控 Artibird 產品如何描述主要功能差異、商業差異、部署差異、軟體差異與專案特定差異。

版本代碼不是裝飾性命名元素。它定義產品被允許成為什麼、被允許宣稱什麼、需要哪些工程證據、可能涉及哪些認證審查，以及該 SKU 如何被包裝、銷售、支持與治理。

受控的版本主表，可使 Artibird 在 SKU 建立、工程驗證、認證審查、生產、包裝、Amazon 上架、渠道發布、支持、退市與生命週期治理中，一致管理 STD、PRO、MINI、E、SCN、RLY、DIM、CLM、CAM、EDGE、IR、RF、IRRF、OUT、EDU、CUSTOM、BETA 與 DEV 記錄。

---

**話題延伸｜互動建議**  
下一章可以繼續寫 **Chapter 31 — Package Code Master Table｜第三十一章｜包裝代碼主表**，把 S、2P、4P、KIT、PROKIT、EDU、PRJ、CH、FBA、BULK、DEMO、SAMPLE、NA 的包裝用途、SKU 使用規則、條碼 / FNSKU、內含產品映射與商業限制整理成一張主表。