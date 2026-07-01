# Artibird SKU & Model Naming Specification v1.0

# Artibird SKU 與型號命名規範 v1.0

## Chapter 29 — Power Architecture Master Table

## 第二十九章｜供電架構主表

---

## 29.1 Purpose

## 29.1 目的

### EN

This chapter defines the Power Architecture Master Table used by Artibird SKU records, engineering records, certification records, manufacturing records, packaging records, product labels, Amazon listings, installation guides, and commercial claim reviews.

The power code identifies how a product is powered, installed, connected to electrical infrastructure, or treated as a service / non-powered record.

The purpose of this chapter is to ensure that power architecture codes are used consistently and safely across product planning, engineering validation, certification preparation, manufacturing, packaging, labeling, installation documentation, channel sales, and customer-facing communication.

### ZH-TW

本章定義 Artibird SKU 記錄、工程記錄、認證記錄、生產記錄、包裝記錄、產品標籤、Amazon 上架、安裝指南與商業宣稱審查中使用的供電架構主表。

供電代碼用於識別產品如何供電、如何安裝、如何連接至電力基礎設施，或是否作為服務 / 非供電記錄處理。

本章目的，是確保供電架構代碼在產品規劃、工程驗證、認證準備、生產、包裝、標籤、安裝文件、渠道銷售與面向客戶溝通中被一致且安全地使用。

---

## 29.2 Power Code Definition

## 29.2 供電代碼定義

### EN

A power code defines the electrical power architecture or installation condition of a SKU.

It answers the following questions:

|Question|Description|
|---|---|
|How is the product powered?|AC mains, DC adapter, USB, battery, PoE, or not applicable|
|Does the product connect to mains power?|Important for safety, certification, installation, and label control|
|Does the product require professional installation?|Important for switch, relay, plug, panel, and in-wall products|
|Does the product use battery power?|Important for power budget, battery label, charging, shipping, and safety|
|Does the product use USB power?|Important for adapter, cable, rating, and certification scope|
|Does the product use zero-neutral or single-live wiring?|Important for smart switch architecture and installation instructions|
|Does the product use low-voltage DC power?|Important for adapter, SELV, polarity, connector, and safety records|
|Does the product have no power architecture?|NA may apply to app, cloud, service, or non-powered records|

### ZH-TW

供電代碼定義某一 SKU 的電氣供電架構或安裝條件。

它回答以下問題：

|問題|說明|
|---|---|
|產品如何供電？|AC 市電、DC 適配器、USB、電池、PoE 或不適用|
|產品是否連接市電？|對安全、認證、安裝與標籤管控很重要|
|產品是否需要專業安裝？|對開關、繼電器、插座、面板與牆內產品很重要|
|產品是否使用電池供電？|對功耗預算、電池標籤、充電、運輸與安全很重要|
|產品是否使用 USB 供電？|對適配器、線材、額定與認證範圍很重要|
|產品是否使用零火或單火接線？|對智慧開關架構與安裝說明很重要|
|產品是否使用低壓 DC 供電？|對適配器、SELV、極性、連接器與安全記錄很重要|
|產品是否沒有供電架構？|NA 可適用於 App、Cloud、服務或非供電記錄|

---

## 29.3 Power Architecture Governance Principle

## 29.3 供電架構治理原則

### EN

The core principle of power architecture governance is:

```text
One power code = one controlled power architecture or installation condition.
```

A power code must reflect the actual electrical design, installation method, and safety boundary of the product.

A power code must not be used as a loose commercial description. It directly affects engineering validation, safety review, certification planning, product labeling, installation guides, warranty boundaries, and customer support.

For example:

```text
AC = AC mains-powered configuration
```

It does not automatically mean:

```text
UL listed
safe for all loads
works with all wiring
supports all regions
supports dimming
```

Those conditions must be validated and recorded separately.

### ZH-TW

供電架構治理的核心原則是：

```text
一個供電代碼 = 一種受控供電架構或安裝條件。
```

供電代碼必須反映產品的真實電氣設計、安裝方式與安全邊界。

供電代碼不得作為鬆散的商業描述。它會直接影響工程驗證、安全審查、認證規劃、產品標籤、安裝指南、保固邊界與客戶支持。

例如：

```text
AC = AC 市電供電配置
```

它不自動代表：

```text
UL 已列名
適用所有負載
適用所有接線
支援所有區域
支援調光
```

這些條件必須另行驗證並記錄。

---

## 29.4 Standard Power Architecture Master Table

## 29.4 標準供電架構主表

### EN

|Power Code|Power Name|Meaning|Typical Use|
|---|---|---|---|
|AC|AC Mains|Direct AC mains-powered product|Act, Switch Relay, Plug, in-wall control|
|DC|DC Power|External DC adapter or low-voltage DC input|Hub, Panel, Vision, Edge, selected devices|
|USB|USB / USB-C Power|USB-powered product|Gate, Sync, accessories, compact controllers|
|BAT|Battery|Battery-powered product|Switch Scene, Sense, portable devices|
|ZN|Zero-Neutral Wiring|Zero-neutral smart switch wiring|Switch Relay, Switch Dimmer|
|SL|Single-Live Wiring|Single-live / no-neutral switch architecture|Battery-assisted or special switch architecture|
|POE|Power over Ethernet|Ethernet-based power supply|Hub, Gate, Panel, Vision, Edge where supported|
|SELV|Safety Extra-Low Voltage|SELV low-voltage architecture|Low-voltage sensors, panels, accessories|
|ADP|External Adapter|Certified external adapter-powered device|Hub, Gate, Sync, Panel, Vision|
|NA|Not Applicable|No physical power architecture applies|App, Cloud, service record, non-powered package|

### ZH-TW

