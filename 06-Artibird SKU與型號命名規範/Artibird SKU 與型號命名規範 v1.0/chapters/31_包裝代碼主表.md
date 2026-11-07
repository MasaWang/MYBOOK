# Artibird SKU & Model Naming Specification v1.0

# Artibird SKU 與型號命名規範 v1.0

## Chapter 31 — Package Code Master Table

## 第三十一章｜包裝代碼主表

---

## 31.1 Purpose

## 31.1 目的

### EN

This chapter defines the Package Code Master Table used by Artibird SKU records, package model names, barcode records, Amazon FNSKU records, manufacturing records, warehouse records, channel documents, project kits, demo kits, sample kits, and commercial release plans.

The package code identifies how a product or bundle is packaged, sold, shipped, listed, demonstrated, sampled, or deployed.

The purpose of this chapter is to ensure that package codes are used consistently across retail packaging, Amazon FBA preparation, project delivery, education deployment, channel sales, bulk shipment, demo use, sample distribution, and non-physical service records.

### ZH-TW

本章定義 Artibird SKU 記錄、包裝型號名稱、條碼記錄、Amazon FNSKU 記錄、生產記錄、倉儲記錄、渠道文件、專案套組、展示套組、樣品套組與商業發布計劃中使用的包裝代碼主表。

包裝代碼用於識別產品或組合包如何被包裝、銷售、出貨、上架、展示、送樣或部署。

本章目的，是確保包裝代碼在零售包裝、Amazon FBA 準備、專案交付、教育部署、渠道銷售、批量出貨、展示使用、樣品發放與非實體服務記錄中被一致使用。

---

## 31.2 Package Code Definition

## 31.2 包裝代碼定義

### EN

A package code defines the commercial packaging unit or distribution form of a SKU.

It answers the following questions:

|Question|Description|
|---|---|
|Is this a single product or a multi-pack?|S, 2P, 4P|
|Is this a kit or bundle?|KIT, PROKIT, EDU, DEMO, SAMPLE|
|Is this for project delivery?|PRJ|
|Is this for channel distribution?|CH|
|Is this prepared for Amazon FBA?|FBA|
|Is this a bulk shipment package?|BULK|
|Is this a software or service record without physical package?|NA|
|Does the package require barcode or FNSKU?|Required where applicable|
|Does the package include multiple product SKUs?|Required for kits and bundles|
|Is this package approved for public sale?|Controlled by release and approval status|

### ZH-TW

包裝代碼定義某一 SKU 的商業包裝單位或分發形式。

它回答以下問題：

|問題|說明|
|---|---|
|這是單品還是多入裝？|S、2P、4P|
|這是套組或組合包嗎？|KIT、PROKIT、EDU、DEMO、SAMPLE|
|是否用於專案交付？|PRJ|
|是否用於渠道分銷？|CH|
|是否為 Amazon FBA 準備包裝？|FBA|
|是否為批量出貨包？|BULK|
|是否為無實體包裝的軟體或服務記錄？|NA|
|是否需要條碼或 FNSKU？|適用時必填|
|是否包含多個產品 SKU？|套組與組合包必填|
|此包裝是否已核准公開銷售？|由發布與核准狀態管控|

---

## 31.3 Package Code Governance Principle

## 31.3 包裝代碼治理原則

### EN

The core principle of package code governance is:

```text
One package code = one controlled packaging, distribution, or commercial unit type.
```

A package code must describe the actual sales unit or delivery unit. It must not be used loosely to make a product appear more complete, more professional, more channel-ready, or more marketplace-ready than it actually is.

For example:

```text
FBA = Amazon FBA-ready package
```

It does not automatically mean:

```text
Amazon listing approved
Amazon compliance approved
Barcode assigned
FNSKU assigned
Product certified
Package artwork completed
Inventory ready for shipment
```

Those statuses must be recorded separately in barcode records, FNSKU records, Amazon listing records, package version records, release status records, and compliance records.

### ZH-TW

包裝代碼治理的核心原則是：

```text
一個包裝代碼 = 一種受控包裝、分發或商業單位類型。
```

包裝代碼必須描述實際銷售單位或交付單位，不得被鬆散用來讓產品看起來比實際更完整、更專業、更適合渠道或更適合 marketplace。

例如：

```text
FBA = Amazon FBA-ready package
```

它不自動代表：

```text
Amazon 上架已核准
Amazon 合規已核准
條碼已分配
FNSKU 已分配
產品已認證
包裝 artwork 已完成
庫存已可出貨
```

這些狀態必須分別記錄於條碼記錄、FNSKU 記錄、Amazon 上架記錄、包裝版本記錄、發布狀態記錄與合規記錄中。

---

## 31.4 Standard Package Code Master Table

## 31.4 標準包裝代碼主表

### EN

|Package Code|Package Name|Meaning|Typical Use|
|---|---|---|---|
|S|Single Unit|One sellable unit|Retail, website, Amazon, project|
|2P|Two-Pack|Two units in one sales package|Retail, Amazon, channel|
|4P|Four-Pack|Four units in one sales package|Retail, Amazon, channel, project|
|KIT|Standard Kit|Multi-product starter or use-case kit|Smart room, energy, system starter|
|PROKIT|Professional Kit|Professional or integrator-focused kit|Gate Pro, Edge Pro, deployment kit|
|EDU|Education Package|Education-oriented kit or classroom package|Classroom, school, campus|
|PRJ|Project Package|Project-specific deployment package|B2B, institutional, site deployment|
|CH|Channel Pack|Distributor or reseller channel pack|Channel inventory, reseller bundles|
|FBA|Amazon FBA Package|Amazon fulfillment-ready package|Amazon marketplace|
|BULK|Bulk Pack|Bulk shipment or non-retail package|Projects, warehouses, large orders|
|DEMO|Demo Kit|Demonstration or exhibition package|Sales demo, partner training, trade show|
|SAMPLE|Sample Kit|Evaluation, certification, or partner sample|Engineering, partner, customer trial|
|NA|Not Applicable|No physical package applies|App, Cloud, service record|

### ZH-TW

|包裝代碼|包裝名稱|含義|典型用途|
|---|---|---|---|
|S|Single Unit|一個可銷售單品|零售、官網、Amazon、專案|
|2P|Two-Pack|兩個單品組成一個銷售包|零售、Amazon、渠道|
|4P|Four-Pack|四個單品組成一個銷售包|零售、Amazon、渠道、專案|
|KIT|Standard Kit|多產品入門套組或使用場景套組|智慧房間、能源、系統入門|
|PROKIT|Professional Kit|專業或整合商導向套組|Gate Pro、Edge Pro、部署套組|
|EDU|Education Package|教育導向套組或教室包|教室、學校、校園|
|PRJ|Project Package|專案特定部署包|B2B、機構、場地部署|
|CH|Channel Pack|分銷商或經銷商渠道包|渠道庫存、經銷商組合|
|FBA|Amazon FBA Package|Amazon 履約準備包裝|Amazon marketplace|
|BULK|Bulk Pack|批量出貨或非零售包裝|專案、倉儲、大訂單|
|DEMO|Demo Kit|展示或展會包裝|銷售展示、合作夥伴培訓、展會|
|SAMPLE|Sample Kit|評估、認證或合作夥伴樣品|工程、合作夥伴、客戶試用|
|NA|Not Applicable|不適用實體包裝|App、Cloud、服務記錄|

---

## 31.5 Package Code Usage in SKU Format

