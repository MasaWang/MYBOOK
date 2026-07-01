# Artibird SKU & Model Naming Specification v1.0

# Artibird SKU 與型號命名規範 v1.0

## Chapter 18 — Internal Model Numbers

## 第十八章｜內部型號

---

## 18.1 Purpose

## 18.1 目的

### EN

This chapter defines the internal model number system used by product, engineering, firmware, testing, certification preparation, manufacturing, operations, and documentation teams.

Internal model numbers are shorter and more operational than full SKU codes. They identify the product family, generation, and major functional variant without including every commercial field such as region, package, channel, barcode, or pricing configuration.

The purpose of internal model numbers is to provide a stable internal identity for product development and cross-team coordination while maintaining traceability to SKU codes, engineering model numbers, certification model numbers, and manufacturing records.

### ZH-TW

本章定義產品、工程、韌體、測試、認證準備、生產、運營與文件團隊使用的內部型號系統。

內部型號比完整 SKU 代碼更短，也更適合運營協同。它識別產品家族、世代與主要功能版本，但不包含區域、包裝、渠道、條碼或定價配置等全部商業欄位。

內部型號的目的，是為產品開發與跨團隊協同提供穩定的內部身份，同時保持與 SKU 代碼、工程型號、認證型號與生產記錄之間的可追蹤性。

---

## 18.2 Internal Model Number Definition

## 18.2 內部型號定義

### EN

An internal model number is a controlled product identifier used inside the company to identify a product configuration at the product-family and functional-variant level.

It answers the following questions:

|Question|Description|
|---|---|
|Which product family is this?|Hub, Gate, Sync, Switch, Panel, Act, Sense, Vision, App, Cloud, Edge|
|Which generation does it belong to?|G1, G2, G3|
|What major variant or capability does it represent?|Pro, IR/RF, Scene, Relay, Energy, Climate, Camera, Edge|
|Can engineering and product teams identify it quickly?|It should be short, readable, and stable|
|Does it map to one or more SKUs?|Yes, usually across regions and packages|
|Does it replace engineering model numbers?|No|
|Does it replace certification model numbers?|No|

### ZH-TW

內部型號是公司內部使用的受控產品識別碼，用於在產品家族與功能版本層級識別產品配置。

它回答以下問題：

|問題|說明|
|---|---|
|這是哪一個產品家族？|Hub、Gate、Sync、Switch、Panel、Act、Sense、Vision、App、Cloud、Edge|
|它屬於哪一個世代？|G1、G2、G3|
|它代表哪一種主要版本或能力？|Pro、IR/RF、Scene、Relay、Energy、Climate、Camera、Edge|
|工程與產品團隊是否能快速識別？|應簡短、可讀且穩定|
|它是否映射至一個或多個 SKU？|是，通常跨區域與包裝映射|
|它是否取代工程型號？|否|
|它是否取代認證型號？|否|

---

## 18.3 Internal Model vs SKU vs Engineering Model

## 18.3 內部型號、SKU 與工程型號的區別

### EN

|Identifier Type|Example|Primary Use|
|---|---|---|
|Customer-Facing Name|Artibird Act-E|Public product communication|
|Internal Model Number|ACT-G1-E|Product and engineering coordination|
|SKU Code|ATB-ACT-G1-US-WF-AC-E-S|Commercial, inventory, package, region, and channel control|
|Engineering Model Number|ACT-G1-HW1.0-FW1.2-PCB1.1|Hardware, firmware, PCB, and validation tracking|
|Certification Model Number|Filed certification model|Certification and regulatory label control|
|Manufacturing Model Number|Factory-controlled model|BOM, ERP, factory, supplier, and production control|

Internal model numbers sit between customer-facing names and full SKU codes. They are operational identifiers, not public product names and not full commercial records.

### ZH-TW

|識別類型|示例|主要用途|
|---|---|---|
|面向客戶名稱|Artibird Act-E|公開產品溝通|
|內部型號|ACT-G1-E|產品與工程協同|
|SKU 代碼|ATB-ACT-G1-US-WF-AC-E-S|商業、庫存、包裝、區域與渠道管控|
|工程型號|ACT-G1-HW1.0-FW1.2-PCB1.1|硬體、韌體、PCB 與驗證追蹤|
|認證型號|已提交認證型號|認證與法規標籤管控|
|生產型號|工廠管控型號|BOM、ERP、工廠、供應商與生產管控|

