# Artibird SKU & Model Naming Specification v1.0

# Artibird SKU 與型號命名規範 v1.0

## Chapter 28 — Connectivity Master Table

## 第二十八章｜連接方式主表

---

## 28.1 Purpose

## 28.1 目的

### EN

This chapter defines the Connectivity Master Table used by Artibird SKU records, internal model records, engineering model records, certification records, manufacturing records, package records, Amazon listings, and product claim reviews.

The connectivity code identifies the communication, network, protocol, or service-access method associated with a SKU or system-layer record.

The purpose of this chapter is to ensure that connectivity codes are used consistently and accurately across product planning, engineering, certification, packaging, Amazon listings, channel sales, technical documentation, and customer-facing communication.

### ZH-TW

本章定義 Artibird SKU 記錄、內部型號記錄、工程型號記錄、認證記錄、生產記錄、包裝記錄、Amazon 上架與產品宣稱審查中使用的連接方式主表。

連接代碼用於識別某一 SKU 或系統層記錄所對應的通訊、網路、協議或服務接入方式。

本章目的，是確保連接代碼在產品規劃、工程、認證、包裝、Amazon 上架、渠道銷售、技術文件與面向客戶溝通中被一致且準確地使用。

---

## 28.2 Connectivity Code Definition

## 28.2 連接代碼定義

### EN

A connectivity code defines how a product connects, communicates, synchronizes, or participates in the Artibird / OceanAI system.

It answers the following questions:

|Question|Description|
|---|---|
|How does the product communicate?|Wi-Fi, Ethernet, BLE, IR, RF, hybrid, cloud, or none|
|Does it use wireless communication?|Important for FCC, CE, RED, ISED, NCC, MIC / TELEC, and other reviews|
|Does it use wired networking?|Important for Ethernet, gateway, hub, and local runtime products|
|Does it control devices through IR or RF?|Important for Sync, appliance control, and RF claim scope|
|Does it depend on cloud connectivity?|Important for App, Cloud, subscription, and remote-access records|
|Does it have no direct connectivity?|NA may be used for service, accessory, or non-connected package records|
|Does the code imply multiple connectivity paths?|HYB requires explicit validation notes|
|Can the connectivity code be used as a marketing claim?|Only within validated and approved scope|

### ZH-TW

連接代碼定義產品如何在 Artibird / OceanAI 系統中連接、通訊、同步或參與。

它回答以下問題：

|問題|說明|
|---|---|
|產品如何通訊？|Wi-Fi、Ethernet、BLE、IR、RF、混合、雲端或無連接|
|是否使用無線通訊？|對 FCC、CE、RED、ISED、NCC、MIC / TELEC 等審查很重要|
|是否使用有線網路？|對 Ethernet、網關、中樞與本地 Runtime 產品很重要|
|是否透過 IR 或 RF 控制設備？|對 Sync、家電控制與 RF 宣稱範圍很重要|
|是否依賴雲端連接？|對 App、Cloud、訂閱與遠端存取記錄很重要|
|是否沒有直接連接？|NA 可用於服務、配件或非連接包裝記錄|
|該代碼是否暗示多種連接路徑？|HYB 需要明確驗證備註|
|連接代碼是否可作為行銷宣稱？|僅可在已驗證與已核准範圍內使用|

---

## 28.3 Connectivity Governance Principle

## 28.3 連接方式治理原則

### EN

The core principle of connectivity governance is:

```text
One connectivity code = one controlled communication or access method.
```

A connectivity code must describe actual implemented and validated capability.  
It must not be used to imply unsupported protocols, untested range, universal compatibility, or global certification.

For example:

```text
HYB = Hybrid connectivity
```

It does not automatically mean:

```text
Wi-Fi + Ethernet + BLE Mesh + Matter + Thread + Zigbee + RF all supported
```

The actual supported paths must be recorded in the SKU master table, engineering record, product specification, and claim boundary notes.

### ZH-TW

連接方式治理的核心原則是：

```text
一個連接代碼 = 一種受控通訊或接入方式。
```

連接代碼必須描述實際已實作且已驗證的能力。  
它不得用於暗示未支援協議、未測試距離、Universal 相容性或全球認證。

例如：

```text
HYB = 混合連接
```

它不自動代表：

```text
同時支援 Wi-Fi + Ethernet + BLE Mesh + Matter + Thread + Zigbee + RF
```

實際支援路徑必須記錄於 SKU 主表、工程記錄、產品規格書與宣稱邊界備註中。

---

## 28.4 Standard Connectivity Master Table

## 28.4 標準連接方式主表

### EN

|Connectivity Code|Connectivity Name|Meaning|Typical Use|
|---|---|---|---|
|WF|Wi-Fi|Wi-Fi connectivity|Hub, Gate, Switch, Panel, Act, Vision|
|ETH|Ethernet|Wired Ethernet connectivity|Hub, Gate, Edge|
|BLE|Bluetooth Low Energy|BLE or BLE Mesh connectivity|Switch, Sense, Gate, battery devices|
|IR|Infrared|Infrared control or learning|Sync, appliance control|
|RF|Radio Frequency|RF control or RF communication|Sync, RF remote-control support|
|IRRF|Infrared + RF|Combined IR and RF capability|Sync products|
|HYB|Hybrid Connectivity|Multiple validated connectivity paths|Gate, Hub, Edge, kits|
|CLD|Cloud Connectivity|Cloud or service-layer connectivity|App, Cloud, service records|
|USB|USB / USB-C Local Link|USB power or local physical connection where used as connectivity|Gate, Sync, accessories|
|LAN|Local Area Network|Local network participation|Hub, Edge, local runtime products|
|NA|Not Applicable|No direct connectivity field applies|Accessories, non-connected package, service placeholder|

