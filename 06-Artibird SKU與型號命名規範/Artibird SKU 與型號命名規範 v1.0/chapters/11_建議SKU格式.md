# Artibird SKU & Model Naming Specification v1.0

# Artibird SKU 與型號命名規範 v1.0

## Part II — SKU Structure

## 第二部分｜SKU 結構

## Chapter 11 — Recommended SKU Format

## 第十一章｜建議 SKU 格式

---

## 11.1 Purpose

## 11.1 目的

### EN

This chapter defines the recommended official SKU format for Artibird products and related OceanAI system-layer commercial records.

The SKU format combines brand identity, product line, generation, region, connectivity, power architecture, functional variant, and package configuration into one controlled commercial identifier.

The purpose of this SKU format is to make every Artibird product traceable across product planning, engineering configuration, certification mapping, packaging, Amazon listing, inventory management, channel distribution, pricing, and commercial release.

### ZH-TW

本章定義 Artibird 產品與相關 OceanAI 系統層商業記錄所使用的建議官方 SKU 格式。

此 SKU 格式將品牌身份、產品線、世代、區域、連接方式、供電架構、功能版本與包裝配置整合為一個受控商業識別碼。

此 SKU 格式的目的，是讓每一個 Artibird 產品都能在產品規劃、工程配置、認證映射、包裝、Amazon 上架、庫存管理、渠道分銷、定價與商業發布中保持可追蹤。

---

## 11.2 Recommended SKU Structure

## 11.2 建議 SKU 結構

### EN

The recommended Artibird SKU structure is:

```text
ATB-[PRODUCT]-[GEN]-[REGION]-[CONNECTIVITY]-[POWER]-[VARIANT]-[PACKAGE]
```

This structure contains eight controlled fields:

|Order|Field|Description|
|--:|---|---|
|1|Brand|Brand prefix|
|2|Product|Product line code|
|3|Generation|Product generation code|
|4|Region|Target market or regional configuration|
|5|Connectivity|Communication or connection method|
|6|Power|Power architecture or installation configuration|
|7|Variant|Functional or commercial variant|
|8|Package|Packaging, shipment, or sales unit|

### ZH-TW

建議 Artibird SKU 結構如下：

```text
ATB-[產品]-[世代]-[區域]-[連接]-[供電]-[版本]-[包裝]
```

此結構包含八個受控欄位：

|順序|欄位|說明|
|--:|---|---|
|1|品牌|品牌前綴|
|2|產品|產品線代碼|
|3|世代|產品世代代碼|
|4|區域|目標市場或區域配置|
|5|連接|通訊或連接方式|
|6|供電|供電架構或安裝配置|
|7|版本|功能或商業版本|
|8|包裝|包裝、出貨或銷售單位|

---

## 11.3 SKU Format Logic

## 11.3 SKU 格式邏輯

### EN

The recommended SKU format follows a fixed logic from broad identity to specific commercial unit.

|Logic Level|Field|Function|
|---|---|---|
|Brand Identity|ATB|Identifies Artibird as the product brand|
|Product Identity|PRODUCT|Identifies the product family|
|Lifecycle Identity|GEN|Identifies product generation|
|Market Identity|REGION|Identifies market configuration|
|Technical Configuration|CONNECTIVITY|Identifies communication method|
|Electrical Configuration|POWER|Identifies power architecture|
|Functional Configuration|VARIANT|Identifies product variant|
|Commercial Unit|PACKAGE|Identifies packaging or sales unit|

This order should not be changed unless a formal naming system revision is approved.

### ZH-TW

建議 SKU 格式遵循從寬到窄、從產品身份到商業單位的固定邏輯。

|邏輯層級|欄位|功能|
|---|---|---|
|品牌身份|ATB|識別 Artibird 產品品牌|
|產品身份|PRODUCT|識別產品家族|
|生命週期身份|GEN|識別產品世代|
|市場身份|REGION|識別市場配置|
|技術配置|CONNECTIVITY|識別通訊方式|
|電氣配置|POWER|識別供電架構|
|功能配置|VARIANT|識別產品版本|
|商業單位|PACKAGE|識別包裝或銷售單位|