## 31.5 包裝代碼在 SKU 格式中的使用

### EN

The package code appears in the eighth field of the official SKU structure:

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

The package code must match the package model name, packaging version, barcode record, Amazon record, included product list, manufacturing record, and commercial release status.

### ZH-TW

包裝代碼出現在官方 SKU 結構的第八個欄位：

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

包裝代碼必須匹配包裝型號名稱、包裝版本、條碼記錄、Amazon 記錄、內含產品清單、生產記錄與商業發布狀態。

---

## 31.6 Single Unit Code — S

## 31.6 單品代碼 — S

### EN

The S code is used for a single sellable unit.

|Field|Requirement|
|---|---|
|Package Code|S|
|Package Name|Single Unit|
|Typical Product Lines|Most hardware product lines|
|Barcode Requirement|Usually required for retail or marketplace sale|
|FNSKU Requirement|Required if used for Amazon FBA|
|Included Product Mapping|Usually one product SKU|
|Packaging Requirement|Retail box, label, manual, accessories where applicable|
|Claim Boundary|Must not imply kit, multi-pack, professional bundle, or deployment package|

Example:

```text
ATB-ACT-G1-US-WF-AC-E-S
```

This represents one Artibird Act-E sellable unit.

### ZH-TW

S 代碼用於一個可銷售單品。

|欄位|要求|
|---|---|
|包裝代碼|S|
|包裝名稱|Single Unit|
|典型產品線|大多數硬體產品線|
|條碼要求|零售或 marketplace 銷售通常需要|
|FNSKU 要求|若用於 Amazon FBA 則必填|
|內含產品映射|通常為一個產品 SKU|
|包裝要求|適用時包含零售盒、標籤、手冊、配件|
|宣稱邊界|不得暗示套組、多入裝、專業組合或部署包|

示例：

```text
ATB-ACT-G1-US-WF-AC-E-S
```

表示一個 Artibird Act-E 可銷售單品。

---

## 31.7 Two-Pack Code — 2P

## 31.7 兩入裝代碼 — 2P

### EN

The 2P code is used when two units are sold as one package.

|Field|Requirement|
|---|---|
|Package Code|2P|
|Package Name|Two-Pack|
|Typical Product Lines|Switch, Act, Sense, selected accessories|
|Barcode Requirement|Usually requires a separate barcode from single unit|
|FNSKU Requirement|Required if used for Amazon FBA|
|Included Product Mapping|Two identical units or a clearly defined two-item package|
|Packaging Requirement|Package must define quantity, accessories, manuals, labels, and carton configuration|
|Claim Boundary|Must not be confused with two separate single-unit SKUs|

Example:

```text
ATB-SW-G1-US-BLE-BAT-SCN-2P
```

This represents a two-pack Artibird Switch Scene package.

### ZH-TW

2P 代碼用於兩個單品作為一個包裝銷售的情況。

|欄位|要求|
|---|---|
|包裝代碼|2P|
|包裝名稱|Two-Pack|
|典型產品線|Switch、Act、Sense、特定配件|
|條碼要求|通常需要不同於單品的獨立條碼|
|FNSKU 要求|若用於 Amazon FBA 則必填|
|內含產品映射|兩個相同單品，或明確定義的兩件組包裝|
|包裝要求|必須定義數量、配件、手冊、標籤與外箱配置|
|宣稱邊界|不得與兩個單品 SKU 混淆|

示例：

```text
ATB-SW-G1-US-BLE-BAT-SCN-2P
```

表示一個兩入裝 Artibird Switch Scene 包裝。

---

## 31.8 Four-Pack Code — 4P

## 31.8 四入裝代碼 — 4P

### EN

The 4P code is used when four units are sold as one package.

|Field|Requirement|
|---|---|
|Package Code|4P|
|Package Name|Four-Pack|
|Typical Product Lines|Switch, Sense, Act, selected project or channel products|
|Barcode Requirement|Usually requires a separate barcode|
|FNSKU Requirement|Required if used for Amazon FBA|
|Included Product Mapping|Four identical units or clearly defined four-item package|
|Packaging Requirement|Must define carton layout, quantity, accessories, manual count, and labeling|
|Claim Boundary|Must not be treated as four separate single-unit packages for inventory unless system supports it|

Example:

```text
ATB-SNS-G1-GL-BLE-BAT-CLM-4P
```

This represents a four-pack Artibird Sense Climate package.

### ZH-TW

4P 代碼用於四個單品作為一個包裝銷售的情況。

|欄位|要求|
|---|---|
|包裝代碼|4P|
|包裝名稱|Four-Pack|
|典型產品線|Switch、Sense、Act、特定專案或渠道產品|
|條碼要求|通常需要獨立條碼|
|FNSKU 要求|若用於 Amazon FBA 則必填|
|內含產品映射|四個相同單品，或明確定義的四件組包裝|
|包裝要求|必須定義外箱布局、數量、配件、手冊數量與標籤|
|宣稱邊界|除非系統支持，否則不得在庫存中直接視為四個獨立單品包裝|

示例：

```text
ATB-SNS-G1-GL-BLE-BAT-CLM-4P
```

表示一個四入裝 Artibird Sense Climate 包裝。

---

## 31.9 Standard Kit Code — KIT

## 31.9 標準套組代碼 — KIT

### EN

The KIT code is used for a standard multi-product kit or use-case starter package.

|Field|Requirement|
|---|---|
|Package Code|KIT|
|Package Name|Standard Kit|
|Typical Use|Smart Room Starter Kit, Energy Starter Kit, system starter package|
|Barcode Requirement|Required if sold as one commercial package|
|FNSKU Requirement|Required if used for Amazon FBA|
|Included Product Mapping|Must list every included product SKU and quantity|
|Packaging Requirement|Must define kit box, inserts, labels, manuals, accessories, and service records|
|Claim Boundary|Must not imply system capability beyond included products and validated software behavior|

Example:

```text
ATB-KIT-G1-US-HYB-NA-STD-KIT
```

This may represent an Artibird Smart Room Starter Kit.

### ZH-TW

KIT 代碼用於標準多產品套組或使用場景入門包。

|欄位|要求|
|---|---|
|包裝代碼|KIT|
|包裝名稱|Standard Kit|
|典型用途|Smart Room Starter Kit、Energy Starter Kit、系統入門包|
|條碼要求|若作為一個商業包裝銷售，則需要|
|FNSKU 要求|若用於 Amazon FBA 則必填|
|內含產品映射|必須列出每一個內含產品 SKU 與數量|
|包裝要求|必須定義套組盒、內襯、標籤、手冊、配件與服務記錄|
|宣稱邊界|不得暗示超出內含產品與已驗證軟體行為的系統能力|

示例：

```text
ATB-KIT-G1-US-HYB-NA-STD-KIT
```

可表示 Artibird Smart Room Starter Kit。

---

## 31.10 Professional Kit Code — PROKIT

## 31.10 專業套組代碼 — PROKIT

### EN

The PROKIT code is used for professional, integrator-oriented, advanced deployment, or higher-tier kit packages.

|Field|Requirement|
|---|---|
|Package Code|PROKIT|
|Package Name|Professional Kit|
|Typical Use|Gate Pro Kit, Edge Pro Kit, integrator deployment kit|
|Barcode Requirement|Required if sold as a commercial package|
|FNSKU Requirement|Required if used for Amazon FBA|
|Included Product Mapping|Must list product SKUs, accessories, adapter, setup tools, and service records|
|Packaging Requirement|Must define professional package content, documentation, and deployment scope|
|Claim Boundary|“Pro” must reflect documented difference from standard package|

