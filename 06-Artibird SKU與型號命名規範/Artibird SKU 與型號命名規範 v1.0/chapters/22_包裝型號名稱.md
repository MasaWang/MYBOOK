# Artibird SKU & Model Naming Specification v1.0

# Artibird SKU 與型號命名規範 v1.0

## Chapter 22 — Package Model Names

## 第二十二章｜包裝型號名稱

---

## 22.1 Purpose

## 22.1 目的

### EN

This chapter defines package-level model names used for Artibird retail kits, project kits, channel packs, education kits, Amazon FBA packs, demonstration kits, sample kits, and deployment packages.

Package model names are readable names used to describe a commercial package or bundle. They may appear in product catalogs, websites, Amazon listings, quotations, channel documents, project proposals, classroom deployment documents, sales decks, and internal package records.

A package model name must identify the package clearly, but it must not replace the SKU code, package code, included product SKU list, barcode, FNSKU, manufacturing record, or certification mapping.

### ZH-TW

本章定義 Artibird 零售套組、專案套組、渠道包、教育套組、Amazon FBA 包、展示套組、樣品套組與部署包中使用的包裝級型號名稱。

包裝型號名稱是一種可讀名稱，用於描述一個商業包裝或套組。它可出現在產品型錄、網站、Amazon 上架、報價單、渠道文件、專案方案、教室部署文件、銷售簡報與內部包裝記錄中。

包裝型號名稱必須清楚識別包裝內容，但不得取代 SKU 代碼、包裝代碼、內含產品 SKU 清單、條碼、FNSKU、生產記錄或認證映射。

---

## 22.2 Package Model Name Definition

## 22.2 包裝型號名稱定義

### EN

A package model name is a customer-readable or channel-readable name for a defined package unit.

It answers the following questions:

|Question|Description|
|---|---|
|What is the package called?|Smart Room Starter Kit, Classroom Control Kit, Energy Starter Kit, Gate Pro Kit, Demo Kit|
|What is included?|Hub, Gate, Sync, Switch, Panel, Act, Sense, Vision, App, Cloud service, accessories|
|What is the package used for?|Retail, Amazon, channel, project, education, demonstration, evaluation|
|Does it have a package code?|KIT, PROKIT, EDU, PRJ, CH, FBA, DEMO, SAMPLE|
|Does it map to product SKUs?|Every included product must be traceable|
|Does it require a barcode or FNSKU?|Required where applicable|
|Is it approved for public or commercial use?|Must be controlled by package approval status|

### ZH-TW

包裝型號名稱是面向客戶或渠道可讀的已定義包裝單位名稱。

它回答以下問題：

|問題|說明|
|---|---|
|這個包裝叫什麼？|Smart Room Starter Kit、Classroom Control Kit、Energy Starter Kit、Gate Pro Kit、Demo Kit|
|其中包含什麼？|Hub、Gate、Sync、Switch、Panel、Act、Sense、Vision、App、Cloud service、配件|
|這個包裝用於什麼場景？|零售、Amazon、渠道、專案、教育、展示、評估|
|是否具備包裝代碼？|KIT、PROKIT、EDU、PRJ、CH、FBA、DEMO、SAMPLE|
|是否映射至產品 SKU？|每個內含產品都必須可追蹤|
|是否需要條碼或 FNSKU？|適用時必須|
|是否已核准公開或商業使用？|必須由包裝核准狀態管控|

---

## 22.3 Package Model Name vs SKU vs Package Code

## 22.3 包裝型號名稱、SKU 與包裝代碼的區別

### EN

|Identifier Type|Example|Primary Use|
|---|---|---|
|Package Model Name|Artibird Energy Starter Kit|Readable package or kit name|
|Package Code|KIT|Controlled package type field in SKU|
|SKU Code|ATB-ACT-G1-US-WF-AC-E-KIT|Commercial package / sales unit control|
|Included Product SKU|ATB-ACT-G1-US-WF-AC-E-S|Included product traceability|
|Barcode / GTIN / UPC / EAN|Assigned per package|Retail and inventory identification|
|Amazon FNSKU|Assigned for FBA package|Amazon fulfillment control|
|Package Version|PKG1.0|Packaging artwork, contents, and documentation control|

A package model name is readable.  
A package code is structural.  
A SKU code is operational.  
A package version controls the actual packaging record.