內部型號位於面向客戶名稱與完整 SKU 代碼之間。它是運營識別碼，不是公開產品名稱，也不是完整商業記錄。

---

## 18.4 Recommended Internal Model Structure

## 18.4 建議內部型號結構

### EN

The recommended internal model number structure is:

```text
[PRODUCT]-[GEN]-[VARIANT]
```

Where:

|Field|Meaning|Example|
|---|---|---|
|PRODUCT|Product line code|ACT|
|GEN|Generation code|G1|
|VARIANT|Major functional or commercial variant|E|

Example:

```text
ACT-G1-E
```

This example means:

|Field|Value|Meaning|
|---|---|---|
|PRODUCT|ACT|Artibird Act|
|GEN|G1|First generation|
|VARIANT|E|Energy-aware version|

### ZH-TW

建議內部型號結構為：

```text
[產品]-[世代]-[版本]
```

其中：

|欄位|含義|示例|
|---|---|---|
|PRODUCT|產品線代碼|ACT|
|GEN|世代代碼|G1|
|VARIANT|主要功能或商業版本|E|

示例：

```text
ACT-G1-E
```

此示例表示：

|欄位|數值|含義|
|---|---|---|
|PRODUCT|ACT|Artibird Act|
|GEN|G1|第一代|
|VARIANT|E|能源感知版本|

---

## 18.5 Simplified Internal Model Structure

## 18.5 簡化內部型號結構

### EN

For base products without a major variant, the internal model may use a simplified structure:

```text
[PRODUCT]-[GEN]
```

Examples:

|Internal Model|Meaning|
|---|---|
|HUB-G1|Artibird Hub, first generation|
|APP-G1|Artibird App, first generation|
|CLD-G1|OceanAI Cloud service layer, first generation|
|EDGE-G1|OceanAI Edge, first generation|

A simplified internal model should be used only when no functional variant is required for product identification.

### ZH-TW

對於沒有主要版本差異的基礎產品，內部型號可以採用簡化結構：

```text
[產品]-[世代]
```

示例：

|內部型號|含義|
|---|---|
|HUB-G1|Artibird Hub，第一代|
|APP-G1|Artibird App，第一代|
|CLD-G1|OceanAI Cloud 服務層，第一代|
|EDGE-G1|OceanAI Edge，第一代|

只有當產品識別不需要功能版本時，才應使用簡化內部型號。

---

## 18.6 Official Internal Model Examples

## 18.6 官方內部型號示例

### EN

|Customer-Facing Name|Internal Model Number|Meaning|
|---|---|---|
|Artibird Hub G1|HUB-G1|Hub, first generation|
|Artibird Gate Standard|GATE-G1-STD|Gate, first generation, standard version|
|Artibird Gate Pro|GATE-G1-PRO|Gate, first generation, professional version|
|Artibird Sync IR/RF|SYNC-G1-IRRF|Sync, first generation, IR + RF capability|
|Artibird Switch Scene|SW-G1-SCN|Switch, first generation, scene switch variant|
|Artibird Switch Relay|SW-G1-RLY|Switch, first generation, relay variant|
|Artibird Switch Dimmer|SW-G1-DIM|Switch, first generation, dimmer variant|
|Artibird Panel Room|PNL-G1-ROOM|Panel, first generation, room interface variant|
|Artibird Act Standard|ACT-G1-STD|Act, first generation, standard version|
|Artibird Act-E|ACT-G1-E|Act, first generation, energy-aware version|
|Artibird Sense Climate|SNS-G1-CLM|Sense, first generation, climate sensing variant|
|Artibird Vision Edge|VIS-G1-EDGE|Vision, first generation, edge-related visual capability|
|Artibird App|APP-G1|App, first generation|
|OceanAI Cloud|CLD-G1|Cloud service layer, first generation|
|OceanAI Edge|EDGE-G1|Edge intelligence layer, first generation|

### ZH-TW

