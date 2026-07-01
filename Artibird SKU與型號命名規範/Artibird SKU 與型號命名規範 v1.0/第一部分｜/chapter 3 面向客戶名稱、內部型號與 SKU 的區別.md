# Artibird SKU & Model Naming Specification v1.0

# Artibird SKU 與型號命名規範 v1.0

## Chapter 3 — Customer-Facing Name vs Internal Model vs SKU

## 第三章｜面向客戶名稱、內部型號與 SKU 的區別

---

## 3.1 Purpose

## 3.1 目的

### EN

This chapter defines the difference between customer-facing product names, internal model names, SKU codes, engineering model numbers, certification model numbers, and package names.

The purpose is to prevent naming confusion across product planning, engineering development, certification filing, packaging design, Amazon listing, inventory management, channel communication, and commercial release.

Each naming layer serves a different operational function. A customer-facing name is designed for clarity and market readability. An internal model name is designed for product and engineering control. A SKU code is designed for inventory, sales, channel, and commercial tracking. An engineering model number is designed for hardware, firmware, PCB, and validation traceability. A certification model number is designed for regulatory filings and product label alignment. A package name is designed for retail, kit, channel, or project-level presentation.

These names must be connected, but they must not be casually mixed.

### ZH-TW

本章定義面向客戶產品名稱、內部型號、SKU 代碼、工程型號、認證型號與包裝名稱之間的區別。

其目的，是防止產品規劃、工程開發、認證提交、包裝設計、Amazon 上架、庫存管理、渠道溝通與商業發布過程中的命名混亂。

每一層命名都承擔不同的運營功能。面向客戶名稱用於清晰傳達與市場識別；內部型號用於產品與工程管控；SKU 代碼用於庫存、銷售、渠道與商業追蹤；工程型號用於硬體、韌體、PCB 與驗證追蹤；認證型號用於法規提交與產品標籤一致性；包裝名稱則用於零售、套組、渠道或專案層級呈現。

這些名稱必須相互連接，但不得隨意混用。

---

## 3.2 Naming Layer Definition

## 3.2 命名層級定義

### EN

Artibird product identity is controlled through multiple naming layers. Each layer answers a different question:

|Naming Layer|Core Question|
|---|---|
|Customer-Facing Name|What does the customer see?|
|Internal Model Name|What does the product and engineering team control?|
|SKU Code|What is sold, stocked, listed, or distributed?|
|Engineering Model Number|What hardware, firmware, and PCB version is being tested or produced?|
|Certification Model Number|What model is submitted, certified, and shown on regulatory labels?|
|Package Name|What retail, project, or channel bundle is being offered?|

These layers must remain aligned through the SKU master table, but each must keep its own function and naming discipline.

### ZH-TW

Artibird 的產品身份透過多個命名層級進行管控。每一層回答不同問題：

|命名層級|核心問題|
|---|---|
|面向客戶名稱|客戶看到的是什麼名稱？|
|內部型號名稱|產品與工程團隊管控的是什麼型號？|
|SKU 代碼|被銷售、庫存、上架或分銷的是哪一個商業單位？|
|工程型號|被測試或生產的是哪一個硬體、韌體與 PCB 版本？|
|認證型號|被提交認證並出現在法規標籤上的型號是什麼？|
|包裝名稱|被作為零售、專案或渠道套組提供的是什麼包裝單位？|

這些層級必須透過 SKU 主表保持一致，但每一層都必須保留自身的功能與命名紀律。

---

## 3.3 Required Naming Separation Table

## 3.3 必備命名區分表

### EN

|Type|Purpose|Example|Controlled By|
|---|---|---|---|
|Customer-Facing Name|Used in catalog, website, packaging, sales, and customer communication|Artibird Act-E|Product / Marketing / Commercial|
|Internal Model Name|Used by product, engineering, operations, and certification preparation teams|ACT-G1-E|Product / Engineering|
|SKU Code|Used for inventory, channel sales, Amazon listing, pricing, and commercial release|ATB-ACT-G1-US-WF-AC-E-S|Product / Operations / Sales|
|Engineering Model Number|Used for hardware, firmware, PCB, testing, and validation tracking|ACT-G1-HW1.0-FW1.2-PCB1.1|Engineering / Firmware / QA|
|Certification Model Number|Used in FCC, UL, ETL, CE, UKCA, or other certification filings|Exact filed model name|Compliance / Certification|
|Manufacturing Model Number|Used by factory, BOM system, ERP system, suppliers, and production records|Factory-controlled model number|Manufacturing / Supply Chain|
|Package Name|Used for retail boxes, channel kits, project kits, Amazon FBA packs, or demo kits|Artibird Energy Starter Kit|Packaging / Sales / Operations|