### ZH-TW

|識別類型|示例|主要用途|
|---|---|---|
|包裝型號名稱|Artibird Energy Starter Kit|可讀包裝或套組名稱|
|包裝代碼|KIT|SKU 中受控的包裝類型欄位|
|SKU 代碼|ATB-ACT-G1-US-WF-AC-E-KIT|商業包裝 / 銷售單位管控|
|內含產品 SKU|ATB-ACT-G1-US-WF-AC-E-S|內含產品可追蹤|
|條碼 / GTIN / UPC / EAN|依包裝分配|零售與庫存識別|
|Amazon FNSKU|為 FBA 包裝分配|Amazon 履約管控|
|包裝版本|PKG1.0|包裝 artwork、內容與文件管控|

包裝型號名稱是可讀名稱。  
包裝代碼是結構欄位。  
SKU 代碼是運營識別。  
包裝版本管控實際包裝記錄。

---

## 22.4 Recommended Package Model Name Structure

## 22.4 建議包裝型號名稱結構

### EN

The recommended structure for package model names is:

```text
Artibird [Use Case / System Scope] [Package Type]
```

Examples:

|Structure Element|Example|
|---|---|
|Brand|Artibird|
|Use Case / System Scope|Smart Room, Classroom Control, Energy, Gate Pro, Demo|
|Package Type|Starter Kit, Control Kit, Kit, Pro Kit, Demo Kit, Sample Kit|

Recommended examples:

|Package Model Name|Structure|
|---|---|
|Artibird Smart Room Starter Kit|Brand + room use case + starter kit|
|Artibird Classroom Control Kit|Brand + classroom use case + control kit|
|Artibird Energy Starter Kit|Brand + energy use case + starter kit|
|Artibird Gate Pro Kit|Brand + product / tier + pro kit|
|Artibird Demo Kit|Brand + demonstration package|

### ZH-TW

包裝型號名稱建議採用以下結構：

```text
Artibird [使用場景 / 系統範圍] [包裝類型]
```

示例：

|結構元素|示例|
|---|---|
|品牌|Artibird|
|使用場景 / 系統範圍|Smart Room、Classroom Control、Energy、Gate Pro、Demo|
|包裝類型|Starter Kit、Control Kit、Kit、Pro Kit、Demo Kit、Sample Kit|

建議示例：

|包裝型號名稱|結構|
|---|---|
|Artibird Smart Room Starter Kit|品牌 + 房間使用場景 + 入門套組|
|Artibird Classroom Control Kit|品牌 + 教室使用場景 + 控制套組|
|Artibird Energy Starter Kit|品牌 + 能源使用場景 + 入門套組|
|Artibird Gate Pro Kit|品牌 + 產品 / 層級 + 專業套組|
|Artibird Demo Kit|品牌 + 展示包裝|

---

## 22.5 Official Package Model Examples

## 22.5 官方包裝型號示例

### EN

|Package Model Name|Included Products|
|---|---|
|Artibird Smart Room Starter Kit|Hub, Switch, Act, Sense, App|
|Artibird Classroom Control Kit|Hub, Panel, Switch, Sync, Act, Sense|
|Artibird Energy Starter Kit|Hub, Act-E, Sense, Cloud service|
|Artibird Gate Pro Kit|Gate, power adapter, setup accessories|
|Artibird Demo Kit|Selected products for demonstration|

### ZH-TW

|包裝型號名稱|包含產品|
|---|---|
|Artibird Smart Room Starter Kit|Hub、Switch、Act、Sense、App|
|Artibird Classroom Control Kit|Hub、Panel、Switch、Sync、Act、Sense|
|Artibird Energy Starter Kit|Hub、Act-E、Sense、Cloud service|
|Artibird Gate Pro Kit|Gate、電源適配器、設定配件|
|Artibird Demo Kit|用於展示的特定產品組合|

---

## 22.6 Package Model Name by Package Code

## 22.6 依包裝代碼定義包裝型號名稱

### EN