### ZH-TW

|連接代碼|連接名稱|含義|典型用途|
|---|---|---|---|
|WF|Wi-Fi|Wi-Fi 連接|Hub、Gate、Switch、Panel、Act、Vision|
|ETH|Ethernet|有線 Ethernet 連接|Hub、Gate、Edge|
|BLE|Bluetooth Low Energy|BLE 或 BLE Mesh 連接|Switch、Sense、Gate、電池設備|
|IR|Infrared|紅外控制或學習|Sync、家電控制|
|RF|Radio Frequency|RF 控制或 RF 通訊|Sync、RF 遙控支援|
|IRRF|Infrared + RF|IR 與 RF 複合能力|Sync 產品|
|HYB|Hybrid Connectivity|多種已驗證連接路徑|Gate、Hub、Edge、套組|
|CLD|Cloud Connectivity|雲端或服務層連接|App、Cloud、服務記錄|
|USB|USB / USB-C Local Link|USB 供電或作為本地物理連接|Gate、Sync、配件|
|LAN|Local Area Network|本地網路參與|Hub、Edge、本地 Runtime 產品|
|NA|Not Applicable|不適用直接連接欄位|配件、非連接包裝、服務佔位|

---

## 28.5 Connectivity Code Usage in SKU Format

## 28.5 連接代碼在 SKU 格式中的使用

### EN

The connectivity code appears in the fifth field of the official SKU structure:

```text
ATB-[PRODUCT]-[GEN]-[REGION]-[CONNECTIVITY]-[POWER]-[VARIANT]-[PACKAGE]
```

Example:

```text
ATB-GATE-G1-US-HYB-USB-PRO-S
```

This means:

|Field|Value|Meaning|
|---|---|---|
|Brand|ATB|Artibird|
|Product|GATE|Artibird Gate|
|Generation|G1|First generation|
|Region|US|United States market configuration|
|Connectivity|HYB|Hybrid connectivity|
|Power|USB|USB / USB-C powered|
|Variant|PRO|Professional version|
|Package|S|Single unit|

The HYB code must be supported by a connectivity note defining exactly which connectivity paths are implemented and validated.

### ZH-TW

連接代碼出現在官方 SKU 結構的第五個欄位：

```text
ATB-[產品]-[世代]-[區域]-[連接]-[供電]-[版本]-[包裝]
```

示例：

```text
ATB-GATE-G1-US-HYB-USB-PRO-S
```

表示：

|欄位|數值|含義|
|---|---|---|
|品牌|ATB|Artibird|
|產品|GATE|Artibird Gate|
|世代|G1|第一代|
|區域|US|美國市場配置|
|連接|HYB|混合連接|
|供電|USB|USB / USB-C 供電|
|版本|PRO|專業版|
|包裝|S|單品|

HYB 代碼必須由連接備註支持，明確定義哪些連接路徑已實作並完成驗證。

---

## 28.6 Wi-Fi Code — WF

## 28.6 Wi-Fi 代碼 — WF

### EN

The WF code is used for products with Wi-Fi connectivity.

|Field|Requirement|
|---|---|
|Connectivity Code|WF|
|Connectivity Name|Wi-Fi|
|Typical Product Lines|Hub, Gate, Switch, Panel, Act, Vision|
|Certification Relevance|Wireless certification, RF exposure, EMC, regional wireless requirements|
|Engineering Requirement|Wi-Fi chipset, antenna design, firmware stack, onboarding, security|
|Label Consideration|Wireless identifiers and region-specific requirements where applicable|
|Claim Boundary|Do not imply support for all Wi-Fi bands, standards, or ranges unless validated|

WF should be used only when Wi-Fi is an actual implemented and validated communication path.

### ZH-TW

WF 代碼用於具備 Wi-Fi 連接能力的產品。

|欄位|要求|
|---|---|
|連接代碼|WF|
|連接名稱|Wi-Fi|
|典型產品線|Hub、Gate、Switch、Panel、Act、Vision|
|認證相關性|無線認證、RF 暴露、EMC、區域無線要求|
|工程要求|Wi-Fi 晶片、天線設計、韌體協議棧、入網、安全|
|標籤考量|適用時包含無線識別與區域特定要求|
|宣稱邊界|未驗證前不得暗示支援所有 Wi-Fi 頻段、標準或距離|

WF 只有在 Wi-Fi 是實際已實作且已驗證的通訊路徑時才可使用。

---

## 28.7 Ethernet Code — ETH

## 28.7 Ethernet 代碼 — ETH

### EN

The ETH code is used for products with wired Ethernet connectivity.

|Field|Requirement|
|---|---|
|Connectivity Code|ETH|
|Connectivity Name|Ethernet|
|Typical Product Lines|Hub, Gate, Edge|
|Certification Relevance|EMC, safety, adapter, Ethernet port, surge / ESD review where applicable|
|Engineering Requirement|Ethernet PHY, RJ45 or equivalent connector, isolation, local network behavior|
|Label Consideration|Electrical and network port labeling where applicable|
|Claim Boundary|Do not imply PoE, gigabit, industrial Ethernet, or router capability unless validated|

ETH should be used only when Ethernet is an actual implemented connection path.

### ZH-TW

ETH 代碼用於具備有線 Ethernet 連接能力的產品。

|欄位|要求|
|---|---|
|連接代碼|ETH|
|連接名稱|Ethernet|
|典型產品線|Hub、Gate、Edge|
|認證相關性|適用時涉及 EMC、安全、適配器、Ethernet 埠、浪湧 / ESD 審查|
|工程要求|Ethernet PHY、RJ45 或等效連接器、隔離、本地網路行為|
|標籤考量|適用時包含電氣與網路埠標示|
|宣稱邊界|未驗證前不得暗示 PoE、Gigabit、工業 Ethernet 或路由器能力|

