# Artibird SKU & Model Naming Specification v1.0

# Artibird SKU 與型號命名規範 v1.0

## Chapter 10 — Package Codes

## 第十章｜包裝代碼

---

## 10.1 Purpose

## 10.1 目的

### EN

This chapter defines the official package codes used in Artibird SKU codes, package records, retail packaging, Amazon FBA records, channel documents, project delivery records, inventory systems, pricing sheets, and commercial release planning.

Package codes identify how a product is packaged, bundled, shipped, sold, demonstrated, or deployed. They define the commercial packaging unit, not the product’s technical identity.

Package codes must be controlled carefully because packaging affects barcode assignment, inventory management, Amazon listing structure, FBA preparation, channel sales, project delivery, product label placement, included accessories, manuals, warranty cards, and commercial pricing.

### ZH-TW

本章定義 Artibird SKU 代碼、包裝記錄、零售包裝、Amazon FBA 記錄、渠道文件、專案交付記錄、庫存系統、價格表與商業發布規劃中使用的官方包裝代碼。

包裝代碼用於識別產品如何被包裝、組合、出貨、銷售、展示或部署。它定義的是商業包裝單位，而不是產品的技術身份。

包裝代碼必須嚴格管控，因為包裝會影響條碼分配、庫存管理、Amazon 上架結構、FBA 準備、渠道銷售、專案交付、產品標籤位置、內含配件、說明書、保固卡與商業定價。

---

## 10.2 Package Code Definition

## 10.2 包裝代碼定義

### EN

A package code is a controlled identifier that describes the sales, shipment, bundle, or deployment unit of a product.

It answers the following questions:

|Question|Description|
|---|---|
|Is this a single product or multi-pack?|Single unit, two-pack, four-pack|
|Is this a kit?|Standard kit, professional kit, education kit, demo kit|
|Is this for retail, Amazon, channel, or project delivery?|FBA, channel pack, project pack, bulk shipment|
|Does the package include accessories?|Adapter, cables, mounting parts, manuals, labels|
|Does the package require a unique barcode?|GTIN, UPC, EAN, FNSKU, internal barcode|
|Does the package change commercial pricing?|Single-unit price, kit price, project price|
|Does the package affect claims or documentation?|Package text, included manuals, installation guide, warranty card|

### ZH-TW

包裝代碼是一種受控識別碼，用於描述產品的銷售、出貨、套組或部署單位。

它回答以下問題：

|問題|說明|
|---|---|
|這是單品還是多入裝？|單品、兩入裝、四入裝|
|這是否為套組？|標準套組、專業套組、教育套組、展示套組|
|這是用於零售、Amazon、渠道還是專案交付？|FBA、渠道包、專案包、批量出貨|
|包裝是否包含配件？|適配器、線材、安裝件、說明書、標籤|
|包裝是否需要獨立條碼？|GTIN、UPC、EAN、FNSKU、內部條碼|
|包裝是否改變商業定價？|單品價格、套組價格、專案價格|
|包裝是否影響宣稱或文件？|包裝文字、內含說明書、安裝指南、保固卡|

---

## 10.3 Official Package Code Table

## 10.3 官方包裝代碼表

### EN

|Code|Meaning|Primary Use|Commercial Use|
|--:|---|---|---|
|S|Single unit|One product unit|Standard retail and inventory use|
|2P|Two-pack|Two identical or defined product units|Retail, Amazon, channel bundle|
|4P|Four-pack|Four identical or defined product units|Retail, Amazon, channel bundle|
|KIT|Standard kit|A defined multi-product kit|Starter kits, room kits, basic deployment kits|
|PROKIT|Professional kit|Advanced or professional deployment kit|Integrator, project, professional channel use|
|EDU|Education package|Education or classroom-oriented package|Schools, classrooms, training deployments|
|PRJ|Project package|Project-specific delivery package|B2B, campus, building, or infrastructure projects|
|CH|Channel pack|Distributor or reseller package|Channel distribution and partner sales|
|FBA|Amazon FBA package|Amazon fulfillment-ready package|Amazon marketplace inventory and logistics|
|BULK|Bulk shipment package|Bulk carton or non-retail shipment|Factory, warehouse, project or distributor shipment|
|DEMO|Demonstration kit|Sales demo or partner training package|Demonstration, exhibition, training|
|SAMPLE|Sample package|Sample or evaluation unit|Evaluation, certification sample, partner sample|
|NA|Not applicable|No packaging code applies|Software, cloud service, or non-physical record|