除非正式核准命名系統修訂，否則此順序不應更改。

---

## 11.4 SKU Example — Artibird Switch Scene

## 11.4 SKU 示例 — Artibird Switch Scene

### EN

Example SKU:

```text
ATB-SW-G1-US-BLE-BAT-SCN-S
```

|Field|Value|Meaning|
|---|---|---|
|Brand|ATB|Artibird|
|Product|SW|Artibird Switch|
|Generation|G1|First generation|
|Region|US|United States|
|Connectivity|BLE|BLE / BLE Mesh|
|Power|BAT|Battery powered|
|Variant|SCN|Scene switch version|
|Package|S|Single unit|

This SKU represents a first-generation Artibird Switch for the U.S. market, using BLE / BLE Mesh communication, battery power, scene-switch behavior, and single-unit packaging.

### ZH-TW

示例 SKU：

```text
ATB-SW-G1-US-BLE-BAT-SCN-S
```

|欄位|數值|含義|
|---|---|---|
|品牌|ATB|Artibird|
|產品|SW|Artibird Switch|
|世代|G1|第一代|
|區域|US|美國|
|連接|BLE|BLE / BLE Mesh|
|供電|BAT|電池供電|
|版本|SCN|場景開關版本|
|包裝|S|單品|

此 SKU 表示一款面向美國市場的第一代 Artibird Switch，使用 BLE / BLE Mesh 通訊，採用電池供電，具備場景開關行為，並以單品包裝銷售。

---

## 11.5 SKU Example — Artibird Act-E

## 11.5 SKU 示例 — Artibird Act-E

### EN

Example SKU:

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

This SKU represents a first-generation Artibird Act for the U.S. market, using Wi-Fi communication, AC mains power, energy-aware capability, and single-unit packaging.

### ZH-TW

示例 SKU：

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

此 SKU 表示一款面向美國市場的第一代 Artibird Act，使用 Wi-Fi 通訊，採用 AC 市電供電，具備能源感知能力，並以單品包裝銷售。

---

## 11.6 SKU Example — Artibird Sync IR/RF

## 11.6 SKU 示例 — Artibird Sync IR/RF

### EN

Example SKU:

```text
ATB-SYNC-G1-GL-IRRF-USB-STD-S
```

|Field|Value|Meaning|
|---|---|---|
|Brand|ATB|Artibird|
|Product|SYNC|Artibird Sync|
|Generation|G1|First generation|
|Region|GL|Global reference version|
|Connectivity|IRRF|IR + RF|
|Power|USB|USB / USB-C powered|
|Variant|STD|Standard version|
|Package|S|Single unit|

This SKU represents a first-generation Artibird Sync reference SKU with IR + RF capability, USB power input, standard configuration, and single-unit packaging.

Because the region code is GL, this SKU should be treated as a global reference version and not as automatic approval for sale in every market.

### ZH-TW

示例 SKU：

```text
ATB-SYNC-G1-GL-IRRF-USB-STD-S
```

|欄位|數值|含義|
|---|---|---|
|品牌|ATB|Artibird|
|產品|SYNC|Artibird Sync|
|世代|G1|第一代|
|區域|GL|全球參考版本|
|連接|IRRF|IR + RF|
|供電|USB|USB / USB-C 供電|
|版本|STD|標準版|
|包裝|S|單品|

此 SKU 表示一款第一代 Artibird Sync 參考 SKU，具備 IR + RF 能力，採用 USB 供電，為標準配置，並以單品包裝銷售。

由於區域代碼為 GL，此 SKU 應被視為全球參考版本，不代表自動獲准在所有市場銷售。

---

## 11.7 SKU Example — Artibird Gate Pro Kit

## 11.7 SKU 示例 — Artibird Gate Pro Kit

### EN

Example SKU:

```text
ATB-GATE-G1-US-HYB-USB-PRO-PROKIT
```