|面向客戶名稱|內部型號|含義|
|---|---|---|
|Artibird Hub G1|HUB-G1|Hub，第一代|
|Artibird Gate Standard|GATE-G1-STD|Gate，第一代，標準版|
|Artibird Gate Pro|GATE-G1-PRO|Gate，第一代，專業版|
|Artibird Sync IR/RF|SYNC-G1-IRRF|Sync，第一代，IR + RF 能力|
|Artibird Switch Scene|SW-G1-SCN|Switch，第一代，場景開關版本|
|Artibird Switch Relay|SW-G1-RLY|Switch，第一代，繼電器版本|
|Artibird Switch Dimmer|SW-G1-DIM|Switch，第一代，調光版本|
|Artibird Panel Room|PNL-G1-ROOM|Panel，第一代，房間介面版本|
|Artibird Act Standard|ACT-G1-STD|Act，第一代，標準版|
|Artibird Act-E|ACT-G1-E|Act，第一代，能源感知版本|
|Artibird Sense Climate|SNS-G1-CLM|Sense，第一代，氣候感知版本|
|Artibird Vision Edge|VIS-G1-EDGE|Vision，第一代，邊緣相關視覺能力|
|Artibird App|APP-G1|App，第一代|
|OceanAI Cloud|CLD-G1|Cloud 服務層，第一代|
|OceanAI Edge|EDGE-G1|Edge 智慧層，第一代|

---

## 18.7 Internal Variant Abbreviation Rules

## 18.7 內部版本縮寫規則

### EN

Internal model numbers may use shorter variant abbreviations than customer-facing names.

|Customer-Facing Term|Internal Abbreviation|Notes|
|---|--:|---|
|Standard|STD|Base configuration|
|Pro|PRO|Professional or enhanced configuration|
|Mini|MINI|Smaller or simplified configuration|
|Energy / Energy-Aware|E|Energy monitoring or energy-aware capability|
|Outdoor|OUT|Outdoor-oriented configuration|
|Relay|RLY|Relay-based execution|
|Scene|SCN|Scene or event-node behavior|
|Dimmer|DIM|Dimming capability|
|Camera / Vision|CAM|Camera or vision capability|
|Climate|CLM|Climate or environmental sensing|
|Room|ROOM|Room-level interface|
|Edge|EDGE|Edge or local-intelligence-related capability|
|Education|EDU|Education-oriented configuration|
|Custom|CUSTOM|Project-specific configuration|

Internal abbreviations must remain controlled and should not be invented casually.

### ZH-TW

內部型號可使用比面向客戶名稱更短的版本縮寫。

|面向客戶用語|內部縮寫|備註|
|---|--:|---|
|Standard|STD|基礎配置|
|Pro|PRO|專業或增強配置|
|Mini|MINI|更小或精簡配置|
|Energy / Energy-Aware|E|電能監測或能源感知能力|
|Outdoor|OUT|戶外導向配置|
|Relay|RLY|繼電器執行|
|Scene|SCN|場景或事件節點行為|
|Dimmer|DIM|調光能力|
|Camera / Vision|CAM|攝影機或視覺能力|
|Climate|CLM|氣候或環境感知|
|Room|ROOM|房間級介面|
|Edge|EDGE|邊緣或本地智慧相關能力|
|Education|EDU|教育導向配置|
|Custom|CUSTOM|專案特定配置|

內部縮寫必須受控，不應隨意創造。

---

## 18.8 Internal Model Usage by Team

## 18.8 各團隊內部型號使用方式

### EN

|Team|Usage|
|---|---|
|Product|Product planning, roadmap, variant definition|
|Engineering|Architecture, hardware, firmware, PCB, validation references|
|Firmware|Device firmware target, feature set, compatibility|
|App|Device type mapping, onboarding flow, UI device class|
|Backend / Cloud|Device class, account binding, service mapping|
|QA / Testing|Test plan, validation report, issue tracking|
|Certification|Pre-certification mapping and model reference|
|Manufacturing|Production handoff and BOM mapping reference|
|Operations|SKU master table mapping and inventory relation|
|Sales Engineering|Product configuration clarification|
|Documentation|Technical documentation and installation guide mapping|

### ZH-TW

|團隊|用途|
|---|---|
|產品|產品規劃、路線圖、版本定義|
|工程|架構、硬體、韌體、PCB、驗證引用|
|韌體|設備韌體目標、功能集、相容性|
|App|設備類型映射、入網流程、UI 設備類別|
|後端 / 雲端|設備類別、帳號綁定、服務映射|
|QA / 測試|測試計劃、驗證報告、問題追蹤|
|認證|認證前映射與型號引用|
|生產|生產交接與 BOM 映射引用|
|運營|SKU 主表映射與庫存關係|
|銷售工程|產品配置釐清|
|文件|技術文件與安裝指南映射|

---

## 18.9 Internal Model to SKU Mapping

