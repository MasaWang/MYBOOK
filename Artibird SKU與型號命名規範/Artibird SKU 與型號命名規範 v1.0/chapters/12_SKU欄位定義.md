# Artibird SKU & Model Naming Specification v1.0

# Artibird SKU 與型號命名規範 v1.0

## Chapter 12 — SKU Field Definition

## 第十二章｜SKU 欄位定義

---

## 12.1 Purpose

## 12.1 目的

### EN

This chapter defines each field within the official Artibird SKU structure and explains when each field must be changed, when it should not be changed, and which team should review the change.

The official SKU structure is:

```text
ATB-[PRODUCT]-[GEN]-[REGION]-[CONNECTIVITY]-[POWER]-[VARIANT]-[PACKAGE]
```

Each SKU field represents a specific control dimension. The purpose of this chapter is to prevent uncontrolled SKU changes, duplicate SKU meanings, hidden configuration differences, incorrect commercial listings, certification mismatches, packaging errors, and inventory confusion.

### ZH-TW

本章定義 Artibird 官方 SKU 結構中的每一個欄位，並說明每個欄位在什麼情況下必須變更、什麼情況下不應變更，以及應由哪一個團隊審查。

官方 SKU 結構為：

```text
ATB-[產品]-[世代]-[區域]-[連接]-[供電]-[版本]-[包裝]
```

每一個 SKU 欄位都代表一個特定管控維度。本章目的，是防止未受控 SKU 變更、SKU 含義重複、隱藏配置差異、商業上架錯誤、認證映射不一致、包裝錯誤與庫存混亂。

---

## 12.2 SKU Field Overview

## 12.2 SKU 欄位總覽

### EN

|Field Order|Field Name|Example|Control Dimension|
|--:|---|---|---|
|1|Brand|ATB|Brand identity|
|2|Product|ACT|Product line|
|3|Generation|G1|Product generation|
|4|Region|US|Market configuration|
|5|Connectivity|WF|Communication method|
|6|Power|AC|Power architecture|
|7|Variant|E|Functional or commercial variant|
|8|Package|S|Packaging or sales unit|

### ZH-TW

|欄位順序|欄位名稱|示例|管控維度|
|--:|---|---|---|
|1|品牌|ATB|品牌身份|
|2|產品|ACT|產品線|
|3|世代|G1|產品世代|
|4|區域|US|市場配置|
|5|連接|WF|通訊方式|
|6|供電|AC|供電架構|
|7|版本|E|功能或商業版本|
|8|包裝|S|包裝或銷售單位|

---

## 12.3 Field 1 — Brand

## 12.3 欄位 1 — 品牌

### EN

The Brand field identifies the commercial brand under which the SKU is managed.

For Artibird products, the standard brand prefix is:

```text
ATB
```

|Field|Value|Meaning|
|---|---|---|
|Brand|ATB|Artibird|

### When to Change

|Scenario|Change Brand Field?|Notes|
|---|---|---|
|Standard Artibird product|No|Use ATB|
|Product transferred to another brand|Yes|Requires business and legal review|
|Private-label product|Maybe|Requires separate brand governance|
|Internal engineering prototype|Usually no|Use ATB unless prototype belongs to another brand|
|OceanAI system-layer service|Maybe|May require separate service SKU policy|

### Governance Rule

The Brand field must not be changed for minor product, packaging, channel, firmware, region, or pricing differences.

### ZH-TW

品牌欄位用於識別該 SKU 所屬的商業品牌。

對 Artibird 產品而言，標準品牌前綴為：

```text
ATB
```

|欄位|數值|含義|
|---|---|---|
|品牌|ATB|Artibird|

### 何時變更

|場景|是否變更品牌欄位？|備註|
|---|---|---|
|標準 Artibird 產品|否|使用 ATB|
|產品轉移至另一品牌|是|需要商務與法律審查|
|私標產品|視情況|需要獨立品牌治理|
|內部工程原型|通常否|除非原型屬於另一品牌，否則使用 ATB|
|OceanAI 系統層服務|視情況|可能需要獨立服務 SKU 政策|

### 治理規則

不得因輕微產品差異、包裝差異、渠道差異、韌體差異、區域差異或價格差異而更改品牌欄位。