|Field|Value|Meaning|
|---|---|---|
|Brand|ATB|Artibird|
|Product|GATE|Artibird Gate|
|Generation|G1|First generation|
|Region|US|United States|
|Connectivity|HYB|Hybrid communication|
|Power|USB|USB / USB-C powered|
|Variant|PRO|Professional version|
|Package|PROKIT|Professional kit|

This SKU represents a first-generation Artibird Gate Pro Kit for the U.S. market, using a hybrid validated communication configuration, USB power input, professional variant positioning, and professional kit packaging.

The HYB connectivity code must be supported by a master table record listing the exact supported communication paths.

### ZH-TW

示例 SKU：

```text
ATB-GATE-G1-US-HYB-USB-PRO-PROKIT
```

|欄位|數值|含義|
|---|---|---|
|品牌|ATB|Artibird|
|產品|GATE|Artibird Gate|
|世代|G1|第一代|
|區域|US|美國|
|連接|HYB|混合通訊|
|供電|USB|USB / USB-C 供電|
|版本|PRO|專業版|
|包裝|PROKIT|專業套組|

此 SKU 表示一款面向美國市場的第一代 Artibird Gate Pro Kit，採用已驗證混合通訊配置，使用 USB 供電，定位為專業版本，並採用專業套組包裝。

HYB 連接代碼必須由 SKU 主表記錄支撐，並列出實際支援的通訊路徑。

---

## 11.8 SKU Field Source Table

## 11.8 SKU 欄位來源表

### EN

|SKU Field|Source Chapter|Controlled Code Library|
|---|---|---|
|Brand|Chapter 11|ATB|
|Product|Chapter 4|Product Line Codes|
|Generation|Chapter 5|Generation Codes|
|Region|Chapter 6|Region Codes|
|Connectivity|Chapter 7|Connectivity Codes|
|Power|Chapter 8|Power Codes|
|Variant|Chapter 9|Variant Codes|
|Package|Chapter 10|Package Codes|

The SKU format must only use approved codes from the controlled code library.

### ZH-TW

|SKU 欄位|來源章節|受控代碼庫|
|---|---|---|
|品牌|Chapter 11|ATB|
|產品|Chapter 4|產品線代碼|
|世代|Chapter 5|世代代碼|
|區域|Chapter 6|區域代碼|
|連接|Chapter 7|連接代碼|
|供電|Chapter 8|供電代碼|
|版本|Chapter 9|版本代碼|
|包裝|Chapter 10|包裝代碼|

SKU 格式只能使用受控代碼庫中已核准的代碼。

---

## 11.9 SKU Formatting Rules

## 11.9 SKU 格式規則

### EN

|Rule|Requirement|
|---|---|
|Use uppercase letters|All SKU fields must use uppercase letters and numbers|
|Use hyphen separators|Each field must be separated by a hyphen|
|Do not use spaces|Spaces are not allowed in SKU codes|
|Do not use special characters|Avoid slashes, underscores, dots, symbols, or punctuation except hyphens|
|Keep field order fixed|Do not rearrange SKU fields|
|Use approved codes only|No unofficial or temporary codes in commercial SKU records|
|Keep SKU readable|SKU should remain understandable by trained internal teams|
|Avoid excessive length|Add details to the master table, not the SKU, when possible|
|Do not encode certification status|Certification must be tracked separately|
|Do not encode price|Pricing must be tracked separately|
|Do not encode warehouse location|Logistics location must be tracked separately|

### ZH-TW

|規則|要求|
|---|---|
|使用大寫字母|所有 SKU 欄位必須使用大寫字母與數字|
|使用連字號分隔|每個欄位必須使用連字號分隔|
|不使用空格|SKU 代碼不得包含空格|
|不使用特殊符號|除連字號外，避免使用斜線、底線、點號、符號或標點|
|保持欄位順序固定|不得重新排列 SKU 欄位|
|只能使用已核准代碼|商業 SKU 記錄中不得使用非官方或臨時代碼|
|保持 SKU 可讀|SKU 應能被受訓內部團隊理解|
|避免過長|若可能，細節應放入主表，而不是放入 SKU|
|不編入認證狀態|認證必須另行追蹤|
|不編入價格|定價必須另行追蹤|
|不編入倉庫位置|物流位置必須另行追蹤|