## 18.9 內部型號至 SKU 映射

### EN

One internal model may map to multiple SKUs because SKUs may differ by region, connectivity, power, package, channel, or commercial configuration.

Example:

|Internal Model|SKU Example|Difference|
|---|---|---|
|ACT-G1-E|ATB-ACT-G1-US-WF-AC-E-S|U.S. single unit|
|ACT-G1-E|ATB-ACT-G1-US-WF-AC-E-2P|U.S. two-pack|
|ACT-G1-E|ATB-ACT-G1-EU-WF-AC-E-S|EU single unit|
|ACT-G1-E|ATB-ACT-G1-US-WF-AC-E-FBA|U.S. Amazon FBA package|
|ACT-G1-E|ATB-ACT-G1-US-WF-AC-E-PRJ|U.S. project package|

The internal model stays the same when the product family, generation, and major variant remain the same. The SKU changes when commercial fields change.

### ZH-TW

一個內部型號可以映射至多個 SKU，因為 SKU 可能因區域、連接、供電、包裝、渠道或商業配置不同而不同。

示例：

|內部型號|SKU 示例|差異|
|---|---|---|
|ACT-G1-E|ATB-ACT-G1-US-WF-AC-E-S|美國單品|
|ACT-G1-E|ATB-ACT-G1-US-WF-AC-E-2P|美國兩入裝|
|ACT-G1-E|ATB-ACT-G1-EU-WF-AC-E-S|歐盟單品|
|ACT-G1-E|ATB-ACT-G1-US-WF-AC-E-FBA|美國 Amazon FBA 包裝|
|ACT-G1-E|ATB-ACT-G1-US-WF-AC-E-PRJ|美國專案包|

當產品家族、世代與主要版本保持不變時，內部型號保持不變。當商業欄位變更時，SKU 變更。

---

## 18.10 Internal Model to Engineering Model Mapping

## 18.10 內部型號至工程型號映射

### EN

One internal model may also map to multiple engineering model numbers because hardware, firmware, PCB, and validation versions may change over time.

Example:

|Internal Model|Engineering Model|Meaning|
|---|---|---|
|ACT-G1-E|ACT-G1-HW1.0-FW1.0-PCB1.0|Initial engineering version|
|ACT-G1-E|ACT-G1-HW1.0-FW1.2-PCB1.1|Firmware and PCB update|
|ACT-G1-E|ACT-G1-HW1.1-FW1.3-PCB1.2|Minor hardware update|
|ACT-G1-E|ACT-G1-HW2.0-FW2.0-PCB2.0|May require generation or SKU review|

The internal model should remain stable through minor engineering revisions, but major changes may require generation, SKU, certification, and customer-facing name review.

### ZH-TW

一個內部型號也可以映射至多個工程型號，因為硬體、韌體、PCB 與驗證版本可能隨時間變化。

示例：

|內部型號|工程型號|含義|
|---|---|---|
|ACT-G1-E|ACT-G1-HW1.0-FW1.0-PCB1.0|初始工程版本|
|ACT-G1-E|ACT-G1-HW1.0-FW1.2-PCB1.1|韌體與 PCB 更新|
|ACT-G1-E|ACT-G1-HW1.1-FW1.3-PCB1.2|輕微硬體更新|
|ACT-G1-E|ACT-G1-HW2.0-FW2.0-PCB2.0|可能需要審查世代、SKU、認證與面向客戶名稱|

內部型號在輕微工程修訂中應保持穩定，但重大變更可能需要審查世代、SKU、認證與面向客戶名稱。

---

## 18.11 When to Create a New Internal Model

## 18.11 何時建立新內部型號

### EN

A new internal model should be created when the product family, generation, or major functional variant changes.

|Change Scenario|New Internal Model Required?|Example|
|---|---|---|
|Product line changes|Yes|SW-G1-SCN to ACT-G1-E|
|Generation changes|Yes|ACT-G1-E to ACT-G2-E|
|Major functional variant changes|Yes|SW-G1-SCN to SW-G1-RLY|
|Energy monitoring added|Yes|ACT-G1-STD to ACT-G1-E|
|Relay function added to scene-only switch|Yes|SW-G1-SCN to SW-G1-RLY|
|Dimming function added|Yes|SW-G1-RLY to SW-G1-DIM|
|Region changes only|No|SKU change only|
|Package changes only|No|SKU change only|
|Minor firmware update|No|Engineering / firmware record change only|
|Minor PCB revision|No|Engineering model change only|
|Price change|No|Pricing record change only|