---

## 12.4 Field 2 — Product

## 12.4 欄位 2 — 產品

### EN

The Product field identifies the product line or system layer.

Examples:

|Product Line|Code|
|---|--:|
|Artibird Hub|HUB|
|Artibird Gate|GATE|
|Artibird Sync|SYNC|
|Artibird Switch|SW|
|Artibird Panel|PNL|
|Artibird Act|ACT|
|Artibird Sense|SNS|
|Artibird Vision|VIS|
|Artibird App|APP|
|OceanAI Cloud|CLD|
|OceanAI Edge|EDGE|

### When to Change

|Scenario|Change Product Field?|Notes|
|---|---|---|
|Product family changes|Yes|Example: SW changes to ACT|
|Primary system role changes|Yes|Requires product architecture review|
|Product gains minor function|No|Use variant or capability record|
|Packaging changes|No|Use package field|
|Connectivity changes|No|Use connectivity field|
|Power changes|No|Use power field|
|Same product used in another market|No|Use region field|

### Governance Rule

The Product field must represent the primary product family or system layer. It must not be used to describe feature level, package type, region, certification status, or sales channel.

### ZH-TW

產品欄位用於識別產品線或系統層。

示例：

|產品線|代碼|
|---|--:|
|Artibird Hub|HUB|
|Artibird Gate|GATE|
|Artibird Sync|SYNC|
|Artibird Switch|SW|
|Artibird Panel|PNL|
|Artibird Act|ACT|
|Artibird Sense|SNS|
|Artibird Vision|VIS|
|Artibird App|APP|
|OceanAI Cloud|CLD|
|OceanAI Edge|EDGE|

### 何時變更

|場景|是否變更產品欄位？|備註|
|---|---|---|
|產品家族變更|是|例如 SW 變更為 ACT|
|主要系統角色變更|是|需要產品架構審查|
|產品增加輕微功能|否|使用版本或能力記錄|
|包裝變更|否|使用包裝欄位|
|連接方式變更|否|使用連接欄位|
|供電方式變更|否|使用供電欄位|
|同一產品用於另一市場|否|使用區域欄位|

### 治理規則

產品欄位必須代表主要產品家族或系統層，不得用於描述功能等級、包裝類型、區域、認證狀態或銷售渠道。

---

## 12.5 Field 3 — Generation

## 12.5 欄位 3 — 世代

### EN

The Generation field identifies the product generation.

Examples:

|Code|Meaning|
|--:|---|
|G1|First generation|
|G2|Second generation|
|G3|Third generation|
|GX|Experimental generation|
|DEV|Development generation|
|EVT|Engineering validation stage|
|DVT|Design validation stage|
|PVT|Production validation stage|

### When to Change

|Scenario|Change Generation Field?|Notes|
|---|---|---|
|Major hardware platform changes|Yes|Example: MCU, PCB architecture, RF architecture|
|Major industrial design changes|Usually yes|Requires product review|
|Major power architecture changes|Usually yes|Also review power field|
|New commercial generation launched|Yes|G1 to G2|
|Minor firmware update|No|Track firmware version separately|
|PCB minor revision|Usually no|Track engineering model separately|
|Packaging update|No|Use package version or package field|
|Region expansion|No|Use region field|

### Governance Rule

The Generation field must not replace firmware version, PCB version, release status, or validation report version.

### ZH-TW

世代欄位用於識別產品世代。

示例：

|代碼|含義|
|--:|---|
|G1|第一代|
|G2|第二代|
|G3|第三代|
|GX|實驗世代|
|DEV|開發世代|
|EVT|工程驗證階段|
|DVT|設計驗證階段|
|PVT|生產驗證階段|

### 何時變更

|場景|是否變更世代欄位？|備註|
|---|---|---|
|主要硬體平台變更|是|例如 MCU、PCB 架構、RF 架構|
|重大工業設計變更|通常是|需要產品審查|
|重大供電架構變更|通常是|同時審查供電欄位|
|新商業世代發布|是|G1 變更為 G2|
|輕微韌體更新|否|單獨追蹤韌體版本|
|PCB 輕微修訂|通常否|單獨追蹤工程型號|
|包裝更新|否|使用包裝版本或包裝欄位|
|區域擴展|否|使用區域欄位|