---

## 11.10 SKU Structure vs Internal Model Name

## 11.10 SKU 結構與內部型號名稱的區別

### EN

The SKU code is more detailed than the internal model name because it includes regional, commercial, packaging, and sales-relevant fields.

|Item|Example|Function|
|---|---|---|
|Customer-Facing Name|Artibird Act-E|Public product name|
|Internal Model Name|ACT-G1-E|Product and engineering control|
|SKU Code|ATB-ACT-G1-US-WF-AC-E-S|Commercial, inventory, sales, package, and channel control|
|Engineering Model Number|ACT-G1-HW1.0-FW1.2-PCB1.1|Hardware, firmware, PCB, and validation tracking|
|Certification Model Number|Exact filed model name|Regulatory filing and label control|

SKU codes should not replace engineering model numbers or certification model numbers. They must be mapped to them through the SKU master table.

### ZH-TW

SKU 代碼比內部型號名稱更詳細，因為它包含區域、商業、包裝與銷售相關欄位。

|項目|示例|功能|
|---|---|---|
|面向客戶名稱|Artibird Act-E|公開產品名稱|
|內部型號名稱|ACT-G1-E|產品與工程管控|
|SKU 代碼|ATB-ACT-G1-US-WF-AC-E-S|商業、庫存、銷售、包裝與渠道管控|
|工程型號|ACT-G1-HW1.0-FW1.2-PCB1.1|硬體、韌體、PCB 與驗證追蹤|
|認證型號|依實際提交型號|法規提交與標籤管控|

SKU 代碼不應取代工程型號或認證型號。它們必須透過 SKU 主表進行映射。

---

## 11.11 SKU Structure vs Package Name

## 11.11 SKU 結構與包裝名稱的區別

### EN

A package name is readable. A SKU code is structured and controlled.

|Package Name|SKU Example|Difference|
|---|---|---|
|Artibird Energy Starter Kit|ATB-ACT-G1-US-WF-AC-E-KIT|Package name is readable; SKU defines product and package structure|
|Artibird Gate Pro Kit|ATB-GATE-G1-US-HYB-USB-PRO-PROKIT|Package name is customer- or channel-readable; SKU is operational|
|Artibird Classroom Control Kit|Multiple SKU records or one kit SKU|Kit contents must be mapped in the master table|
|Artibird Demo Kit|ATB-[PRODUCT]-G1-US-[CONN]-[POWER]-STD-DEMO|Demo package must define purpose and claim boundary|

A package name must not be used as the only inventory identifier. Every package that is stocked, priced, sold, shipped, demonstrated, or assigned to a channel must have a SKU or controlled package record.

### ZH-TW

包裝名稱是可讀名稱。SKU 代碼是結構化且受控的識別碼。

|包裝名稱|SKU 示例|區別|
|---|---|---|
|Artibird Energy Starter Kit|ATB-ACT-G1-US-WF-AC-E-KIT|包裝名稱可讀；SKU 定義產品與包裝結構|
|Artibird Gate Pro Kit|ATB-GATE-G1-US-HYB-USB-PRO-PROKIT|包裝名稱面向客戶或渠道可讀；SKU 面向運營|
|Artibird Classroom Control Kit|多個 SKU 記錄或一個套組 SKU|套組內容必須映射至主表|
|Artibird Demo Kit|ATB-[PRODUCT]-G1-US-[CONN]-[POWER]-STD-DEMO|展示包必須定義用途與宣稱邊界|

包裝名稱不得作為唯一庫存識別。任何被入庫、定價、銷售、出貨、展示或分配至渠道的包裝，都必須具有 SKU 或受控包裝記錄。

