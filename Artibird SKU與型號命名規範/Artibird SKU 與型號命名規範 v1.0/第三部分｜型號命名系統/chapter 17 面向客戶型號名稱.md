# Artibird SKU & Model Naming Specification v1.0

# Artibird SKU 與型號命名規範 v1.0

## Part III — Model Naming System

## 第三部分｜型號命名系統

## Chapter 17 — Customer-Facing Model Names

## 第十七章｜面向客戶型號名稱

---

## 17.1 Purpose

## 17.1 目的

### EN

This chapter defines the rules for Artibird customer-facing model names used in product catalogs, websites, packaging, Amazon listings, sales documents, quotations, channel communication, and customer support materials.

Customer-facing model names are designed to be readable, stable, and commercially usable. They help customers, partners, installers, sales teams, and support teams understand what the product is without exposing the full complexity of SKU codes, engineering model numbers, certification model numbers, or manufacturing records.

A customer-facing model name must be connected to the SKU master table, but it must not replace the SKU code, internal model number, engineering model number, certification model number, or manufacturing model number.

### ZH-TW

本章定義 Artibird 面向客戶型號名稱的使用規則，適用於產品型錄、網站、包裝、Amazon 上架、銷售文件、報價單、渠道溝通與客戶支持資料。

面向客戶型號名稱應具備可讀性、穩定性與商業可用性。它幫助客戶、合作夥伴、安裝人員、銷售團隊與支持團隊理解產品是什麼，而不暴露 SKU 代碼、工程型號、認證型號或生產記錄的完整複雜度。

面向客戶型號名稱必須連接至 SKU 主表，但不得取代 SKU 代碼、內部型號、工程型號、認證型號或生產型號。

---

## 17.2 Customer-Facing Model Name Definition

## 17.2 面向客戶型號名稱定義

### EN

A customer-facing model name is the readable product name used in public or commercial communication.

It answers the following questions:

|Question|Description|
|---|---|
|What does the customer see?|The product name shown in catalog, website, package, and listing|
|What product family does it belong to?|Hub, Gate, Sync, Switch, Panel, Act, Sense, Vision, App|
|What major capability or variant does it represent?|Pro, Scene, Relay, Energy, Climate, Vision, Edge|
|Is it easy to communicate?|It should be short, readable, and stable|
|Is it mapped to a controlled SKU?|It must connect to SKU master table records|
|Is it safe for public use?|It must not imply unsupported certification, compatibility, AI autonomy, or performance claims|

### ZH-TW

面向客戶型號名稱是用於公開或商業溝通中的可讀產品名稱。

它回答以下問題：

|問題|說明|
|---|---|
|客戶看到的是什麼？|出現在型錄、網站、包裝與上架頁面的產品名稱|
|它屬於哪一個產品家族？|Hub、Gate、Sync、Switch、Panel、Act、Sense、Vision、App|
|它代表哪一種主要能力或版本？|Pro、Scene、Relay、Energy、Climate、Vision、Edge|
|是否容易溝通？|應簡短、可讀且穩定|
|是否映射至受控 SKU？|必須連接至 SKU 主表記錄|
|是否適合公開使用？|不得暗示未支援認證、相容性、AI 自主性或性能宣稱|

---

## 17.3 Customer-Facing Name vs SKU vs Model Number

## 17.3 面向客戶名稱、SKU 與型號的區別

### EN

|Item|Example|Purpose|
|---|---|---|
|Customer-Facing Model Name|Artibird Act-E|Public, readable product name|
|Internal Model Number|ACT-G1-E|Product and engineering control|
|SKU Code|ATB-ACT-G1-US-WF-AC-E-S|Inventory, sales, package, channel, and commercial control|
|Engineering Model Number|ACT-G1-HW1.0-FW1.2-PCB1.1|Hardware, firmware, PCB, and validation tracking|
|Certification Model Number|Exact filed model name|Certification filing and label control|
|Manufacturing Model Number|Factory-controlled model|BOM, ERP, supplier, and production control|