### 治理規則

世代欄位不得取代韌體版本、PCB 版本、發布狀態或驗證報告版本。

---

## 12.6 Field 4 — Region

## 12.6 欄位 4 — 區域

### EN

The Region field identifies the target market or regional configuration.

Examples:

|Code|Region|
|--:|---|
|US|United States|
|CA|Canada|
|EU|European Union|
|UK|United Kingdom|
|CN|Mainland China|
|TW|Taiwan|
|JP|Japan|
|AU|Australia|
|GL|Global reference version|
|INT|International project version|

### When to Change

|Scenario|Change Region Field?|Notes|
|---|---|---|
|Product released to another market|Yes|Example: US to EU|
|Certification region changes|Yes|Certification mapping must be reviewed|
|Label language or legal text changes by market|Usually yes|Packaging and legal review required|
|Electrical standard changes by market|Yes|Power and certification review required|
|Same product stored in another warehouse|No|Use logistics record|
|Same product sold through another channel in same market|No|Use channel or package record|
|Same product with new price in same market|No|Use pricing record|
|Global reference planning only|Use GL|Not a commercial approval claim|

### Governance Rule

The Region field must not be used as a warehouse location, language-only indicator, certification claim, or global sales approval claim.

### ZH-TW

區域欄位用於識別目標市場或區域配置。

示例：

|代碼|區域|
|--:|---|
|US|美國|
|CA|加拿大|
|EU|歐盟|
|UK|英國|
|CN|中國大陸|
|TW|台灣|
|JP|日本|
|AU|澳洲|
|GL|全球參考版本|
|INT|國際專案版本|

### 何時變更

|場景|是否變更區域欄位？|備註|
|---|---|---|
|產品發布至另一市場|是|例如 US 變更為 EU|
|認證區域變更|是|必須審查認證映射|
|標籤語言或法律文字因市場變更|通常是|需要包裝與法律審查|
|電氣標準因市場變更|是|需要供電與認證審查|
|同一產品存放於另一倉庫|否|使用物流記錄|
|同一市場內透過另一渠道銷售|否|使用渠道或包裝記錄|
|同一市場內價格變更|否|使用價格記錄|
|僅作全球參考規劃|使用 GL|不代表商業核准|

### 治理規則

區域欄位不得作為倉庫位置、單純語言指示、認證宣稱或全球銷售核准宣稱使用。

---

## 12.7 Field 5 — Connectivity

## 12.7 欄位 5 — 連接

### EN

The Connectivity field identifies the communication or connection method.

Examples:

|Code|Meaning|
|--:|---|
|WF|Wi-Fi|
|ETH|Ethernet|
|BLE|BLE / BLE Mesh|
|RF|RF|
|IR|Infrared|
|IRRF|IR + RF|
|HYB|Hybrid communication|
|LAN|Local network|
|CLD|Cloud-connected service path|
|LTE|Cellular / LTE|
|LORA|LoRa|
|USB|USB data path where supported|
|NA|Not applicable|

### When to Change

|Scenario|Change Connectivity Field?|Notes|
|---|---|---|
|Wi-Fi product becomes BLE product|Yes|WF changes to BLE|
|Ethernet added as validated commercial path|Usually yes|May change to HYB|
|BLE hardware exists but is disabled|No|Do not claim BLE|
|IR-only product adds validated RF|Yes|IR changes to IRRF|
|Cloud remote control added through platform|Usually no for device SKU|Update service record|
|Local mode added without interface change|Usually no|Update capability field|
|LTE or LoRa added|Yes|Certification review required|
|USB used only for power|No|Use USB in power field, not connectivity field|

### Governance Rule

The Connectivity field must describe implemented and validated communication capability. It must not be based on future roadmap functions.

### ZH-TW

連接欄位用於識別通訊或連接方式。

示例：

|代碼|含義|
|--:|---|
|WF|Wi-Fi|
|ETH|Ethernet|
|BLE|BLE / BLE Mesh|
|RF|RF|
|IR|紅外|
|IRRF|IR + RF|
|HYB|混合通訊|
|LAN|本地網路|
|CLD|雲端連接服務路徑|
|LTE|蜂窩 / LTE|
|LORA|LoRa|
|USB|支援條件下的 USB 數據路徑|
|NA|不適用|