Example:

```text
ATB-GATE-G1-US-HYB-USB-PRO-PROKIT
```

This may represent an Artibird Gate Pro Kit.

### ZH-TW

PROKIT 代碼用於專業、整合商導向、高階部署或較高階套組包裝。

|欄位|要求|
|---|---|
|包裝代碼|PROKIT|
|包裝名稱|Professional Kit|
|典型用途|Gate Pro Kit、Edge Pro Kit、整合商部署套組|
|條碼要求|若作為商業包裝銷售，則需要|
|FNSKU 要求|若用於 Amazon FBA 則必填|
|內含產品映射|必須列出產品 SKU、配件、適配器、設定工具與服務記錄|
|包裝要求|必須定義專業包裝內容、文件與部署範圍|
|宣稱邊界|“Pro” 必須反映與標準包裝的已記錄差異|

示例：

```text
ATB-GATE-G1-US-HYB-USB-PRO-PROKIT
```

可表示 Artibird Gate Pro Kit。

---

## 31.11 Education Package Code — EDU

## 31.11 教育包裝代碼 — EDU

### EN

The EDU code is used for education-oriented packages, classroom kits, campus kits, or school deployment packages.

|Field|Requirement|
|---|---|
|Package Code|EDU|
|Package Name|Education Package|
|Typical Use|Classroom Control Kit, school deployment package, campus starter kit|
|Barcode Requirement|Depends on channel and sales structure|
|FNSKU Requirement|Required only if sold through Amazon FBA|
|Included Product Mapping|Must list all hardware, software, service, and support records|
|Packaging Requirement|Must define classroom / education use scope, manuals, labels, and installation documents|
|Claim Boundary|Must not imply school procurement approval, safety certification, or learning outcome without evidence|

Example:

```text
ATB-KIT-G1-US-HYB-NA-EDU-EDU
```

This may represent an Artibird Classroom Control Kit.

### ZH-TW

EDU 代碼用於教育導向包裝、教室套組、校園套組或學校部署包。

|欄位|要求|
|---|---|
|包裝代碼|EDU|
|包裝名稱|Education Package|
|典型用途|Classroom Control Kit、學校部署包、校園入門套組|
|條碼要求|取決於渠道與銷售結構|
|FNSKU 要求|僅在透過 Amazon FBA 銷售時必填|
|內含產品映射|必須列出所有硬體、軟體、服務與支持記錄|
|包裝要求|必須定義教室 / 教育用途範圍、手冊、標籤與安裝文件|
|宣稱邊界|無證據前不得暗示學校採購核准、安全認證或學習成效|

示例：

```text
ATB-KIT-G1-US-HYB-NA-EDU-EDU
```

可表示 Artibird Classroom Control Kit。

---

## 31.12 Project Package Code — PRJ

## 31.12 專案包代碼 — PRJ

### EN

The PRJ code is used for project-specific deployment packages.

|Field|Requirement|
|---|---|
|Package Code|PRJ|
|Package Name|Project Package|
|Typical Use|B2B deployment, institutional project, smart building, school project, campus deployment|
|Barcode Requirement|Depends on logistics and inventory system|
|FNSKU Requirement|Usually not required unless project package is sold through Amazon|
|Included Product Mapping|Must list every included SKU, quantity, service, accessory, and installation item|
|Packaging Requirement|Must define project scope, site, batch, delivery method, and installation documentation|
|Claim Boundary|Must not be treated as public retail package unless converted and approved|

Example:

```text
ATB-KIT-G1-US-HYB-NA-CUSTOM-PRJ
```

This may represent a project-specific Artibird deployment package.

### ZH-TW

PRJ 代碼用於專案特定部署包。

|欄位|要求|
|---|---|
|包裝代碼|PRJ|
|包裝名稱|Project Package|
|典型用途|B2B 部署、機構專案、智慧建築、學校專案、校園部署|
|條碼要求|取決於物流與庫存系統|
|FNSKU 要求|除非專案包透過 Amazon 銷售，否則通常不需要|
|內含產品映射|必須列出每一個內含 SKU、數量、服務、配件與安裝項目|
|包裝要求|必須定義專案範圍、場地、批次、交付方式與安裝文件|
|宣稱邊界|除非轉換並核准，否則不得視為公開零售包裝|

示例：

```text
ATB-KIT-G1-US-HYB-NA-CUSTOM-PRJ
```

可表示專案特定 Artibird 部署包。

---

## 31.13 Channel Pack Code — CH

## 31.13 渠道包代碼 — CH

### EN

The CH code is used for distributor, reseller, or channel-specific packages.

|Field|Requirement|
|---|---|
|Package Code|CH|
|Package Name|Channel Pack|
|Typical Use|Distributor bundles, reseller packs, regional channel inventory|
|Barcode Requirement|Usually required for channel inventory control|
|FNSKU Requirement|Not required unless used for Amazon FBA|
|Included Product Mapping|Must list included SKUs, quantity, channel rules, and region|
|Packaging Requirement|Must define channel packaging, labels, carton, and reseller documents|
|Claim Boundary|Must not imply end-customer retail readiness unless retail packaging is included|

Example:

```text
ATB-ACT-G1-US-WF-AC-E-CH
```

This may represent a channel-specific Artibird Act-E pack.

### ZH-TW

CH 代碼用於分銷商、經銷商或渠道特定包裝。

|欄位|要求|
|---|---|
|包裝代碼|CH|
|包裝名稱|Channel Pack|
|典型用途|分銷組合、經銷商包、區域渠道庫存|
|條碼要求|通常需要用於渠道庫存管控|
|FNSKU 要求|除非用於 Amazon FBA，否則不需要|
|內含產品映射|必須列出內含 SKU、數量、渠道規則與區域|
|包裝要求|必須定義渠道包裝、標籤、外箱與經銷商文件|
|宣稱邊界|除非包含零售包裝，否則不得暗示可直接面向終端客戶零售|

示例：

```text
ATB-ACT-G1-US-WF-AC-E-CH
```

可表示渠道特定 Artibird Act-E 包裝。

---

## 31.14 Amazon FBA Package Code — FBA

## 31.14 Amazon FBA 包裝代碼 — FBA

### EN

The FBA code is used for packages prepared for Amazon fulfillment.

|Field|Requirement|
|---|---|
|Package Code|FBA|
|Package Name|Amazon FBA Package|
|Typical Use|Amazon marketplace inventory|
|Barcode Requirement|Required|
|FNSKU Requirement|Required|
|Included Product Mapping|Must match Amazon listing and physical package|
|Packaging Requirement|Must meet Amazon packaging, barcode, labeling, and preparation requirements|
|Claim Boundary|FBA does not mean Amazon listing, compliance, or certification is approved|

Example:

```text
ATB-SYNC-G1-US-IRRF-USB-STD-FBA
```

This may represent an Amazon FBA-ready Artibird Sync IR/RF package.

### ZH-TW

FBA 代碼用於已準備進入 Amazon 履約系統的包裝。

|欄位|要求|
|---|---|
|包裝代碼|FBA|
|包裝名稱|Amazon FBA Package|
|典型用途|Amazon marketplace 庫存|
|條碼要求|必填|
|FNSKU 要求|必填|
|內含產品映射|必須匹配 Amazon 上架與實體包裝|
|包裝要求|必須符合 Amazon 包裝、條碼、貼標與準備要求|
|宣稱邊界|FBA 不代表 Amazon 上架、合規或認證已核准|