|供電代碼|供電名稱|含義|典型用途|
|---|---|---|---|
|AC|AC Mains|直接 AC 市電供電產品|Act、Switch Relay、Plug、牆內控制|
|DC|DC Power|外部 DC 適配器或低壓 DC 輸入|Hub、Panel、Vision、Edge、特定設備|
|USB|USB / USB-C Power|USB 供電產品|Gate、Sync、配件、小型控制器|
|BAT|Battery|電池供電產品|Switch Scene、Sense、便攜設備|
|ZN|Zero-Neutral Wiring|零火智慧開關接線|Switch Relay、Switch Dimmer|
|SL|Single-Live Wiring|單火 / 無零線開關架構|電池輔助或特殊開關架構|
|POE|Power over Ethernet|基於 Ethernet 的供電方式|支援時用於 Hub、Gate、Panel、Vision、Edge|
|SELV|Safety Extra-Low Voltage|SELV 低壓安全架構|低壓感測器、面板、配件|
|ADP|External Adapter|外部已認證適配器供電設備|Hub、Gate、Sync、Panel、Vision|
|NA|Not Applicable|不適用實體供電架構|App、Cloud、服務記錄、非供電包裝|

---

## 29.5 Power Code Usage in SKU Format

## 29.5 供電代碼在 SKU 格式中的使用

### EN

The power code appears in the sixth field of the official SKU structure:

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

The power code must match the actual product architecture, product label, installation guide, certification plan, and support boundary.

### ZH-TW

供電代碼出現在官方 SKU 結構的第六個欄位：

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

供電代碼必須匹配實際產品架構、產品標籤、安裝指南、認證計劃與支持邊界。

---

## 29.6 AC Mains Code — AC

## 29.6 AC 市電代碼 — AC

### EN

The AC code is used for products directly powered by AC mains.

|Field|Requirement|
|---|---|
|Power Code|AC|
|Power Name|AC Mains|
|Typical Product Lines|Act, Switch Relay, Plug, in-wall electrical control|
|Certification Relevance|High|
|Engineering Requirement|Creepage, clearance, insulation, relay / load design, thermal design, surge, fuse / protection, enclosure safety|
|Label Requirement|Voltage, current, load rating, frequency, model, certification marks where approved|
|Installation Requirement|Region-specific wiring and safety instructions|
|Claim Boundary|Do not imply all-load compatibility, dimming, or safety certification without validation|

AC products require strict engineering, safety, certification, label, and installation control.

### ZH-TW

AC 代碼用於直接由 AC 市電供電的產品。

|欄位|要求|
|---|---|
|供電代碼|AC|
|供電名稱|AC Mains|
|典型產品線|Act、Switch Relay、Plug、牆內電力控制|
|認證相關性|高|
|工程要求|爬電距離、電氣間隙、絕緣、繼電器 / 負載設計、熱設計、浪湧、保險 / 保護、外殼安全|
|標籤要求|電壓、電流、負載額定、頻率、型號、已核准認證標誌|
|安裝要求|區域特定接線與安全說明|
|宣稱邊界|未驗證前不得暗示適用所有負載、支援調光或已具備安全認證|

AC 產品需要嚴格的工程、安全、認證、標籤與安裝管控。

---

## 29.7 DC Power Code — DC

## 29.7 DC 供電代碼 — DC

### EN

The DC code is used for products powered by low-voltage DC input.

|Field|Requirement|
|---|---|
|Power Code|DC|
|Power Name|DC Power|
|Typical Product Lines|Hub, Panel, Vision, Edge, selected low-voltage devices|
|Certification Relevance|Medium to High depending on adapter, power level, enclosure, and function|
|Engineering Requirement|Input voltage range, polarity, connector type, protection, power budget, thermal design|
|Label Requirement|DC input rating, polarity where applicable, adapter requirements|
|Installation Requirement|Adapter or low-voltage wiring instructions|
|Claim Boundary|Do not imply compatibility with all adapters or voltages unless validated|

DC should be used when the device receives a defined DC input, whether from an adapter, low-voltage power supply, or controlled system source.

### ZH-TW

DC 代碼用於由低壓 DC 輸入供電的產品。

|欄位|要求|
|---|---|
|供電代碼|DC|
|供電名稱|DC Power|
|典型產品線|Hub、Panel、Vision、Edge、特定低壓設備|
|認證相關性|中至高，取決於適配器、功率、外殼與功能|
|工程要求|輸入電壓範圍、極性、連接器類型、保護、功耗預算、熱設計|
|標籤要求|DC 輸入額定、適用時極性、適配器要求|
|安裝要求|適配器或低壓接線說明|
|宣稱邊界|未驗證前不得暗示相容所有適配器或電壓|

當設備接收明確 DC 輸入時，無論來源為適配器、低壓電源或受控系統電源，都應使用 DC。

---

## 29.8 USB Power Code — USB

## 29.8 USB 供電代碼 — USB

### EN

The USB code is used for products powered through USB or USB-C.

|Field|Requirement|
|---|---|
|Power Code|USB|
|Power Name|USB / USB-C Power|
|Typical Product Lines|Gate, Sync, compact controllers, accessories|
|Certification Relevance|Medium|
|Engineering Requirement|USB connector, input current, adapter compatibility, cable rating, ESD, power negotiation if applicable|
|Label Requirement|USB input rating and adapter recommendation|
|Installation Requirement|USB power source and cable requirements|
|Claim Boundary|Do not imply USB-PD, fast charging, or data transfer unless validated|

If USB is used only for power, the connectivity code may still be WF, IRRF, BLE, or another actual communication method.  
If USB is also used as a data connection, the connectivity record must describe the USB data role.

### ZH-TW

USB 代碼用於透過 USB 或 USB-C 供電的產品。

|欄位|要求|
|---|---|
|供電代碼|USB|
|供電名稱|USB / USB-C Power|
|典型產品線|Gate、Sync、小型控制器、配件|
|認證相關性|中|
|工程要求|USB 連接器、輸入電流、適配器相容性、線材額定、ESD、適用時供電協商|
|標籤要求|USB 輸入額定與適配器建議|
|安裝要求|USB 電源來源與線材要求|
|宣稱邊界|未驗證前不得暗示 USB-PD、快速充電或數據傳輸|