### 何時變更

|場景|是否變更連接欄位？|備註|
|---|---|---|
|Wi-Fi 產品變為 BLE 產品|是|WF 變更為 BLE|
|Ethernet 成為已驗證商業路徑|通常是|可變更為 HYB|
|存在 BLE 硬體但功能停用|否|不得宣稱 BLE|
|IR-only 產品增加已驗證 RF|是|IR 變更為 IRRF|
|透過平台增加雲端遠端控制|對設備 SKU 通常否|更新服務記錄|
|新增本地模式但介面未變|通常否|更新能力欄位|
|增加 LTE 或 LoRa|是|需要認證審查|
|USB 僅用於供電|否|USB 應用於供電欄位，而非連接欄位|

### 治理規則

連接欄位必須描述已實作並驗證的通訊能力，不得基於未來路線圖功能。

---

## 12.8 Field 6 — Power

## 12.8 欄位 6 — 供電

### EN

The Power field identifies the product’s power architecture or installation condition.

Examples:

|Code|Meaning|
|--:|---|
|BAT|Battery powered|
|AC|AC mains powered|
|DC|DC powered|
|USB|USB / USB-C powered|
|POE|Power over Ethernet|
|LV|Low-voltage powered|
|SL|Single-live configuration|
|ZN|Zero-neutral configuration|
|ADP|External power adapter|
|SOL|Solar-assisted power|
|NA|Not applicable|

### When to Change

|Scenario|Change Power Field?|Notes|
|---|---|---|
|Battery product becomes USB-powered|Yes|BAT changes to USB|
|USB product becomes adapter-dependent|Usually yes|USB may change to ADP|
|Single-live switch becomes zero-neutral switch|Yes|SL changes to ZN|
|AC plug adds energy monitoring|No|Use variant field|
|Adapter model changes only|Maybe|Review certification and package impact|
|Input voltage range changes|Usually yes|Safety review required|
|PoE added|Yes|POE may be required|
|Software-only service|Use NA|No physical power architecture|

### Governance Rule

The Power field must represent actual power architecture or installation condition. It must not be used to describe load-control function unless the power architecture itself changes.

### ZH-TW

供電欄位用於識別產品的供電架構或安裝條件。

示例：

|代碼|含義|
|--:|---|
|BAT|電池供電|
|AC|市電供電|
|DC|DC 供電|
|USB|USB / USB-C 供電|
|POE|乙太網供電|
|LV|低壓供電|
|SL|單火配置|
|ZN|零火配置|
|ADP|外部電源適配器|
|SOL|太陽能輔助供電|
|NA|不適用|

### 何時變更

|場景|是否變更供電欄位？|備註|
|---|---|---|
|電池產品變為 USB 供電|是|BAT 變更為 USB|
|USB 產品變為依賴適配器|通常是|USB 可能變更為 ADP|
|單火開關變為零火開關|是|SL 變更為 ZN|
|AC 插座增加電能監測|否|使用版本欄位|
|僅適配器型號變更|視情況|審查認證與包裝影響|
|輸入電壓範圍變更|通常是|需要安全審查|
|增加 PoE|是|可能需要 POE|
|純軟體服務|使用 NA|無實體供電架構|

### 治理規則

供電欄位必須代表實際供電架構或安裝條件，不得在供電架構未變時用來描述負載控制功能。

---

## 12.9 Field 7 — Variant

## 12.9 欄位 7 — 版本

### EN

The Variant field identifies the functional or commercial configuration of the SKU.

Examples:

|Code|Meaning|
|--:|---|
|STD|Standard version|
|PRO|Professional version|
|MINI|Mini version|
|E|Energy-aware version|
|OUT|Outdoor version|
|RLY|Relay version|
|SCN|Scene switch version|
|DIM|Dimmer version|
|CAM|Camera / vision version|
|DEV|Development version|
|BETA|Beta test version|
|CUSTOM|Custom project version|
|EDU|Education version|
|KIT|Kit-oriented variant|