示例：

```text
ATB-SYNC-G1-US-IRRF-USB-STD-FBA
```

可表示 Amazon FBA-ready Artibird Sync IR/RF 包裝。

---

## 31.15 Bulk Pack Code — BULK

## 31.15 批量包代碼 — BULK

### EN

The BULK code is used for bulk shipment, non-retail packaging, warehouse transfer, or large-order fulfillment.

|Field|Requirement|
|---|---|
|Package Code|BULK|
|Package Name|Bulk Pack|
|Typical Use|Project shipment, warehouse inventory, large-order delivery|
|Barcode Requirement|Depends on inventory and logistics system|
|FNSKU Requirement|Not required unless later converted for Amazon|
|Included Product Mapping|Must list quantity and included SKU records|
|Packaging Requirement|Must define carton quantity, pallet rules, labels, and protection method|
|Claim Boundary|Must not be used for customer-facing retail sale unless repackaged and approved|

Example:

```text
ATB-SNS-G1-US-BLE-BAT-CLM-BULK
```

This may represent a bulk pack of Artibird Sense Climate units.

### ZH-TW

BULK 代碼用於批量出貨、非零售包裝、倉庫轉移或大訂單履約。

|欄位|要求|
|---|---|
|包裝代碼|BULK|
|包裝名稱|Bulk Pack|
|典型用途|專案出貨、倉儲庫存、大訂單交付|
|條碼要求|取決於庫存與物流系統|
|FNSKU 要求|除非後續轉換為 Amazon，否則不需要|
|內含產品映射|必須列出數量與內含 SKU 記錄|
|包裝要求|必須定義外箱數量、棧板規則、標籤與保護方式|
|宣稱邊界|除非重新包裝並核准，否則不得用於面向客戶的零售銷售|

示例：

```text
ATB-SNS-G1-US-BLE-BAT-CLM-BULK
```

可表示 Artibird Sense Climate 的批量包。

---

## 31.16 Demo Kit Code — DEMO

## 31.16 展示套組代碼 — DEMO

### EN

The DEMO code is used for sales demonstrations, exhibitions, investor presentations, partner training, or controlled evaluation.

|Field|Requirement|
|---|---|
|Package Code|DEMO|
|Package Name|Demo Kit|
|Typical Use|Sales demo, trade show, partner training, internal presentation|
|Barcode Requirement|Usually not required unless inventory-controlled|
|FNSKU Requirement|Not required|
|Included Product Mapping|Must list demo units, accessories, software accounts, and demo scripts where applicable|
|Packaging Requirement|Must define demo-only label, setup guide, and use boundary|
|Claim Boundary|Must not be sold as standard retail product unless converted and approved|

Example:

```text
ATB-KIT-G1-US-HYB-NA-STD-DEMO
```

This may represent an Artibird Demo Kit.

### ZH-TW

DEMO 代碼用於銷售展示、展會、投資人演示、合作夥伴培訓或受控評估。

|欄位|要求|
|---|---|
|包裝代碼|DEMO|
|包裝名稱|Demo Kit|
|典型用途|銷售展示、展會、合作夥伴培訓、內部演示|
|條碼要求|除非進行庫存管控，否則通常不需要|
|FNSKU 要求|不需要|
|內含產品映射|適用時必須列出展示設備、配件、軟體帳號與展示腳本|
|包裝要求|必須定義 demo-only 標籤、設定指南與使用邊界|
|宣稱邊界|除非轉換並核准，否則不得作為標準零售產品銷售|

示例：

```text
ATB-KIT-G1-US-HYB-NA-STD-DEMO
```

可表示 Artibird Demo Kit。

---

## 31.17 Sample Kit Code — SAMPLE

## 31.17 樣品套組代碼 — SAMPLE

### EN

The SAMPLE code is used for engineering samples, certification samples, partner samples, investor samples, or controlled customer evaluation.

|Field|Requirement|
|---|---|
|Package Code|SAMPLE|
|Package Name|Sample Kit|
|Typical Use|Engineering sample, certification sample, partner sample, controlled customer trial|
|Barcode Requirement|Usually not required unless inventory-controlled|
|FNSKU Requirement|Not required|
|Included Product Mapping|Must identify sample unit, engineering model, firmware version, and intended use|
|Packaging Requirement|Must define sample status, limitations, and non-retail condition|
|Claim Boundary|Must not be treated as final commercial product unless released and approved|

Example:

```text
ATB-ACT-G1-US-WF-AC-E-SAMPLE
```

This may represent an Artibird Act-E sample package.

### ZH-TW

SAMPLE 代碼用於工程樣品、認證樣品、合作夥伴樣品、投資人樣品或受控客戶評估。

|欄位|要求|
|---|---|
|包裝代碼|SAMPLE|
|包裝名稱|Sample Kit|
|典型用途|工程樣品、認證樣品、合作夥伴樣品、受控客戶試用|
|條碼要求|除非進行庫存管控，否則通常不需要|
|FNSKU 要求|不需要|
|內含產品映射|必須識別樣品單位、工程型號、韌體版本與用途|
|包裝要求|必須定義樣品狀態、限制與非零售條件|
|宣稱邊界|除非發布並核准，否則不得視為最終商業產品|

示例：

```text
ATB-ACT-G1-US-WF-AC-E-SAMPLE
```

可表示 Artibird Act-E 樣品包裝。

---

## 31.18 Not Applicable Code — NA

## 31.18 Not Applicable 代碼 — NA

### EN

The NA code is used when no physical package applies.

|Field|Requirement|
|---|---|
|Package Code|NA|
|Package Name|Not Applicable|
|Typical Use|App, Cloud, service records, subscription records, non-physical records|
|Barcode Requirement|Not applicable|
|FNSKU Requirement|Not applicable|
|Included Product Mapping|Not required unless bundled with hardware|
|Packaging Requirement|No physical package required|
|Claim Boundary|Do not use NA for hardware products simply because packaging is undecided|

If packaging is not yet decided, the package field should remain TBD under Draft status. NA should only be used when physical packaging truly does not apply.

### ZH-TW

NA 代碼用於不適用實體包裝的情況。

|欄位|要求|
|---|---|
|包裝代碼|NA|
|包裝名稱|Not Applicable|
|典型用途|App、Cloud、服務記錄、訂閱記錄、非實體記錄|
|條碼要求|不適用|
|FNSKU 要求|不適用|
|內含產品映射|除非與硬體綁定，否則不需要|
|包裝要求|不需要實體包裝|
|宣稱邊界|不得因硬體產品包裝尚未決定而使用 NA|

如果包裝尚未決定，Draft 狀態下應將包裝欄位保留為 TBD。只有在實體包裝確實不適用時，才可使用 NA。

---

## 31.19 Product Line Compatibility Matrix

## 31.19 產品線相容矩陣

### EN