---

## 11.12 When a New SKU Is Required

## 11.12 何時需要建立新 SKU

### EN

A new SKU is normally required when one or more of the following fields change:

|Field Change|New SKU Required?|Example|
|---|---|---|
|Product line changes|Yes|SW changes to ACT|
|Generation changes|Yes|G1 changes to G2|
|Region changes|Yes|US changes to EU|
|Connectivity changes|Yes|WF changes to BLE|
|Power architecture changes|Yes|BAT changes to USB|
|Variant changes|Yes|STD changes to E|
|Package changes|Yes|S changes to 2P|
|Certification model changes|Usually yes|Certification mapping must be reviewed|
|Hardware configuration changes|Usually yes|If commercial configuration changes|
|Firmware-only minor update|Usually no|Track firmware version separately|
|Packaging artwork-only update|Usually no|Track package version separately|
|Price promotion only|No|Track pricing separately|
|Warehouse location only|No|Track logistics separately|

### ZH-TW

當以下一個或多個欄位發生變化時，通常需要建立新 SKU：

|欄位變更|是否需要新 SKU？|示例|
|---|---|---|
|產品線變更|是|SW 變更為 ACT|
|世代變更|是|G1 變更為 G2|
|區域變更|是|US 變更為 EU|
|連接方式變更|是|WF 變更為 BLE|
|供電架構變更|是|BAT 變更為 USB|
|版本變更|是|STD 變更為 E|
|包裝變更|是|S 變更為 2P|
|認證型號變更|通常是|必須審查認證映射|
|硬體配置變更|通常是|若商業配置變更|
|僅輕微韌體更新|通常否|單獨追蹤韌體版本|
|僅包裝 artwork 更新|通常否|單獨追蹤包裝版本|
|僅價格促銷|否|單獨追蹤價格|
|僅倉庫位置變更|否|單獨追蹤物流|

---

## 11.13 When a New SKU Is Not Required

## 11.13 何時不需要建立新 SKU

### EN

A new SKU is normally not required when the product identity and commercial configuration do not change.

|Change Type|New SKU Required?|Required Action|
|---|---|---|
|Minor firmware update|No|Update firmware version record|
|Bug fix|No|Update release notes and firmware record|
|Minor packaging artwork correction|No|Update packaging artwork version|
|Manual typo correction|No|Update manual version|
|Price promotion|No|Update pricing sheet|
|Warehouse transfer|No|Update logistics record|
|Inventory quantity change|No|Update inventory system|
|Internal owner change|No|Update master table owner field|
|Non-customer-facing test note|No|Update engineering record|
|Same SKU sold through approved channel|No|Update channel availability record|

### ZH-TW

當產品身份與商業配置沒有變更時，通常不需要建立新 SKU。

|變更類型|是否需要新 SKU？|必要動作|
|---|---|---|
|輕微韌體更新|否|更新韌體版本記錄|
|Bug 修復|否|更新發布說明與韌體記錄|
|輕微包裝 artwork 修正|否|更新包裝 artwork 版本|
|說明書錯字修正|否|更新說明書版本|
|價格促銷|否|更新價格表|
|倉庫轉移|否|更新物流記錄|
|庫存數量變化|否|更新庫存系統|
|內部負責人變更|否|更新主表負責人欄位|
|非面向客戶測試備註|否|更新工程記錄|
|同一 SKU 透過已核准渠道銷售|否|更新渠道可用性記錄|

---

## 11.14 Reserved and Placeholder SKU Rules

## 11.14 預留與佔位 SKU 規則

### EN

Placeholder SKUs may be used during planning, but they must be clearly marked.

|Placeholder Status|Meaning|Commercial Use|
|---|---|---|
|Draft|Early planning SKU|No|
|Reserved|SKU reserved for future use|No|
|Prototype|Prototype tracking only|No|
|Pilot|Limited controlled use|Limited|
|Released|Approved commercial SKU|Yes|
|Deprecated|Not recommended for new use|Limited / controlled|
|Discontinued|End of life|No new sales|