### When to Change

|Scenario|Change Variant Field?|Notes|
|---|---|---|
|Standard product adds energy monitoring|Yes|STD changes to E|
|Event-only switch gains relay output|Yes|SCN changes to RLY|
|Dimming capability added and validated|Yes|DIM may be required|
|Outdoor-rated enclosure added|Yes|OUT may be required|
|Camera function added|Yes|CAM may be required|
|Only packaging changes|No|Use package field|
|Only region changes|No|Use region field|
|Only power architecture changes|No|Use power field|
|Minor firmware feature added|Usually no|Track firmware capability separately|

### Governance Rule

The Variant field must represent a real functional or commercial configuration difference. It must not be used as a vague marketing label.

### ZH-TW

版本欄位用於識別該 SKU 的功能或商業配置。

示例：

|代碼|含義|
|--:|---|
|STD|標準版|
|PRO|專業版|
|MINI|迷你版|
|E|能源感知版本|
|OUT|戶外版本|
|RLY|繼電器版本|
|SCN|場景開關版本|
|DIM|調光版本|
|CAM|攝影機 / 視覺版本|
|DEV|開發版本|
|BETA|Beta 測試版本|
|CUSTOM|客製專案版本|
|EDU|教育版本|
|KIT|套組導向版本|

### 何時變更

|場景|是否變更版本欄位？|備註|
|---|---|---|
|標準產品增加電能監測|是|STD 變更為 E|
|Event-only 開關增加繼電器輸出|是|SCN 變更為 RLY|
|增加並驗證調光能力|是|可能需要 DIM|
|增加戶外額定外殼|是|可能需要 OUT|
|增加攝影機功能|是|可能需要 CAM|
|僅包裝變更|否|使用包裝欄位|
|僅區域變更|否|使用區域欄位|
|僅供電架構變更|否|使用供電欄位|
|僅新增輕微韌體功能|通常否|單獨追蹤韌體能力|

### 治理規則

版本欄位必須代表真實的功能或商業配置差異，不得作為模糊行銷標籤使用。

---

## 12.10 Field 8 — Package

## 12.10 欄位 8 — 包裝

### EN

The Package field identifies the packaging, shipment, sales, or deployment unit.

Examples:

|Code|Meaning|
|--:|---|
|S|Single unit|
|2P|Two-pack|
|4P|Four-pack|
|KIT|Standard kit|
|PROKIT|Professional kit|
|EDU|Education package|
|PRJ|Project package|
|CH|Channel pack|
|FBA|Amazon FBA package|
|BULK|Bulk shipment package|
|DEMO|Demonstration kit|
|SAMPLE|Sample package|
|NA|Not applicable|

### When to Change

|Scenario|Change Package Field?|Notes|
|---|---|---|
|Single unit becomes two-pack|Yes|S changes to 2P|
|Product enters Amazon FBA package|Usually yes|FBA record required|
|Product included in starter kit|Yes|KIT may be required|
|Product becomes project delivery package|Yes|PRJ may be required|
|Demo kit created|Yes|DEMO required|
|Sample package created|Yes|SAMPLE required|
|Price promotion only|No|Use pricing record|
|Warehouse movement|No|Use logistics record|
|Packaging artwork correction|Usually no|Update packaging version|
|Same package sold through another approved channel|Usually no|Update channel availability record|

### Governance Rule

The Package field must identify the commercial packaging or shipment unit. It must not replace product identity, variant identity, region, power, connectivity, or certification status.

### ZH-TW

包裝欄位用於識別包裝、出貨、銷售或部署單位。

示例：

|代碼|含義|
|--:|---|
|S|單品|
|2P|兩入裝|
|4P|四入裝|
|KIT|標準套組|
|PROKIT|專業套組|
|EDU|教育套組|
|PRJ|專案包|
|CH|渠道包|
|FBA|Amazon FBA 包裝|
|BULK|批量出貨包|
|DEMO|展示套組|
|SAMPLE|樣品包|
|NA|不適用|

### 何時變更