如果 USB 僅用於供電，連接代碼仍可為 WF、IRRF、BLE 或其他實際通訊方式。  
如果 USB 同時作為數據連接，連接方式記錄必須描述 USB 數據角色。

---

## 29.9 Battery Code — BAT

## 29.9 電池代碼 — BAT

### EN

The BAT code is used for battery-powered products.

|Field|Requirement|
|---|---|
|Power Code|BAT|
|Power Name|Battery|
|Typical Product Lines|Switch Scene, Sense, portable devices|
|Certification Relevance|Medium to High depending on battery chemistry, charging, shipping, wireless, and enclosure|
|Engineering Requirement|Battery type, capacity, discharge profile, sleep current, wake strategy, charging circuit if applicable|
|Label Requirement|Battery type, polarity, capacity where applicable, disposal / safety instructions|
|Installation Requirement|Battery installation, charging, replacement, storage, and shipping guidance|
|Claim Boundary|Do not claim battery life, ultra-low power, or one-year operation without measured data|

BAT is especially important for low-power devices such as BLE scene switches and environmental sensors.

### ZH-TW

BAT 代碼用於電池供電產品。

|欄位|要求|
|---|---|
|供電代碼|BAT|
|供電名稱|Battery|
|典型產品線|Switch Scene、Sense、便攜設備|
|認證相關性|中至高，取決於電池化學體系、充電、運輸、無線與外殼|
|工程要求|電池類型、容量、放電特性、睡眠電流、喚醒策略、適用時充電電路|
|標籤要求|適用時標示電池類型、極性、容量、回收 / 安全說明|
|安裝要求|電池安裝、充電、更換、儲存與運輸指引|
|宣稱邊界|無測量數據前不得宣稱續航、超低功耗或一年使用|

BAT 對 BLE 場景開關與環境感測器等低功耗設備尤其重要。

---

## 29.10 Zero-Neutral Wiring Code — ZN

## 29.10 零火接線代碼 — ZN

### EN

The ZN code is used for smart switches or in-wall products that require both live and neutral wiring.

|Field|Requirement|
|---|---|
|Power Code|ZN|
|Power Name|Zero-Neutral Wiring|
|Typical Product Lines|Switch Relay, Switch Dimmer, in-wall control products|
|Certification Relevance|High|
|Engineering Requirement|Live / neutral input, load output, relay or dimmer design, protection, insulation, thermal, enclosure|
|Label Requirement|Line, neutral, load, rating, wiring diagram, safety warning|
|Installation Requirement|Clear wiring guide and professional installation language where required|
|Claim Boundary|Do not imply no-neutral compatibility; do not confuse with single-live products|

ZN is used when neutral wire is required for product operation.

### ZH-TW

ZN 代碼用於需要火線與零線共同接入的智慧開關或牆內產品。

|欄位|要求|
|---|---|
|供電代碼|ZN|
|供電名稱|Zero-Neutral Wiring|
|典型產品線|Switch Relay、Switch Dimmer、牆內控制產品|
|認證相關性|高|
|工程要求|火線 / 零線輸入、負載輸出、繼電器或調光設計、保護、絕緣、熱、外殼|
|標籤要求|Line、Neutral、Load、額定、接線圖、安全警告|
|安裝要求|清晰接線指南與必要時專業安裝語言|
|宣稱邊界|不得暗示無零線相容；不得與單火產品混淆|

ZN 用於產品運行需要零線的情況。

---

## 29.11 Single-Live Wiring Code — SL

## 29.11 單火接線代碼 — SL

### EN

The SL code is used for single-live / no-neutral switch architecture.

|Field|Requirement|
|---|---|
|Power Code|SL|
|Power Name|Single-Live Wiring|
|Typical Product Lines|Special switch architecture, battery-assisted switch products|
|Certification Relevance|High|
|Engineering Requirement|No-neutral behavior, leakage control if applicable, load compatibility, battery-assist logic if applicable, safety isolation|
|Label Requirement|Single-live wiring diagram, supported load type, safety warning|
|Installation Requirement|Must clearly state no-neutral / single-live wiring condition and limitations|
|Claim Boundary|Do not imply all-load compatibility, relay load control, or zero-neutral behavior unless validated|

For Artibird planning, the nRF52833 battery-powered single-live switch should be treated as an event-only scene transmitter unless a separate load-control architecture is validated and approved.

### ZH-TW

SL 代碼用於單火 / 無零線開關架構。

|欄位|要求|
|---|---|
|供電代碼|SL|
|供電名稱|Single-Live Wiring|
|典型產品線|特殊開關架構、電池輔助開關產品|
|認證相關性|高|
|工程要求|無零線行為、適用時漏電控制、負載相容性、適用時電池輔助邏輯、安全隔離|
|標籤要求|單火接線圖、支援負載類型、安全警告|
|安裝要求|必須明確說明無零線 / 單火接線條件與限制|
|宣稱邊界|未驗證前不得暗示適用所有負載、具備繼電器負載控制或具備零火行為|

在 Artibird 規劃中，nRF52833 電池供電單火開關應被視為 event-only 場景發射器，除非另有負載控制架構完成驗證並核准。

---

## 29.12 Power over Ethernet Code — POE

## 29.12 Power over Ethernet 代碼 — POE

### EN

The POE code is used for products powered through Power over Ethernet.

|Field|Requirement|
|---|---|
|Power Code|POE|
|Power Name|Power over Ethernet|
|Typical Product Lines|Hub, Gate, Panel, Vision, Edge where supported|
|Certification Relevance|Medium to High|
|Engineering Requirement|PoE standard support, Ethernet power interface, isolation, thermal, protection, port design|
|Label Requirement|PoE input rating and supported standard where applicable|
|Installation Requirement|PoE switch / injector compatibility and cable requirements|
|Claim Boundary|Do not imply PoE support unless the hardware supports it and it has been validated|

POE must not be used for ordinary Ethernet products unless Ethernet power delivery is actually implemented.

### ZH-TW

POE 代碼用於透過 Power over Ethernet 供電的產品。