|Product Line Code|S|2P|4P|KIT|PROKIT|EDU|PRJ|CH|FBA|BULK|DEMO|SAMPLE|NA|
|---|--:|--:|--:|--:|--:|--:|--:|--:|--:|--:|--:|--:|--:|
|HUB|Yes|Maybe|No|Yes|Maybe|Yes|Yes|Maybe|Maybe|Maybe|Yes|Yes|No|
|GATE|Yes|Maybe|No|Yes|Yes|Maybe|Yes|Maybe|Yes|Maybe|Yes|Yes|No|
|SYNC|Yes|Maybe|Maybe|Yes|Maybe|Maybe|Yes|Maybe|Yes|Maybe|Yes|Yes|No|
|SW|Yes|Yes|Yes|Yes|No|Yes|Yes|Yes|Yes|Yes|Yes|Yes|No|
|PNL|Yes|Maybe|No|Yes|Maybe|Yes|Yes|Maybe|Maybe|Maybe|Yes|Yes|No|
|ACT|Yes|Yes|Yes|Yes|Maybe|Yes|Yes|Yes|Yes|Yes|Yes|Yes|No|
|SNS|Yes|Yes|Yes|Yes|No|Yes|Yes|Yes|Yes|Yes|Yes|Yes|No|
|VIS|Yes|Maybe|No|Maybe|Yes|Maybe|Yes|Maybe|Maybe|Maybe|Yes|Yes|No|
|APP|No|No|No|Maybe|No|Maybe|Maybe|No|No|No|Maybe|Maybe|Yes|
|CLD|No|No|No|Maybe|No|Maybe|Yes|No|No|No|Maybe|Maybe|Yes|
|EDGE|Yes|No|No|Maybe|Yes|Maybe|Yes|Maybe|Maybe|Maybe|Yes|Yes|No|

### ZH-TW

|產品線代碼|S|2P|4P|KIT|PROKIT|EDU|PRJ|CH|FBA|BULK|DEMO|SAMPLE|NA|
|---|--:|--:|--:|--:|--:|--:|--:|--:|--:|--:|--:|--:|--:|
|HUB|是|視情況|否|是|視情況|是|是|視情況|視情況|視情況|是|是|否|
|GATE|是|視情況|否|是|是|視情況|是|視情況|是|視情況|是|是|否|
|SYNC|是|視情況|視情況|是|視情況|視情況|是|視情況|是|視情況|是|是|否|
|SW|是|是|是|是|否|是|是|是|是|是|是|是|否|
|PNL|是|視情況|否|是|視情況|是|是|視情況|視情況|視情況|是|是|否|
|ACT|是|是|是|是|視情況|是|是|是|是|是|是|是|否|
|SNS|是|是|是|是|否|是|是|是|是|是|是|是|否|
|VIS|是|視情況|否|視情況|是|視情況|是|視情況|視情況|視情況|是|是|否|
|APP|否|否|否|視情況|否|視情況|視情況|否|否|否|視情況|視情況|是|
|CLD|否|否|否|視情況|否|視情況|是|否|否|否|視情況|視情況|是|
|EDGE|是|否|否|視情況|是|視情況|是|視情況|視情況|視情況|是|是|否|

---

## 31.20 Barcode and FNSKU Requirement Matrix

## 31.20 條碼與 FNSKU 要求矩陣

### EN

|Package Code|Barcode Required?|Amazon FNSKU Required?|Notes|
|---|--:|--:|---|
|S|Usually yes|Required for FBA|Single retail unit usually needs barcode|
|2P|Usually yes|Required for FBA|Must be separate from single-unit barcode|
|4P|Usually yes|Required for FBA|Must be separate from single-unit and two-pack barcode|
|KIT|Usually yes|Required for FBA|Kit barcode must represent the entire kit|
|PROKIT|Usually yes|Required for FBA|Pro kit may require separate package record|
|EDU|Depends|Only if sold through FBA|Education packages may be project or channel controlled|
|PRJ|Depends|Usually no|Project shipment may use internal logistics labels|
|CH|Usually yes|No unless FBA|Channel packs require distributor inventory control|
|FBA|Yes|Yes|FBA package requires Amazon preparation record|
|BULK|Depends|No|Bulk carton or pallet labels may apply|
|DEMO|Usually no|No|Demo inventory label may be used internally|
|SAMPLE|Usually no|No|Sample tracking label may be used internally|
|NA|No|No|No physical package|

### ZH-TW

|包裝代碼|是否需要條碼？|是否需要 Amazon FNSKU？|備註|
|---|--:|--:|---|
|S|通常需要|FBA 必填|單品零售通常需要條碼|
|2P|通常需要|FBA 必填|必須不同於單品條碼|
|4P|通常需要|FBA 必填|必須不同於單品與兩入裝條碼|
|KIT|通常需要|FBA 必填|套組條碼必須代表整套包裝|
|PROKIT|通常需要|FBA 必填|專業套組可能需要獨立包裝記錄|
|EDU|視情況|僅透過 FBA 銷售時需要|教育包可能由專案或渠道管控|
|PRJ|視情況|通常不需要|專案出貨可使用內部物流標籤|
|CH|通常需要|除非 FBA，否則不需要|渠道包需要分銷庫存管控|
|FBA|需要|需要|FBA 包裝需要 Amazon 準備記錄|
|BULK|視情況|不需要|可使用外箱或棧板標籤|
|DEMO|通常不需要|不需要|可使用內部展示庫存標籤|
|SAMPLE|通常不需要|不需要|可使用內部樣品追蹤標籤|
|NA|不需要|不需要|無實體包裝|

---

## 31.21 Included Product Mapping Rules

## 31.21 內含產品映射規則

### EN

Package codes that represent bundles, kits, multi-packs, project packages, demo kits, or sample packages must list included products.

|Package Code|Included Product Mapping Requirement|
|---|---|
|S|Usually one product SKU|
|2P|Two units or two-item package must be listed|
|4P|Four units or four-item package must be listed|
|KIT|Every included product SKU, quantity, accessory, and service record must be listed|
|PROKIT|Every included product SKU, adapter, accessory, setup item, and service record must be listed|
|EDU|Hardware, software, cloud service, support, and classroom package content must be listed|
|PRJ|Project BOM, SKU list, service scope, site scope, and quantity must be listed|
|CH|Channel inventory units, bundle rules, and reseller documents must be listed|
|FBA|Must match Amazon listing and physical package|
|BULK|Quantity, carton count, pallet rule, and included SKU records must be listed|
|DEMO|Demo units, accessories, demo scripts, accounts, and limitations must be listed|
|SAMPLE|Sample unit, engineering version, firmware version, and intended use must be listed|
|NA|Not required unless bundled with a physical product|

### ZH-TW

代表組合包、套組、多入裝、專案包、展示包或樣品包的包裝代碼，必須列出內含產品。

|包裝代碼|內含產品映射要求|
|---|---|
|S|通常為一個產品 SKU|
|2P|必須列出兩個單位或兩件組包裝|
|4P|必須列出四個單位或四件組包裝|
|KIT|必須列出每個內含產品 SKU、數量、配件與服務記錄|
|PROKIT|必須列出每個產品 SKU、適配器、配件、設定項目與服務記錄|
|EDU|必須列出硬體、軟體、雲端服務、支持與教室包內容|
|PRJ|必須列出專案 BOM、SKU 清單、服務範圍、場地範圍與數量|
|CH|必須列出渠道庫存單位、組合規則與經銷文件|
|FBA|必須匹配 Amazon 上架與實體包裝|
|BULK|必須列出數量、外箱數、棧板規則與內含 SKU 記錄|
|DEMO|必須列出展示設備、配件、展示腳本、帳號與限制|
|SAMPLE|必須列出樣品單位、工程版本、韌體版本與用途|
|NA|除非與實體產品綁定，否則不需要|

---

## 31.22 Package Code and Commercial Use Matrix