|Package Code|Package Type|Recommended Package Name Pattern|
|--:|---|---|
|KIT|Standard kit|Artibird [Use Case] Starter Kit|
|PROKIT|Professional kit|Artibird [Product / Use Case] Pro Kit|
|EDU|Education package|Artibird [Classroom / Education Use Case] Kit|
|PRJ|Project package|Artibird [Project / Site / Deployment] Package|
|CH|Channel pack|Artibird [Product / Use Case] Channel Pack|
|FBA|Amazon FBA package|Artibird [Product / Use Case] FBA Pack|
|BULK|Bulk shipment package|Artibird [Product / Use Case] Bulk Pack|
|DEMO|Demonstration kit|Artibird [Use Case] Demo Kit|
|SAMPLE|Sample package|Artibird [Product] Sample Kit|
|S / 2P / 4P|Retail unit count|Product name + Single / 2-Pack / 4-Pack|

### ZH-TW

|包裝代碼|包裝類型|建議包裝名稱模式|
|--:|---|---|
|KIT|標準套組|Artibird [使用場景] Starter Kit|
|PROKIT|專業套組|Artibird [產品 / 使用場景] Pro Kit|
|EDU|教育套組|Artibird [教室 / 教育場景] Kit|
|PRJ|專案包|Artibird [專案 / 場地 / 部署] Package|
|CH|渠道包|Artibird [產品 / 使用場景] Channel Pack|
|FBA|Amazon FBA 包裝|Artibird [產品 / 使用場景] FBA Pack|
|BULK|批量出貨包|Artibird [產品 / 使用場景] Bulk Pack|
|DEMO|展示套組|Artibird [使用場景] Demo Kit|
|SAMPLE|樣品包|Artibird [產品] Sample Kit|
|S / 2P / 4P|零售數量單位|產品名稱 + Single / 2-Pack / 4-Pack|

---

## 22.7 Smart Room Starter Kit Rules

## 22.7 Smart Room Starter Kit 規則

### EN

The Artibird Smart Room Starter Kit is a room-level starter package designed to introduce the core local smart space experience.

Recommended package name:

```text
Artibird Smart Room Starter Kit
```

Recommended included products:

|Included Item|Purpose|
|---|---|
|Artibird Hub|Local runtime center|
|Artibird Switch|User interaction or scene input|
|Artibird Act|Electrical execution or plug / relay control|
|Artibird Sense|Environmental sensing|
|Artibird App|User control and setup interface|
|Setup accessories|Installation and onboarding support|

Recommended package code:

```text
KIT
```

This package must map to all included product SKUs and package version records.

### ZH-TW

Artibird Smart Room Starter Kit 是房間級入門套組，用於引入核心本地智慧空間體驗。

建議包裝名稱：

```text
Artibird Smart Room Starter Kit
```

建議內含產品：

|內含項目|用途|
|---|---|
|Artibird Hub|本地 Runtime 中樞|
|Artibird Switch|用戶互動或場景輸入|
|Artibird Act|電力執行或插座 / 繼電器控制|
|Artibird Sense|環境感知|
|Artibird App|用戶控制與設定介面|
|設定配件|安裝與入網支持|

建議包裝代碼：

```text
KIT
```

此包裝必須映射至所有內含產品 SKU 與包裝版本記錄。

---

## 22.8 Classroom Control Kit Rules

## 22.8 Classroom Control Kit 規則

### EN

The Artibird Classroom Control Kit is an education-oriented package for classroom control, environmental sensing, AV synchronization, lighting participation, and energy-aware operation.

Recommended package name:

```text
Artibird Classroom Control Kit
```

Recommended included products:

|Included Item|Purpose|
|---|---|
|Artibird Hub|Classroom local runtime center|
|Artibird Panel|Teacher or room-level control interface|
|Artibird Switch|Local scene or manual input|
|Artibird Sync|IR / RF synchronization for AC, projector, TV, or AV equipment|
|Artibird Act|Electrical execution or energy-aware control|
|Artibird Sense|Climate, light, or occupancy-related sensing|
|Optional Cloud service|Multi-classroom or school-level service where applicable|

Recommended package code:

```text
EDU
```

If the package is designed for a specific school project, PRJ may be used instead of EDU or in addition to an EDU package record.

### ZH-TW

Artibird Classroom Control Kit 是教育導向套組，用於教室控制、環境感知、影音同步、照明參與與能源感知運作。

建議包裝名稱：

```text
Artibird Classroom Control Kit
```

建議內含產品：