### ZH-TW

|代碼|含義|主要用途|商業使用|
|--:|---|---|---|
|S|單品|一個產品單位|標準零售與庫存使用|
|2P|兩入裝|兩個相同或已定義產品單位|零售、Amazon、渠道組合|
|4P|四入裝|四個相同或已定義產品單位|零售、Amazon、渠道組合|
|KIT|標準套組|已定義的多產品套組|入門套組、房間套組、基礎部署套組|
|PROKIT|專業套組|高階或專業部署套組|整合商、專案、專業渠道使用|
|EDU|教育套組|教育或教室導向包裝|學校、教室、培訓部署|
|PRJ|專案包|專案特定交付包|B2B、校園、建築或基礎設施專案|
|CH|渠道包|分銷商或經銷商包裝|渠道分銷與合作夥伴銷售|
|FBA|Amazon FBA 包裝|Amazon 履約準備包裝|Amazon marketplace 庫存與物流|
|BULK|批量出貨包|批量紙箱或非零售出貨包|工廠、倉庫、專案或分銷商出貨|
|DEMO|展示套組|銷售展示或合作夥伴培訓包|展示、展會、培訓|
|SAMPLE|樣品包|樣品或評估單位|評估、認證樣品、合作夥伴樣品|
|NA|不適用|無適用包裝代碼|軟體、雲端服務或非實體記錄|

---

## 10.4 Package Code Usage in SKU

## 10.4 包裝代碼在 SKU 中的使用

### EN

The package code appears as the eighth field in the official SKU format.

Recommended SKU structure:

```text
ATB-[PRODUCT]-[GEN]-[REGION]-[CONNECTIVITY]-[POWER]-[VARIANT]-[PACKAGE]
```

Example:

```text
ATB-ACT-G1-US-WF-AC-E-S
```

|SKU Field|Value|Meaning|
|---|---|---|
|Brand|ATB|Artibird|
|Product Line|ACT|Artibird Act|
|Generation|G1|First generation|
|Region|US|United States|
|Connectivity|WF|Wi-Fi|
|Power|AC|AC mains powered|
|Variant|E|Energy-aware version|
|Package|S|Single unit|

The package code must represent the commercial packaging unit. It must not be used to describe product function, hardware version, certification status, region, connectivity, or power architecture.

### ZH-TW

包裝代碼出現在官方 SKU 格式的第八個欄位。

建議 SKU 結構：

```text
ATB-[產品]-[世代]-[區域]-[連接]-[供電]-[版本]-[包裝]
```

示例：

```text
ATB-ACT-G1-US-WF-AC-E-S
```

|SKU 欄位|數值|含義|
|---|---|---|
|品牌|ATB|Artibird|
|產品線|ACT|Artibird Act|
|世代|G1|第一代|
|區域|US|美國|
|連接|WF|Wi-Fi|
|供電|AC|市電供電|
|版本|E|能源感知版本|
|包裝|S|單品|

包裝代碼必須代表商業包裝單位。它不得用於描述產品功能、硬體版本、認證狀態、區域、連接方式或供電架構。

---

## 10.5 Package Code Usage by Product Line

## 10.5 各產品線包裝代碼使用

### EN