|欄位|要求|
|---|---|
|供電代碼|POE|
|供電名稱|Power over Ethernet|
|典型產品線|支援時用於 Hub、Gate、Panel、Vision、Edge|
|認證相關性|中至高|
|工程要求|PoE 標準支援、Ethernet 供電介面、隔離、熱、保護、埠設計|
|標籤要求|適用時標示 PoE 輸入額定與支援標準|
|安裝要求|PoE 交換機 / 注入器相容性與線材要求|
|宣稱邊界|除非硬體支援且已驗證，否則不得暗示 PoE 支援|

POE 不得用於普通 Ethernet 產品，除非 Ethernet 供電確實已實作。

---

## 29.13 SELV Code — SELV

## 29.13 SELV 代碼 — SELV

### EN

The SELV code is used when the product operates within a Safety Extra-Low Voltage architecture.

|Field|Requirement|
|---|---|
|Power Code|SELV|
|Power Name|Safety Extra-Low Voltage|
|Typical Product Lines|Low-voltage sensors, panels, accessories, system modules|
|Certification Relevance|Medium|
|Engineering Requirement|SELV boundary, isolation source, voltage limit, connector safety, wiring protection|
|Label Requirement|SELV input / output notes where applicable|
|Installation Requirement|Must define approved SELV source and wiring limitations|
|Claim Boundary|Do not use SELV unless the power source and isolation boundary support it|

SELV may be useful for low-voltage system accessories, but it must be supported by engineering and safety records.

### ZH-TW

SELV 代碼用於產品運行於 Safety Extra-Low Voltage 架構內的情況。

|欄位|要求|
|---|---|
|供電代碼|SELV|
|供電名稱|Safety Extra-Low Voltage|
|典型產品線|低壓感測器、面板、配件、系統模組|
|認證相關性|中|
|工程要求|SELV 邊界、隔離來源、電壓限制、連接器安全、接線保護|
|標籤要求|適用時標示 SELV 輸入 / 輸出說明|
|安裝要求|必須定義已核准 SELV 來源與接線限制|
|宣稱邊界|除非電源來源與隔離邊界支持，否則不得使用 SELV|

SELV 可用於低壓系統配件，但必須由工程與安全記錄支持。

---

## 29.14 External Adapter Code — ADP

## 29.14 外部適配器代碼 — ADP

### EN

The ADP code is used when a product is powered by an external adapter and the adapter is part of the controlled product or package configuration.

|Field|Requirement|
|---|---|
|Power Code|ADP|
|Power Name|External Adapter|
|Typical Product Lines|Hub, Gate, Sync, Panel, Vision, Edge|
|Certification Relevance|Medium to High|
|Engineering Requirement|Adapter voltage, current, connector, safety certification, regional plug type|
|Label Requirement|Adapter rating and approved adapter statement|
|Installation Requirement|Use only approved adapter or equivalent specification|
|Claim Boundary|Do not imply compatibility with all adapters unless validated|

ADP is especially useful when the adapter certification strategy is part of the product’s market-entry plan.

### ZH-TW

ADP 代碼用於產品由外部適配器供電，且該適配器是受控產品或包裝配置的一部分。

|欄位|要求|
|---|---|
|供電代碼|ADP|
|供電名稱|External Adapter|
|典型產品線|Hub、Gate、Sync、Panel、Vision、Edge|
|認證相關性|中至高|
|工程要求|適配器電壓、電流、連接器、安全認證、區域插頭類型|
|標籤要求|適配器額定與核准適配器聲明|
|安裝要求|僅使用已核准適配器或等效規格|
|宣稱邊界|未驗證前不得暗示相容所有適配器|

當適配器認證策略是產品市場進入計劃的一部分時，ADP 尤其有用。

---

## 29.15 Not Applicable Code — NA

## 29.15 Not Applicable 代碼 — NA

### EN

The NA code is used when no physical power architecture applies.

|Field|Requirement|
|---|---|
|Power Code|NA|
|Power Name|Not Applicable|
|Typical Product Lines|App, Cloud, service records, non-powered package records|
|Certification Relevance|Usually not hardware-power related|
|Engineering Requirement|No physical power architecture|
|Label Requirement|No power label required unless bundled with hardware|
|Installation Requirement|No power installation requirement|
|Claim Boundary|Do not use NA for hardware products simply because power architecture is undecided|

If power architecture is undecided, the SKU should remain in Draft status and the field should be marked TBD until confirmed.

### ZH-TW

NA 代碼用於不適用實體供電架構的情況。

|欄位|要求|
|---|---|
|供電代碼|NA|
|供電名稱|Not Applicable|
|典型產品線|App、Cloud、服務記錄、非供電包裝記錄|
|認證相關性|通常不涉及硬體供電|
|工程要求|無實體供電架構|
|標籤要求|除非與硬體綁定，否則不需要供電標籤|
|安裝要求|無供電安裝要求|
|宣稱邊界|不得因硬體供電架構尚未決定而使用 NA|

如果供電架構尚未決定，SKU 應保持 Draft 狀態，並將欄位標為 TBD 直到確認。

---

## 29.16 Product Line Compatibility Matrix

## 29.16 產品線相容矩陣

### EN

|Product Line Code|AC|DC|USB|BAT|ZN|SL|POE|SELV|ADP|NA|
|---|--:|--:|--:|--:|--:|--:|--:|--:|--:|--:|
|HUB|No|Yes|Maybe|No|No|No|Maybe|Maybe|Yes|No|
|GATE|No|Maybe|Yes|No|No|No|Maybe|Maybe|Yes|No|
|SYNC|No|Maybe|Yes|No|No|No|No|Maybe|Yes|No|
|SW|Maybe|No|No|Yes|Yes|Yes|No|No|No|No|
|PNL|No|Yes|Maybe|Maybe|No|No|Maybe|Maybe|Yes|No|
|ACT|Yes|Maybe|No|No|Maybe|Maybe|No|No|No|No|
|SNS|No|Maybe|No|Yes|No|No|No|Maybe|No|No|
|VIS|No|Yes|Maybe|Maybe|No|No|Maybe|Maybe|Yes|No|
|APP|No|No|No|No|No|No|No|No|No|Yes|
|CLD|No|No|No|No|No|No|No|No|No|Yes|
|EDGE|No|Yes|Maybe|No|No|No|Maybe|Maybe|Yes|No|