Customer-facing model names are for communication.  
SKU codes are for commercial control.  
Engineering, certification, and manufacturing model numbers are for traceability and compliance.

### ZH-TW

|項目|示例|用途|
|---|---|---|
|面向客戶型號名稱|Artibird Act-E|公開可讀產品名稱|
|內部型號|ACT-G1-E|產品與工程管控|
|SKU 代碼|ATB-ACT-G1-US-WF-AC-E-S|庫存、銷售、包裝、渠道與商業管控|
|工程型號|ACT-G1-HW1.0-FW1.2-PCB1.1|硬體、韌體、PCB 與驗證追蹤|
|認證型號|依實際提交型號|認證提交與標籤管控|
|生產型號|工廠管控型號|BOM、ERP、供應商與生產管控|

面向客戶型號名稱用於溝通。  
SKU 代碼用於商業管控。  
工程型號、認證型號與生產型號用於追蹤與合規。

---

## 17.4 Customer-Facing Name Structure

## 17.4 面向客戶名稱結構

### EN

The recommended structure for Artibird customer-facing model names is:

```text
Artibird [Product Line] [Readable Variant / Capability]
```

Optional generation or region markers may be added only when they are necessary for customer understanding or commercial distinction.

Recommended patterns:

|Pattern|Example|Use Case|
|---|---|---|
|Artibird + Product Line|Artibird Hub|Base product name|
|Artibird + Product Line + Generation|Artibird Hub G1|Generation needs to be visible|
|Artibird + Product Line + Variant|Artibird Gate Pro|Commercial or functional tier|
|Artibird + Product Line + Capability|Artibird Sync IR/RF|Capability-led product name|
|Artibird + Product Line + Function|Artibird Act-E|Energy-aware execution product|
|Artibird + Product Line + Use Case|Artibird Panel Room|Room-level interface|
|Artibird + Product Line + Sensor Type|Artibird Sense Climate|Climate sensing product|
|Artibird + Product Line + Intelligence Role|Artibird Vision Edge|Vision-related edge product|

### ZH-TW

Artibird 面向客戶型號名稱建議採用以下結構：

```text
Artibird [產品線] [可讀版本 / 能力]
```

只有當世代或區域對客戶理解或商業區分有必要時，才可加入世代或區域標記。

建議模式：

|模式|示例|使用場景|
|---|---|---|
|Artibird + 產品線|Artibird Hub|基礎產品名稱|
|Artibird + 產品線 + 世代|Artibird Hub G1|需要顯示世代|
|Artibird + 產品線 + 版本|Artibird Gate Pro|商業或功能層級|
|Artibird + 產品線 + 能力|Artibird Sync IR/RF|以能力為核心的產品名稱|
|Artibird + 產品線 + 功能|Artibird Act-E|能源感知執行產品|
|Artibird + 產品線 + 用途|Artibird Panel Room|房間級介面|
|Artibird + 產品線 + 感測類型|Artibird Sense Climate|氣候感測產品|
|Artibird + 產品線 + 智慧角色|Artibird Vision Edge|視覺相關邊緣產品|

---

## 17.5 Official Customer-Facing Name Examples

## 17.5 官方面向客戶名稱示例

### EN

|Product Line|Customer-Facing Name Pattern|Example|
|---|---|---|
|Hub|Artibird Hub + Generation|Artibird Hub G1|
|Gate|Artibird Gate + Variant|Artibird Gate Pro|
|Sync|Artibird Sync + Capability|Artibird Sync IR/RF|
|Switch|Artibird Switch + Type|Artibird Switch Scene|
|Switch|Artibird Switch + Type|Artibird Switch Relay|
|Panel|Artibird Panel + Use|Artibird Panel Room|
|Act|Artibird Act + Function|Artibird Act-E|
|Sense|Artibird Sense + Sensor Type|Artibird Sense Climate|
|Vision|Artibird Vision + Capability|Artibird Vision Edge|
|App|Artibird App|Artibird App|

### ZH-TW