|內含項目|用途|
|---|---|
|Artibird Hub|教室本地 Runtime 中樞|
|Artibird Panel|教師或房間級控制介面|
|Artibird Switch|本地場景或手動輸入|
|Artibird Sync|用於空調、投影、電視或影音設備的 IR / RF 同步|
|Artibird Act|電力執行或能源感知控制|
|Artibird Sense|氣候、光照或人體存在相關感知|
|可選 Cloud service|適用於多教室或校級服務|

建議包裝代碼：

```text
EDU
```

如果該包裝面向特定學校專案，則可使用 PRJ 取代 EDU，或在 EDU 包裝記錄之外建立 PRJ 專案記錄。

---

## 22.9 Energy Starter Kit Rules

## 22.9 Energy Starter Kit 規則

### EN

The Artibird Energy Starter Kit is designed for energy-aware deployment, usage monitoring, control, reporting, and system-level energy visibility.

Recommended package name:

```text
Artibird Energy Starter Kit
```

Recommended included products:

|Included Item|Purpose|
|---|---|
|Artibird Hub|Local energy coordination and data aggregation|
|Artibird Act-E|Energy-aware execution or power monitoring|
|Artibird Sense|Environmental sensing for energy context|
|OceanAI Cloud service|Energy reporting, remote access, or analytics where applicable|
|Optional Artibird App service|User interface and configuration|

Recommended package code:

```text
KIT
```

If the package is intended for institutional, campus, or building deployment, the package code may be PRJ. If it is education-oriented, EDU may be used.

### ZH-TW

Artibird Energy Starter Kit 面向能源感知部署、用電監測、控制、報告與系統級能源可視化。

建議包裝名稱：

```text
Artibird Energy Starter Kit
```

建議內含產品：

|內含項目|用途|
|---|---|
|Artibird Hub|本地能源協同與數據彙聚|
|Artibird Act-E|能源感知執行或功率監測|
|Artibird Sense|提供能源上下文的環境感知|
|OceanAI Cloud service|適用時提供能源報告、遠端存取或分析|
|可選 Artibird App service|用戶介面與配置|

建議包裝代碼：

```text
KIT
```

如果該包裝面向機構、校園或建築部署，包裝代碼可使用 PRJ；若面向教育場景，則可使用 EDU。

---

## 22.10 Gate Pro Kit Rules

## 22.10 Gate Pro Kit 規則

### EN

The Artibird Gate Pro Kit is a professional gateway package designed for integrators, advanced deployment, extended setup, or controlled project installation.

Recommended package name:

```text
Artibird Gate Pro Kit
```

Recommended included products:

|Included Item|Purpose|
|---|---|
|Artibird Gate Pro|Device access gateway|
|Power adapter|Approved power input accessory where applicable|
|Setup accessories|Installation and onboarding support|
|Network accessories|Ethernet cable or mounting accessories where applicable|
|Quick start guide|Deployment and onboarding documentation|
|Optional project configuration card|Project or integrator configuration reference|

Recommended package code:

```text
PROKIT
```

A Gate Pro Kit must clearly define the included accessories, supported connectivity paths, region, adapter rating, and package version.

### ZH-TW

Artibird Gate Pro Kit 是專業網關套組，面向整合商、高階部署、擴展設定或受控專案安裝。

建議包裝名稱：

```text
Artibird Gate Pro Kit
```

建議內含產品：

|內含項目|用途|
|---|---|
|Artibird Gate Pro|設備接入網關|
|電源適配器|適用時作為已核准供電配件|
|設定配件|安裝與入網支持|
|網路配件|適用時包含 Ethernet 線或安裝配件|
|快速開始指南|部署與入網文件|
|可選專案配置卡|專案或整合商配置引用|

建議包裝代碼：

```text
PROKIT
```

Gate Pro Kit 必須清楚定義內含配件、支援連接路徑、區域、適配器額定與包裝版本。

---

## 22.11 Demo Kit Rules

## 22.11 Demo Kit 規則

### EN

The Artibird Demo Kit is used for demonstration, sales presentation, partner training, exhibition, investor presentation, or controlled evaluation.

Recommended package name:

```text
Artibird Demo Kit
```

Recommended included products:

|Included Item|Purpose|
|---|---|
|Selected Artibird devices|Demonstrate system behavior|
|Hub or Gate where required|Enable local runtime or device access|
|Switch / Panel|Demonstrate interaction|
|Act / Sync|Demonstrate execution and synchronization|
|Sense|Demonstrate environmental input|
|Quick demo guide|Demonstration flow and setup|
|Demo-only label|Prevent confusion with retail product where needed|

Recommended package code:

```text
DEMO
```

Demo Kits must include usage boundaries. They should not be sold as standard retail products unless converted into a released commercial package.

### ZH-TW

Artibird Demo Kit 用於展示、銷售演示、合作夥伴培訓、展會、投資人展示或受控評估。

建議包裝名稱：

```text
Artibird Demo Kit
```

建議內含產品：

|內含項目|用途|
|---|---|
|特定 Artibird 設備|展示系統行為|
|必要時包含 Hub 或 Gate|啟用本地 Runtime 或設備接入|
|Switch / Panel|展示互動|
|Act / Sync|展示執行與同步|
|Sense|展示環境輸入|
|快速展示指南|展示流程與設定|
|Demo-only 標籤|必要時避免與零售產品混淆|

建議包裝代碼：

```text
DEMO
```

Demo Kit 必須包含使用邊界。除非轉換為已發布商業包裝，否則不應作為標準零售產品銷售。

---

## 22.12 Sample Kit Rules

## 22.12 Sample Kit 規則

### EN

A Sample Kit is used for evaluation, certification sample handling, partner review, investor review, engineering review, or controlled customer testing.

Recommended package name pattern:

```text
Artibird [Product / Use Case] Sample Kit
```

Examples:

|Package Model Name|Use Case|
|---|---|
|Artibird Act-E Sample Kit|Energy-aware product evaluation|
|Artibird Gate Sample Kit|Gateway evaluation|
|Artibird Sense Sample Kit|Sensor evaluation|
|Artibird Classroom Sample Kit|Education project evaluation|

Recommended package code:

```text
SAMPLE
```

Sample Kits must define whether the package is for engineering evaluation, certification sample, partner sample, or customer evaluation.

### ZH-TW

Sample Kit 用於評估、認證樣品處理、合作夥伴審查、投資人審查、工程審查或受控客戶測試。

建議包裝名稱模式：

```text
Artibird [產品 / 使用場景] Sample Kit
```

示例：

|包裝型號名稱|使用場景|
|---|---|
|Artibird Act-E Sample Kit|能源感知產品評估|
|Artibird Gate Sample Kit|網關評估|
|Artibird Sense Sample Kit|感測器評估|
|Artibird Classroom Sample Kit|教育專案評估|

建議包裝代碼：

```text
SAMPLE
```

Sample Kit 必須定義該包裝是用於工程評估、認證樣品、合作夥伴樣品還是客戶評估。

---

## 22.13 Package Model Name to SKU Mapping

## 22.13 包裝型號名稱至 SKU 映射

### EN

A package model name must map to one package-level SKU and one or more included product SKUs.

Example:

|Package Model Name|Package SKU|Included Product SKUs|
|---|---|---|
|Artibird Smart Room Starter Kit|ATB-KIT-G1-US-HYB-NA-STD-KIT|HUB SKU, SW SKU, ACT SKU, SNS SKU, APP record|
|Artibird Classroom Control Kit|ATB-KIT-G1-US-HYB-NA-EDU-EDU|HUB SKU, PNL SKU, SW SKU, SYNC SKU, ACT SKU, SNS SKU|
|Artibird Energy Starter Kit|ATB-KIT-G1-US-HYB-NA-E-KIT|HUB SKU, ACT-E SKU, SNS SKU, CLD service record|
|Artibird Gate Pro Kit|ATB-GATE-G1-US-HYB-USB-PRO-PROKIT|GATE SKU, adapter record, accessory record|
|Artibird Demo Kit|ATB-KIT-G1-US-HYB-NA-STD-DEMO|Selected demo product SKUs|

The package SKU must not hide the included product SKUs. The master table must list every included product.

### ZH-TW

一個包裝型號名稱必須映射至一個包裝級 SKU，以及一個或多個內含產品 SKU。

示例：