### ZH-TW

|產品線代碼|AC|DC|USB|BAT|ZN|SL|POE|SELV|ADP|NA|
|---|--:|--:|--:|--:|--:|--:|--:|--:|--:|--:|
|HUB|否|是|視情況|否|否|否|視情況|視情況|是|否|
|GATE|否|視情況|是|否|否|否|視情況|視情況|是|否|
|SYNC|否|視情況|是|否|否|否|否|視情況|是|否|
|SW|視情況|否|否|是|是|是|否|否|否|否|
|PNL|否|是|視情況|視情況|否|否|視情況|視情況|是|否|
|ACT|是|視情況|否|否|視情況|視情況|否|否|否|否|
|SNS|否|視情況|否|是|否|否|否|視情況|否|否|
|VIS|否|是|視情況|視情況|否|否|視情況|視情況|是|否|
|APP|否|否|否|否|否|否|否|否|否|是|
|CLD|否|否|否|否|否|否|否|否|否|是|
|EDGE|否|是|視情況|否|否|否|視情況|視情況|是|否|

---

## 29.17 Power Architecture and Certification Impact Matrix

## 29.17 供電架構與認證影響矩陣

### EN

|Power Code|Certification Impact|Review Notes|
|---|---|---|
|AC|High|Mains safety, load, thermal, enclosure, label, and installation review required|
|DC|Medium to High|Adapter, connector, voltage, thermal, and enclosure review required|
|USB|Medium|Adapter, cable, USB-C, EMC, and power input review required|
|BAT|Medium to High|Battery safety, transport, charging, enclosure, and wireless review may apply|
|ZN|High|In-wall wiring, line / neutral, load, relay / dimmer, safety review required|
|SL|High|No-neutral behavior, load compatibility, leakage, battery-assist, and safety review required|
|POE|Medium to High|PoE standard, Ethernet power, isolation, thermal, and port review required|
|SELV|Medium|SELV boundary, approved source, connector, and installation review required|
|ADP|Medium to High|Adapter certification, plug type, voltage, current, and package review required|
|NA|Low / Not Applicable|Usually applies to non-hardware or service records|

### ZH-TW

|供電代碼|認證影響|審查備註|
|---|---|---|
|AC|高|需要市電安全、負載、熱、外殼、標籤與安裝審查|
|DC|中至高|需要適配器、連接器、電壓、熱與外殼審查|
|USB|中|需要適配器、線材、USB-C、EMC 與供電輸入審查|
|BAT|中至高|可能涉及電池安全、運輸、充電、外殼與無線審查|
|ZN|高|需要牆內接線、火線 / 零線、負載、繼電器 / 調光與安全審查|
|SL|高|需要無零線行為、負載相容性、漏電、電池輔助與安全審查|
|POE|中至高|需要 PoE 標準、Ethernet 供電、隔離、熱與埠審查|
|SELV|中|需要 SELV 邊界、已核准來源、連接器與安裝審查|
|ADP|中至高|需要適配器認證、插頭類型、電壓、電流與包裝審查|
|NA|低 / 不適用|通常適用於非硬體或服務記錄|

---

## 29.18 Product Label Requirements by Power Code

## 29.18 依供電代碼定義產品標籤要求

### EN

|Power Code|Label Requirement|
|---|---|
|AC|Voltage, frequency, current, load rating, model, warning, certification marks where approved|
|DC|DC input voltage, current, polarity, adapter requirement|
|USB|USB input rating, adapter recommendation, cable requirement where applicable|
|BAT|Battery type, capacity where applicable, polarity, disposal and safety warning|
|ZN|Line / neutral / load marking, wiring diagram, load rating, safety warning|
|SL|Single-live wiring marking, supported load boundary, safety warning|
|POE|PoE rating and supported PoE standard where applicable|
|SELV|SELV input / output statement and approved source requirement|
|ADP|Adapter rating and approved adapter reference|
|NA|No power label unless bundled with hardware|

### ZH-TW

|供電代碼|標籤要求|
|---|---|
|AC|電壓、頻率、電流、負載額定、型號、警告、已核准認證標誌|
|DC|DC 輸入電壓、電流、極性、適配器要求|
|USB|USB 輸入額定、適配器建議、適用時線材要求|
|BAT|電池類型、適用時容量、極性、回收與安全警告|
|ZN|Line / Neutral / Load 標示、接線圖、負載額定、安全警告|
|SL|單火接線標示、支援負載邊界、安全警告|
|POE|適用時標示 PoE 額定與支援 PoE 標準|
|SELV|SELV 輸入 / 輸出聲明與已核准來源要求|
|ADP|適配器額定與已核准適配器引用|
|NA|除非與硬體綁定，否則無供電標籤|

---

## 29.19 Installation Documentation Requirements by Power Code

## 29.19 依供電代碼定義安裝文件要求

### EN

|Power Code|Installation Documentation Requirement|
|---|---|
|AC|Electrical safety warning, wiring conditions, load limits, professional installation language where required|
|DC|Adapter or DC input instructions, polarity, connector, voltage range|
|USB|USB adapter / cable requirements and safe power source instructions|
|BAT|Battery insertion, charging or replacement, storage, shipping, and low-battery behavior|
|ZN|Live, neutral, load wiring diagram and installation warning|
|SL|Single-live wiring condition, limitations, supported load boundary|
|POE|PoE switch / injector requirement, cable category, port behavior|
|SELV|Approved SELV source and low-voltage wiring limitations|
|ADP|Approved adapter use, plug region, replacement adapter requirements|
|NA|No power installation documentation unless bundled with hardware|

### ZH-TW