### ZH-TW

|類型|用途|示例|管控方|
|---|---|---|---|
|面向客戶名稱|用於型錄、網站、包裝、銷售與客戶溝通|Artibird Act-E|產品 / 行銷 / 商務|
|內部型號名稱|用於產品、工程、運營與認證準備團隊|ACT-G1-E|產品 / 工程|
|SKU 代碼|用於庫存、渠道銷售、Amazon 上架、定價與商業發布|ATB-ACT-G1-US-WF-AC-E-S|產品 / 運營 / 銷售|
|工程型號|用於硬體、韌體、PCB、測試與驗證追蹤|ACT-G1-HW1.0-FW1.2-PCB1.1|工程 / 韌體 / 品質|
|認證型號|用於 FCC、UL、ETL、CE、UKCA 或其他認證提交|依實際提交型號|合規 / 認證|
|生產型號|用於工廠、BOM 系統、ERP 系統、供應商與生產記錄|工廠管控型號|生產 / 供應鏈|
|包裝名稱|用於零售盒、渠道套組、專案套組、Amazon FBA 包或展示套組|Artibird Energy Starter Kit|包裝 / 銷售 / 運營|

---

## 3.4 Customer-Facing Name

## 3.4 面向客戶名稱

### EN

The customer-facing name is the readable product name used in public or commercial communication.

It may appear in:

|Usage Area|Example|
|---|---|
|Product catalog|Artibird Act-E|
|Website product page|Artibird Gate Pro|
|Retail package|Artibird Sync IR/RF|
|Amazon listing title|Artibird Switch Scene|
|Sales quotation|Artibird Hub G1|
|Channel presentation|Artibird Sense Climate|

Customer-facing names should be clear, stable, and easy to understand. They should not include excessive technical codes unless necessary for product differentiation.

A customer-facing name may describe the product family, generation, capability, or functional variant, but it should not expose full SKU complexity.

### ZH-TW

面向客戶名稱是用於公開或商業溝通中的可讀產品名稱。

它可能出現在：

|使用場景|示例|
|---|---|
|產品型錄|Artibird Act-E|
|官網產品頁|Artibird Gate Pro|
|零售包裝|Artibird Sync IR/RF|
|Amazon 上架標題|Artibird Switch Scene|
|銷售報價單|Artibird Hub G1|
|渠道簡報|Artibird Sense Climate|

面向客戶名稱應清晰、穩定且易於理解。除非產品區分需要，否則不應包含過多技術代碼。

面向客戶名稱可以描述產品家族、世代、能力或功能版本，但不應暴露完整 SKU 的複雜結構。

---

## 3.5 Internal Model Name

## 3.5 內部型號名稱

### EN

The internal model name is used by product, engineering, operations, and certification preparation teams to identify a product configuration at a controlled internal level.

It is shorter than the full SKU but more structured than the customer-facing name.

Recommended internal model pattern:

```text
[PRODUCT]-[GEN]-[VARIANT]
```

Examples:

|Customer-Facing Name|Internal Model Name|Meaning|
|---|---|---|
|Artibird Act-E|ACT-G1-E|Act, first generation, energy-aware variant|
|Artibird Switch Scene|SW-G1-SCN|Switch, first generation, scene switch variant|
|Artibird Switch Relay|SW-G1-RLY|Switch, first generation, relay variant|
|Artibird Gate Pro|GATE-G1-PRO|Gate, first generation, professional variant|
|Artibird Sync IR/RF|SYNC-G1-IRRF|Sync, first generation, IR + RF capability|

The internal model name should remain stable across sales channels unless the hardware, product role, or functional variant changes.

### ZH-TW

內部型號名稱用於產品、工程、運營與認證準備團隊，在內部受控層級識別產品配置。

它比完整 SKU 短，但比面向客戶名稱更結構化。

建議內部型號格式：

```text
[產品]-[世代]-[版本]
```

示例：

|面向客戶名稱|內部型號名稱|含義|
|---|---|---|
|Artibird Act-E|ACT-G1-E|Act，第一代，能源感知版本|
|Artibird Switch Scene|SW-G1-SCN|Switch，第一代，場景開關版本|
|Artibird Switch Relay|SW-G1-RLY|Switch，第一代，繼電器版本|
|Artibird Gate Pro|GATE-G1-PRO|Gate，第一代，專業版本|
|Artibird Sync IR/RF|SYNC-G1-IRRF|Sync，第一代，IR + RF 能力|