|包裝型號名稱|包裝 SKU|內含產品 SKU|
|---|---|---|
|Artibird Smart Room Starter Kit|ATB-KIT-G1-US-HYB-NA-STD-KIT|HUB SKU、SW SKU、ACT SKU、SNS SKU、APP 記錄|
|Artibird Classroom Control Kit|ATB-KIT-G1-US-HYB-NA-EDU-EDU|HUB SKU、PNL SKU、SW SKU、SYNC SKU、ACT SKU、SNS SKU|
|Artibird Energy Starter Kit|ATB-KIT-G1-US-HYB-NA-E-KIT|HUB SKU、ACT-E SKU、SNS SKU、CLD 服務記錄|
|Artibird Gate Pro Kit|ATB-GATE-G1-US-HYB-USB-PRO-PROKIT|GATE SKU、適配器記錄、配件記錄|
|Artibird Demo Kit|ATB-KIT-G1-US-HYB-NA-STD-DEMO|特定展示產品 SKU|

包裝 SKU 不得掩蓋內含產品 SKU。主表必須列出每一個內含產品。

---

## 22.14 Package Contents Control Rules

## 22.14 包裝內容管控規則

### EN

Package contents must be controlled as part of the package model record.

|Content Type|Requirement|
|---|---|
|Device products|Must list product name, SKU, internal model, quantity|
|Software / App record|Must define app or service access where applicable|
|Cloud service|Must define service tier, region, subscription status, and term|
|Adapter|Must list adapter model, rating, certification status|
|Cable|Must list cable type, length, and rating where applicable|
|Mounting accessories|Must list type, quantity, and installation use|
|Manual / guide|Must list document version|
|Warranty card|Must list warranty version|
|Labels|Must list label version and placement|
|Carton / insert|Must list package version and carton configuration|

A package model name is valid only when the package contents are defined and approved.

### ZH-TW

包裝內容必須作為包裝型號記錄的一部分進行管控。

|內容類型|要求|
|---|---|
|設備產品|必須列出產品名稱、SKU、內部型號與數量|
|軟體 / App 記錄|適用時必須定義 App 或服務存取|
|雲端服務|必須定義服務層級、區域、訂閱狀態與期限|
|電源適配器|必須列出適配器型號、額定與認證狀態|
|線材|適用時必須列出線材類型、長度與額定|
|安裝配件|必須列出類型、數量與安裝用途|
|手冊 / 指南|必須列出文件版本|
|保固卡|必須列出保固版本|
|標籤|必須列出標籤版本與位置|
|紙箱 / 內襯|必須列出包裝版本與外箱配置|

只有在包裝內容已定義並核准後，包裝型號名稱才有效。

---

## 22.15 Package Name and Claim Boundary Rules

## 22.15 包裝名稱與宣稱邊界規則

### EN

Package model names must not create unsupported product claims.

|Package Name Term|Rule|
|---|---|
|Starter Kit|Must include enough products to support a starter use case|
|Classroom|Must be suitable for classroom deployment or education-oriented use|
|Energy|Must include validated energy-aware product or service capability|
|Pro|Must include documented professional or enhanced configuration|
|Demo|Must be controlled and not confused with retail product|
|Sample|Must be limited to evaluation or controlled review|
|Smart Room|Must support room-level setup and control|
|Control Kit|Must include actual control interface or execution product|
|Global|Avoid unless scope is clearly defined|
|Certified|Do not use unless certification scope is complete and approved|

Package names must be reviewed for commercial, technical, legal, and compliance claim boundaries before public use.

### ZH-TW

包裝型號名稱不得產生未被支持的產品宣稱。

|包裝名稱用語|規則|
|---|---|
|Starter Kit|必須包含足以支援入門使用場景的產品|
|Classroom|必須適合教室部署或教育導向使用|
|Energy|必須包含已驗證能源感知產品或服務能力|
|Pro|必須包含已記錄的專業或增強配置|
|Demo|必須受控，且不得與零售產品混淆|
|Sample|必須限於評估或受控審查|
|Smart Room|必須支援房間級設定與控制|
|Control Kit|必須包含實際控制介面或執行產品|
|Global|除非範圍明確，否則避免使用|
|Certified|除非認證範圍已完成並核准，否則不得使用|

包裝名稱在公開使用前，必須完成商業、技術、法律與合規宣稱邊界審查。

---

## 22.16 When to Create a New Package Model Name

## 22.16 何時建立新包裝型號名稱

### EN

A new package model name should be created when the package identity or use case changes.