### ZH-TW

當產品家族、世代或主要功能版本變更時，應建立新內部型號。

|變更場景|是否需要新內部型號？|示例|
|---|---|---|
|產品線變更|是|SW-G1-SCN 變更為 ACT-G1-E|
|世代變更|是|ACT-G1-E 變更為 ACT-G2-E|
|主要功能版本變更|是|SW-G1-SCN 變更為 SW-G1-RLY|
|增加電能監測|是|ACT-G1-STD 變更為 ACT-G1-E|
|場景-only 開關增加繼電器功能|是|SW-G1-SCN 變更為 SW-G1-RLY|
|增加調光功能|是|SW-G1-RLY 變更為 SW-G1-DIM|
|僅區域變更|否|僅變更 SKU|
|僅包裝變更|否|僅變更 SKU|
|輕微韌體更新|否|僅變更工程 / 韌體記錄|
|輕微 PCB 修訂|否|僅變更工程型號|
|價格變更|否|僅變更價格記錄|

---

## 18.12 When Not to Create a New Internal Model

## 18.12 何時不建立新內部型號

### EN

A new internal model should not be created for purely commercial, packaging, logistics, or minor engineering changes.

|Change Scenario|New Internal Model Required?|Required Action|
|---|---|---|
|Same product released in another region|No|Create new SKU with region code|
|Same product sold as two-pack|No|Create new SKU with package code|
|Same product used in Amazon FBA|No|Create FBA SKU or package record|
|Firmware bug fix|No|Update firmware version|
|Packaging artwork correction|No|Update package version|
|Manual revision|No|Update documentation version|
|New warehouse location|No|Update logistics record|
|Price promotion|No|Update pricing record|
|Channel availability change|No|Update channel record|
|Certification status updated|No|Update certification tracker|

### ZH-TW

不應因純商業、包裝、物流或輕微工程變更而建立新內部型號。

|變更場景|是否需要新內部型號？|必要動作|
|---|---|---|
|同一產品發布至另一區域|否|建立含區域代碼的新 SKU|
|同一產品作為兩入裝銷售|否|建立含包裝代碼的新 SKU|
|同一產品用於 Amazon FBA|否|建立 FBA SKU 或包裝記錄|
|韌體 bug 修復|否|更新韌體版本|
|包裝 artwork 修正|否|更新包裝版本|
|說明書修訂|否|更新文件版本|
|新倉庫位置|否|更新物流記錄|
|價格促銷|否|更新價格記錄|
|渠道可用性變更|否|更新渠道記錄|
|認證狀態更新|否|更新認證追蹤表|

---

## 18.13 Internal Model Governance Rules

## 18.13 內部型號治理規則

### EN

|Rule|Requirement|
|---|---|
|Internal model numbers must use approved product line codes|No unofficial product abbreviations|
|Internal model numbers must include generation|G1, G2, or approved generation code must be visible|
|Variant must be controlled|Do not invent variant abbreviations casually|
|Internal model must not include region unless region affects product identity|Region belongs mainly in SKU|
|Internal model must not include package code|Package belongs in SKU|
|Internal model must not include price or channel|Price and channel are controlled separately|
|Internal model must not replace engineering model|Engineering details require separate model number|
|Internal model must not replace certification model|Certification model must follow filed records|
|One internal model may map to multiple SKUs|This is expected and allowed|
|Internal model changes require product and engineering review|Do not rename casually|

### ZH-TW

|規則|要求|
|---|---|
|內部型號必須使用已核准產品線代碼|不得使用非官方產品縮寫|
|內部型號必須包含世代|必須顯示 G1、G2 或已核准世代代碼|
|版本必須受控|不得隨意創造版本縮寫|
|除非區域影響產品身份，否則內部型號不應包含區域|區域主要屬於 SKU|
|內部型號不應包含包裝代碼|包裝屬於 SKU|
|內部型號不應包含價格或渠道|價格與渠道分別管控|
|內部型號不得取代工程型號|工程細節需要獨立型號|
|內部型號不得取代認證型號|認證型號必須遵循提交記錄|
|一個內部型號可以映射至多個 SKU|這是預期且允許的|
|內部型號變更需要產品與工程審查|不得隨意改名|

---

## 18.14 Internal Model Approval Rules