|Product Line|Common Package Codes|Notes|
|---|---|---|
|Artibird Hub|S, KIT, PROKIT, EDU, PRJ, DEMO|May be sold alone or included in system kits|
|Artibird Gate|S, KIT, PROKIT, CH, PRJ, DEMO|May be used for gateway deployment or partner packages|
|Artibird Sync|S, KIT, FBA, DEMO, SAMPLE|Suitable for retail, Amazon, demo, or evaluation use|
|Artibird Switch|S, 2P, 4P, KIT, FBA, CH, BULK|Suitable for retail packs, multi-packs, or project batches|
|Artibird Panel|S, KIT, PROKIT, EDU, PRJ, DEMO|Often used in room, classroom, or project kits|
|Artibird Act|S, 2P, 4P, KIT, FBA, PRJ, BULK|Suitable for plug, relay, and energy-aware deployments|
|Artibird Sense|S, 2P, 4P, KIT, EDU, PRJ, SAMPLE|Often used in sensor bundles or education kits|
|Artibird Vision|S, KIT, PROKIT, PRJ, DEMO, SAMPLE|Often requires privacy and installation documentation|
|Artibird App|NA|Software or app record; no physical package|
|OceanAI Cloud|NA, KIT, EDU, PRJ|Service record or package-linked subscription|
|OceanAI Edge|S, PROKIT, PRJ, DEMO|Edge hardware or deployment package|

### ZH-TW

|產品線|常用包裝代碼|備註|
|---|---|---|
|Artibird Hub|S、KIT、PROKIT、EDU、PRJ、DEMO|可單獨銷售，亦可納入系統套組|
|Artibird Gate|S、KIT、PROKIT、CH、PRJ、DEMO|可用於網關部署或合作夥伴包裝|
|Artibird Sync|S、KIT、FBA、DEMO、SAMPLE|適用於零售、Amazon、展示或評估用途|
|Artibird Switch|S、2P、4P、KIT、FBA、CH、BULK|適用於零售包、多入裝或專案批量|
|Artibird Panel|S、KIT、PROKIT、EDU、PRJ、DEMO|常用於房間、教室或專案套組|
|Artibird Act|S、2P、4P、KIT、FBA、PRJ、BULK|適用於插座、繼電器與能源感知部署|
|Artibird Sense|S、2P、4P、KIT、EDU、PRJ、SAMPLE|常用於感測器組合或教育套組|
|Artibird Vision|S、KIT、PROKIT、PRJ、DEMO、SAMPLE|通常需要隱私與安裝文件|
|Artibird App|NA|軟體或 App 記錄，無實體包裝|
|OceanAI Cloud|NA、KIT、EDU、PRJ|服務記錄或與套組綁定的訂閱|
|OceanAI Edge|S、PROKIT、PRJ、DEMO|邊緣硬體或部署包裝|

---

## 10.6 Special Boundary: S, 2P, and 4P

## 10.6 特別邊界：S、2P 與 4P

### EN

S, 2P, and 4P describe retail or commercial unit count.

|Code|Meaning|Use When|
|--:|---|---|
|S|Single unit|One sellable product unit|
|2P|Two-pack|Two defined units in one package|
|4P|Four-pack|Four defined units in one package|

A multi-pack must clearly define whether it contains identical products or a defined product combination.

Examples:

|Package Scenario|Recommended Code|
|---|--:|
|One Artibird Switch Scene|S|
|Two identical Artibird Switch Scene units|2P|
|Four identical Artibird Sense units|4P|
|Hub + Switch + Sense package|KIT|
|Classroom package with multiple product types|EDU or PRJ|

2P and 4P should not be used for kits containing different product types unless the package structure is specifically defined as a multi-pack of the same product family.

### ZH-TW

S、2P 與 4P 描述零售或商業銷售單位數量。

|代碼|含義|使用條件|
|--:|---|---|
|S|單品|一個可銷售產品單位|
|2P|兩入裝|一個包裝內含兩個已定義單位|
|4P|四入裝|一個包裝內含四個已定義單位|

多入裝必須清楚定義其包含相同產品，或已定義的產品組合。

示例：

|包裝場景|建議代碼|
|---|--:|
|一個 Artibird Switch Scene|S|
|兩個相同 Artibird Switch Scene|2P|
|四個相同 Artibird Sense|4P|
|Hub + Switch + Sense 套裝|KIT|
|含多類產品的教室套裝|EDU 或 PRJ|