|供電代碼|安裝文件要求|
|---|---|
|AC|電氣安全警告、接線條件、負載限制、必要時專業安裝語言|
|DC|適配器或 DC 輸入說明、極性、連接器、電壓範圍|
|USB|USB 適配器 / 線材要求與安全電源來源說明|
|BAT|電池安裝、充電或更換、儲存、運輸與低電量行為|
|ZN|火線、零線、負載接線圖與安裝警告|
|SL|單火接線條件、限制、支援負載邊界|
|POE|PoE 交換機 / 注入器要求、線材類別、埠行為|
|SELV|已核准 SELV 來源與低壓接線限制|
|ADP|已核准適配器使用、區域插頭、替換適配器要求|
|NA|除非與硬體綁定，否則無供電安裝文件要求|

---

## 29.20 Power Claim Boundary Rules

## 29.20 供電宣稱邊界規則

### EN

|Claim Type|Rule|
|---|---|
|“AC powered”|Use only when product is designed for direct AC input|
|“Works with all loads”|Do not use without load compatibility validation|
|“No neutral required”|Use only for validated single-live / no-neutral products|
|“Neutral required”|Must be clear for ZN products|
|“Battery lasts one year”|Requires measured battery-life data and usage assumptions|
|“USB-C powered”|Use only when USB-C input is implemented and validated|
|“PoE supported”|Use only when PoE is implemented and validated|
|“Safe low voltage”|Avoid unless SELV or equivalent safety boundary is documented|
|“Certified power adapter included”|Use only when adapter certification and package record are complete|
|“Supports dimming”|Use only when dimming hardware and load validation are complete|
|“Energy saving”|Requires measurement method, baseline, and test evidence|

### ZH-TW

|宣稱類型|規則|
|---|---|
|“AC powered”|只有產品設計為直接 AC 輸入時使用|
|“Works with all loads”|無負載相容性驗證前不得使用|
|“No neutral required”|僅用於已驗證單火 / 無零線產品|
|“Neutral required”|ZN 產品必須清楚標示|
|“Battery lasts one year”|需要實測續航數據與使用假設|
|“USB-C powered”|只有 USB-C 輸入已實作並驗證時使用|
|“PoE supported”|只有 PoE 已實作並驗證時使用|
|“Safe low voltage”|除非 SELV 或等效安全邊界已有記錄，否則避免使用|
|“Certified power adapter included”|只有適配器認證與包裝記錄完整時使用|
|“Supports dimming”|只有調光硬體與負載驗證完成時使用|
|“Energy saving”|需要測量方法、基準與測試證據|

---

## 29.21 Power Architecture Change Rules

## 29.21 供電架構變更規則

### EN

Changing a power code is a controlled action. A new SKU, engineering model, certification model, manufacturing model, package record, label, or installation guide may be required.

|Change Scenario|New SKU Required?|Additional Review|
|---|--:|---|
|USB product changed to AC product|Yes|Safety, certification, label, engineering, packaging|
|DC product changed to USB product|Usually yes|Adapter, cable, label, package review|
|BAT product changed to DC product|Yes|Power architecture and user documentation review|
|ZN product changed to SL product|Yes|Installation, safety, load, certification review|
|SL product changed to ZN product|Yes|Installation, safety, product identity review|
|AC relay product changed to dimmer|Yes|Load, thermal, EMC, safety, certification review|
|ETH product adds POE|Usually yes|PoE, Ethernet, thermal, label, certification review|
|Adapter changed but output remains same|Maybe|Package, adapter certification, label review required|
|Battery capacity changed|Maybe|Battery life, shipping, label, safety review required|
|Power typo in draft SKU|No, if unreleased|Correct draft record|
|Power typo in released SKU|Change request required|Correction or replacement SKU may be needed|

### ZH-TW

變更供電代碼是一項受控動作。可能需要新 SKU、工程型號、認證型號、生產型號、包裝記錄、標籤或安裝指南。

|變更場景|是否需要新 SKU？|附加審查|
|---|--:|---|
|USB 產品變更為 AC 產品|是|安全、認證、標籤、工程、包裝|
|DC 產品變更為 USB 產品|通常是|適配器、線材、標籤、包裝審查|
|BAT 產品變更為 DC 產品|是|供電架構與用戶文件審查|
|ZN 產品變更為 SL 產品|是|安裝、安全、負載、認證審查|
|SL 產品變更為 ZN 產品|是|安裝、安全、產品身份審查|
|AC 繼電器產品變更為調光產品|是|負載、熱、EMC、安全、認證審查|
|ETH 產品新增 POE|通常是|PoE、Ethernet、熱、標籤、認證審查|
|適配器變更但輸出保持相同|視情況|需要包裝、適配器認證、標籤審查|
|電池容量變更|視情況|需要續航、運輸、標籤、安全審查|
|草案 SKU 中供電代碼錯誤|若未發布則不需要|修正草案記錄|
|已發布 SKU 中供電代碼錯誤|需要變更申請|可能需要修正或替代 SKU|

---

## 29.22 Power Architecture Master Table Template

## 29.22 供電架構主表模板

### EN

|Field|Entry|
|---|---|
|Power Code|TBD|
|Power Name|TBD|
|Power Type|AC / DC / USB / Battery / Wiring / PoE / SELV / Adapter / Not Applicable|
|Description|TBD|
|Typical Product Lines|TBD|
|Compatible Product Lines|TBD|
|Restricted Product Lines|TBD|
|Certification Impact|Low / Medium / High|
|Engineering Requirements|TBD|
|Label Requirements|TBD|
|Installation Documentation Requirements|TBD|
|Packaging Impact|TBD|
|Claim Boundary Notes|TBD|
|Approval Status|Draft / Pending / Approved / Deprecated / Archived|
|Engineering Owner|TBD|
|Compliance Owner|TBD|
|Revision Date|TBD|
|Change Log Reference|TBD|

### ZH-TW