## 18.14 內部型號核准規則

### EN

An internal model number must be approved before being used in engineering records, firmware targets, test plans, certification preparation, manufacturing handoff, or SKU master records.

|Review Area|Required Approval|
|---|---|
|Product role|Product team|
|Product line code|Product / operations|
|Generation code|Product / engineering|
|Variant abbreviation|Product / engineering|
|Engineering consistency|Engineering|
|Firmware impact|Firmware team where applicable|
|App / cloud impact|App / backend where applicable|
|Certification preparation impact|Compliance where applicable|
|Manufacturing mapping|Operations / manufacturing where applicable|
|SKU master table mapping|Operations|

### ZH-TW

內部型號在用於工程記錄、韌體目標、測試計劃、認證準備、生產交接或 SKU 主表之前，必須完成核准。

|審查領域|必要核准|
|---|---|
|產品角色|產品團隊|
|產品線代碼|產品 / 運營|
|世代代碼|產品 / 工程|
|版本縮寫|產品 / 工程|
|工程一致性|工程|
|韌體影響|適用時由韌體團隊|
|App / 雲端影響|適用時由 App / 後端團隊|
|認證準備影響|適用時由合規審查|
|生產映射|適用時由運營 / 生產審查|
|SKU 主表映射|運營|

---

## 18.15 Required Master Table Fields

## 18.15 必備主表欄位

### EN

Every internal model number must be recorded in the product master record or SKU master table.

|Field|Requirement|
|---|---|
|Internal Model Number|Required|
|Customer-Facing Model Name|Required where applicable|
|Product Line Code|Required|
|Generation Code|Required|
|Variant Code|Required where applicable|
|Variant Description|Required where applicable|
|Mapped SKU Codes|Required where applicable|
|Mapped Engineering Models|Required where applicable|
|Mapped Certification Models|Required where applicable|
|Mapped Manufacturing Models|Required where applicable|
|Product Owner|Required|
|Engineering Owner|Required|
|Approval Status|Required|
|Release Status|Required|
|Revision Date|Required|
|Notes|Required where applicable|

### ZH-TW

每一個內部型號都必須記錄於產品主記錄或 SKU 主表中。

|欄位|要求|
|---|---|
|內部型號|必填|
|面向客戶型號名稱|適用時必填|
|產品線代碼|必填|
|世代代碼|必填|
|版本代碼|適用時必填|
|版本描述|適用時必填|
|映射 SKU 代碼|適用時必填|
|映射工程型號|適用時必填|
|映射認證型號|適用時必填|
|映射生產型號|適用時必填|
|產品負責人|必填|
|工程負責人|必填|
|核准狀態|必填|
|發布狀態|必填|
|修訂日期|必填|
|備註|適用時必填|

---

## 18.16 Chapter Conclusion

## 18.16 本章結論

### EN

Internal model numbers provide the operational identity of Artibird products inside the organization.

They are shorter than SKU codes, more structured than customer-facing names, and more stable than engineering version numbers. They support coordination across product, engineering, firmware, testing, certification preparation, manufacturing, operations, documentation, and sales engineering.

An internal model number should identify the product family, generation, and major variant. It should not include every commercial detail. Those details belong in SKU records, engineering model records, certification records, manufacturing records, and package records.

### ZH-TW

內部型號為 Artibird 產品在組織內部提供運營身份。

它比 SKU 代碼更短，比面向客戶名稱更結構化，並且比工程版本號更穩定。它支援產品、工程、韌體、測試、認證準備、生產、運營、文件與銷售工程之間的協同。

內部型號應識別產品家族、世代與主要版本。它不應包含全部商業細節。這些細節應由 SKU 記錄、工程型號記錄、認證記錄、生產記錄與包裝記錄承擔。

---

本章依據《Artibird SKU & Model Naming Specification v1.0》的既定撰寫計劃展開；原始規劃已將 Chapter 18 設為 Internal Model Numbers，並要求定義 HUB-G1、GATE-G1-PRO、SYNC-G1-IRRF、SW-G1-SCN、ACT-G1-E、SNS-G1-CLM 等內部型號規則。

**話題延伸｜互動建議**  
下一章可以繼續寫 **Chapter 19 — Engineering Model Numbers｜第十九章｜工程型號**，正式定義 HW、FW、PCB、EVT、DVT、PVT 在硬體、韌體、測試與驗證追蹤中的型號格式。