除非包裝被明確定義為同一產品家族的多入裝，否則 2P 與 4P 不應用於包含不同產品類型的套組。

---

## 10.7 Special Boundary: KIT and PROKIT

## 10.7 特別邊界：KIT 與 PROKIT

### EN

KIT and PROKIT describe multi-product packages.

|Code|Meaning|Use When|
|--:|---|---|
|KIT|Standard kit|Basic or standard multi-product package|
|PROKIT|Professional kit|Advanced, integrator-oriented, or professional deployment package|

KIT may be used for starter, room, home, or basic deployment packages.

PROKIT should be used only when the kit includes higher-grade components, professional installation accessories, expanded documentation, advanced deployment scope, or integrator-focused configuration.

Examples:

|Package Name|Recommended Code|
|---|--:|
|Artibird Smart Room Starter Kit|KIT|
|Artibird Energy Starter Kit|KIT|
|Artibird Classroom Control Kit|EDU or PROKIT, depending on positioning|
|Artibird Gate Pro Kit|PROKIT|
|Artibird Campus Deployment Kit|PRJ or PROKIT|

A PROKIT must have a documented difference from a standard KIT.

### ZH-TW

KIT 與 PROKIT 描述多產品套組包裝。

|代碼|含義|使用條件|
|---|--:|---|
|KIT|標準套組|基礎或標準多產品包裝|
|PROKIT|專業套組|高階、整合商導向或專業部署包裝|

KIT 可用於入門、房間、住宅或基礎部署套組。

PROKIT 只有在套組包含更高等級組件、專業安裝配件、擴展文件、高階部署範圍或整合商導向配置時才應使用。

示例：

|包裝名稱|建議代碼|
|---|--:|
|Artibird Smart Room Starter Kit|KIT|
|Artibird Energy Starter Kit|KIT|
|Artibird Classroom Control Kit|依定位使用 EDU 或 PROKIT|
|Artibird Gate Pro Kit|PROKIT|
|Artibird Campus Deployment Kit|PRJ 或 PROKIT|

PROKIT 必須相對標準 KIT 具備已記錄差異。

---

## 10.8 Special Boundary: EDU and PRJ

## 10.8 特別邊界：EDU 與 PRJ

### EN

EDU and PRJ describe deployment-oriented package categories.

|Code|Meaning|Use When|
|--:|---|---|
|EDU|Education package|Package is designed for schools, classrooms, training, or education deployment|
|PRJ|Project package|Package is designed for B2B, construction, campus, building, infrastructure, or custom deployment|

EDU should be used when the package structure, documentation, labeling, service model, or deployment logic is specifically education-oriented.

PRJ should be used when the package is created for project delivery, tender response, system integration, campus deployment, building deployment, or infrastructure deployment.

Examples:

|Package Scenario|Recommended Code|
|---|--:|
|Classroom control package|EDU|
|Teacher training demo kit|EDU or DEMO|
|Campus-wide deployment package|PRJ|
|Smart building installation batch|PRJ|
|Custom B2B partner delivery|PRJ or CH|
|Education project with customized delivery|EDU or PRJ, depending on commercial identity|

### ZH-TW

EDU 與 PRJ 描述部署導向的包裝類別。

|代碼|含義|使用條件|
|---|--:|---|
|EDU|教育套組|包裝面向學校、教室、培訓或教育部署|
|PRJ|專案包|包裝面向 B2B、施工、校園、建築、基礎設施或客製部署|

當包裝結構、文件、標籤、服務模式或部署邏輯具有明確教育導向時，應使用 EDU。

當包裝是為專案交付、投標響應、系統整合、校園部署、建築部署或基礎設施部署建立時，應使用 PRJ。

示例：

|包裝場景|建議代碼|
|---|--:|
|教室控制套組|EDU|
|教師培訓展示套組|EDU 或 DEMO|
|校園級部署包|PRJ|
|智慧建築安裝批次|PRJ|
|客製 B2B 合作夥伴交付|PRJ 或 CH|
|教育專案客製交付|依商業身份使用 EDU 或 PRJ|