ETH 只有在 Ethernet 是實際已實作的連接路徑時才可使用。

---

## 28.8 Bluetooth Low Energy Code — BLE

## 28.8 Bluetooth Low Energy 代碼 — BLE

### EN

The BLE code is used for products with Bluetooth Low Energy or BLE Mesh connectivity.

|Field|Requirement|
|---|---|
|Connectivity Code|BLE|
|Connectivity Name|Bluetooth Low Energy|
|Typical Product Lines|Switch, Sense, Gate, battery devices|
|Certification Relevance|Wireless certification, Bluetooth-related qualification, RF, regional review|
|Engineering Requirement|BLE chipset, antenna, pairing, mesh behavior, power profile|
|Battery Relevance|High for low-power devices|
|Claim Boundary|Do not imply BLE Mesh, long range, or low-power performance unless validated|

BLE should be used carefully for battery-powered devices. If BLE Mesh, LPN, Friend, relay behavior, or gateway behavior is claimed, it must be documented separately.

### ZH-TW

BLE 代碼用於具備 Bluetooth Low Energy 或 BLE Mesh 連接能力的產品。

|欄位|要求|
|---|---|
|連接代碼|BLE|
|連接名稱|Bluetooth Low Energy|
|典型產品線|Switch、Sense、Gate、電池設備|
|認證相關性|無線認證、Bluetooth 相關資格、RF、區域審查|
|工程要求|BLE 晶片、天線、配對、Mesh 行為、功耗特性|
|電池相關性|對低功耗設備高度相關|
|宣稱邊界|未驗證前不得暗示 BLE Mesh、長距離或低功耗性能|

BLE 在電池供電設備中應謹慎使用。如果宣稱 BLE Mesh、LPN、Friend、Relay 行為或 Gateway 行為，必須另行記錄。

---

## 28.9 Infrared Code — IR

## 28.9 Infrared 代碼 — IR

### EN

The IR code is used for products with infrared control, infrared transmission, infrared learning, or infrared appliance synchronization capability.

|Field|Requirement|
|---|---|
|Connectivity Code|IR|
|Connectivity Name|Infrared|
|Typical Product Lines|Sync|
|Certification Relevance|Usually lower than RF, but EMC and product safety may still apply|
|Engineering Requirement|IR LED, IR receiver, learning circuit, protocol database, timing accuracy|
|Product Use|TV, AC, fan, projector, set-top box, and supported IR appliances|
|Claim Boundary|Do not imply universal IR compatibility unless supported by validated protocol database|

IR should be used when infrared capability is the primary or independent communication method.

### ZH-TW

IR 代碼用於具備紅外控制、紅外發射、紅外學習或紅外家電同步能力的產品。

|欄位|要求|
|---|---|
|連接代碼|IR|
|連接名稱|Infrared|
|典型產品線|Sync|
|認證相關性|通常低於 RF，但仍可能涉及 EMC 與產品安全|
|工程要求|IR LED、IR 接收器、學習電路、協議資料庫、時序準確性|
|產品用途|電視、空調、風扇、投影、機頂盒與受支援 IR 家電|
|宣稱邊界|除非協議資料庫已驗證，否則不得暗示 universal IR 相容性|

IR 應在紅外能力是主要或獨立通訊方式時使用。

---

## 28.10 Radio Frequency Code — RF

## 28.10 Radio Frequency 代碼 — RF

### EN

The RF code is used for products with RF control, RF transmission, RF reception, or RF remote-control support.

|Field|Requirement|
|---|---|
|Connectivity Code|RF|
|Connectivity Name|Radio Frequency|
|Typical Product Lines|Sync, selected gateway or control products where applicable|
|Certification Relevance|High; RF behavior requires region-specific wireless review|
|Engineering Requirement|RF transmitter / receiver, antenna, frequency plan, modulation, protocol support|
|Product Use|433.92 MHz fixed-code remote-control support where validated|
|Claim Boundary|Do not imply all RF frequencies, rolling codes, encrypted codes, or universal RF support unless validated|

RF claims must always be region-specific because RF frequency use and regulatory approval vary by market.

### ZH-TW

RF 代碼用於具備 RF 控制、RF 發射、RF 接收或 RF 遙控支援能力的產品。

|欄位|要求|
|---|---|
|連接代碼|RF|
|連接名稱|Radio Frequency|
|典型產品線|Sync，適用時包含特定網關或控制產品|
|認證相關性|高；RF 行為需要區域性無線審查|
|工程要求|RF 發射器 / 接收器、天線、頻率規劃、調變方式、協議支援|
|產品用途|已驗證條件下支援 433.92 MHz 固定碼遙控|
|宣稱邊界|未驗證前不得暗示支援所有 RF 頻率、滾動碼、加密碼或 universal RF|

RF 宣稱必須始終具有區域邊界，因為 RF 頻率使用與法規核准會因市場而異。

---

## 28.11 Infrared + RF Code — IRRF

## 28.11 Infrared + RF 代碼 — IRRF

### EN

The IRRF code is used when both IR and RF capabilities are implemented and validated in one product.

|Field|Requirement|
|---|---|
|Connectivity Code|IRRF|
|Connectivity Name|Infrared + RF|
|Typical Product Lines|Sync|
|Certification Relevance|RF portion requires region-specific wireless review|
|Engineering Requirement|IR subsystem, RF subsystem, protocol database, learning or matching workflow|
|Product Use|Combined appliance and RF remote-control synchronization|
|Claim Boundary|Must define supported IR device types, RF frequency, protocol scope, and unsupported cases|

IRRF is not equivalent to universal remote compatibility. It must be supported by an explicit compatibility and protocol scope record.

