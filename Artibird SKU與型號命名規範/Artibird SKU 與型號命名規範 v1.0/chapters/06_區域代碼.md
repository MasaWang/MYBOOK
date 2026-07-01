# Artibird SKU & Model Naming Specification v1.0

# Artibird SKU 與型號命名規範 v1.0

## Chapter 6 — Region Codes

## 第六章｜區域代碼

---

## 6.1 Purpose

## 6.1 目的

### EN

This chapter defines the official region codes used in Artibird SKU codes, model mapping, certification records, packaging records, product labels, Amazon listings, channel documents, and commercial release planning.

Region codes identify the market or regional configuration of a product. They are used to distinguish differences in electrical standards, wireless regulations, certification requirements, language labeling, privacy requirements, packaging requirements, plug type, voltage range, and commercial availability.

A region code must be assigned whenever a product is intended for a specific market, certification zone, sales region, or deployment region.

### ZH-TW

本章定義 Artibird SKU 代碼、型號映射、認證記錄、包裝記錄、產品標籤、Amazon 上架、渠道文件與商業發布規劃中使用的官方區域代碼。

區域代碼用於識別產品所屬的市場或區域配置。它用於區分電氣標準、無線法規、認證要求、語言標籤、隱私要求、包裝要求、插頭類型、電壓範圍與商業可銷售區域的差異。

當產品面向特定市場、認證區域、銷售區域或部署區域時，必須分配區域代碼。

---

## 6.2 Region Code Definition

## 6.2 區域代碼定義

### EN

A region code is a controlled identifier that defines the intended market or regional configuration of a product.

It answers the following questions:

|Question|Description|
|---|---|
|Which market is this SKU intended for?|United States, Canada, EU, UK, China, Taiwan, Japan, Australia, or global reference|
|Which certification framework applies?|FCC, UL, ETL, CE, UKCA, NCC, PSE, RCM, or other applicable systems|
|Which electrical configuration applies?|Voltage, frequency, plug type, wiring structure, load limits|
|Which labeling language applies?|English, French, multilingual EU labeling, Chinese, Japanese, or other languages|
|Which privacy or data rules apply?|Market-specific privacy, cloud, account, or user data requirements|
|Can this SKU be sold commercially in the target region?|Depends on certification, labeling, packaging, and approval status|

### ZH-TW

區域代碼是一種受控識別碼，用於定義產品的目標市場或區域配置。

它回答以下問題：

|問題|說明|
|---|---|
|此 SKU 面向哪一個市場？|美國、加拿大、歐盟、英國、中國、台灣、日本、澳洲或全球參考版本|
|適用哪一套認證框架？|FCC、UL、ETL、CE、UKCA、NCC、PSE、RCM 或其他適用體系|
|適用哪一種電氣配置？|電壓、頻率、插頭類型、接線結構、負載限制|
|適用哪一種標籤語言？|英文、法文、歐盟多語標籤、中文、日文或其他語言|
|適用哪一種隱私或數據規則？|市場特定的隱私、雲端、帳號或用戶資料要求|
|此 SKU 是否可在目標區域商業銷售？|取決於認證、標籤、包裝與核准狀態|

---

## 6.3 Official Region Code Table

## 6.3 官方區域代碼表

### EN

|Code|Region|Primary Use|Notes|
|--:|---|---|---|
|US|United States|U.S. commercial product configuration|Used for U.S. electrical, wireless, label, packaging, and market release control|
|CA|Canada|Canadian commercial product configuration|May require Canadian bilingual labeling and certification mapping|
|EU|European Union|EU commercial product configuration|Used for CE, EU labeling, multilingual documentation, and regional compliance|
|UK|United Kingdom|UK commercial product configuration|Used for UKCA and UK market-specific packaging or labeling|
|CN|Mainland China|Mainland China configuration|Used for China market certification, labeling, and platform requirements|
|TW|Taiwan|Taiwan configuration|Used for Taiwan market requirements and labeling|
|JP|Japan|Japan configuration|Used for Japan-specific electrical, wireless, and labeling requirements|
|AU|Australia|Australia configuration|Used for Australia / New Zealand market configuration where applicable|
|GL|Global reference version|Global reference or neutral planning version|Not automatically approved for sale in every market|
|INT|International project version|Project-specific international deployment|Used for controlled projects, not general retail release|