|產品線|面向客戶名稱模式|示例|
|---|---|---|
|Hub|Artibird Hub + 世代|Artibird Hub G1|
|Gate|Artibird Gate + 版本|Artibird Gate Pro|
|Sync|Artibird Sync + 能力|Artibird Sync IR/RF|
|Switch|Artibird Switch + 類型|Artibird Switch Scene|
|Switch|Artibird Switch + 類型|Artibird Switch Relay|
|Panel|Artibird Panel + 用途|Artibird Panel Room|
|Act|Artibird Act + 功能|Artibird Act-E|
|Sense|Artibird Sense + 感測類型|Artibird Sense Climate|
|Vision|Artibird Vision + 能力|Artibird Vision Edge|
|App|Artibird App|Artibird App|

---

## 17.6 Product Line Name Rules

## 17.6 產品線名稱規則

### EN

The product line name should remain stable and consistent across public-facing communication.

|Product Line|Customer-Facing Base Name|Rule|
|---|---|---|
|HUB|Artibird Hub|Use for local runtime center|
|GATE|Artibird Gate|Use for gateway and device access products|
|SYNC|Artibird Sync|Use for IR / RF synchronization products|
|SW|Artibird Switch|Use for switch-class products|
|PNL|Artibird Panel|Use for room-level interaction interfaces|
|ACT|Artibird Act|Use for electrical execution products|
|SNS|Artibird Sense|Use for environmental sensing products|
|VIS|Artibird Vision|Use for visual perception products|
|APP|Artibird App|Use for user control and configuration interface|

Product line names should not be renamed casually for short-term marketing campaigns.

### ZH-TW

產品線名稱在公開溝通中應保持穩定與一致。

|產品線|面向客戶基礎名稱|規則|
|---|---|---|
|HUB|Artibird Hub|用於本地 Runtime 中樞|
|GATE|Artibird Gate|用於網關與設備接入產品|
|SYNC|Artibird Sync|用於 IR / RF 同步產品|
|SW|Artibird Switch|用於開關類產品|
|PNL|Artibird Panel|用於房間級互動介面|
|ACT|Artibird Act|用於電力執行產品|
|SNS|Artibird Sense|用於環境感知產品|
|VIS|Artibird Vision|用於視覺感知產品|
|APP|Artibird App|用於用戶控制與配置介面|

產品線名稱不應因短期行銷活動而隨意改名。

---

## 17.7 Variant and Capability Naming Rules

## 17.7 版本與能力命名規則

### EN

Readable variants or capabilities may be added after the product line name when they help distinguish the product.

|Variant / Capability|Recommended Use|Example|
|---|---|---|
|G1|Generation marker|Artibird Hub G1|
|Pro|Professional or enhanced version|Artibird Gate Pro|
|IR/RF|Infrared and RF capability|Artibird Sync IR/RF|
|Scene|Scene or event-node behavior|Artibird Switch Scene|
|Relay|Relay-based control|Artibird Switch Relay|
|Room|Room-level interface|Artibird Panel Room|
|E|Energy-aware function|Artibird Act-E|
|Climate|Temperature, humidity, or environmental sensing|Artibird Sense Climate|
|Edge|Edge or local intelligence-related role|Artibird Vision Edge|

Variant naming must be supported by the SKU master table.  
A readable variant name must not imply an unsupported capability.

### ZH-TW

當有助於區分產品時，可在產品線名稱後加入可讀版本或能力名稱。

|版本 / 能力|建議用途|示例|
|---|---|---|
|G1|世代標記|Artibird Hub G1|
|Pro|專業或增強版本|Artibird Gate Pro|
|IR/RF|紅外與射頻能力|Artibird Sync IR/RF|
|Scene|場景或事件節點行為|Artibird Switch Scene|
|Relay|繼電器控制|Artibird Switch Relay|
|Room|房間級介面|Artibird Panel Room|
|E|能源感知功能|Artibird Act-E|
|Climate|溫度、濕度或環境感知|Artibird Sense Climate|
|Edge|邊緣或本地智慧相關角色|Artibird Vision Edge|

版本命名必須由 SKU 主表支持。  
可讀版本名稱不得暗示未支援能力。

---