除非硬體、產品角色或功能版本發生變化，內部型號名稱應在不同銷售渠道中保持穩定。

---

## 3.6 SKU Code

## 3.6 SKU 代碼

### EN

The SKU code is the commercial control unit used for inventory, sales, channel distribution, Amazon listing, pricing, and release management.

Unlike the internal model name, the SKU must reflect the commercial configuration of a product.

Recommended SKU pattern:

```text
ATB-[PRODUCT]-[GEN]-[REGION]-[CONNECTIVITY]-[POWER]-[VARIANT]-[PACKAGE]
```

Example:

```text
ATB-ACT-G1-US-WF-AC-E-S
```

|Field|Value|Meaning|
|---|---|---|
|Brand|ATB|Artibird|
|Product|ACT|Artibird Act|
|Generation|G1|First generation|
|Region|US|United States|
|Connectivity|WF|Wi-Fi|
|Power|AC|AC mains powered|
|Variant|E|Energy-aware version|
|Package|S|Single unit|

A SKU should change when the commercial, regional, power, connectivity, package, or functional configuration changes.

### ZH-TW

SKU 代碼是用於庫存、銷售、渠道分銷、Amazon 上架、定價與發布管理的商業管控單位。

不同於內部型號，SKU 必須反映產品的商業配置。

建議 SKU 格式：

```text
ATB-[產品]-[世代]-[區域]-[連接]-[供電]-[版本]-[包裝]
```

示例：

```text
ATB-ACT-G1-US-WF-AC-E-S
```

|欄位|數值|含義|
|---|---|---|
|品牌|ATB|Artibird|
|產品|ACT|Artibird Act|
|世代|G1|第一代|
|區域|US|美國|
|連接|WF|Wi-Fi|
|供電|AC|市電供電|
|版本|E|能源感知版本|
|包裝|S|單品|

當商業配置、區域配置、供電方式、連接方式、包裝方式或功能配置發生變化時，SKU 應進行變更。

---

## 3.7 Engineering Model Number

## 3.7 工程型號

### EN

The engineering model number is used to track hardware, firmware, PCB, and validation versions.

Recommended engineering model pattern:

```text
[PRODUCT]-[GEN]-HW[HARDWARE VERSION]-FW[FIRMWARE VERSION]-PCB[PCB VERSION]
```

Example:

```text
ACT-G1-HW1.0-FW1.2-PCB1.1
```

|Field|Meaning|
|---|---|
|ACT|Artibird Act|
|G1|First generation|
|HW1.0|Hardware version 1.0|
|FW1.2|Firmware version 1.2|
|PCB1.1|PCB revision 1.1|

Engineering model numbers should be used in:

|Usage Area|Requirement|
|---|---|
|Hardware validation|Must identify hardware version|
|Firmware testing|Must identify firmware version|
|PCB revision tracking|Must identify PCB version|
|QA records|Must match test report|
|EVT / DVT / PVT records|Must match validation stage|
|Production handoff|Must map to manufacturing model|

The engineering model number should not be used as the customer-facing product name.

### ZH-TW

工程型號用於追蹤硬體、韌體、PCB 與驗證版本。

建議工程型號格式：

```text
[產品]-[世代]-HW[硬體版本]-FW[韌體版本]-PCB[PCB版本]
```

示例：

```text
ACT-G1-HW1.0-FW1.2-PCB1.1
```

|欄位|含義|
|---|---|
|ACT|Artibird Act|
|G1|第一代|
|HW1.0|硬體版本 1.0|
|FW1.2|韌體版本 1.2|
|PCB1.1|PCB 修訂版本 1.1|

工程型號應用於：

|使用場景|要求|
|---|---|
|硬體驗證|必須識別硬體版本|
|韌體測試|必須識別韌體版本|
|PCB 修訂追蹤|必須識別 PCB 版本|
|品質記錄|必須與測試報告一致|
|EVT / DVT / PVT 記錄|必須對應驗證階段|
|生產交接|必須映射至生產型號|

工程型號不應作為面向客戶的產品名稱使用。

---

## 3.8 Certification Model Number

## 3.8 認證型號

### EN

The certification model number is the model name submitted to certification bodies or used in regulatory documentation.

It may be used in:

|Certification Area|Example|
|---|---|
|FCC filing|Wireless device model submission|
|UL / ETL filing|Electrical safety model submission|
|CE filing|EU conformity documentation|
|UKCA filing|UK conformity documentation|
|Product rating label|Printed model reference|
|Compliance report|Test report model identification|