|欄位|填寫|
|---|---|
|供電代碼|TBD|
|供電名稱|TBD|
|供電類型|AC / DC / USB / Battery / Wiring / PoE / SELV / Adapter / Not Applicable|
|說明|TBD|
|典型產品線|TBD|
|相容產品線|TBD|
|限制產品線|TBD|
|認證影響|Low / Medium / High|
|工程要求|TBD|
|標籤要求|TBD|
|安裝文件要求|TBD|
|包裝影響|TBD|
|宣稱邊界備註|TBD|
|核准狀態|Draft / Pending / Approved / Deprecated / Archived|
|工程負責人|TBD|
|合規負責人|TBD|
|修訂日期|TBD|
|變更記錄引用|TBD|

---

## 29.23 Completed Example — BAT Power Record

## 29.23 完整示例 — BAT 供電記錄

### EN

|Field|Entry|
|---|---|
|Power Code|BAT|
|Power Name|Battery|
|Power Type|Battery|
|Description|Used for products powered primarily by battery|
|Typical Product Lines|SW, SNS|
|Compatible Product Lines|SW, SNS, selected PNL or VIS only if approved|
|Restricted Product Lines|AC load-control products unless separately approved|
|Certification Impact|Medium to High|
|Engineering Requirements|Battery type, capacity, sleep current, wake behavior, power budget, charging circuit if applicable|
|Label Requirements|Battery type, polarity, disposal / safety notes, capacity where applicable|
|Installation Documentation Requirements|Battery insertion, charging / replacement, storage, low-battery behavior|
|Packaging Impact|Battery shipping, safety marking, included battery statement where applicable|
|Claim Boundary Notes|Battery-life claims require measured data and defined usage profile|
|Approval Status|Pending Review|
|Engineering Owner|TBD|
|Compliance Owner|TBD|
|Revision Date|TBD|
|Change Log Reference|CR-PWR-BAT-001|

### ZH-TW

|欄位|填寫|
|---|---|
|供電代碼|BAT|
|供電名稱|Battery|
|供電類型|Battery|
|說明|用於主要由電池供電的產品|
|典型產品線|SW、SNS|
|相容產品線|SW、SNS，特定 PNL 或 VIS 僅在核准後使用|
|限制產品線|AC 負載控制產品，除非另行核准|
|認證影響|Medium to High|
|工程要求|電池類型、容量、睡眠電流、喚醒行為、功耗預算、適用時充電電路|
|標籤要求|電池類型、極性、回收 / 安全說明、適用時容量|
|安裝文件要求|電池安裝、充電 / 更換、儲存、低電量行為|
|包裝影響|適用時包含電池運輸、安全標示、是否內含電池說明|
|宣稱邊界備註|續航宣稱需要實測數據與明確使用模型|
|核准狀態|Pending Review|
|工程負責人|TBD|
|合規負責人|TBD|
|修訂日期|TBD|
|變更記錄引用|CR-PWR-BAT-001|

---

## 29.24 Completed Example — ZN Power Record

## 29.24 完整示例 — ZN 供電記錄

### EN

|Field|Entry|
|---|---|
|Power Code|ZN|
|Power Name|Zero-Neutral Wiring|
|Power Type|Wiring|
|Description|Used for smart switch products requiring live and neutral wiring|
|Typical Product Lines|SW|
|Compatible Product Lines|SW, selected ACT where approved|
|Restricted Product Lines|Battery-only scene switch products|
|Certification Impact|High|
|Engineering Requirements|Live / neutral input, load output, relay or dimmer design, insulation, thermal, protection, enclosure safety|
|Label Requirements|Line / neutral / load marking, rating, safety warning|
|Installation Documentation Requirements|Wiring diagram, neutral requirement, load boundary, professional installation language where required|
|Packaging Impact|Installation compatibility must be visible before purchase|
|Claim Boundary Notes|Must not be described as no-neutral; load and dimming claims require validation|
|Approval Status|Pending Review|
|Engineering Owner|TBD|
|Compliance Owner|TBD|
|Revision Date|TBD|
|Change Log Reference|CR-PWR-ZN-001|

### ZH-TW

|欄位|填寫|
|---|---|
|供電代碼|ZN|
|供電名稱|Zero-Neutral Wiring|
|供電類型|Wiring|
|說明|用於需要火線與零線接入的智慧開關產品|
|典型產品線|SW|
|相容產品線|SW，特定 ACT 需核准後使用|
|限制產品線|電池-only 場景開關產品|
|認證影響|High|
|工程要求|火線 / 零線輸入、負載輸出、繼電器或調光設計、絕緣、熱、保護、外殼安全|
|標籤要求|Line / Neutral / Load 標示、額定、安全警告|
|安裝文件要求|接線圖、零線要求、負載邊界、必要時專業安裝語言|
|包裝影響|購買前必須清楚呈現安裝相容性|
|宣稱邊界備註|不得描述為無零線；負載與調光宣稱需要驗證|
|核准狀態|Pending Review|
|工程負責人|TBD|
|合規負責人|TBD|
|修訂日期|TBD|
|變更記錄引用|CR-PWR-ZN-001|

---

## 29.25 Completed Example — AC Power Record

## 29.25 完整示例 — AC 供電記錄

### EN

|Field|Entry|
|---|---|
|Power Code|AC|
|Power Name|AC Mains|
|Power Type|AC|
|Description|Used for products directly powered by AC mains|
|Typical Product Lines|ACT, selected SW, Plug-class products|
|Compatible Product Lines|ACT, SW-RLY, SW-DIM, selected PNL only if approved|
|Restricted Product Lines|Battery-only, USB-only, service records|
|Certification Impact|High|
|Engineering Requirements|Creepage, clearance, insulation, relay / load design, protection, thermal, enclosure safety|
|Label Requirements|Voltage, frequency, current, load rating, model, warning, certification marks where approved|
|Installation Documentation Requirements|Electrical safety warning, wiring conditions, supported load boundary|
|Packaging Impact|Region, voltage, installation requirement, and safety warning must be visible|
|Claim Boundary Notes|No safety certification, load compatibility, dimming, or energy-saving claim without validation and approval|
|Approval Status|Pending Review|
|Engineering Owner|TBD|
|Compliance Owner|TBD|
|Revision Date|TBD|
|Change Log Reference|CR-PWR-AC-001|