### ZH-TW

IRRF 代碼用於同一產品同時具備 IR 與 RF 能力，且兩者均已實作並驗證的情況。

|欄位|要求|
|---|---|
|連接代碼|IRRF|
|連接名稱|Infrared + RF|
|典型產品線|Sync|
|認證相關性|RF 部分需要區域性無線審查|
|工程要求|IR 子系統、RF 子系統、協議資料庫、學習或匹配流程|
|產品用途|結合家電與 RF 遙控同步|
|宣稱邊界|必須定義支援的 IR 設備類型、RF 頻率、協議範圍與不支援情況|

IRRF 不等同於 universal remote 相容性。它必須由明確的相容性與協議範圍記錄支持。

---

## 28.12 Hybrid Connectivity Code — HYB

## 28.12 Hybrid Connectivity 代碼 — HYB

### EN

The HYB code is used when a product supports multiple validated connectivity paths.

|Field|Requirement|
|---|---|
|Connectivity Code|HYB|
|Connectivity Name|Hybrid Connectivity|
|Typical Product Lines|Gate, Hub, Edge, kits|
|Certification Relevance|Depends on all included connectivity paths|
|Engineering Requirement|Each included connectivity path must be defined and validated|
|Product Use|Gateway, hub, system kit, professional deployment|
|Claim Boundary|HYB must list actual supported paths; do not imply unsupported protocols|

Example HYB note:

```text
HYB = Wi-Fi + Ethernet + BLE Mesh gateway behavior
```

Another HYB product may define:

```text
HYB = Ethernet + local MQTT + cloud sync
```

Therefore, HYB must always include a connectivity path description in the master table.

### ZH-TW

HYB 代碼用於產品支援多種已驗證連接路徑的情況。

|欄位|要求|
|---|---|
|連接代碼|HYB|
|連接名稱|Hybrid Connectivity|
|典型產品線|Gate、Hub、Edge、套組|
|認證相關性|取決於所有內含連接路徑|
|工程要求|每一條內含連接路徑都必須被定義與驗證|
|產品用途|網關、中樞、系統套組、專業部署|
|宣稱邊界|HYB 必須列出實際支援路徑；不得暗示未支援協議|

HYB 備註示例：

```text
HYB = Wi-Fi + Ethernet + BLE Mesh gateway behavior
```

另一個 HYB 產品可能定義為：

```text
HYB = Ethernet + local MQTT + cloud sync
```

因此，HYB 必須始終在主表中包含連接路徑說明。

---

## 28.13 Cloud Connectivity Code — CLD

## 28.13 Cloud Connectivity 代碼 — CLD

### EN

The CLD code is used for cloud-based services, app-to-cloud access, remote access, account services, subscription services, or cloud-managed records.

|Field|Requirement|
|---|---|
|Connectivity Code|CLD|
|Connectivity Name|Cloud Connectivity|
|Typical Product Lines|APP, CLD, service records, cloud-enabled packages|
|Certification Relevance|Usually service, privacy, data security, and software policy review rather than hardware RF review|
|Engineering Requirement|Cloud API, account system, remote access, service availability, security policy|
|Product Use|App services, cloud subscription, remote coordination, multi-site services|
|Claim Boundary|Do not imply local control, privacy guarantee, uptime, or analytics capability unless documented|

CLD should be used only when cloud or service-layer connectivity is central to the SKU or service record.

### ZH-TW

CLD 代碼用於雲端服務、App-to-cloud 存取、遠端存取、帳號服務、訂閱服務或雲端管理記錄。

|欄位|要求|
|---|---|
|連接代碼|CLD|
|連接名稱|Cloud Connectivity|
|典型產品線|APP、CLD、服務記錄、雲端啟用套組|
|認證相關性|通常涉及服務、隱私、數據安全與軟體政策審查，而不是硬體 RF 審查|
|工程要求|Cloud API、帳號系統、遠端存取、服務可用性、安全政策|
|產品用途|App 服務、雲端訂閱、遠端協同、多站點服務|
|宣稱邊界|未文件化前，不得暗示本地控制、隱私保證、上線率或分析能力|

CLD 只有在雲端或服務層連接是該 SKU 或服務記錄的核心時才應使用。

---

## 28.14 USB Code — USB

## 28.14 USB 代碼 — USB

### EN

The USB code is used when USB or USB-C is relevant as a power input, local physical connection, accessory interface, or service interface.

|Field|Requirement|
|---|---|
|Connectivity Code|USB|
|Connectivity Name|USB / USB-C Local Link|
|Typical Product Lines|Gate, Sync, accessories|
|Certification Relevance|Adapter, cable, EMC, safety, and charging / power review where applicable|
|Engineering Requirement|USB connector, power input, data role if any, cable rating, adapter compatibility|
|Product Use|USB-powered controllers, setup connection, accessory linkage|
|Claim Boundary|Do not imply USB data transfer, charging speed, or PD support unless validated|

If USB is only a power architecture, it should also be reflected in the Power Code field.  
If USB is also a data connection, the engineering record must describe the supported data role.

### ZH-TW

USB 代碼用於 USB 或 USB-C 作為供電輸入、本地物理連接、配件介面或服務介面時。

|欄位|要求|
|---|---|
|連接代碼|USB|
|連接名稱|USB / USB-C Local Link|
|典型產品線|Gate、Sync、配件|
|認證相關性|適用時涉及適配器、線材、EMC、安全與充電 / 供電審查|
|工程要求|USB 連接器、供電輸入、若有數據角色則需定義、線材額定、適配器相容性|
|產品用途|USB 供電控制器、設定連接、配件連結|
|宣稱邊界|未驗證前不得暗示 USB 數據傳輸、充電速度或 PD 支援|