## 17.8 Generation in Customer-Facing Names

## 17.8 面向客戶名稱中的世代標記

### EN

Generation markers may appear in customer-facing names when they are necessary for product distinction.

|Use Case|Recommended|
|---|---|
|Product generation is commercially important|Use G1, G2, G3|
|Same product family has multiple active generations|Use generation marker|
|Generation is only internal engineering reference|Do not expose in customer-facing name|
|Product is first release and no confusion exists|Generation marker optional|
|Amazon listing requires version distinction|Use generation marker where approved|
|Certification label uses separate model number|Do not rely on customer-facing generation marker|

Examples:

|Recommended|Not Recommended|
|---|---|
|Artibird Hub G1|Artibird Hub EVT|
|Artibird Gate G2 Pro|Artibird Gate DVT|
|Artibird Act-E G2|Artibird Act FW1.2|

EVT, DVT, PVT, DEV, and BETA should not be used as normal customer-facing generation names.

### ZH-TW

當世代對產品區分具有必要性時，可在面向客戶名稱中加入世代標記。

|使用場景|建議|
|---|---|
|產品世代對商業區分重要|使用 G1、G2、G3|
|同一產品家族存在多個 Active 世代|使用世代標記|
|世代僅為內部工程參考|不暴露於面向客戶名稱|
|產品為首發且不存在混淆|世代標記可選|
|Amazon 上架需要版本區分|經核准後使用世代標記|
|認證標籤使用獨立型號|不依賴面向客戶世代標記|

示例：

|建議|不建議|
|---|---|
|Artibird Hub G1|Artibird Hub EVT|
|Artibird Gate G2 Pro|Artibird Gate DVT|
|Artibird Act-E G2|Artibird Act FW1.2|

EVT、DVT、PVT、DEV 與 BETA 不應作為正常面向客戶世代名稱使用。

---

## 17.9 Region in Customer-Facing Names

## 17.9 面向客戶名稱中的區域標記

### EN

Region markers should usually not appear in customer-facing model names unless they are necessary for market distinction, compliance, packaging, or customer selection.

|Use Case|Recommended|
|---|---|
|Same product has different region-specific electrical configuration|Region marker may be used in internal listing title or package record|
|Public product family name|Do not include region unless needed|
|Amazon marketplace title|Region may be handled through listing attributes|
|Packaging label|Region may appear in regulatory or rating information|
|SKU record|Region must appear in SKU code|
|Customer-facing model name|Region optional and controlled|

Examples:

|Acceptable Where Needed|Usually Avoid|
|---|---|
|Artibird Switch Relay — US Version|Artibird Switch Relay US FCC UL Smart Home Best Version|
|Artibird Act-E for U.S. Market|Artibird Act-E Certified USA Safe|
|Artibird Sync IR/RF US|Artibird Sync Global Certified|

Region wording must not imply certification unless certification is complete and approved.

### ZH-TW

區域標記通常不應出現在面向客戶型號名稱中，除非對市場區分、合規、包裝或客戶選擇具有必要性。

|使用場景|建議|
|---|---|
|同一產品存在區域特定電氣配置|可在內部上架標題或包裝記錄中使用區域標記|
|公開產品家族名稱|除非必要，否則不加入區域|
|Amazon marketplace 標題|區域可透過上架屬性處理|
|包裝標籤|區域可出現在法規或額定資訊中|
|SKU 記錄|區域必須出現在 SKU 代碼中|
|面向客戶型號名稱|區域可選且需受控|

示例：

|必要時可接受|通常避免|
|---|---|
|Artibird Switch Relay — US Version|Artibird Switch Relay US FCC UL Smart Home Best Version|
|Artibird Act-E for U.S. Market|Artibird Act-E Certified USA Safe|
|Artibird Sync IR/RF US|Artibird Sync Global Certified|

區域文字不得暗示認證，除非認證已完成並獲核准。

---

## 17.10 Customer-Facing Naming by Product Line

## 17.10 各產品線面向客戶命名

### EN