### ZH-TW

|代碼|區域|主要用途|備註|
|--:|---|---|---|
|US|美國|美國商業產品配置|用於美國電氣、無線、標籤、包裝與市場發布管控|
|CA|加拿大|加拿大商業產品配置|可能需要加拿大雙語標籤與認證映射|
|EU|歐盟|歐盟商業產品配置|用於 CE、歐盟標籤、多語文件與區域合規|
|UK|英國|英國商業產品配置|用於 UKCA 與英國市場特定包裝或標籤|
|CN|中國大陸|中國大陸配置|用於中國市場認證、標籤與平台要求|
|TW|台灣|台灣配置|用於台灣市場要求與標籤|
|JP|日本|日本配置|用於日本特定電氣、無線與標籤要求|
|AU|澳洲|澳洲配置|用於澳洲 / 紐西蘭市場配置，視適用情況而定|
|GL|全球參考版本|全球參考或中性規劃版本|不自動代表可在所有市場銷售|
|INT|國際專案版本|國際專案部署版本|用於受控專案，不作為一般零售發布|

---

## 6.4 Region Code Usage in SKU

## 6.4 區域代碼在 SKU 中的使用

### EN

The region code appears as the fourth field in the official SKU format.

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

The region code must represent the intended market configuration, not the current physical location of inventory.

For example, a product stored in a U.S. warehouse but designed, labeled, and certified for the EU market should use EU, not US.

### ZH-TW

區域代碼出現在官方 SKU 格式的第四個欄位。

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

區域代碼必須代表目標市場配置，而不是庫存當前所在的物理地點。

例如，一個存放在美國倉庫中，但設計、標籤與認證均面向歐盟市場的產品，應使用 EU，而不是 US。

---

## 6.5 Region Code Usage in Internal Model and Certification Records

## 6.5 區域代碼在內部型號與認證記錄中的使用

### EN

Region codes are normally required in SKU records and certification mapping records, but they do not always need to appear in short internal model names.

Recommended approach:

|Record Type|Should Include Region Code?|Example|
|---|---|---|
|Customer-Facing Name|Usually no|Artibird Act-E|
|Internal Model Name|Usually no, unless region-specific|ACT-G1-E|
|SKU Code|Yes|ATB-ACT-G1-US-WF-AC-E-S|
|Engineering Model Number|Optional, if region affects hardware|ACT-G1-US-HW1.0-FW1.2-PCB1.1|
|Certification Model Record|Yes|US certification model mapping|
|Manufacturing Record|Yes, where region affects BOM or label|US production configuration|
|Package Record|Yes|US retail package|
|Amazon Listing Record|Yes|U.S. marketplace listing|

If regional differences affect electrical design, RF design, enclosure labeling, plug type, privacy documentation, or certification model identity, the region code must be visible in the relevant control records.

### ZH-TW

區域代碼通常必須出現在 SKU 記錄與認證映射記錄中，但不一定需要出現在短格式內部型號名稱中。

建議方式：

|記錄類型|是否應包含區域代碼？|示例|
|---|---|---|
|面向客戶名稱|通常不需要|Artibird Act-E|
|內部型號名稱|通常不需要，除非區域特定|ACT-G1-E|
|SKU 代碼|需要|ATB-ACT-G1-US-WF-AC-E-S|
|工程型號|視情況，若區域影響硬體則需要|ACT-G1-US-HW1.0-FW1.2-PCB1.1|
|認證型號記錄|需要|美國認證型號映射|
|生產記錄|若區域影響 BOM 或標籤則需要|美國生產配置|
|包裝記錄|需要|美國零售包裝|
|Amazon 上架記錄|需要|美國站點上架記錄|

如果區域差異影響電氣設計、RF 設計、外殼標籤、插頭類型、隱私文件或認證型號身份，區域代碼必須出現在相關管控記錄中。