---

## 10.9 Special Boundary: CH, FBA, and BULK

## 10.9 特別邊界：CH、FBA 與 BULK

### EN

CH, FBA, and BULK describe distribution or logistics-oriented packaging.

|Code|Meaning|Use When|
|--:|---|---|
|CH|Channel pack|Package is prepared for distributors, resellers, or partners|
|FBA|Amazon FBA package|Package is prepared for Amazon fulfillment requirements|
|BULK|Bulk shipment package|Package is prepared for non-retail bulk shipment|

These package codes should not be treated as product variants. They describe distribution and logistics packaging.

Examples:

|Scenario|Recommended Code|
|---|--:|
|Amazon-ready single retail package|FBA|
|Distributor carton with multiple retail boxes|CH|
|Factory shipment carton for project delivery|BULK|
|Non-retail unpacked batch for integrator|BULK or PRJ|
|Retail package sold through partner channel|CH or S, depending on inventory structure|

FBA may require Amazon-specific labeling, barcode, polybag, carton, warning, and fulfillment preparation records.

### ZH-TW

CH、FBA 與 BULK 描述分銷或物流導向包裝。

|代碼|含義|使用條件|
|---|--:|---|
|CH|渠道包|包裝面向分銷商、經銷商或合作夥伴|
|FBA|Amazon FBA 包裝|包裝符合 Amazon 履約要求|
|BULK|批量出貨包|包裝用於非零售批量出貨|

這些包裝代碼不應被視為產品版本。它們描述的是分銷與物流包裝。

示例：

|場景|建議代碼|
|---|--:|
|Amazon-ready 單品零售包裝|FBA|
|分銷商紙箱，內含多個零售盒|CH|
|專案交付用工廠出貨紙箱|BULK|
|面向整合商的非零售散裝批次|BULK 或 PRJ|
|經合作夥伴渠道銷售的零售包裝|依庫存結構使用 CH 或 S|

FBA 可能需要 Amazon 特定標籤、條碼、塑封袋、紙箱、警告文字與履約準備記錄。

---

## 10.10 Special Boundary: DEMO and SAMPLE

## 10.10 特別邊界：DEMO 與 SAMPLE

### EN

DEMO and SAMPLE are non-standard commercial package categories.

|Code|Meaning|Use When|
|--:|---|---|
|DEMO|Demonstration kit|Product is used for sales demo, exhibition, training, or partner presentation|
|SAMPLE|Sample package|Product is used for evaluation, certification sample, engineering sample, or partner review|

DEMO and SAMPLE should not be used for normal retail sale unless converted into a released commercial package.

Required notes for DEMO and SAMPLE records:

|Field|Requirement|
|---|---|
|Intended recipient|Required|
|Usage purpose|Required|
|Commercial sale allowed|Yes / No|
|Certification status|Required|
|Claim boundary|Required|
|Return requirement|Required where applicable|
|Expiration or review date|Required where applicable|

### ZH-TW

DEMO 與 SAMPLE 屬於非標準商業包裝類別。

|代碼|含義|使用條件|
|---|--:|---|
|DEMO|展示套組|產品用於銷售展示、展會、培訓或合作夥伴演示|
|SAMPLE|樣品包|產品用於評估、認證樣品、工程樣品或合作夥伴審查|

DEMO 與 SAMPLE 不應用於正常零售銷售，除非已轉換為正式發布的商業包裝。

DEMO 與 SAMPLE 記錄必備說明：

|欄位|要求|
|---|---|
|目標接收方|必填|
|使用目的|必填|
|是否允許商業銷售|Yes / No|
|認證狀態|必填|
|宣稱邊界|必填|
|是否需退回|適用時必填|
|到期或審查日期|適用時必填|

---

## 10.11 Package Code and Barcode / Inventory Control

## 10.11 包裝代碼與條碼 / 庫存管控

### EN

Package codes affect barcode, inventory, and fulfillment records.