|Product Line|Recommended Name|Notes|
|---|---|---|
|Hub|Artibird Hub G1|Use generation if helpful for system planning|
|Gate|Artibird Gate Pro|Use Pro only if validated capability difference exists|
|Sync|Artibird Sync IR/RF|Use capability-based naming where IR/RF is defining|
|Switch|Artibird Switch Scene|Use Scene for event-node behavior|
|Switch|Artibird Switch Relay|Use Relay for relay-based control|
|Panel|Artibird Panel Room|Use Room when room-level interface is defining|
|Act|Artibird Act-E|Use E only for validated energy-aware function|
|Sense|Artibird Sense Climate|Use Climate for temperature, humidity, or environmental sensing|
|Vision|Artibird Vision Edge|Use Edge only when edge-related vision capability is defined|
|App|Artibird App|Keep simple and stable|

### ZH-TW

|產品線|建議名稱|備註|
|---|---|---|
|Hub|Artibird Hub G1|若有助於系統規劃，可使用世代|
|Gate|Artibird Gate Pro|僅在存在已驗證能力差異時使用 Pro|
|Sync|Artibird Sync IR/RF|當 IR/RF 是定義性能力時，使用能力命名|
|Switch|Artibird Switch Scene|Scene 用於事件節點行為|
|Switch|Artibird Switch Relay|Relay 用於繼電器控制|
|Panel|Artibird Panel Room|當房間級介面是定義性角色時使用 Room|
|Act|Artibird Act-E|E 僅用於已驗證能源感知功能|
|Sense|Artibird Sense Climate|Climate 用於溫度、濕度或環境感知|
|Vision|Artibird Vision Edge|Edge 僅在已定義邊緣相關視覺能力時使用|
|App|Artibird App|保持簡潔與穩定|

---

## 17.11 Naming Rules for Kits and Packages

## 17.11 套組與包裝名稱規則

### EN

Customer-facing package names may be more descriptive than individual product names, but they must still map to controlled SKU records.

|Package Name|Use Case|Required Mapping|
|---|---|---|
|Artibird Smart Room Starter Kit|Residential or room-level starter package|Must map to kit SKU and included product SKUs|
|Artibird Classroom Control Kit|Classroom deployment package|Must map to EDU or PRJ package record|
|Artibird Energy Starter Kit|Energy-aware deployment package|Must map to Act-E, Sense, Hub, and service records where applicable|
|Artibird Gate Pro Kit|Gateway professional package|Must map to PROKIT package record|
|Artibird Demo Kit|Demonstration package|Must map to DEMO package record|

Package names must not hide the actual included products.  
Kit contents must be traceable in the SKU master table.

### ZH-TW

面向客戶的包裝名稱可以比單一產品名稱更具描述性，但仍必須映射至受控 SKU 記錄。

|包裝名稱|使用場景|必須映射|
|---|---|---|
|Artibird Smart Room Starter Kit|住宅或房間級入門套組|必須映射至套組 SKU 與內含產品 SKU|
|Artibird Classroom Control Kit|教室部署套組|必須映射至 EDU 或 PRJ 包裝記錄|
|Artibird Energy Starter Kit|能源感知部署套組|適用時必須映射至 Act-E、Sense、Hub 與服務記錄|
|Artibird Gate Pro Kit|網關專業套組|必須映射至 PROKIT 包裝記錄|
|Artibird Demo Kit|展示套組|必須映射至 DEMO 包裝記錄|

包裝名稱不得掩蓋實際內含產品。  
套組內容必須可在 SKU 主表中追蹤。

---

## 17.12 Prohibited Customer-Facing Naming Practices

## 17.12 禁止的面向客戶命名做法

### EN

|Prohibited Practice|Reason|
|---|---|
|Using engineering model as public name|Engineering model is not customer-readable|
|Using full SKU as product name|SKU is for operational control, not public naming|
|Using certification language without approval|May create compliance risk|
|Using “universal” without validated scope|May imply unsupported compatibility|
|Using “AI autonomous” without defined behavior|May overclaim intelligence capability|
|Using “energy saving” without evidence|May create unsupported performance claim|
|Using “outdoor” without environmental validation|May misrepresent durability|
|Using “Pro” without documented difference|Creates vague commercial tier|
|Using “global” as commercial approval|Global reference is not global certification|
|Using beta or development names publicly|May create customer confusion|