---

## 6.6 Region-Specific Control Areas

## 6.6 區域特定管控項目

### EN

A region code may affect multiple product control areas. These areas must be reviewed before a SKU is released for a specific region.

|Control Area|Region Impact|
|---|---|
|Electrical rating|Voltage, frequency, current rating, load type, wiring method|
|Wireless compliance|RF band, transmit power, module approval, radio filing|
|Safety certification|UL, ETL, CE, UKCA, PSE, RCM, or other regional safety requirements|
|Product label|Model number, rating information, certification marks, warning text|
|Packaging|Language, regulatory marks, barcode, recycling marks, regional claims|
|User manual|Safety warnings, installation instructions, legal notices|
|Plug / connector type|U.S., EU, UK, AU, JP, CN, or other plug forms|
|Privacy notice|Market-specific user data, cloud, app, and account requirements|
|App store listing|Market availability, language, service terms|
|Cloud service terms|Regional data handling, account, and subscription rules|
|Amazon listing|Marketplace-specific title, compliance attributes, and claim limits|
|Warranty|Region-specific warranty language and service process|

### ZH-TW

區域代碼可能影響多個產品管控項目。在某一 SKU 針對特定區域發布前，必須審查這些項目。

|管控項目|區域影響|
|---|---|
|電氣額定|電壓、頻率、電流額定、負載類型、接線方式|
|無線合規|RF 頻段、發射功率、模組核准、無線提交|
|安全認證|UL、ETL、CE、UKCA、PSE、RCM 或其他區域安全要求|
|產品標籤|型號、額定資訊、認證標誌、警告文字|
|包裝|語言、法規標誌、條碼、回收標誌、區域宣稱|
|用戶手冊|安全警告、安裝說明、法律聲明|
|插頭 / 接口類型|美國、歐盟、英國、澳洲、日本、中國或其他插頭形式|
|隱私通知|市場特定的用戶資料、雲端、App 與帳號要求|
|App 商店上架|市場可用性、語言、服務條款|
|雲端服務條款|區域數據處理、帳號與訂閱規則|
|Amazon 上架|站點特定標題、合規屬性與宣稱限制|
|保固|區域特定保固語言與服務流程|

---

## 6.7 Region Code and Certification Mapping

## 6.7 區域代碼與認證映射

### EN

Region codes must be mapped to the certification status of each product. A region code does not automatically mean that the product is certified for that region.

|Region Code|Possible Certification / Compliance Reference|Status Must Be Tracked Separately|
|--:|---|---|
|US|FCC, UL, ETL, NRTL-related safety requirements|Yes|
|CA|ISED, cUL, CSA-related safety requirements|Yes|
|EU|CE, RED, RoHS, REACH, applicable directives|Yes|
|UK|UKCA and UK-specific compliance requirements|Yes|
|CN|China market certification and labeling requirements|Yes|
|TW|NCC and Taiwan-specific requirements|Yes|
|JP|MIC / TELEC, PSE where applicable|Yes|
|AU|RCM and applicable electrical / wireless requirements|Yes|
|GL|Reference only, not a certification claim|Yes|
|INT|Project-specific compliance review|Yes|

A SKU with a region code must not be described as “certified,” “approved,” or “compliant” unless the certification tracker confirms that the required certification has been completed and approved.

### ZH-TW

區域代碼必須映射至每個產品的認證狀態。區域代碼不自動代表產品已通過該區域認證。

|區域代碼|可能涉及的認證 / 合規參考|狀態是否需另行追蹤|
|--:|---|---|
|US|FCC、UL、ETL、NRTL 相關安全要求|是|
|CA|ISED、cUL、CSA 相關安全要求|是|
|EU|CE、RED、RoHS、REACH、適用指令|是|
|UK|UKCA 與英國特定合規要求|是|
|CN|中國市場認證與標籤要求|是|
|TW|NCC 與台灣特定要求|是|
|JP|MIC / TELEC、適用時的 PSE|是|
|AU|RCM 與適用電氣 / 無線要求|是|
|GL|僅作參考，不代表認證宣稱|是|
|INT|專案特定合規審查|是|