Certification model numbers must be controlled strictly. Once a product is submitted or certified under a model name, the name should not be casually changed.

The certification model number must map to:

|Required Mapping|Description|
|---|---|
|SKU Code|Which commercial SKU uses this certified model|
|Internal Model|Which internal model it belongs to|
|Engineering Model|Which hardware / firmware / PCB version was tested|
|Product Label|Which model appears on the rating label|
|Market Region|Which region the certification applies to|
|Certification Status|Pending, passed, certified, expired, or not applicable|

A SKU must not imply certification status unless certification has been completed and approved for the relevant market.

### ZH-TW

認證型號是提交給認證機構或用於法規文件中的型號名稱。

它可能用於：

|認證領域|示例|
|---|---|
|FCC 提交|無線設備型號提交|
|UL / ETL 提交|電氣安全型號提交|
|CE 提交|歐盟符合性文件|
|UKCA 提交|英國符合性文件|
|產品額定標籤|印刷型號引用|
|合規報告|測試報告型號識別|

認證型號必須嚴格管控。一旦產品以某個型號名稱提交或獲得認證，該名稱不應隨意更改。

認證型號必須映射至：

|必須映射項目|說明|
|---|---|
|SKU 代碼|哪一個商業 SKU 使用此認證型號|
|內部型號|它屬於哪一個內部型號|
|工程型號|哪一個硬體 / 韌體 / PCB 版本被測試|
|產品標籤|額定標籤上顯示哪一個型號|
|市場區域|認證適用於哪一個區域|
|認證狀態|申請中、通過、已認證、過期或不適用|

除非相關市場的認證已完成並獲得核准，SKU 不得暗示認證狀態。

---

## 3.9 Package Name

## 3.9 包裝名稱

### EN

The package name identifies a retail, channel, project, education, Amazon FBA, or demonstration package.

A package name may include one or multiple products.

Examples:

|Package Name|Included Products|Package Purpose|
|---|---|---|
|Artibird Smart Room Starter Kit|Hub, Switch, Act, Sense, App|Residential or room-level starter package|
|Artibird Classroom Control Kit|Hub, Panel, Switch, Sync, Act, Sense|Classroom control and automation package|
|Artibird Energy Starter Kit|Hub, Act-E, Sense, Cloud service|Energy-aware deployment package|
|Artibird Gate Pro Kit|Gate, power adapter, setup accessories|Gateway deployment package|
|Artibird Demo Kit|Selected products|Sales demonstration or partner training|

Package names must map to one or more SKU codes. A package name should not replace the SKU code. If the package configuration changes, the package SKU or kit code must be reviewed.

### ZH-TW

包裝名稱用於識別零售、渠道、專案、教育、Amazon FBA 或展示用途的包裝單位。

一個包裝名稱可能包含一個或多個產品。

示例：

|包裝名稱|包含產品|包裝用途|
|---|---|---|
|Artibird Smart Room Starter Kit|Hub、Switch、Act、Sense、App|住宅或房間級入門套組|
|Artibird Classroom Control Kit|Hub、Panel、Switch、Sync、Act、Sense|教室控制與自動化套組|
|Artibird Energy Starter Kit|Hub、Act-E、Sense、Cloud service|能源感知部署套組|
|Artibird Gate Pro Kit|Gate、電源適配器、設定配件|網關部署套組|
|Artibird Demo Kit|特定產品組合|銷售展示或合作夥伴培訓|

包裝名稱必須映射至一個或多個 SKU 代碼。包裝名稱不應替代 SKU 代碼。若包裝配置發生變更，必須重新審查包裝 SKU 或套組代碼。

---

## 3.10 Name Mapping Example

## 3.10 命名映射示例

### EN

Example product: **Artibird Act-E**

|Naming Layer|Example|
|---|---|
|Customer-Facing Name|Artibird Act-E|
|Internal Model Name|ACT-G1-E|
|SKU Code|ATB-ACT-G1-US-WF-AC-E-S|
|Engineering Model Number|ACT-G1-HW1.0-FW1.2-PCB1.1|
|Certification Model Number|Exact filed model name|
|Manufacturing Model Number|Factory-controlled model number|
|Package Name|Artibird Energy Starter Kit|

This mapping ensures that the same product can be described correctly across commercial, engineering, certification, manufacturing, and packaging contexts.

### ZH-TW

示例產品：**Artibird Act-E**