如果 USB 僅作為供電架構，亦應反映於 Power Code 欄位。  
如果 USB 也作為數據連接，工程記錄必須描述支援的數據角色。

---

## 28.15 Local Area Network Code — LAN

## 28.15 Local Area Network 代碼 — LAN

### EN

The LAN code is used when local network participation is central to the product or system record.

|Field|Requirement|
|---|---|
|Connectivity Code|LAN|
|Connectivity Name|Local Area Network|
|Typical Product Lines|Hub, Edge, local runtime records|
|Certification Relevance|Depends on underlying Wi-Fi, Ethernet, or other network interface|
|Engineering Requirement|Local discovery, local API, MQTT, local web server, state synchronization|
|Product Use|Local control, local runtime, offline operation, LAN-based coordination|
|Claim Boundary|Do not imply internet-free operation unless offline behavior is validated|

LAN may be used when the product’s defining role is local network participation rather than a single physical interface.

### ZH-TW

LAN 代碼用於本地網路參與是產品或系統記錄核心角色的情況。

|欄位|要求|
|---|---|
|連接代碼|LAN|
|連接名稱|Local Area Network|
|典型產品線|Hub、Edge、本地 Runtime 記錄|
|認證相關性|取決於底層 Wi-Fi、Ethernet 或其他網路介面|
|工程要求|本地發現、本地 API、MQTT、本地 Web Server、狀態同步|
|產品用途|本地控制、本地 Runtime、離線運作、LAN-based 協同|
|宣稱邊界|未驗證離線行為前，不得暗示完全無網際網路運作|

當產品的定義性角色是本地網路參與，而不是單一物理介面時，可使用 LAN。

---

## 28.16 Not Applicable Code — NA

## 28.16 Not Applicable 代碼 — NA

### EN

The NA code is used when connectivity is not applicable to the SKU or record.

|Field|Requirement|
|---|---|
|Connectivity Code|NA|
|Connectivity Name|Not Applicable|
|Typical Product Lines|Accessories, non-connected packages, some service placeholders|
|Certification Relevance|Depends on accessory or package type|
|Engineering Requirement|No direct connectivity implementation|
|Product Use|Packaging, accessory, passive component, non-connected record|
|Claim Boundary|Do not use NA for connected products simply because connectivity is undecided|

NA should not be used to avoid defining a real connectivity requirement. If connectivity is still undecided, use Draft status and record the field as TBD until confirmed.

### ZH-TW

NA 代碼用於連接方式不適用於該 SKU 或記錄的情況。

|欄位|要求|
|---|---|
|連接代碼|NA|
|連接名稱|Not Applicable|
|典型產品線|配件、非連接包裝、部分服務佔位記錄|
|認證相關性|取決於配件或包裝類型|
|工程要求|無直接連接實作|
|產品用途|包裝、配件、被動元件、非連接記錄|
|宣稱邊界|不得因連接方式尚未決定而將連接產品標為 NA|

NA 不應用於迴避定義真實連接需求。如果連接方式尚未決定，應使用 Draft 狀態，並將欄位標為 TBD 直到確認。

---

## 28.17 Product Line Compatibility Matrix

## 28.17 產品線相容矩陣

### EN

|Product Line Code|WF|ETH|BLE|IR|RF|IRRF|HYB|CLD|USB|LAN|NA|
|---|--:|--:|--:|--:|--:|--:|--:|--:|--:|--:|--:|
|HUB|Yes|Yes|Maybe|No|No|No|Maybe|Maybe|Maybe|Yes|No|
|GATE|Yes|Yes|Yes|No|Maybe|Maybe|Yes|Maybe|Yes|Yes|No|
|SYNC|Maybe|No|Maybe|Yes|Yes|Yes|Maybe|Maybe|Yes|No|No|
|SW|Yes|No|Yes|No|No|No|No|No|No|No|No|
|PNL|Yes|Maybe|Maybe|No|No|No|Maybe|Maybe|Maybe|Yes|No|
|ACT|Yes|No|Maybe|No|No|No|No|Maybe|No|Maybe|No|
|SNS|Maybe|No|Yes|No|No|No|No|No|No|No|No|
|VIS|Yes|Maybe|Maybe|No|No|No|Maybe|Maybe|Maybe|Yes|No|
|APP|No|No|No|No|No|No|No|Yes|No|Maybe|Maybe|
|CLD|No|No|No|No|No|No|No|Yes|No|No|Maybe|
|EDGE|Yes|Yes|Maybe|No|No|No|Yes|Maybe|Maybe|Yes|No|

### ZH-TW

|產品線代碼|WF|ETH|BLE|IR|RF|IRRF|HYB|CLD|USB|LAN|NA|
|---|--:|--:|--:|--:|--:|--:|--:|--:|--:|--:|--:|
|HUB|是|是|視情況|否|否|否|視情況|視情況|視情況|是|否|
|GATE|是|是|是|否|視情況|視情況|是|視情況|是|是|否|
|SYNC|視情況|否|視情況|是|是|是|視情況|視情況|是|否|否|
|SW|是|否|是|否|否|否|否|否|否|否|否|
|PNL|是|視情況|視情況|否|否|否|視情況|視情況|視情況|是|否|
|ACT|是|否|視情況|否|否|否|否|視情況|否|視情況|否|
|SNS|視情況|否|是|否|否|否|否|否|否|否|否|
|VIS|是|視情況|視情況|否|否|否|視情況|視情況|視情況|是|否|
|APP|否|否|否|否|否|否|否|是|否|視情況|視情況|
|CLD|否|否|否|否|否|否|否|是|否|否|視情況|
|EDGE|是|是|視情況|否|否|否|是|視情況|視情況|是|否|

---

## 28.18 Connectivity and Certification Impact Matrix