|Package Change|New Barcode Required?|Notes|
|---|---|---|
|S changes to 2P|Usually yes|Different sellable unit|
|2P changes to 4P|Usually yes|Different quantity and price|
|S becomes FBA|Usually yes or new FNSKU required|Depends on Amazon listing and fulfillment setup|
|Retail package becomes BULK|Usually yes|Different inventory and logistics unit|
|KIT contents change|Yes|Different commercial package|
|Manual version changes only|Maybe|Depends on regulatory or listing impact|
|Outer carton change only|Maybe|Depends on logistics and barcode structure|
|Same product, different channel pack|Usually yes|Channel inventory may require separate record|
|Demo kit created from released products|Usually yes|DEMO tracking required|
|Sample package for certification|Usually yes|SAMPLE tracking required|

A package code change must be reviewed by operations before inventory, pricing, Amazon, or channel records are created.

### ZH-TW

包裝代碼會影響條碼、庫存與履約記錄。

|包裝變更|是否需要新條碼？|備註|
|---|---|---|
|S 變更為 2P|通常需要|不同可銷售單位|
|2P 變更為 4P|通常需要|不同數量與價格|
|S 變為 FBA|通常需要或需要新 FNSKU|取決於 Amazon 上架與履約設定|
|零售包裝變為 BULK|通常需要|不同庫存與物流單位|
|KIT 內容變更|需要|不同商業包裝|
|僅說明書版本變更|視情況|取決於法規或上架影響|
|僅外箱變更|視情況|取決於物流與條碼結構|
|同一產品，不同渠道包|通常需要|渠道庫存可能需要獨立記錄|
|由已發布產品建立展示套組|通常需要|需要 DEMO 追蹤|
|認證用樣品包|通常需要|需要 SAMPLE 追蹤|

包裝代碼變更必須先經運營審查，再建立庫存、定價、Amazon 或渠道記錄。

---

## 10.12 Package Code and Certification / Claim Impact

## 10.12 包裝代碼與認證 / 宣稱影響

### EN

Package codes may affect certification and claim control even when the hardware does not change.

|Package Code|Possible Impact|
|--:|---|
|S|Standard label, manual, warranty, barcode|
|2P / 4P|Quantity claims, bundle labeling, barcode, Amazon content|
|KIT|Included product list, combined claims, setup documentation|
|PROKIT|Professional deployment claims, installation documents, integrator materials|
|EDU|Education claims, classroom deployment language, institutional purchase documents|
|PRJ|Project delivery scope, acceptance documents, installation records|
|CH|Distributor documentation, resale terms, channel-specific claims|
|FBA|Amazon listing claims, FNSKU, package preparation, marketplace compliance|
|BULK|Non-retail labeling, carton label, inventory and shipment records|
|DEMO|Demonstration claim limits, not-for-resale status, training materials|
|SAMPLE|Evaluation use, certification sample identity, not-for-resale status|

Packaging must not add claims that are not supported by the underlying product SKU, certification status, or validation records.

### ZH-TW

即使硬體沒有變更，包裝代碼仍可能影響認證與宣稱管控。

|包裝代碼|可能影響|
|--:|---|
|S|標準標籤、說明書、保固、條碼|
|2P / 4P|數量宣稱、組合標籤、條碼、Amazon 內容|
|KIT|內含產品清單、組合宣稱、設定文件|
|PROKIT|專業部署宣稱、安裝文件、整合商資料|
|EDU|教育宣稱、教室部署語言、機構採購文件|
|PRJ|專案交付範圍、驗收文件、安裝記錄|
|CH|分銷商文件、轉售條款、渠道特定宣稱|
|FBA|Amazon 上架宣稱、FNSKU、包裝準備、站點合規|
|BULK|非零售標籤、外箱標籤、庫存與出貨記錄|
|DEMO|展示宣稱邊界、非銷售狀態、培訓資料|
|SAMPLE|評估用途、認證樣品身份、非銷售狀態|

包裝不得新增底層產品 SKU、認證狀態或驗證記錄不支持的宣稱。