### ZH-TW

|禁止做法|原因|
|---|---|
|將工程型號作為公開名稱|工程型號不適合客戶閱讀|
|將完整 SKU 作為產品名稱|SKU 用於運營管控，不是公開命名|
|未經核准使用認證語言|可能造成合規風險|
|未驗證範圍即使用 “universal”|可能暗示未支援相容性|
|未定義行為即使用 “AI autonomous”|可能過度宣稱智慧能力|
|無證據使用 “energy saving”|可能造成未支援性能宣稱|
|未經環境驗證使用 “outdoor”|可能誤導耐候能力|
|無已記錄差異使用 “Pro”|造成模糊商業層級|
|將 “global” 作為商業核准|全球參考不等於全球認證|
|公開使用 beta 或開發名稱|可能造成客戶混淆|

---

## 17.13 Customer-Facing Name Approval Rules

## 17.13 面向客戶名稱核准規則

### EN

A customer-facing model name must be approved before public or commercial use.

|Review Area|Required Approval|
|---|---|
|Product role|Product team|
|Name readability|Product / marketing|
|SKU mapping|Operations|
|Engineering consistency|Engineering|
|Certification risk|Compliance where applicable|
|Packaging use|Packaging / design|
|Amazon listing use|E-commerce / operations|
|Sales use|Sales / commercial|
|Legal risk|Legal / compliance where needed|
|Claim boundary|Product / compliance|

### ZH-TW

面向客戶型號名稱在公開或商業使用前必須完成核准。

|審查領域|必要核准|
|---|---|
|產品角色|產品團隊|
|名稱可讀性|產品 / 行銷|
|SKU 映射|運營|
|工程一致性|工程|
|認證風險|適用時由合規審查|
|包裝使用|包裝 / 設計|
|Amazon 上架使用|電商 / 運營|
|銷售使用|銷售 / 商務|
|法律風險|必要時由法務 / 合規|
|宣稱邊界|產品 / 合規|

---

## 17.14 Customer-Facing Name Mapping Table

## 17.14 面向客戶名稱映射表

### EN

|Customer-Facing Name|Internal Model|Example SKU|Notes|
|---|---|---|---|
|Artibird Hub G1|HUB-G1|ATB-HUB-G1-US-ETH-DC-STD-S|Local runtime center|
|Artibird Gate Pro|GATE-G1-PRO|ATB-GATE-G1-US-HYB-USB-PRO-S|Device access gateway|
|Artibird Sync IR/RF|SYNC-G1-IRRF|ATB-SYNC-G1-GL-IRRF-USB-STD-S|IR / RF synchronization|
|Artibird Switch Scene|SW-G1-SCN|ATB-SW-G1-US-BLE-BAT-SCN-S|Scene or event switch|
|Artibird Switch Relay|SW-G1-RLY|ATB-SW-G1-US-WF-ZN-RLY-S|Relay switch|
|Artibird Panel Room|PNL-G1-ROOM|ATB-PNL-G1-US-WF-DC-STD-S|Room-level interface|
|Artibird Act-E|ACT-G1-E|ATB-ACT-G1-US-WF-AC-E-S|Energy-aware execution node|
|Artibird Sense Climate|SNS-G1-CLM|ATB-SNS-G1-GL-BLE-BAT-STD-S|Climate sensing|
|Artibird Vision Edge|VIS-G1-EDGE|ATB-VIS-G1-US-WF-DC-CAM-S|Vision / edge-related product|
|Artibird App|APP-G1|ATB-APP-G1-GL-CLD-NA-STD-NA|User control interface|

### ZH-TW