## 31.22 包裝代碼與商業用途矩陣

### EN

|Package Code|Public Retail|Amazon|Channel|Project|Internal|Notes|
|---|--:|--:|--:|--:|--:|---|
|S|Yes|Yes|Yes|Yes|Yes|Requires approval and required records|
|2P|Yes|Yes|Yes|Yes|Yes|Needs separate package and barcode|
|4P|Yes|Yes|Yes|Yes|Yes|Needs separate package and barcode|
|KIT|Yes|Maybe|Yes|Yes|Yes|Must define included products|
|PROKIT|Maybe|Maybe|Yes|Yes|Yes|Professional claim must be supported|
|EDU|Maybe|Maybe|Yes|Yes|Yes|Education scope must be defined|
|PRJ|No by default|No by default|Maybe|Yes|Yes|Project-specific use|
|CH|No by default|No by default|Yes|Maybe|Yes|Channel-controlled|
|FBA|Yes if listing approved|Yes|No by default|No by default|Yes|Amazon-specific|
|BULK|No|No|Maybe|Yes|Yes|Non-retail unless repackaged|
|DEMO|No|No|No|Maybe|Yes|Demonstration only|
|SAMPLE|No|No|No|Maybe|Yes|Evaluation only|
|NA|Not physical|Not physical|Not physical|Maybe|Yes|Service or software record|

### ZH-TW

|包裝代碼|公開零售|Amazon|渠道|專案|內部|備註|
|---|--:|--:|--:|--:|--:|---|
|S|是|是|是|是|是|需要核准與必要記錄|
|2P|是|是|是|是|是|需要獨立包裝與條碼|
|4P|是|是|是|是|是|需要獨立包裝與條碼|
|KIT|是|視情況|是|是|是|必須定義內含產品|
|PROKIT|視情況|視情況|是|是|是|Professional 宣稱必須有依據|
|EDU|視情況|視情況|是|是|是|必須定義教育範圍|
|PRJ|預設否|預設否|視情況|是|是|專案特定使用|
|CH|預設否|預設否|是|視情況|是|渠道受控|
|FBA|上架核准後是|是|預設否|預設否|是|Amazon 特定|
|BULK|否|否|視情況|是|是|非零售，除非重新包裝|
|DEMO|否|否|否|視情況|是|僅展示用途|
|SAMPLE|否|否|否|視情況|是|僅評估用途|
|NA|非實體|非實體|非實體|視情況|是|服務或軟體記錄|

---

## 31.23 Package Claim Boundary Rules

## 31.23 包裝宣稱邊界規則

### EN

|Claim Type|Rule|
|---|---|
|“Single Pack”|Must contain one sellable unit|
|“2-Pack”|Must contain two defined units and use correct package record|
|“4-Pack”|Must contain four defined units and use correct package record|
|“Starter Kit”|Must include enough products to support the starter use case|
|“Pro Kit”|Must include documented professional or enhanced content|
|“Classroom Kit”|Must include education-oriented contents and deployment scope|
|“Project Package”|Must define project boundary and site / customer scope|
|“Channel Pack”|Must not imply retail readiness unless retail package is included|
|“FBA-ready”|Must have FNSKU, barcode, packaging, and Amazon preparation record|
|“Bulk Pack”|Must not be sold as retail package without repackaging approval|
|“Demo Kit”|Must not be sold as final commercial product|
|“Sample Kit”|Must not be represented as final released product|
|“No package required”|Use only for software, cloud, service, or non-physical records|

### ZH-TW

|宣稱類型|規則|
|---|---|
|“Single Pack”|必須包含一個可銷售單位|
|“2-Pack”|必須包含兩個已定義單位並使用正確包裝記錄|
|“4-Pack”|必須包含四個已定義單位並使用正確包裝記錄|
|“Starter Kit”|必須包含足以支援入門使用場景的產品|
|“Pro Kit”|必須包含已記錄的專業或增強內容|
|“Classroom Kit”|必須包含教育導向內容與部署範圍|
|“Project Package”|必須定義專案邊界與場地 / 客戶範圍|
|“Channel Pack”|除非包含零售包裝，否則不得暗示零售就緒|
|“FBA-ready”|必須具備 FNSKU、條碼、包裝與 Amazon 準備記錄|
|“Bulk Pack”|未重新包裝核准前，不得作為零售包裝銷售|
|“Demo Kit”|不得作為最終商業產品銷售|
|“Sample Kit”|不得被表示為最終已發布產品|
|“No package required”|僅用於軟體、雲端、服務或非實體記錄|

---

## 31.24 Package Code Change Rules

## 31.24 包裝代碼變更規則

### EN

Changing a package code is a controlled action. A new SKU, package model name, barcode, FNSKU, manufacturing record, warehouse record, or commercial release record may be required.

|Change Scenario|New SKU Required?|Additional Review|
|---|--:|---|
|S changed to 2P|Yes|Package, barcode, inventory, Amazon, pricing review|
|S changed to 4P|Yes|Package, barcode, carton, inventory, pricing review|
|S changed to KIT|Yes|Included SKU list, package model name, barcode review|
|KIT changed to PROKIT|Usually yes|Professional scope and claim review|
|KIT changed to EDU|Usually yes|Education scope and channel review|
|KIT changed to PRJ|Usually yes|Project boundary and delivery review|
|CH changed to retail S|Yes|Retail package, barcode, public claim review|
|BULK changed to retail package|Yes|Repackaging and commercial release review|
|DEMO changed to commercial package|Yes|Full SKU and release approval required|
|SAMPLE changed to released product|Yes|Engineering, certification, package, and release review|
|FBA added to existing package|Usually yes|Amazon FNSKU, packaging, listing, compliance review|
|Package typo in draft SKU|No, if unreleased|Correct draft record|
|Package typo in released SKU|Change request required|Correction or replacement SKU may be needed|

### ZH-TW

變更包裝代碼是一項受控動作。可能需要新 SKU、包裝型號名稱、條碼、FNSKU、生產記錄、倉儲記錄或商業發布記錄。

|變更場景|是否需要新 SKU？|附加審查|
|---|--:|---|
|S 變更為 2P|是|包裝、條碼、庫存、Amazon、定價審查|
|S 變更為 4P|是|包裝、條碼、外箱、庫存、定價審查|
|S 變更為 KIT|是|內含 SKU 清單、包裝型號名稱、條碼審查|
|KIT 變更為 PROKIT|通常是|專業範圍與宣稱審查|
|KIT 變更為 EDU|通常是|教育範圍與渠道審查|
|KIT 變更為 PRJ|通常是|專案邊界與交付審查|
|CH 變更為零售 S|是|零售包裝、條碼、公開宣稱審查|
|BULK 變更為零售包裝|是|重新包裝與商業發布審查|
|DEMO 變更為商業包裝|是|需要完整 SKU 與發布核准|
|SAMPLE 變更為已發布產品|是|工程、認證、包裝與發布審查|
|既有包裝新增 FBA|通常是|Amazon FNSKU、包裝、上架、合規審查|
|草案 SKU 中包裝代碼錯誤|若未發布則不需要|修正草案記錄|
|已發布 SKU 中包裝代碼錯誤|需要變更申請|可能需要修正或替代 SKU|

---

## 31.25 Package Code Master Table Template

## 31.25 包裝代碼主表模板

### EN