## 28.18 連接方式與認證影響矩陣

### EN

|Connectivity Code|Certification Impact|Review Notes|
|---|---|---|
|WF|High|Wireless RF, EMC, regional certification review required|
|ETH|Medium|EMC, Ethernet port, adapter, surge / ESD review may apply|
|BLE|High|Wireless RF and Bluetooth-related review required|
|IR|Low to Medium|EMC and product safety may apply|
|RF|High|Region-specific RF certification review required|
|IRRF|High|RF portion requires wireless review; IR compatibility scope required|
|HYB|High|All included connectivity paths must be reviewed|
|CLD|Medium|Privacy, data security, account, service, and software policy review required|
|USB|Medium|Adapter, cable, EMC, power, data-role review where applicable|
|LAN|Medium|Underlying Wi-Fi / Ethernet interface determines certification path|
|NA|Low / Depends|Depends on accessory, package, or service record|

### ZH-TW

|連接代碼|認證影響|審查備註|
|---|---|---|
|WF|高|需要無線 RF、EMC、區域認證審查|
|ETH|中|可能涉及 EMC、Ethernet 埠、適配器、浪湧 / ESD 審查|
|BLE|高|需要無線 RF 與 Bluetooth 相關審查|
|IR|低至中|可能涉及 EMC 與產品安全|
|RF|高|需要區域特定 RF 認證審查|
|IRRF|高|RF 部分需要無線審查；IR 需要相容性範圍|
|HYB|高|所有內含連接路徑都必須審查|
|CLD|中|需要隱私、數據安全、帳號、服務與軟體政策審查|
|USB|中|適用時需要適配器、線材、EMC、供電、數據角色審查|
|LAN|中|由底層 Wi-Fi / Ethernet 介面決定認證路徑|
|NA|低 / 視情況|取決於配件、包裝或服務記錄|

---

## 28.19 Connectivity Claim Boundary Rules

## 28.19 連接宣稱邊界規則

### EN

|Claim Type|Rule|
|---|---|
|“Wi-Fi enabled”|Use only when WF is implemented and validated|
|“Ethernet supported”|Use only when ETH is implemented and validated|
|“BLE Mesh”|Use only when BLE Mesh behavior is implemented and validated|
|“Low power BLE”|Requires battery and power-consumption validation|
|“Universal IR remote”|Avoid unless protocol database and compatibility scope are defined|
|“433 MHz RF”|Must define exact frequency, protocol scope, and regional approval status|
|“IR + RF”|Use only when both IR and RF are implemented and validated|
|“Hybrid gateway”|Must list actual supported connectivity paths|
|“Cloud connected”|Must define cloud function, account behavior, privacy, and service boundary|
|“Local control”|Must define local path and offline behavior|
|“Works without internet”|Use only after offline operation has been validated|
|“Supports all devices”|Do not use without validated compatibility scope|
|“Matter / Thread / Zigbee”|Do not use unless implemented, tested, and approved|

### ZH-TW

|宣稱類型|規則|
|---|---|
|“Wi-Fi enabled”|只有在 WF 已實作並驗證時使用|
|“Ethernet supported”|只有在 ETH 已實作並驗證時使用|
|“BLE Mesh”|只有在 BLE Mesh 行為已實作並驗證時使用|
|“Low power BLE”|需要電池與功耗驗證|
|“Universal IR remote”|除非協議資料庫與相容性範圍已定義，否則避免使用|
|“433 MHz RF”|必須定義精確頻率、協議範圍與區域核准狀態|
|“IR + RF”|只有在 IR 與 RF 均已實作並驗證時使用|
|“Hybrid gateway”|必須列出實際支援連接路徑|
|“Cloud connected”|必須定義雲端功能、帳號行為、隱私與服務邊界|
|“Local control”|必須定義本地路徑與離線行為|
|“Works without internet”|只有在離線運作已驗證後使用|
|“Supports all devices”|未定義已驗證相容範圍前不得使用|
|“Matter / Thread / Zigbee”|除非已實作、測試並核准，否則不得使用|

---

## 28.20 Connectivity Change Rules

## 28.20 連接方式變更規則

### EN

Changing a connectivity code is a controlled action. A new SKU, engineering model, certification model, or package record may be required.

|Change Scenario|New SKU Required?|Additional Review|
|---|--:|---|
|WF changed to BLE|Yes|Engineering, firmware, certification, app review|
|BLE changed to WF|Yes|Engineering, firmware, certification, app review|
|ETH added to WF product|Usually yes|Engineering, EMC, package, label review|
|RF added to IR product|Yes|RF certification and claim review|
|IR added to RF product|Usually yes|Compatibility and protocol review|
|HYB changed to specific WF-only product|Usually yes|SKU and claim boundary review|
|CLD added to local-only product|Usually yes|Software, privacy, service, account review|
|LAN offline capability added|Maybe|Engineering and claim validation required|
|USB data role added to USB power-only product|Usually yes|Engineering, safety, cable, claim review|
|Connectivity typo in draft SKU|No, if unreleased|Correct draft record|
|Connectivity typo in released SKU|Change request required|Correction or replacement SKU may be needed|

### ZH-TW

變更連接代碼是一項受控動作。可能需要新 SKU、工程型號、認證型號或包裝記錄。