|場景|是否變更包裝欄位？|備註|
|---|---|---|
|單品變為兩入裝|是|S 變更為 2P|
|產品進入 Amazon FBA 包裝|通常是|需要 FBA 記錄|
|產品被納入入門套組|是|可能需要 KIT|
|產品成為專案交付包|是|可能需要 PRJ|
|建立展示套組|是|需要 DEMO|
|建立樣品包|是|需要 SAMPLE|
|僅價格促銷|否|使用價格記錄|
|倉庫移動|否|使用物流記錄|
|包裝 artwork 修正|通常否|更新包裝版本|
|同一包裝透過另一已核准渠道銷售|通常否|更新渠道可用性記錄|

### 治理規則

包裝欄位必須識別商業包裝或出貨單位，不得取代產品身份、版本身份、區域、供電、連接或認證狀態。

---

## 12.11 Field Change Summary Table

## 12.11 欄位變更總表

### EN

|SKU Field|Must Change When|Should Not Change When|
|---|---|---|
|Brand|Brand ownership or commercial brand changes|Firmware, package, region, price, or channel changes|
|Product|Product family or primary system role changes|Minor feature, power, package, or region changes|
|Generation|Major product generation changes|Minor firmware, packaging, or warehouse changes|
|Region|Target market or certification region changes|Warehouse or channel changes within same market|
|Connectivity|Validated communication path changes|Future roadmap or disabled hardware exists only|
|Power|Power architecture or installation condition changes|Energy monitoring or load function changes only|
|Variant|Functional or commercial configuration changes|Region, power, package, or price changes only|
|Package|Packaging or sales unit changes|Firmware, price, warehouse, or minor artwork changes|

### ZH-TW

|SKU 欄位|必須變更情況|不應變更情況|
|---|---|---|
|品牌|品牌歸屬或商業品牌變更|韌體、包裝、區域、價格或渠道變更|
|產品|產品家族或主要系統角色變更|輕微功能、供電、包裝或區域變更|
|世代|主要產品世代變更|輕微韌體、包裝或倉庫變更|
|區域|目標市場或認證區域變更|同一市場內的倉庫或渠道變更|
|連接|已驗證通訊路徑變更|僅存在未來規劃或停用硬體|
|供電|供電架構或安裝條件變更|僅能源監測或負載功能變更|
|版本|功能或商業配置變更|僅區域、供電、包裝或價格變更|
|包裝|包裝或銷售單位變更|韌體、價格、倉庫或輕微 artwork 變更|

---

## 12.12 Field Responsibility Matrix

## 12.12 欄位責任矩陣

### EN

|SKU Field|Primary Owner|Required Review|
|---|---|---|
|Brand|Business / Legal|Product, legal, commercial|
|Product|Product Team|Engineering, architecture, operations|
|Generation|Product / Engineering|Engineering, compliance, operations|
|Region|Operations / Compliance|Legal, certification, packaging, sales|
|Connectivity|Engineering|Compliance, firmware, app, product|
|Power|Engineering / Compliance|Safety, certification, product, packaging|
|Variant|Product Team|Engineering, certification, sales, packaging|
|Package|Operations / Packaging|Sales, Amazon, logistics, product|

### ZH-TW

|SKU 欄位|主要負責方|必要審查|
|---|---|---|
|品牌|商務 / 法務|產品、法務、商務|
|產品|產品團隊|工程、架構、運營|
|世代|產品 / 工程|工程、合規、運營|
|區域|運營 / 合規|法務、認證、包裝、銷售|
|連接|工程|合規、韌體、App、產品|
|供電|工程 / 合規|安全、認證、產品、包裝|
|版本|產品團隊|工程、認證、銷售、包裝|
|包裝|運營 / 包裝|銷售、Amazon、物流、產品|

---

## 12.13 Field Dependency Rules

## 12.13 欄位依賴規則

### EN

Some SKU field changes may trigger review of other fields.

|Changed Field|Related Fields to Review|Reason|
|---|---|---|
|Product|Generation, Variant, Engineering Model|Product role may affect generation and model mapping|
|Generation|Certification, Engineering Model, Package|New generation may require new label or certification|
|Region|Certification, Package, Label, Manual|Market requirements may change|
|Connectivity|Certification, App Onboarding, Package Claims|Wireless or network behavior may change|
|Power|Certification, Label, Manual, Installation Guide|Electrical safety and installation may change|
|Variant|Engineering Model, Certification, Package Claims|Functional capability may affect validation|
|Package|Barcode, Channel, Amazon, Included Products|Commercial unit and logistics may change|