|Field|Entry|
|---|---|
|Package Code|TBD|
|Package Name|TBD|
|Package Type|Single / Multi-Pack / Kit / Project / Channel / FBA / Bulk / Demo / Sample / Not Applicable|
|Description|TBD|
|Typical Product Lines|TBD|
|Compatible Product Lines|TBD|
|Restricted Product Lines|TBD|
|Barcode Requirement|Required / Optional / Not Required|
|Amazon FNSKU Requirement|Required / Optional / Not Required|
|Included Product Mapping Required|Yes / No|
|Packaging Version Required|Yes / No|
|Manufacturing Impact|TBD|
|Warehouse / Logistics Impact|TBD|
|Commercial Use Boundary|TBD|
|Claim Boundary Notes|TBD|
|Approval Status|Draft / Pending / Approved / Deprecated / Archived|
|Operations Owner|TBD|
|Packaging Owner|TBD|
|Compliance Owner|TBD|
|Revision Date|TBD|
|Change Log Reference|TBD|

### ZH-TW

|欄位|填寫|
|---|---|
|包裝代碼|TBD|
|包裝名稱|TBD|
|包裝類型|Single / Multi-Pack / Kit / Project / Channel / FBA / Bulk / Demo / Sample / Not Applicable|
|說明|TBD|
|典型產品線|TBD|
|相容產品線|TBD|
|限制產品線|TBD|
|條碼要求|Required / Optional / Not Required|
|Amazon FNSKU 要求|Required / Optional / Not Required|
|是否需要內含產品映射|Yes / No|
|是否需要包裝版本|Yes / No|
|生產影響|TBD|
|倉儲 / 物流影響|TBD|
|商業使用邊界|TBD|
|宣稱邊界備註|TBD|
|核准狀態|Draft / Pending / Approved / Deprecated / Archived|
|運營負責人|TBD|
|包裝負責人|TBD|
|合規負責人|TBD|
|修訂日期|TBD|
|變更記錄引用|TBD|

---

## 31.26 Completed Example — KIT Package Record

## 31.26 完整示例 — KIT 包裝記錄

### EN

|Field|Entry|
|---|---|
|Package Code|KIT|
|Package Name|Standard Kit|
|Package Type|Kit|
|Description|Multi-product starter or use-case package|
|Typical Product Lines|HUB, GATE, SYNC, SW, PNL, ACT, SNS, APP, CLD where bundled|
|Compatible Product Lines|Most hardware product lines where included product mapping is complete|
|Restricted Product Lines|Standalone service records unless bundled with hardware|
|Barcode Requirement|Required if sold as one commercial package|
|Amazon FNSKU Requirement|Required if sold through FBA|
|Included Product Mapping Required|Yes|
|Packaging Version Required|Yes|
|Manufacturing Impact|Kit assembly, carton, inserts, manuals, accessories, and service activation may apply|
|Warehouse / Logistics Impact|Inventory must treat kit as one package-level SKU|
|Commercial Use Boundary|Public sale allowed only after package, barcode, claim, and included-SKU approval|
|Claim Boundary Notes|Starter Kit must include enough products to support stated starter use case|
|Approval Status|Pending Review|
|Operations Owner|TBD|
|Packaging Owner|TBD|
|Compliance Owner|TBD|
|Revision Date|TBD|
|Change Log Reference|CR-PKG-KIT-001|

### ZH-TW

|欄位|填寫|
|---|---|
|包裝代碼|KIT|
|包裝名稱|Standard Kit|
|包裝類型|Kit|
|說明|多產品入門或使用場景包裝|
|典型產品線|HUB、GATE、SYNC、SW、PNL、ACT、SNS、APP、CLD 綁定時|
|相容產品線|大多數硬體產品線，但必須完成內含產品映射|
|限制產品線|獨立服務記錄，除非與硬體綁定|
|條碼要求|若作為一個商業包裝銷售則必填|
|Amazon FNSKU 要求|若透過 FBA 銷售則必填|
|是否需要內含產品映射|Yes|
|是否需要包裝版本|Yes|
|生產影響|可能涉及套組組裝、外箱、內襯、手冊、配件與服務啟用|
|倉儲 / 物流影響|庫存必須將套組視為一個包裝級 SKU|
|商業使用邊界|只有在包裝、條碼、宣稱與內含 SKU 完成核准後才可公開銷售|
|宣稱邊界備註|Starter Kit 必須包含足以支持所宣稱入門場景的產品|
|核准狀態|Pending Review|
|運營負責人|TBD|
|包裝負責人|TBD|
|合規負責人|TBD|
|修訂日期|TBD|
|變更記錄引用|CR-PKG-KIT-001|

---

## 31.27 Completed Example — FBA Package Record

## 31.27 完整示例 — FBA 包裝記錄

### EN

|Field|Entry|
|---|---|
|Package Code|FBA|
|Package Name|Amazon FBA Package|
|Package Type|FBA|
|Description|Package prepared for Amazon fulfillment|
|Typical Product Lines|Most retail-ready product lines|
|Compatible Product Lines|Hardware product lines with approved Amazon listing and package records|
|Restricted Product Lines|Demo, sample, project-only, or uncertified packages unless approved|
|Barcode Requirement|Required|
|Amazon FNSKU Requirement|Required|
|Included Product Mapping Required|Yes, must match Amazon listing|
|Packaging Version Required|Yes|
|Manufacturing Impact|Packaging, labeling, carton, and preparation must match Amazon requirements|
|Warehouse / Logistics Impact|FNSKU, fulfillment center prep, carton labels, shipment plan|
|Commercial Use Boundary|Amazon use only after listing, compliance, barcode, FNSKU, and package approval|
|Claim Boundary Notes|FBA-ready does not mean Amazon listing or certification is approved|
|Approval Status|Pending Review|
|Operations Owner|TBD|
|Packaging Owner|TBD|
|Compliance Owner|TBD|
|Revision Date|TBD|
|Change Log Reference|CR-PKG-FBA-001|

### ZH-TW

|欄位|填寫|
|---|---|
|包裝代碼|FBA|
|包裝名稱|Amazon FBA Package|
|包裝類型|FBA|
|說明|已準備進入 Amazon 履約系統的包裝|
|典型產品線|大多數零售就緒產品線|
|相容產品線|已核准 Amazon 上架與包裝記錄的硬體產品線|
|限制產品線|展示、樣品、專案-only 或未認證包裝，除非核准|
|條碼要求|Required|
|Amazon FNSKU 要求|Required|
|是否需要內含產品映射|Yes，必須匹配 Amazon 上架|
|是否需要包裝版本|Yes|
|生產影響|包裝、貼標、外箱與準備方式必須匹配 Amazon 要求|
|倉儲 / 物流影響|FNSKU、履約中心準備、外箱標籤、出貨計劃|
|商業使用邊界|只有在上架、合規、條碼、FNSKU 與包裝核准後才可用於 Amazon|
|宣稱邊界備註|FBA-ready 不代表 Amazon 上架或認證已核准|
|核准狀態|Pending Review|
|運營負責人|TBD|
|包裝負責人|TBD|
|合規負責人|TBD|
|修訂日期|TBD|
|變更記錄引用|CR-PKG-FBA-001|

---

## 31.28 Completed Example — DEMO Package Record

## 31.28 完整示例 — DEMO 包裝記錄

### EN