### ZH-TW

|欄位|填寫|
|---|---|
|供電代碼|AC|
|供電名稱|AC Mains|
|供電類型|AC|
|說明|用於直接由 AC 市電供電的產品|
|典型產品線|ACT、特定 SW、Plug 類產品|
|相容產品線|ACT、SW-RLY、SW-DIM，特定 PNL 僅在核准後使用|
|限制產品線|電池-only、USB-only、服務記錄|
|認證影響|High|
|工程要求|爬電距離、電氣間隙、絕緣、繼電器 / 負載設計、保護、熱、外殼安全|
|標籤要求|電壓、頻率、電流、負載額定、型號、警告、已核准認證標誌|
|安裝文件要求|電氣安全警告、接線條件、支援負載邊界|
|包裝影響|必須清楚呈現區域、電壓、安裝要求與安全警告|
|宣稱邊界備註|未驗證與核准前，不得宣稱安全認證、負載相容性、調光或節能|
|核准狀態|Pending Review|
|工程負責人|TBD|
|合規負責人|TBD|
|修訂日期|TBD|
|變更記錄引用|CR-PWR-AC-001|

---

## 29.26 Power Architecture Master Governance Rules

## 29.26 供電架構主表治理規則

### EN

|Rule|Requirement|
|---|---|
|Power codes must be approved before SKU creation|No SKU should use an undefined power code|
|Power code must match actual electrical design|Do not encode planned or future power architecture as current capability|
|Mains-powered products require safety review|AC, ZN, SL, relay, dimmer, and load-control products require strict review|
|Battery products require battery records|Battery type, capacity, power budget, transport, and safety must be recorded|
|Adapter-powered products require adapter records|Adapter rating, certification, plug type, and package status must be recorded|
|Wiring products require installation documentation|ZN and SL require clear wiring instructions|
|Power label must match power code|Label, manual, and SKU must align|
|Power claims require validation|Battery life, load rating, dimming, energy saving, and safety claims require evidence|
|Power changes require change control|No silent power architecture change|
|Deprecated power codes must remain archived|Historical SKU traceability must be preserved|

### ZH-TW

|規則|要求|
|---|---|
|供電代碼必須在 SKU 建立前核准|不得使用未定義供電代碼建立 SKU|
|供電代碼必須匹配實際電氣設計|不得將計劃或未來供電架構編為當前能力|
|市電產品需要安全審查|AC、ZN、SL、繼電器、調光與負載控制產品需要嚴格審查|
|電池產品需要電池記錄|必須記錄電池類型、容量、功耗預算、運輸與安全|
|適配器供電產品需要適配器記錄|必須記錄適配器額定、認證、插頭類型與包裝狀態|
|接線產品需要安裝文件|ZN 與 SL 需要清晰接線說明|
|供電標籤必須匹配供電代碼|標籤、手冊與 SKU 必須一致|
|供電宣稱需要驗證|續航、負載額定、調光、節能與安全宣稱需要證據|
|供電變更需要變更管控|不得靜默變更供電架構|
|已停用供電代碼必須歸檔|必須保留歷史 SKU 可追蹤性|

---

## 29.27 Spreadsheet Column Recommendation

## 29.27 表格欄位建議

### EN

For Excel, Google Sheets, Airtable, ERP staging tables, or PLM reference tables, the following column order is recommended:

```text
Power Code
Power Name
Power Type
Description
Typical Product Lines
Compatible Product Lines
Restricted Product Lines
Certification Impact
Engineering Requirements
Label Requirements
Installation Documentation Requirements
Packaging Impact
Claim Boundary Notes
Approval Status
Engineering Owner
Compliance Owner
Revision Date
Change Log Reference
```

### ZH-TW

對於 Excel、Google Sheets、Airtable、ERP 暫存表或 PLM 參考表，建議使用以下欄位順序：

```text
Power Code
Power Name
Power Type
Description
Typical Product Lines
Compatible Product Lines
Restricted Product Lines
Certification Impact
Engineering Requirements
Label Requirements
Installation Documentation Requirements
Packaging Impact
Claim Boundary Notes
Approval Status
Engineering Owner
Compliance Owner
Revision Date
Change Log Reference
```

---

## 29.28 Chapter Conclusion

## 29.28 本章結論

### EN

The Power Architecture Master Table controls how Artibird products describe electrical input, wiring, battery operation, USB power, DC power, PoE, SELV boundaries, adapter use, and non-powered service records.

Power codes are safety-critical fields. They affect engineering, certification, labeling, packaging, installation, support, warranty, and customer-facing claims.

A controlled power architecture table allows Artibird to manage AC, DC, USB, BAT, ZN, SL, POE, SELV, ADP, and NA records consistently across SKU creation, product validation, certification review, manufacturing, packaging, Amazon listing, channel release, support, retirement, and lifecycle governance.

### ZH-TW

供電架構主表管控 Artibird 產品如何描述電氣輸入、接線方式、電池運作、USB 供電、DC 供電、PoE、SELV 邊界、適配器使用與非供電服務記錄。

供電代碼是安全關鍵欄位。它影響工程、認證、標籤、包裝、安裝、支持、保固與面向客戶宣稱。

受控的供電架構主表，可使 Artibird 在 SKU 建立、產品驗證、認證審查、生產、包裝、Amazon 上架、渠道發布、支持、退市與生命週期治理中，一致管理 AC、DC、USB、BAT、ZN、SL、POE、SELV、ADP 與 NA 記錄。

---

**話題延伸｜互動建議**  
下一章可以繼續寫 **Chapter 30 — Variant and Function Master Table｜第三十章｜版本與功能主表**，把 STD、PRO、E、SCN、RLY、DIM、CLM、CAM、EDGE、EDU、CUSTOM 等版本代碼的功能邊界、產品線適配、認證影響與宣稱限制整理成一張主表。