Placeholder SKUs must not appear in public-facing catalog, Amazon listing, packaging, or channel sales documents unless they have been approved for release.

### ZH-TW

佔位 SKU 可用於規劃階段，但必須清楚標註狀態。

|佔位狀態|含義|商業使用|
|---|---|---|
|Draft|早期規劃 SKU|不可|
|Reserved|預留未來使用 SKU|不可|
|Prototype|僅供原型追蹤|不可|
|Pilot|有限受控使用|有限|
|Released|已核准商業 SKU|可以|
|Deprecated|不建議新項目使用|有限 / 受控|
|Discontinued|生命週期結束|不再新增銷售|

除非已獲准發布，佔位 SKU 不得出現在公開型錄、Amazon 上架、包裝或渠道銷售文件中。

---

## 11.15 Recommended SKU Validation Checklist

## 11.15 建議 SKU 驗證清單

### EN

Before a SKU is approved, the following items should be checked:

|Check Item|Required|
|---|---|
|Product line code is approved|Yes|
|Generation code is valid|Yes|
|Region code matches intended market|Yes|
|Connectivity code matches validated capability|Yes|
|Power code matches actual power architecture|Yes|
|Variant code matches functional configuration|Yes|
|Package code matches packaging unit|Yes|
|SKU maps to customer-facing name|Yes|
|SKU maps to internal model name|Yes|
|SKU maps to engineering model number|Yes, where applicable|
|SKU maps to certification model number|Yes, where applicable|
|SKU maps to packaging version|Yes|
|SKU maps to barcode / FNSKU where required|Yes|
|SKU release status is defined|Yes|
|Claim boundary notes are recorded|Yes|

### ZH-TW

在 SKU 被核准前，應檢查以下項目：

|檢查項目|是否必須|
|---|---|
|產品線代碼已核准|是|
|世代代碼有效|是|
|區域代碼匹配目標市場|是|
|連接代碼匹配已驗證能力|是|
|供電代碼匹配實際供電架構|是|
|版本代碼匹配功能配置|是|
|包裝代碼匹配包裝單位|是|
|SKU 映射至面向客戶名稱|是|
|SKU 映射至內部型號名稱|是|
|SKU 映射至工程型號|適用時必須|
|SKU 映射至認證型號|適用時必須|
|SKU 映射至包裝版本|是|
|SKU 映射至條碼 / FNSKU|需要時必須|
|SKU 發布狀態已定義|是|
|宣稱邊界備註已記錄|是|

---

## 11.16 SKU Format Governance Rules

## 11.16 SKU 格式治理規則

### EN

|Rule|Requirement|
|---|---|
|SKU format must follow the approved eight-field structure|Do not remove or rearrange fields|
|All fields must use approved codes|No unofficial codes in released SKUs|
|SKU must describe commercial configuration|Do not encode engineering-only details unless required|
|SKU must map to master table|SKU alone is not sufficient as full product record|
|SKU must not imply certification|Certification status must be tracked separately|
|SKU must not imply unlimited compatibility|Compatibility must be validated and documented|
|SKU must not encode price|Pricing must be controlled separately|
|SKU must not encode warehouse location|Logistics must be controlled separately|
|Placeholder SKUs must be marked|Draft or reserved SKUs must not be treated as released|
|SKU changes require approval|Product, operations, engineering, compliance, and commercial review may be required|

### ZH-TW

|規則|要求|
|---|---|
|SKU 格式必須遵循已核准八欄位結構|不得刪除或重新排列欄位|
|所有欄位必須使用已核准代碼|已發布 SKU 中不得使用非官方代碼|
|SKU 必須描述商業配置|除非必要，不將純工程細節編入 SKU|
|SKU 必須映射至主表|僅有 SKU 代碼不足以構成完整產品記錄|
|SKU 不得暗示認證|認證狀態必須另行追蹤|
|SKU 不得暗示無限制相容性|相容性必須驗證並記錄|
|SKU 不得編入價格|定價必須另行管控|
|SKU 不得編入倉庫位置|物流必須另行管控|
|佔位 SKU 必須標註狀態|Draft 或 Reserved SKU 不得視為已發布|
|SKU 變更需要核准|可能需要產品、運營、工程、合規與商務審查|