|Field|Entry|
|---|---|
|Package Code|DEMO|
|Package Name|Demo Kit|
|Package Type|Demo|
|Description|Demonstration package for sales, partners, exhibitions, and internal presentations|
|Typical Product Lines|HUB, GATE, SYNC, SW, PNL, ACT, SNS, VIS, APP, CLD where bundled|
|Compatible Product Lines|Selected products with demo script and use boundary|
|Restricted Product Lines|Public retail, Amazon FBA, released customer package unless converted|
|Barcode Requirement|Optional for internal inventory|
|Amazon FNSKU Requirement|Not Required|
|Included Product Mapping Required|Yes|
|Packaging Version Required|Yes|
|Manufacturing Impact|Demo assembly, labeling, sample firmware, demo accounts, special accessories may apply|
|Warehouse / Logistics Impact|Internal inventory and demo tracking|
|Commercial Use Boundary|Not for standard retail sale|
|Claim Boundary Notes|Demo Kit must not be represented as final commercial package|
|Approval Status|Pending Review|
|Operations Owner|TBD|
|Packaging Owner|TBD|
|Compliance Owner|TBD|
|Revision Date|TBD|
|Change Log Reference|CR-PKG-DEMO-001|

### ZH-TW

|欄位|填寫|
|---|---|
|包裝代碼|DEMO|
|包裝名稱|Demo Kit|
|包裝類型|Demo|
|說明|用於銷售、合作夥伴、展會與內部演示的展示包|
|典型產品線|HUB、GATE、SYNC、SW、PNL、ACT、SNS、VIS、APP、CLD 綁定時|
|相容產品線|已定義展示腳本與使用邊界的特定產品|
|限制產品線|公開零售、Amazon FBA、已發布客戶包裝，除非完成轉換|
|條碼要求|內部庫存可選|
|Amazon FNSKU 要求|Not Required|
|是否需要內含產品映射|Yes|
|是否需要包裝版本|Yes|
|生產影響|可能涉及展示組裝、標籤、樣品韌體、展示帳號與特殊配件|
|倉儲 / 物流影響|內部庫存與展示追蹤|
|商業使用邊界|不作為標準零售銷售|
|宣稱邊界備註|Demo Kit 不得被表示為最終商業包裝|
|核准狀態|Pending Review|
|運營負責人|TBD|
|包裝負責人|TBD|
|合規負責人|TBD|
|修訂日期|TBD|
|變更記錄引用|CR-PKG-DEMO-001|

---

## 31.29 Package Code Master Governance Rules

## 31.29 包裝代碼主表治理規則

### EN

|Rule|Requirement|
|---|---|
|Package codes must be approved before SKU creation|No SKU should use an undefined package code|
|Package code must match actual package|Do not encode planned or future packaging as current package|
|Multi-pack packages require separate records|2P and 4P require their own SKU and barcode records|
|Kits require included product mapping|KIT, PROKIT, EDU, PRJ, DEMO, SAMPLE must list contents|
|FBA requires Amazon-specific records|FNSKU, barcode, listing, and preparation records are required|
|Project and channel packs must be bounded|PRJ and CH must define use scope|
|Demo and sample packages are not retail products|DEMO and SAMPLE require controlled use boundaries|
|NA must not hide undecided packaging|Use TBD during draft if packaging is undecided|
|Package changes require change control|No silent package change|
|Deprecated package records must remain archived|Historical SKU traceability must be preserved|

### ZH-TW

|規則|要求|
|---|---|
|包裝代碼必須在 SKU 建立前核准|不得使用未定義包裝代碼建立 SKU|
|包裝代碼必須匹配實際包裝|不得將計劃或未來包裝編為當前包裝|
|多入裝需要獨立記錄|2P 與 4P 需要自己的 SKU 與條碼記錄|
|套組需要內含產品映射|KIT、PROKIT、EDU、PRJ、DEMO、SAMPLE 必須列出內容|
|FBA 需要 Amazon 特定記錄|必須具備 FNSKU、條碼、上架與準備記錄|
|專案與渠道包必須有邊界|PRJ 與 CH 必須定義使用範圍|
|展示與樣品包不是零售產品|DEMO 與 SAMPLE 需要受控使用邊界|
|NA 不得掩蓋未決定包裝|包裝未決定時，Draft 階段應使用 TBD|
|包裝變更需要變更管控|不得靜默變更包裝|
|已停用包裝記錄必須歸檔|必須保留歷史 SKU 可追蹤性|

---

## 31.30 Spreadsheet Column Recommendation

## 31.30 表格欄位建議

### EN

For Excel, Google Sheets, Airtable, ERP staging tables, or PLM reference tables, the following column order is recommended:

```text
Package Code
Package Name
Package Type
Description
Typical Product Lines
Compatible Product Lines
Restricted Product Lines
Barcode Requirement
Amazon FNSKU Requirement
Included Product Mapping Required
Packaging Version Required
Manufacturing Impact
Warehouse / Logistics Impact
Commercial Use Boundary
Claim Boundary Notes
Approval Status
Operations Owner
Packaging Owner
Compliance Owner
Revision Date
Change Log Reference
```

### ZH-TW

對於 Excel、Google Sheets、Airtable、ERP 暫存表或 PLM 參考表，建議使用以下欄位順序：

```text
Package Code
Package Name
Package Type
Description
Typical Product Lines
Compatible Product Lines
Restricted Product Lines
Barcode Requirement
Amazon FNSKU Requirement
Included Product Mapping Required
Packaging Version Required
Manufacturing Impact
Warehouse / Logistics Impact
Commercial Use Boundary
Claim Boundary Notes
Approval Status
Operations Owner
Packaging Owner
Compliance Owner
Revision Date
Change Log Reference
```

---

## 31.31 Chapter Conclusion

## 31.31 本章結論

### EN

The Package Code Master Table controls how Artibird products, kits, bundles, project packages, channel packs, Amazon FBA packages, bulk shipments, demo kits, sample kits, and service records are packaged, sold, shipped, demonstrated, evaluated, or released.

Package codes are operational identity fields. They affect SKU creation, barcode assignment, Amazon FNSKU preparation, manufacturing packaging, warehouse handling, logistics, channel use, commercial release, and claim boundaries.

A controlled package code table allows Artibird to manage S, 2P, 4P, KIT, PROKIT, EDU, PRJ, CH, FBA, BULK, DEMO, SAMPLE, and NA consistently across product planning, packaging design, manufacturing, Amazon listing, channel release, project deployment, support, retirement, and lifecycle governance.

### ZH-TW

包裝代碼主表管控 Artibird 產品、套組、組合包、專案包、渠道包、Amazon FBA 包、批量出貨包、展示套組、樣品套組與服務記錄如何被包裝、銷售、出貨、展示、評估或發布。

包裝代碼是運營身份欄位。它影響 SKU 建立、條碼分配、Amazon FNSKU 準備、生產包裝、倉儲處理、物流、渠道使用、商業發布與宣稱邊界。

受控的包裝代碼主表，可使 Artibird 在產品規劃、包裝設計、生產、Amazon 上架、渠道發布、專案部署、支持、退市與生命週期治理中，一致管理 S、2P、4P、KIT、PROKIT、EDU、PRJ、CH、FBA、BULK、DEMO、SAMPLE 與 NA。

---

**話題延伸｜互動建議**  
下一章可以繼續寫 **Chapter 32 — Certification and Compliance Mapping Table｜第三十二章｜認證與合規映射表**，把 Region、Product Line、Connectivity、Power、Variant、Package 與 FCC、UL / ETL、CE、UKCA、NCC、PSE、RCM、ISED 等認證要求建立成一張可審查的映射主表。