帶有區域代碼的 SKU 不得被描述為 “certified”、“approved” 或 “compliant”，除非認證追蹤表確認所需認證已完成並獲得核准。

---

## 6.8 Region Code and Electrical Configuration

## 6.8 區域代碼與電氣配置

### EN

For electrical products, the region code may affect voltage, frequency, plug type, wiring method, load type, load rating, safety spacing, enclosure design, and installation documentation.

|Product Category|Region-Sensitive Items|
|---|---|
|Artibird Act|Voltage, current rating, plug type, relay rating, load compatibility, safety label|
|Artibird Switch|Wiring method, neutral / no-neutral design, load rating, wall-box compatibility|
|Artibird Panel|Power input, installation method, low-voltage or mains separation|
|Artibird Hub|Power adapter, plug type, regulatory label|
|Artibird Gate|Power adapter, RF compliance, Ethernet / Wi-Fi labeling|
|Artibird Sync|Power adapter, RF / IR labeling, supported appliance markets|
|Artibird Sense|Battery type, wireless certification, environmental rating|
|Artibird Vision|Power input, camera privacy labeling, wireless / Ethernet compliance|

Electrical configuration differences must be reviewed before assigning or releasing a regional SKU.

### ZH-TW

對於電氣產品，區域代碼可能影響電壓、頻率、插頭類型、接線方式、負載類型、負載額定、安全間距、外殼設計與安裝文件。

|產品類別|區域敏感項目|
|---|---|
|Artibird Act|電壓、電流額定、插頭類型、繼電器額定、負載相容性、安全標籤|
|Artibird Switch|接線方式、零火 / 單火設計、負載額定、牆盒相容性|
|Artibird Panel|供電輸入、安裝方式、低壓或市電隔離|
|Artibird Hub|電源適配器、插頭類型、法規標籤|
|Artibird Gate|電源適配器、RF 合規、Ethernet / Wi-Fi 標籤|
|Artibird Sync|電源適配器、RF / IR 標籤、支援家電市場|
|Artibird Sense|電池類型、無線認證、環境額定|
|Artibird Vision|供電輸入、攝影機隱私標籤、無線 / Ethernet 合規|

在分配或發布區域 SKU 前，必須審查電氣配置差異。

---

## 6.9 Region Code and Packaging / Labeling

## 6.9 區域代碼與包裝 / 標籤

### EN

Region codes must be connected to packaging and labeling requirements.

|Record Item|Region Requirement|
|---|---|
|Product label|Must show correct model, rating, certification marks, and warning text|
|Retail package|Must use approved market language and claims|
|Barcode / GTIN|Must match commercial region and package configuration|
|Amazon FBA label|Must match marketplace and fulfillment requirements|
|User manual|Must include region-specific safety and legal information|
|Installation guide|Must match wiring and electrical requirements|
|Warranty card|Must match regional service and legal terms|
|Privacy notice|Must match regional app, cloud, and data requirements|

A product must not use packaging intended for one region when sold in another region unless packaging, labeling, certification, and legal review confirms suitability.

### ZH-TW

區域代碼必須與包裝和標籤要求連接。

|記錄項目|區域要求|
|---|---|
|產品標籤|必須顯示正確型號、額定資訊、認證標誌與警告文字|
|零售包裝|必須使用已核准的市場語言與宣稱|
|條碼 / GTIN|必須匹配商業區域與包裝配置|
|Amazon FBA 標籤|必須匹配站點與履約要求|
|用戶手冊|必須包含區域特定安全與法律資訊|
|安裝指南|必須匹配接線與電氣要求|
|保固卡|必須匹配區域服務與法律條款|
|隱私通知|必須匹配區域 App、雲端與數據要求|

除非包裝、標籤、認證與法律審查確認適用，否則不得將某一區域包裝用於另一區域銷售。

---

## 6.10 Global Reference and International Project Codes

## 6.10 全球參考與國際專案代碼

### EN

### GL — Global Reference Version

GL is used for global reference planning, neutral documentation, engineering comparison, product catalog structure, or early product strategy.