---

## 10.13 When to Change Package Code

## 10.13 何時需要更改包裝代碼

### EN

|Change Scenario|Change Package Code?|Notes|
|---|---|---|
|Single unit becomes two-pack|Yes|S changes to 2P|
|Two-pack becomes four-pack|Yes|2P changes to 4P|
|Product added to starter kit|Yes|Use KIT or another suitable package code|
|Standard kit becomes professional deployment kit|Yes|KIT changes to PROKIT|
|Retail package prepared for Amazon FBA|Usually yes|FBA record required|
|Distributor carton created|Yes|CH may be required|
|Non-retail bulk shipment created|Yes|BULK may be required|
|Demo kit created|Yes|DEMO required|
|Sample package created|Yes|SAMPLE required|
|Manual language changes only|Maybe|Review region, label, and compliance impact|
|Packaging artwork changes only|Maybe|May require package version update, not package code change|
|Same product sold through different price promotion|No|Pricing record changes, not package code|
|Same package sold in another region|Usually yes|Region code and package record must be reviewed|

### ZH-TW

|變更場景|是否更改包裝代碼？|備註|
|---|---|---|
|單品變成兩入裝|是|S 變更為 2P|
|兩入裝變成四入裝|是|2P 變更為 4P|
|產品加入入門套組|是|使用 KIT 或其他適用包裝代碼|
|標準套組變成專業部署套組|是|KIT 變更為 PROKIT|
|零售包裝準備進入 Amazon FBA|通常是|需要 FBA 記錄|
|建立分銷商紙箱|是|可能需要 CH|
|建立非零售批量出貨|是|可能需要 BULK|
|建立展示套組|是|需要 DEMO|
|建立樣品包|是|需要 SAMPLE|
|僅說明書語言變更|視情況|需審查區域、標籤與合規影響|
|僅包裝 artwork 變更|視情況|可能只需更新包裝版本，不需更改包裝代碼|
|同一包裝用於不同價格促銷|否|變更價格記錄，不變更包裝代碼|
|同一包裝銷售至另一區域|通常是|必須審查區域代碼與包裝記錄|

---

## 10.14 Package Code Governance Rules

## 10.14 包裝代碼治理規則

### EN

|Rule|Requirement|
|---|---|
|One package code must represent one defined packaging or shipment unit|Do not use package codes loosely|
|Package code must not replace product line, variant, power, connectivity, or region code|Each SKU field must remain separate|
|Multi-pack quantities must be defined|2P and 4P must specify included units|
|KIT and PROKIT must list included products|Kit contents must be traceable|
|EDU and PRJ must define deployment purpose|Education and project packages require controlled scope|
|FBA must map to Amazon fulfillment records|FNSKU, barcode, prep, and listing must be aligned|
|CH must map to channel records|Distributor or partner package requirements must be recorded|
|BULK must not be treated as retail packaging|Bulk shipment and retail packaging must remain separate|
|DEMO and SAMPLE must be controlled|Demo and sample packages require usage and claim boundaries|
|Package code changes require operations review|Inventory, barcode, pricing, and channel impact must be checked|
|Packaging claims must match validated product claims|Package text must not exceed approved claim boundaries|

### ZH-TW

|規則|要求|
|---|---|
|一個包裝代碼必須代表一種已定義包裝或出貨單位|不得鬆散使用包裝代碼|
|包裝代碼不得取代產品線、版本、供電、連接或區域代碼|每個 SKU 欄位必須保持分離|
|多入裝數量必須明確|2P 與 4P 必須說明內含單位|
|KIT 與 PROKIT 必須列出內含產品|套組內容必須可追蹤|
|EDU 與 PRJ 必須定義部署目的|教育與專案包需要受控範圍|
|FBA 必須映射至 Amazon 履約記錄|FNSKU、條碼、準備要求與上架必須一致|
|CH 必須映射至渠道記錄|必須記錄分銷商或合作夥伴包裝要求|
|BULK 不得視為零售包裝|批量出貨與零售包裝必須分離|
|DEMO 與 SAMPLE 必須受控|展示與樣品包需要用途與宣稱邊界|
|包裝代碼變更需要運營審查|必須檢查庫存、條碼、定價與渠道影響|
|包裝宣稱必須匹配已驗證產品宣稱|包裝文字不得超出已核准宣稱邊界|