|變更場景|是否需要新 SKU？|附加審查|
|---|--:|---|
|WF 變更為 BLE|是|工程、韌體、認證、App 審查|
|BLE 變更為 WF|是|工程、韌體、認證、App 審查|
|WF 產品新增 ETH|通常是|工程、EMC、包裝、標籤審查|
|IR 產品新增 RF|是|RF 認證與宣稱審查|
|RF 產品新增 IR|通常是|相容性與協議審查|
|HYB 變更為特定 WF-only 產品|通常是|SKU 與宣稱邊界審查|
|本地-only 產品新增 CLD|通常是|軟體、隱私、服務、帳號審查|
|新增 LAN 離線能力|視情況|需要工程與宣稱驗證|
|USB 供電-only 產品新增 USB 數據角色|通常是|工程、安全、線材、宣稱審查|
|草案 SKU 中連接代碼錯誤|若未發布則不需要|修正草案記錄|
|已發布 SKU 中連接代碼錯誤|需要變更申請|可能需要修正或替代 SKU|

---

## 28.21 Connectivity Master Table Template

## 28.21 連接方式主表模板

### EN

|Field|Entry|
|---|---|
|Connectivity Code|TBD|
|Connectivity Name|TBD|
|Connectivity Type|Wireless / Wired / Optical / RF / Cloud / Local / Not Applicable|
|Description|TBD|
|Typical Product Lines|TBD|
|Compatible Product Lines|TBD|
|Restricted Product Lines|TBD|
|Certification Impact|Low / Medium / High|
|Engineering Requirements|TBD|
|Firmware / Software Requirements|TBD|
|App / Cloud Impact|TBD|
|Label / Packaging Impact|TBD|
|Claim Boundary Notes|TBD|
|Approval Status|Draft / Pending / Approved / Deprecated / Archived|
|Engineering Owner|TBD|
|Compliance Owner|TBD|
|Revision Date|TBD|
|Change Log Reference|TBD|

### ZH-TW

|欄位|填寫|
|---|---|
|連接代碼|TBD|
|連接名稱|TBD|
|連接類型|Wireless / Wired / Optical / RF / Cloud / Local / Not Applicable|
|說明|TBD|
|典型產品線|TBD|
|相容產品線|TBD|
|限制產品線|TBD|
|認證影響|Low / Medium / High|
|工程要求|TBD|
|韌體 / 軟體要求|TBD|
|App / Cloud 影響|TBD|
|標籤 / 包裝影響|TBD|
|宣稱邊界備註|TBD|
|核准狀態|Draft / Pending / Approved / Deprecated / Archived|
|工程負責人|TBD|
|合規負責人|TBD|
|修訂日期|TBD|
|變更記錄引用|TBD|

---

## 28.22 Completed Example — HYB Connectivity Record

## 28.22 完整示例 — HYB 連接記錄

### EN

|Field|Entry|
|---|---|
|Connectivity Code|HYB|
|Connectivity Name|Hybrid Connectivity|
|Connectivity Type|Multiple validated connectivity paths|
|Description|Used when a product supports more than one defined connectivity path|
|Typical Product Lines|Gate, Hub, Edge, Kits|
|Compatible Product Lines|GATE, HUB, EDGE, selected package SKUs|
|Restricted Product Lines|SW, ACT, SNS unless explicitly approved|
|Certification Impact|High|
|Engineering Requirements|Each connectivity path must be defined, implemented, and validated|
|Firmware / Software Requirements|Device discovery, routing, bridging, synchronization, and state handling must be documented|
|App / Cloud Impact|App onboarding and cloud behavior must match actual connectivity paths|
|Label / Packaging Impact|Public claim must list actual supported connectivity paths|
|Claim Boundary Notes|HYB must not imply all protocols; supported paths must be listed|
|Approval Status|Pending Review|
|Engineering Owner|TBD|
|Compliance Owner|TBD|
|Revision Date|TBD|
|Change Log Reference|CR-CONN-HYB-001|

### ZH-TW

|欄位|填寫|
|---|---|
|連接代碼|HYB|
|連接名稱|Hybrid Connectivity|
|連接類型|多種已驗證連接路徑|
|說明|用於產品支援一種以上已定義連接路徑時|
|典型產品線|Gate、Hub、Edge、套組|
|相容產品線|GATE、HUB、EDGE、特定包裝級 SKU|
|限制產品線|SW、ACT、SNS 除非明確核准|
|認證影響|High|
|工程要求|每一條連接路徑都必須被定義、實作與驗證|
|韌體 / 軟體要求|必須記錄設備發現、路由、橋接、同步與狀態處理|
|App / Cloud 影響|App 入網與雲端行為必須匹配實際連接路徑|
|標籤 / 包裝影響|公開宣稱必須列出實際支援連接路徑|
|宣稱邊界備註|HYB 不得暗示支援所有協議；必須列出支援路徑|
|核准狀態|Pending Review|
|工程負責人|TBD|
|合規負責人|TBD|
|修訂日期|TBD|
|變更記錄引用|CR-CONN-HYB-001|

---

## 28.23 Completed Example — IRRF Connectivity Record

## 28.23 完整示例 — IRRF 連接記錄

### EN

|Field|Entry|
|---|---|
|Connectivity Code|IRRF|
|Connectivity Name|Infrared + RF|
|Connectivity Type|Optical + RF wireless control|
|Description|Used when both IR and RF control capabilities are implemented and validated|
|Typical Product Lines|SYNC|
|Compatible Product Lines|SYNC, selected GATE only if approved|
|Restricted Product Lines|SW, ACT, SNS, PNL unless explicitly approved|
|Certification Impact|High|
|Engineering Requirements|IR transmitter, IR receiver, RF transmitter / receiver, antenna, protocol database, matching or learning workflow|
|Firmware / Software Requirements|IR protocol handling, RF protocol handling, device template mapping|
|App / Cloud Impact|Device database, remote-control UI, compatibility scope|
|Label / Packaging Impact|Must define supported IR device types and RF frequency scope|
|Claim Boundary Notes|Do not claim universal IR / RF compatibility; RF scope must be region-specific|
|Approval Status|Pending Review|
|Engineering Owner|TBD|
|Compliance Owner|TBD|
|Revision Date|TBD|
|Change Log Reference|CR-CONN-IRRF-001|