GL does not mean that the product can be sold globally.

|Allowed Use|Not Allowed Use|
|---|---|
|Planning reference|Claiming global certification|
|Product architecture comparison|Retail release without regional approval|
|Internal specification baseline|Amazon listing for a specific market|
|Early product catalog placeholder|Certification label replacement|

### INT — International Project Version

INT is used for controlled international projects where the final market configuration may depend on the project country, customer requirements, local integrator requirements, or deployment-specific compliance review.

INT should not be used as a general retail SKU code unless converted to a region-specific SKU.

### ZH-TW

### GL — 全球參考版本

GL 用於全球參考規劃、中性文件、工程比較、產品型錄結構或早期產品策略。

GL 不代表產品可以全球銷售。

|允許用途|不允許用途|
|---|---|
|規劃參考|宣稱全球認證|
|產品架構比較|未經區域核准的零售發布|
|內部規格基準|用作特定市場 Amazon 上架|
|早期產品型錄佔位|替代認證標籤|

### INT — 國際專案版本

INT 用於受控國際專案，其最終市場配置可能取決於專案所在國家、客戶要求、本地整合商要求或部署特定合規審查。

INT 不應作為一般零售 SKU 代碼使用，除非轉換為區域特定 SKU。

---

## 6.11 When to Change Region Code

## 6.11 何時需要更改區域代碼

### EN

|Change Scenario|Change Region Code?|Notes|
|---|---|---|
|Product released from U.S. to EU market|Yes|US SKU must not be reused for EU market|
|Same hardware, different packaging language|Usually yes|Region-specific packaging must be tracked|
|Same hardware, different certification mark|Yes|Certification and label mapping must change|
|Same product sold through different U.S. channels|No|Use package or channel field, not region code|
|Product stored in a different warehouse|No|Region code is not warehouse location|
|Product used in international project|Maybe|Use INT only when project-specific and controlled|
|Global planning version|Use GL|Not for final retail release|
|New plug type or power adapter|Yes, if region-specific|May also affect power and package codes|
|Privacy policy changes by market|Yes, if SKU or service region differs|Must map to app and cloud service records|
|Amazon marketplace changes|Usually yes|Marketplace-specific listing and compliance review required|

### ZH-TW

|變更場景|是否更改區域代碼？|備註|
|---|---|---|
|產品從美國市場發布到歐盟市場|是|不得將 US SKU 直接用於 EU 市場|
|同一硬體，但包裝語言不同|通常是|必須追蹤區域特定包裝|
|同一產品，但認證標誌不同|是|認證與標籤映射必須變更|
|同一產品在美國不同渠道銷售|否|使用包裝或渠道欄位，不改區域代碼|
|產品存放在不同倉庫|否|區域代碼不是倉庫位置|
|產品用於國際專案|視情況|僅在專案特定且受控時使用 INT|
|全球規劃版本|使用 GL|不用於最終零售發布|
|新插頭類型或電源適配器|若為區域特定則是|也可能影響供電與包裝代碼|
|隱私政策因市場不同而變更|若 SKU 或服務區域不同則是|必須映射至 App 與雲端服務記錄|
|Amazon 站點變更|通常是|需要站點特定上架與合規審查|

---

## 6.12 Region Code Governance Rules

## 6.12 區域代碼治理規則

### EN

|Rule|Requirement|
|---|---|
|One region code must represent one intended market or regional configuration|Do not use region codes casually|
|Region code must not represent warehouse location|Use logistics records for warehouse location|
|Region code must not imply certification|Certification status must be tracked separately|
|GL must not be used as a commercial global approval claim|GL is reference-only unless otherwise approved|
|INT must be project-controlled|INT is not a general retail region code|
|Regional SKU release requires review|Product, compliance, packaging, sales, and operations review may be required|
|Region code must map to packaging and label records|Market-specific packaging must be traceable|
|Region code must map to certification records|Certification model and status must be traceable|
|Region code must map to commercial release status|A product may be released in one region but not another|
|Region code must not replace language or package code|Region, language, and packaging must remain separately traceable where needed|