---

## 10.15 Required Master Table Fields

## 10.15 必備主表欄位

### EN

Each SKU master record must include package-related fields.

|Field|Requirement|
|---|---|
|Package Code|Required|
|Package Name|Required|
|Package Type|Required|
|Included Products|Required for multi-product packages|
|Included Quantity|Required|
|Included Accessories|Required where applicable|
|Package Version|Required|
|Packaging Artwork Version|Required|
|Barcode / GTIN / UPC / EAN|Required where applicable|
|Amazon FNSKU|Required for FBA records|
|Carton Configuration|Required where applicable|
|User Manual Version|Required where applicable|
|Installation Guide Version|Required where applicable|
|Warranty Document Version|Required where applicable|
|Certification Label Impact|Required|
|Packaging Claim Boundary|Required|
|Commercial Channel|Required|
|Inventory Unit Type|Required|
|Package Approval Owner|Required|
|Revision Date|Required|

### ZH-TW

每一筆 SKU 主記錄都必須包含與包裝相關的欄位。

|欄位|要求|
|---|---|
|包裝代碼|必填|
|包裝名稱|必填|
|包裝類型|必填|
|內含產品|多產品包裝必填|
|內含數量|必填|
|內含配件|適用時必填|
|包裝版本|必填|
|包裝 artwork 版本|必填|
|條碼 / GTIN / UPC / EAN|適用時必填|
|Amazon FNSKU|FBA 記錄必填|
|外箱配置|適用時必填|
|用戶手冊版本|適用時必填|
|安裝指南版本|適用時必填|
|保固文件版本|適用時必填|
|認證標籤影響|必填|
|包裝宣稱邊界|必填|
|商業渠道|必填|
|庫存單位類型|必填|
|包裝核准負責人|必填|
|修訂日期|必填|

---

## 10.16 Chapter Conclusion

## 10.16 本章結論

### EN

Package codes define the commercial packaging, shipment, bundle, demonstration, sample, or deployment unit of an Artibird product.

They must remain separate from product line codes, variant codes, power codes, connectivity codes, region codes, engineering model numbers, and certification model numbers. A package code describes how a product is sold, shipped, bundled, or prepared for a specific commercial or operational channel.

A clear package code system allows Artibird products to remain traceable across packaging design, barcode assignment, Amazon FBA preparation, inventory management, pricing, channel distribution, project delivery, demonstration use, sample control, and commercial release.

### ZH-TW

包裝代碼定義 Artibird 產品的商業包裝、出貨、套組、展示、樣品或部署單位。

它必須與產品線代碼、版本代碼、供電代碼、連接代碼、區域代碼、工程型號與認證型號保持分離。包裝代碼描述的是產品如何被銷售、出貨、組合，或如何為特定商業與運營渠道準備。

清晰的包裝代碼系統，可使 Artibird 產品在包裝設計、條碼分配、Amazon FBA 準備、庫存管理、定價、渠道分銷、專案交付、展示用途、樣品管控與商業發布中保持可追蹤。

---

本章依據《Artibird SKU & Model Naming Specification v1.0》的既定撰寫計劃展開；原始規劃已將 Package Codes 設為 Chapter 10，並列出 S、2P、4P、KIT、PROKIT、EDU、PRJ、CH、FBA、BULK、DEMO、SAMPLE 作為標準包裝代碼。

**話題延伸｜互動建議**  
下一章可以進入 **Part II — SKU Structure｜第二部分｜SKU 結構**，從 **Chapter 11 — Recommended SKU Format｜第十一章｜建議 SKU 格式** 開始，正式把前面建立的產品線、世代、區域、連接、供電、版本與包裝代碼整合成完整 SKU 格式。