|面向客戶名稱|內部型號|示例 SKU|備註|
|---|---|---|---|
|Artibird Hub G1|HUB-G1|ATB-HUB-G1-US-ETH-DC-STD-S|本地 Runtime 中樞|
|Artibird Gate Pro|GATE-G1-PRO|ATB-GATE-G1-US-HYB-USB-PRO-S|設備接入網關|
|Artibird Sync IR/RF|SYNC-G1-IRRF|ATB-SYNC-G1-GL-IRRF-USB-STD-S|IR / RF 同步|
|Artibird Switch Scene|SW-G1-SCN|ATB-SW-G1-US-BLE-BAT-SCN-S|場景或事件開關|
|Artibird Switch Relay|SW-G1-RLY|ATB-SW-G1-US-WF-ZN-RLY-S|繼電器開關|
|Artibird Panel Room|PNL-G1-ROOM|ATB-PNL-G1-US-WF-DC-STD-S|房間級介面|
|Artibird Act-E|ACT-G1-E|ATB-ACT-G1-US-WF-AC-E-S|能源感知執行節點|
|Artibird Sense Climate|SNS-G1-CLM|ATB-SNS-G1-GL-BLE-BAT-STD-S|氣候感知|
|Artibird Vision Edge|VIS-G1-EDGE|ATB-VIS-G1-US-WF-DC-CAM-S|視覺 / 邊緣相關產品|
|Artibird App|APP-G1|ATB-APP-G1-GL-CLD-NA-STD-NA|用戶控制介面|

---

## 17.15 Required Master Table Fields

## 17.15 必備主表欄位

### EN

Every customer-facing model name must be recorded in the SKU master table or related product master record.

|Field|Requirement|
|---|---|
|Customer-Facing Model Name|Required|
|Internal Model Name|Required|
|SKU Code|Required where applicable|
|Product Line|Required|
|Generation|Required where applicable|
|Variant / Capability|Required where applicable|
|Region Visibility|Required where applicable|
|Approved Public Use|Yes / No|
|Approved Packaging Use|Yes / No|
|Approved Amazon Use|Yes / No|
|Claim Boundary Notes|Required|
|Approval Owner|Required|
|Revision Date|Required|

### ZH-TW

每一個面向客戶型號名稱都必須記錄於 SKU 主表或相關產品主記錄中。

|欄位|要求|
|---|---|
|面向客戶型號名稱|必填|
|內部型號名稱|必填|
|SKU 代碼|適用時必填|
|產品線|必填|
|世代|適用時必填|
|版本 / 能力|適用時必填|
|區域可見性|適用時必填|
|是否核准公開使用|Yes / No|
|是否核准包裝使用|Yes / No|
|是否核准 Amazon 使用|Yes / No|
|宣稱邊界備註|必填|
|核准負責人|必填|
|修訂日期|必填|

---

## 17.16 Chapter Conclusion

## 17.16 本章結論

### EN

Customer-facing model names provide a readable public identity for Artibird products.

They should be clear, stable, commercially usable, and easy to understand. However, they must remain connected to controlled SKU records, internal model names, engineering model numbers, certification model numbers, manufacturing records, package records, and claim boundaries.

A customer-facing name is not a complete product control record. It is the public-facing layer of a broader product identity system.

### ZH-TW

面向客戶型號名稱為 Artibird 產品提供可讀的公開身份。

它們應清晰、穩定、可商業使用且易於理解。然而，它們必須持續連接至受控 SKU 記錄、內部型號、工程型號、認證型號、生產記錄、包裝記錄與宣稱邊界。

面向客戶名稱不是完整產品管控記錄。它是更大產品身份系統中的公開呈現層。

---

本章依據《Artibird SKU & Model Naming Specification v1.0》的既定撰寫計劃展開；原始規劃已將 Chapter 17 設為 Customer-Facing Model Names，並要求定義用於型錄、網站、包裝、銷售與客戶溝通的可讀型號名稱。

**話題延伸｜互動建議**  
下一章可以繼續寫 **Chapter 18 — Internal Model Numbers｜第十八章｜內部型號**，正式定義 HUB-G1、GATE-G1-PRO、SYNC-G1-IRRF、SW-G1-SCN、ACT-G1-E、SNS-G1-CLM 等內部型號規則。