|Change Scenario|New Package Model Name Required?|Notes|
|---|---|---|
|New kit use case is created|Yes|Example: Energy Starter Kit|
|Included product family changes significantly|Usually yes|Package identity may change|
|Package changes from retail to education|Yes|Use EDU-oriented name|
|Package changes from kit to project deployment|Usually yes|Use PRJ package record|
|Package changes from standard to Pro|Yes|Pro difference must be documented|
|Demo package created|Yes|Use Demo Kit naming|
|Sample package created|Yes|Use Sample Kit naming|
|Quantity-only change from single to 2-pack|Usually no|Use retail unit naming|
|Packaging artwork changes only|No|Update package version|
|Price promotion only|No|Update pricing record|
|Amazon listing title changes only|No|Update e-commerce record|

### ZH-TW

當包裝身份或使用場景變更時，應建立新的包裝型號名稱。

|變更場景|是否需要新包裝型號名稱？|備註|
|---|---|---|
|建立新的套組使用場景|是|例如 Energy Starter Kit|
|內含產品家族明顯變更|通常是|包裝身份可能改變|
|包裝由零售轉為教育用途|是|使用 EDU 導向名稱|
|包裝由套組轉為專案部署|通常是|使用 PRJ 包裝記錄|
|包裝由標準版變為 Pro|是|Pro 差異必須記錄|
|建立展示包|是|使用 Demo Kit 命名|
|建立樣品包|是|使用 Sample Kit 命名|
|僅數量從單品變為兩入裝|通常否|使用零售數量名稱|
|僅包裝 artwork 變更|否|更新包裝版本|
|僅價格促銷|否|更新價格記錄|
|僅 Amazon 上架標題變更|否|更新電商記錄|

---

## 22.17 When Not to Create a New Package Model Name

## 22.17 何時不建立新包裝型號名稱

### EN

A new package model name should not be created for minor operational changes.

|Change Scenario|New Package Model Name Required?|Required Action|
|---|---|---|
|Barcode update only|No|Update barcode record|
|FNSKU update only|No|Update Amazon record|
|Packaging artwork correction|No|Update package version|
|Manual version update|No|Update document version|
|Minor accessory supplier change|Usually no|Update BOM or package content record|
|Price change|No|Update pricing record|
|Warehouse change|No|Update logistics record|
|Channel availability change|No|Update channel record|
|Minor wording update in listing|No|Update listing record|
|Same kit sold through another approved channel|No|Update channel availability|

### ZH-TW

不應因輕微運營變更而建立新的包裝型號名稱。

|變更場景|是否需要新包裝型號名稱？|必要動作|
|---|---|---|
|僅條碼更新|否|更新條碼記錄|
|僅 FNSKU 更新|否|更新 Amazon 記錄|
|包裝 artwork 修正|否|更新包裝版本|
|手冊版本更新|否|更新文件版本|
|輕微配件供應商變更|通常否|更新 BOM 或包裝內容記錄|
|價格變更|否|更新價格記錄|
|倉庫變更|否|更新物流記錄|
|渠道可用性變更|否|更新渠道記錄|
|上架文案輕微更新|否|更新上架記錄|
|同一套組透過另一已核准渠道銷售|否|更新渠道可用性|

---

## 22.18 Package Model Name Approval Rules

## 22.18 包裝型號名稱核准規則

### EN

A package model name must be approved before it is used in public or commercial contexts.

|Review Area|Required Approval|
|---|---|
|Package use case|Product team|
|Included product list|Product / operations|
|SKU mapping|Operations|
|Package code|Operations / packaging|
|Packaging artwork|Packaging / design|
|Barcode / GTIN / UPC / EAN|Operations|
|Amazon FNSKU|E-commerce / operations where applicable|
|Certification impact|Compliance where applicable|
|Adapter / accessory compliance|Engineering / compliance where applicable|
|Claim boundary|Product / legal / compliance|
|Commercial release|Sales / business team|

### ZH-TW

包裝型號名稱在用於公開或商業場景前必須完成核准。