### ZH-TW

某些 SKU 欄位變更可能觸發其他欄位審查。

|變更欄位|需連動審查欄位|原因|
|---|---|---|
|產品|世代、版本、工程型號|產品角色可能影響世代與型號映射|
|世代|認證、工程型號、包裝|新世代可能需要新標籤或認證|
|區域|認證、包裝、標籤、說明書|市場要求可能變更|
|連接|認證、App 入網、包裝宣稱|無線或網路行為可能變更|
|供電|認證、標籤、說明書、安裝指南|電氣安全與安裝可能變更|
|版本|工程型號、認證、包裝宣稱|功能能力可能影響驗證|
|包裝|條碼、渠道、Amazon、內含產品|商業單位與物流可能變更|

---

## 12.14 SKU Field Validation Checklist

## 12.14 SKU 欄位驗證清單

### EN

Before a SKU is approved, each field must pass validation.

|Check Item|Required|
|---|---|
|Brand field uses approved brand prefix|Yes|
|Product field uses approved product line code|Yes|
|Generation field uses approved generation code|Yes|
|Region field matches intended market|Yes|
|Connectivity field matches implemented and validated capability|Yes|
|Power field matches actual power architecture|Yes|
|Variant field matches functional or commercial configuration|Yes|
|Package field matches packaging or sales unit|Yes|
|No field is used to imply certification status|Yes|
|No field is used to encode price|Yes|
|No field is used to encode warehouse location|Yes|
|All fields map to the SKU master table|Yes|
|All required owner approvals are recorded|Yes|

### ZH-TW

在 SKU 被核准前，每一個欄位都必須完成驗證。

|檢查項目|是否必須|
|---|---|
|品牌欄位使用已核准品牌前綴|是|
|產品欄位使用已核准產品線代碼|是|
|世代欄位使用已核准世代代碼|是|
|區域欄位匹配目標市場|是|
|連接欄位匹配已實作並驗證的能力|是|
|供電欄位匹配實際供電架構|是|
|版本欄位匹配功能或商業配置|是|
|包裝欄位匹配包裝或銷售單位|是|
|沒有欄位被用於暗示認證狀態|是|
|沒有欄位被用於編入價格|是|
|沒有欄位被用於編入倉庫位置|是|
|所有欄位均映射至 SKU 主表|是|
|所有必要負責人核准均已記錄|是|

---

## 12.15 Chapter Conclusion

## 12.15 本章結論

### EN

Each SKU field represents a specific control dimension within the Artibird product identity system.

The Product field identifies the product family. The Generation field identifies lifecycle generation. The Region field identifies market configuration. The Connectivity field identifies communication capability. The Power field identifies power architecture. The Variant field identifies functional or commercial configuration. The Package field identifies the sales or shipment unit.

No SKU field should be used casually or interchangeably. Each field must remain controlled, traceable, and mapped to the SKU master table.

### ZH-TW

每一個 SKU 欄位都代表 Artibird 產品身份系統中的一個特定管控維度。

產品欄位識別產品家族；世代欄位識別生命週期世代；區域欄位識別市場配置；連接欄位識別通訊能力；供電欄位識別供電架構；版本欄位識別功能或商業配置；包裝欄位識別銷售或出貨單位。

任何 SKU 欄位都不應被隨意使用或互相替代。每個欄位都必須保持受控、可追蹤，並映射至 SKU 主表。

---

本章依據《Artibird SKU & Model Naming Specification v1.0》的既定撰寫計劃展開；原始規劃已將 Chapter 12 設為 SKU Field Definition，並明確要求定義每個 SKU 欄位的含義，以及何時必須更改。

**話題延伸｜互動建議**  
下一章可以繼續寫 **Chapter 13 — SKU Examples by Product Line｜第十三章｜各產品線 SKU 示例**，把 Hub、Gate、Sync、Switch、Panel、Act、Sense、Vision、App、Cloud、Edge 全部建立成可直接放入主表的標準示例。