### ZH-TW

|欄位|填寫|
|---|---|
|連接代碼|IRRF|
|連接名稱|Infrared + RF|
|連接類型|光學 + RF 無線控制|
|說明|用於 IR 與 RF 控制能力均已實作並驗證的情況|
|典型產品線|SYNC|
|相容產品線|SYNC，僅在核准時可用於特定 GATE|
|限制產品線|SW、ACT、SNS、PNL 除非明確核准|
|認證影響|High|
|工程要求|IR 發射器、IR 接收器、RF 發射 / 接收器、天線、協議資料庫、匹配或學習流程|
|韌體 / 軟體要求|IR 協議處理、RF 協議處理、設備模板映射|
|App / Cloud 影響|設備資料庫、遙控 UI、相容性範圍|
|標籤 / 包裝影響|必須定義支援的 IR 設備類型與 RF 頻率範圍|
|宣稱邊界備註|不得宣稱 universal IR / RF 相容性；RF 範圍必須具備區域邊界|
|核准狀態|Pending Review|
|工程負責人|TBD|
|合規負責人|TBD|
|修訂日期|TBD|
|變更記錄引用|CR-CONN-IRRF-001|

---

## 28.24 Connectivity Master Governance Rules

## 28.24 連接方式主表治理規則

### EN

|Rule|Requirement|
|---|---|
|Connectivity codes must be approved before SKU creation|No SKU should use an undefined connectivity code|
|Connectivity code must match actual implementation|Do not encode future or planned capability as current capability|
|Wireless codes require certification review|WF, BLE, RF, IRRF, and HYB usually require wireless review|
|HYB must list actual supported paths|No vague hybrid claim|
|IR and RF compatibility must be scoped|No universal remote claim without validated scope|
|CLD must define service boundary|Cloud, account, privacy, and remote-access behavior must be documented|
|LAN must define offline behavior if claimed|No internet-free claim without validation|
|NA must not hide undecided connectivity|Use TBD during draft if not decided|
|Connectivity changes require change control|No silent connectivity change|
|Deprecated connectivity codes must remain archived|Historical SKU traceability must be preserved|

### ZH-TW

|規則|要求|
|---|---|
|連接代碼必須在 SKU 建立前核准|不得使用未定義連接代碼建立 SKU|
|連接代碼必須匹配實際實作|不得將未來或計劃能力編為當前能力|
|無線代碼需要認證審查|WF、BLE、RF、IRRF 與 HYB 通常需要無線審查|
|HYB 必須列出實際支援路徑|不得使用模糊 hybrid 宣稱|
|IR 與 RF 相容性必須有範圍|無驗證範圍不得宣稱 universal remote|
|CLD 必須定義服務邊界|必須記錄雲端、帳號、隱私與遠端存取行為|
|若宣稱 LAN 離線行為，必須定義|無驗證不得宣稱 internet-free|
|NA 不得掩蓋未決定的連接方式|未決定時 Draft 階段應使用 TBD|
|連接方式變更需要變更管控|不得靜默變更連接方式|
|已停用連接代碼必須歸檔|必須保留歷史 SKU 可追蹤性|

---

## 28.25 Spreadsheet Column Recommendation

## 28.25 表格欄位建議

### EN

For Excel, Google Sheets, Airtable, ERP staging tables, or PLM reference tables, the following column order is recommended:

```text
Connectivity Code
Connectivity Name
Connectivity Type
Description
Typical Product Lines
Compatible Product Lines
Restricted Product Lines
Certification Impact
Engineering Requirements
Firmware / Software Requirements
App / Cloud Impact
Label / Packaging Impact
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
Connectivity Code
Connectivity Name
Connectivity Type
Description
Typical Product Lines
Compatible Product Lines
Restricted Product Lines
Certification Impact
Engineering Requirements
Firmware / Software Requirements
App / Cloud Impact
Label / Packaging Impact
Claim Boundary Notes
Approval Status
Engineering Owner
Compliance Owner
Revision Date
Change Log Reference
```

---

## 28.26 Chapter Conclusion

## 28.26 本章結論

### EN

The Connectivity Master Table controls how Artibird products and OceanAI system-layer records describe communication, access, synchronization, local runtime participation, cloud services, and hybrid connectivity.

Connectivity codes must reflect actual implemented and validated behavior. They must not be used as vague marketing shortcuts or unsupported technology claims.

A controlled connectivity master table allows Artibird to manage Wi-Fi, Ethernet, BLE, IR, RF, IRRF, Hybrid, Cloud, USB, LAN, and NA records consistently across SKU creation, engineering validation, certification review, packaging, Amazon listing, channel release, support, and lifecycle governance.

### ZH-TW

連接方式主表管控 Artibird 產品與 OceanAI 系統層記錄如何描述通訊、接入、同步、本地 Runtime 參與、雲端服務與混合連接能力。

連接代碼必須反映實際已實作並已驗證的行為。它不得被用作模糊行銷捷徑或未支援技術宣稱。

受控的連接方式主表，可使 Artibird 在 SKU 建立、工程驗證、認證審查、包裝、Amazon 上架、渠道發布、支持與生命週期治理中，一致管理 Wi-Fi、Ethernet、BLE、IR、RF、IRRF、Hybrid、Cloud、USB、LAN 與 NA 記錄。

---

**話題延伸｜互動建議**  
下一章可以繼續寫 **Chapter 29 — Power Architecture Master Table｜第二十九章｜供電架構主表**，把 AC、DC、USB、BAT、ZN、SL、POE、NA 等供電代碼的使用條件、安規影響、產品線適配與標籤要求整理成一張主表。