---

## 11.17 Required Master Table Fields

## 11.17 必備主表欄位

### EN

Every SKU created under this format must be recorded in the SKU master table.

|Field|Requirement|
|---|---|
|SKU Code|Required|
|Customer-Facing Name|Required|
|Internal Model Name|Required|
|Product Line Code|Required|
|Generation Code|Required|
|Region Code|Required|
|Connectivity Code|Required|
|Power Code|Required|
|Variant Code|Required|
|Package Code|Required|
|Engineering Model Number|Required where applicable|
|Certification Model Number|Required where applicable|
|Manufacturing Model Number|Required where applicable|
|Package Name|Required where applicable|
|Barcode / GTIN / UPC / EAN|Required where applicable|
|Amazon FNSKU|Required for FBA records|
|Release Status|Required|
|Approval Owner|Required|
|Revision Date|Required|
|Claim Boundary Notes|Required|

### ZH-TW

依此格式建立的每一個 SKU，都必須記錄於 SKU 主表中。

|欄位|要求|
|---|---|
|SKU 代碼|必填|
|面向客戶名稱|必填|
|內部型號名稱|必填|
|產品線代碼|必填|
|世代代碼|必填|
|區域代碼|必填|
|連接代碼|必填|
|供電代碼|必填|
|版本代碼|必填|
|包裝代碼|必填|
|工程型號|適用時必填|
|認證型號|適用時必填|
|生產型號|適用時必填|
|包裝名稱|適用時必填|
|條碼 / GTIN / UPC / EAN|適用時必填|
|Amazon FNSKU|FBA 記錄必填|
|發布狀態|必填|
|核准負責人|必填|
|修訂日期|必填|
|宣稱邊界備註|必填|

---

## 11.18 Chapter Conclusion

## 11.18 本章結論

### EN

The recommended Artibird SKU format provides a structured commercial identifier that connects product identity, technical configuration, market configuration, functional variant, and packaging unit.

The standard format is:

```text
ATB-[PRODUCT]-[GEN]-[REGION]-[CONNECTIVITY]-[POWER]-[VARIANT]-[PACKAGE]
```

This format must remain fixed, controlled, and traceable. It should use only approved codes from the controlled code library and must always map to the SKU master table.

A well-controlled SKU format allows Artibird products and related OceanAI service records to remain consistent across engineering, certification, packaging, inventory, Amazon, sales, channel, and commercial release workflows.

### ZH-TW

建議 Artibird SKU 格式提供了一種結構化商業識別碼，用於連接產品身份、技術配置、市場配置、功能版本與包裝單位。

標準格式為：

```text
ATB-[產品]-[世代]-[區域]-[連接]-[供電]-[版本]-[包裝]
```

此格式必須保持固定、受控且可追蹤。它只能使用受控代碼庫中已核准的代碼，並且必須始終映射至 SKU 主表。

良好管控的 SKU 格式，可使 Artibird 產品與相關 OceanAI 服務記錄在工程、認證、包裝、庫存、Amazon、銷售、渠道與商業發布流程中保持一致。

---

本章依據《Artibird SKU & Model Naming Specification v1.0》的既定撰寫計劃展開；原始規劃已將 Chapter 11 設為 Recommended SKU Format，並明確定義建議 SKU 結構為 `ATB-[PRODUCT]-[GEN]-[REGION]-[CONNECTIVITY]-[POWER]-[VARIANT]-[PACKAGE]`。

**話題延伸｜互動建議**  
下一章可以繼續寫 **Chapter 12 — SKU Field Definition｜第十二章｜SKU 欄位定義**，把每一個 SKU 欄位的「何時必須更改、何時不應更改、由誰核准」正式定義成管控表。