|命名層級|示例|
|---|---|
|面向客戶名稱|Artibird Act-E|
|內部型號名稱|ACT-G1-E|
|SKU 代碼|ATB-ACT-G1-US-WF-AC-E-S|
|工程型號|ACT-G1-HW1.0-FW1.2-PCB1.1|
|認證型號|依實際提交型號|
|生產型號|工廠管控型號|
|包裝名稱|Artibird Energy Starter Kit|

此映射確保同一產品能在商業、工程、認證、生產與包裝場景中被正確描述。

---

## 3.11 Naming Control Rules

## 3.11 命名管控規則

### EN

|Rule|Requirement|
|---|---|
|Do not use customer-facing names as SKU codes|Customer names are readable names, not inventory control codes|
|Do not use SKU codes as certification model names unless approved|Certification model names must match submitted documentation|
|Do not change certified model names casually|Certification validity may be affected|
|Do not use engineering model numbers in public listings|Engineering version data is for internal tracking|
|Do not reuse the same SKU for different configurations|One SKU must represent one defined configuration|
|Do not create separate SKUs without configuration reason|Duplicate commercial units create inventory confusion|
|Do not imply certification through naming|Certification claims require approval|
|Do not allow package names to hide included product differences|Kit contents must be traceable|

### ZH-TW

|規則|要求|
|---|---|
|不得將面向客戶名稱作為 SKU 代碼|客戶名稱是可讀名稱，不是庫存管控代碼|
|未經核准，不得將 SKU 代碼作為認證型號|認證型號必須與提交文件一致|
|不得隨意更改已認證型號|可能影響認證有效性|
|不得在公開上架中使用工程型號|工程版本資料僅供內部追蹤|
|不得用同一 SKU 表示不同配置|一個 SKU 必須代表一種明確配置|
|不得無配置原因建立不同 SKU|重複商業單位會造成庫存混亂|
|不得透過命名暗示認證狀態|認證宣稱必須經核准|
|不得讓包裝名稱掩蓋內含產品差異|套組內容必須可追蹤|

---

## 3.12 Required Master Mapping Fields

## 3.12 必備主映射欄位

### EN

Every commercial product record should include the following fields in the SKU master table:

|Field|Required|
|---|---|
|Customer-Facing Name|Yes|
|Internal Model Name|Yes|
|SKU Code|Yes|
|Engineering Model Number|Yes, where applicable|
|Certification Model Number|Yes, where applicable|
|Manufacturing Model Number|Yes, where applicable|
|Package Name|Yes, where applicable|
|Region|Yes|
|Connectivity|Yes|
|Power Type|Yes|
|Variant|Yes|
|Package Type|Yes|
|Certification Status|Yes|
|Release Status|Yes|
|Claim Boundary Notes|Yes|

### ZH-TW

每一個商業產品記錄都應在 SKU 主表中包含以下欄位：

|欄位|是否必填|
|---|---|
|面向客戶名稱|是|
|內部型號名稱|是|
|SKU 代碼|是|
|工程型號|適用時必填|
|認證型號|適用時必填|
|生產型號|適用時必填|
|包裝名稱|適用時必填|
|區域|是|
|連接方式|是|
|供電方式|是|
|版本|是|
|包裝類型|是|
|認證狀態|是|
|發布狀態|是|
|宣稱邊界備註|是|

---

## 3.13 Chapter Conclusion

## 3.13 本章結論

### EN

Customer-facing names, internal model names, SKU codes, engineering model numbers, certification model numbers, manufacturing model numbers, and package names serve different functions within the Artibird product identity system.

They must be connected through a controlled mapping structure, but they must not be used interchangeably.

A clear separation between these naming layers allows Artibird products to remain traceable across engineering, certification, production, packaging, inventory, sales, channels, Amazon listing, and commercial release.

### ZH-TW

面向客戶名稱、內部型號、SKU 代碼、工程型號、認證型號、生產型號與包裝名稱，在 Artibird 產品身份系統中承擔不同功能。

它們必須透過受控映射結構相互連接，但不得互相替代使用。

清晰區分這些命名層級，能使 Artibird 產品在工程、認證、生產、包裝、庫存、銷售、渠道、Amazon 上架與商業發布過程中保持可追蹤。

---

本章是依據你已建立的《Artibird SKU & Model Naming Specification v1.0》目錄與撰寫計劃展開，其中原始文件已明確要求區分 customer-facing name、internal model、SKU、engineering model、certification model 與 package name。

**話題延伸｜互動建議**  
下一章建議直接寫 **Chapter 4 — Product Line Codes｜第四章｜產品線代碼**，這會正式確定 HUB、GATE、SYNC、SW、PNL、ACT、SNS、VIS、APP、CLD、EDGE 的標準代碼體系。