### ZH-TW

|規則|要求|
|---|---|
|一個區域代碼必須代表一個目標市場或區域配置|不得隨意使用區域代碼|
|區域代碼不得代表倉庫位置|倉庫位置應使用物流記錄|
|區域代碼不得暗示認證狀態|認證狀態必須另行追蹤|
|GL 不得用作全球商業核准宣稱|除非另行核准，GL 僅為參考|
|INT 必須受專案管控|INT 不是一般零售區域代碼|
|區域 SKU 發布需要審查|可能需要產品、合規、包裝、銷售與運營審查|
|區域代碼必須映射至包裝與標籤記錄|市場特定包裝必須可追蹤|
|區域代碼必須映射至認證記錄|認證型號與狀態必須可追蹤|
|區域代碼必須映射至商業發布狀態|產品可能在某一區域發布，而另一區域未發布|
|區域代碼不得取代語言或包裝代碼|區域、語言與包裝在需要時必須分別追蹤|

---

## 6.13 Required Master Table Fields

## 6.13 必備主表欄位

### EN

Each SKU master record must include region-related fields.

|Field|Requirement|
|---|---|
|Region Code|Required|
|Intended Market|Required|
|Certification Region|Required where applicable|
|Certification Status|Required|
|Electrical Configuration|Required for powered products|
|Wireless Compliance Status|Required for wireless products|
|Label Version|Required|
|Packaging Version|Required|
|Manual / Installation Guide Version|Required where applicable|
|App / Cloud Availability Region|Required where applicable|
|Commercial Release Status by Region|Required|
|Regional Claim Boundary Notes|Required|
|Approval Owner|Required|
|Revision Date|Required|

### ZH-TW

每一筆 SKU 主記錄都必須包含與區域相關的欄位。

|欄位|要求|
|---|---|
|區域代碼|必填|
|目標市場|必填|
|認證區域|適用時必填|
|認證狀態|必填|
|電氣配置|帶電產品必填|
|無線合規狀態|無線產品必填|
|標籤版本|必填|
|包裝版本|必填|
|用戶手冊 / 安裝指南版本|適用時必填|
|App / 雲端可用區域|適用時必填|
|按區域劃分的商業發布狀態|必填|
|區域宣稱邊界備註|必填|
|核准負責人|必填|
|修訂日期|必填|

---

## 6.14 Chapter Conclusion

## 6.14 本章結論

### EN

Region codes identify the intended market and regional configuration of Artibird products and related OceanAI system-layer services.

A region code is not a warehouse location, not a language code, not a certification claim, and not a guarantee of commercial availability. It is a controlled market-configuration identifier that must connect SKU records with certification, labeling, packaging, electrical design, wireless compliance, app availability, cloud service terms, and commercial release status.

Clear region code control allows Artibird products to be released market by market without confusing certification status, packaging readiness, sales permissions, or compliance boundaries.

### ZH-TW

區域代碼用於識別 Artibird 產品與相關 OceanAI 系統層服務的目標市場與區域配置。

區域代碼不是倉庫位置，不是語言代碼，不是認證宣稱，也不是商業可銷售性的保證。它是一種受控市場配置識別碼，必須將 SKU 記錄與認證、標籤、包裝、電氣設計、無線合規、App 可用性、雲端服務條款與商業發布狀態連接起來。

清晰的區域代碼管控，可使 Artibird 產品按市場逐步發布，同時避免認證狀態、包裝準備、銷售許可與合規邊界混淆。

---

本章依據《Artibird SKU & Model Naming Specification v1.0》的既定撰寫計劃展開；原始規劃已將 Region Codes 設為 Chapter 6，並列出 US、CA、EU、UK、CN、TW、JP、AU、GL、INT 作為標準區域代碼。

**話題延伸｜互動建議**  
下一章可以繼續寫 **Chapter 7 — Connectivity Codes｜第七章｜連接代碼**，正式定義 WF、ETH、BLE、RF、IR、IRRF、HYB、LAN、CLD、LTE、LORA 在 SKU、型號與產品配置中的使用邊界。