|審查領域|必要核准|
|---|---|
|包裝使用場景|產品團隊|
|內含產品清單|產品 / 運營|
|SKU 映射|運營|
|包裝代碼|運營 / 包裝|
|包裝 artwork|包裝 / 設計|
|條碼 / GTIN / UPC / EAN|運營|
|Amazon FNSKU|適用時由電商 / 運營|
|認證影響|適用時由合規審查|
|適配器 / 配件合規|適用時由工程 / 合規審查|
|宣稱邊界|產品 / 法務 / 合規|
|商業發布|銷售 / 商務團隊|

---

## 22.19 Required Master Table Fields

## 22.19 必備主表欄位

### EN

Every package model name must be recorded in the SKU master table or package master record.

|Field|Requirement|
|---|---|
|Package Model Name|Required|
|Package SKU|Required|
|Package Code|Required|
|Package Type|Required|
|Included Product Names|Required|
|Included Product SKUs|Required|
|Included Quantity|Required|
|Included Accessories|Required where applicable|
|Included Service Records|Required where applicable|
|Package Version|Required|
|Packaging Artwork Version|Required|
|Barcode / GTIN / UPC / EAN|Required where applicable|
|Amazon FNSKU|Required for FBA package|
|Region / Market|Required|
|Commercial Channel|Required|
|Certification / Label Impact|Required|
|Claim Boundary Notes|Required|
|Approval Status|Required|
|Approval Owner|Required|
|Revision Date|Required|

### ZH-TW

每一個包裝型號名稱都必須記錄於 SKU 主表或包裝主記錄中。

|欄位|要求|
|---|---|
|包裝型號名稱|必填|
|包裝 SKU|必填|
|包裝代碼|必填|
|包裝類型|必填|
|內含產品名稱|必填|
|內含產品 SKU|必填|
|內含數量|必填|
|內含配件|適用時必填|
|內含服務記錄|適用時必填|
|包裝版本|必填|
|包裝 artwork 版本|必填|
|條碼 / GTIN / UPC / EAN|適用時必填|
|Amazon FNSKU|FBA 包裝必填|
|區域 / 市場|必填|
|商業渠道|必填|
|認證 / 標籤影響|必填|
|宣稱邊界備註|必填|
|核准狀態|必填|
|核准負責人|必填|
|修訂日期|必填|

---

## 22.20 Chapter Conclusion

## 22.20 本章結論

### EN

Package model names provide a readable identity for Artibird kits, bundles, channel packs, education packages, project packages, Amazon FBA packages, demo kits, and sample kits.

They help customers, partners, schools, integrators, sales teams, and operations teams understand what a package is intended to deliver. However, a package model name is not enough to control the package. Every package model name must map to package-level SKU records, included product SKUs, package codes, barcode records, package versions, accessories, service records, claim boundaries, and approval status.

A controlled package model name system allows Artibird to manage kits and bundles without confusing product identity, SKU identity, package identity, certification scope, Amazon readiness, channel readiness, or deployment purpose.

### ZH-TW

包裝型號名稱為 Artibird 套組、組合包、渠道包、教育包、專案包、Amazon FBA 包、展示套組與樣品套組提供可讀身份。

它幫助客戶、合作夥伴、學校、整合商、銷售團隊與運營團隊理解某一包裝意圖交付什麼內容。然而，僅有包裝型號名稱不足以管控包裝。每一個包裝型號名稱都必須映射至包裝級 SKU 記錄、內含產品 SKU、包裝代碼、條碼記錄、包裝版本、配件、服務記錄、宣稱邊界與核准狀態。

受控的包裝型號名稱系統，可使 Artibird 在管理套組與組合包時，不混淆產品身份、SKU 身份、包裝身份、認證範圍、Amazon 準備狀態、渠道準備狀態或部署目的。

---

本章依據《Artibird SKU & Model Naming Specification v1.0》的既定撰寫計劃展開；原始規劃已將 Chapter 22 設為 Package Model Names，並要求定義零售套組、專案套組、渠道包、教育套組、Amazon FBA 包與樣品包的包裝級型號名稱；示例包含 Artibird Smart Room Starter Kit、Classroom Control Kit、Energy Starter Kit、Gate Pro Kit 與 Demo Kit。

**話題延伸｜互動建議**  
下一章可以繼續寫 **Chapter 23 — Model Name Approval Rules｜第二十三章｜型號名稱核准規則**，正式建立新型號名稱、名稱變更、SKU 變更、包裝名稱變更、網站 / Amazon 使用與法律風險審查流程。