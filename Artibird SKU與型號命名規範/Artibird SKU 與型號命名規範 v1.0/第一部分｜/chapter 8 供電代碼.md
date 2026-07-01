# Artibird SKU & Model Naming Specification v1.0

# Artibird SKU 與型號命名規範 v1.0

## Chapter 8 — Power Codes

## 第八章｜供電代碼

---

## 8.1 Purpose

## 8.1 目的

### EN

This chapter defines the official power codes used in Artibird SKU codes, internal model records, engineering records, certification mapping, packaging records, product labels, Amazon listings, channel documents, and commercial release planning.

Power codes identify the product’s power architecture, input source, installation condition, electrical configuration, or power supply method.

Power codes must be used carefully because power architecture may directly affect electrical safety, certification requirements, installation instructions, product label content, packaging claims, load compatibility, thermal behavior, and regional market suitability.

### ZH-TW

本章定義 Artibird SKU 代碼、內部型號記錄、工程記錄、認證映射、包裝記錄、產品標籤、Amazon 上架、渠道文件與商業發布規劃中使用的官方供電代碼。

供電代碼用於識別產品的供電架構、輸入來源、安裝條件、電氣配置或電源供應方式。

供電代碼必須謹慎使用，因為供電架構可能直接影響電氣安全、認證要求、安裝說明、產品標籤內容、包裝宣稱、負載相容性、熱行為與區域市場適用性。

---

## 8.2 Power Code Definition

## 8.2 供電代碼定義

### EN

A power code is a controlled identifier that describes how a product receives power or how it is electrically installed.

It answers the following questions:

|Question|Description|
|---|---|
|How is the product powered?|Battery, AC mains, DC, USB, PoE, adapter, solar-assisted|
|Is the product installed into mains wiring?|AC, single-live, zero-neutral, low-voltage|
|Does the product control electrical loads?|Relay, plug, actuator, switch, execution node|
|Does the power design affect certification?|UL, ETL, CE, safety spacing, thermal, insulation|
|Does the product require an external adapter?|ADP or USB depending on configuration|
|Does the SKU require special installation instructions?|Wall switch, plug, low-voltage, PoE, solar|
|Can the power architecture be claimed commercially?|Only if implemented, tested, and approved|

### ZH-TW

供電代碼是一種受控識別碼，用於描述產品如何獲得電源，或如何進行電氣安裝。

它回答以下問題：

|問題|說明|
|---|---|
|產品如何供電？|電池、市電、DC、USB、PoE、適配器、太陽能輔助|
|產品是否接入市電線路？|市電、單火、零火、低壓|
|產品是否控制電氣負載？|繼電器、插座、執行器、開關、執行節點|
|供電設計是否影響認證？|UL、ETL、CE、安全間距、熱、絕緣|
|產品是否需要外部電源適配器？|依配置使用 ADP 或 USB|
|SKU 是否需要特殊安裝說明？|牆壁開關、插座、低壓、PoE、太陽能|
|供電架構是否可以對外商業宣稱？|僅在已實作、測試並核准後可以|

---

## 8.3 Official Power Code Table

## 8.3 官方供電代碼表

### EN

|Code|Meaning|Primary Use|Notes|
|--:|---|---|---|
|BAT|Battery powered|Battery-powered devices|Used for low-power switches, sensors, or portable nodes|
|AC|AC mains powered|Mains-powered products|Used for plugs, relays, switches, panels, or execution nodes powered by AC|
|DC|DC powered|Direct DC input products|Used when the product receives DC input directly|
|USB|USB / USB-C powered|USB-powered products|Used when USB is the power input, not necessarily data|
|POE|Power over Ethernet|Ethernet-powered devices|Used when power is supplied through PoE|
|LV|Low-voltage powered|Low-voltage installation products|Used for SELV / low-voltage input designs|
|SL|Single-live configuration|No-neutral wall switch configuration|Used for single-live switch or wall control products|
|ZN|Zero-neutral configuration|Live + neutral wall switch configuration|Used for neutral-required switch or relay products|
|ADP|External power adapter|Adapter-powered products|Used when the product relies on an external certified adapter|
|SOL|Solar-assisted power|Solar-assisted or solar-charging products|Used only when solar function is implemented and validated|
|NA|Not applicable|No power code applies|Used for pure software, service, or non-powered package records|

### ZH-TW

|代碼|含義|主要用途|備註|
|--:|---|---|---|
|BAT|電池供電|電池供電設備|用於低功耗開關、感測器或可移動節點|
|AC|市電供電|市電供電產品|用於由 AC 供電的插座、繼電器、開關、面板或執行節點|
|DC|DC 供電|直接 DC 輸入產品|用於產品直接接收 DC 輸入的情況|
|USB|USB / USB-C 供電|USB 供電產品|用於 USB 作為供電輸入，不一定代表數據連接|
|POE|乙太網供電|Ethernet 供電設備|用於透過 PoE 供電的產品|
|LV|低壓供電|低壓安裝產品|用於 SELV / 低壓輸入設計|
|SL|單火配置|無零線牆壁開關配置|用於單火開關或牆壁控制產品|
|ZN|零火配置|火線 + 零線牆壁開關配置|用於需要零線的開關或繼電器產品|
|ADP|外部電源適配器|適配器供電產品|用於產品依賴外部已認證電源適配器|
|SOL|太陽能輔助供電|太陽能輔助或太陽能充電產品|僅在太陽能功能已實作並驗證後使用|
|NA|不適用|無適用供電代碼|用於純軟體、服務或非供電型包裝記錄|

---

## 8.4 Power Code Usage in SKU

## 8.4 供電代碼在 SKU 中的使用

### EN

The power code appears as the sixth field in the official SKU format.

Recommended SKU structure:

```text
ATB-[PRODUCT]-[GEN]-[REGION]-[CONNECTIVITY]-[POWER]-[VARIANT]-[PACKAGE]
```

Example:

```text
ATB-SW-G1-US-BLE-BAT-SCN-S
```

|SKU Field|Value|Meaning|
|---|---|---|
|Brand|ATB|Artibird|
|Product Line|SW|Artibird Switch|
|Generation|G1|First generation|
|Region|US|United States|
|Connectivity|BLE|BLE / BLE Mesh|
|Power|BAT|Battery powered|
|Variant|SCN|Scene switch|
|Package|S|Single unit|

The power code must represent the defining power architecture of the commercial SKU.

If a product receives power through one method but controls another electrical circuit, the power code should describe how the product itself is powered. Load-control capability should be recorded separately in the variant, engineering record, and product capability fields.

### ZH-TW

供電代碼出現在官方 SKU 格式的第六個欄位。

建議 SKU 結構：

```text
ATB-[產品]-[世代]-[區域]-[連接]-[供電]-[版本]-[包裝]
```

示例：

```text
ATB-SW-G1-US-BLE-BAT-SCN-S
```

|SKU 欄位|數值|含義|
|---|---|---|
|品牌|ATB|Artibird|
|產品線|SW|Artibird Switch|
|世代|G1|第一代|
|區域|US|美國|
|連接|BLE|BLE / BLE Mesh|
|供電|BAT|電池供電|
|版本|SCN|場景開關|
|包裝|S|單品|

供電代碼必須代表該商業 SKU 的定義性供電架構。

如果產品透過一種方式獲得電源，但控制另一個電氣迴路，供電代碼應描述產品本身如何供電。負載控制能力應另行記錄在版本、工程記錄與產品能力欄位中。

---

## 8.5 Power Code Usage by Product Line

## 8.5 各產品線供電代碼使用

### EN

|Product Line|Common Power Codes|Notes|
|---|---|---|
|Artibird Hub|DC, ADP, USB, POE|Depends on adapter, DC input, USB-C power, or PoE design|
|Artibird Gate|USB, DC, ADP, POE|Depends on gateway power input and installation model|
|Artibird Sync|USB, ADP, DC|Usually low-voltage or USB-powered control device|
|Artibird Switch|BAT, SL, ZN, AC|Depends on battery scene switch, single-live, or zero-neutral switch design|
|Artibird Panel|DC, LV, AC, POE|Depends on wall panel, low-voltage, mains, or wired installation|
|Artibird Act|AC, DC, LV, ADP|Depends on plug, relay, actuator, or energy-aware execution design|
|Artibird Sense|BAT, DC, SOL, LV|Depends on sensor deployment, battery, wired, or solar-assisted design|
|Artibird Vision|DC, ADP, POE, USB|Depends on camera, edge vision, or wired power design|
|Artibird App|NA|Software product or control interface|
|OceanAI Cloud|NA|Service layer, not a powered device|
|OceanAI Edge|DC, ADP, AC, POE|Depends on Jetson or edge hardware deployment configuration|

### ZH-TW

|產品線|常用供電代碼|備註|
|---|---|---|
|Artibird Hub|DC、ADP、USB、POE|依適配器、DC 輸入、USB-C 供電或 PoE 設計而定|
|Artibird Gate|USB、DC、ADP、POE|依網關電源輸入與安裝模式而定|
|Artibird Sync|USB、ADP、DC|通常為低壓或 USB 供電控制設備|
|Artibird Switch|BAT、SL、ZN、AC|依電池場景開關、單火或零火開關設計而定|
|Artibird Panel|DC、LV、AC、POE|依牆面面板、低壓、市電或有線安裝而定|
|Artibird Act|AC、DC、LV、ADP|依插座、繼電器、執行器或能源感知執行設計而定|
|Artibird Sense|BAT、DC、SOL、LV|依感測部署、電池、有線或太陽能輔助設計而定|
|Artibird Vision|DC、ADP、POE、USB|依攝影機、邊緣視覺或有線供電設計而定|
|Artibird App|NA|軟體產品或控制介面|
|OceanAI Cloud|NA|服務層，不是供電設備|
|OceanAI Edge|DC、ADP、AC、POE|依 Jetson 或邊緣硬體部署配置而定|

---

## 8.6 Special Boundary: USB vs ADP

## 8.6 特別邊界：USB 與 ADP

### EN

USB and ADP must be separated because they describe different power relationships.

|Code|Meaning|Use When|
|--:|---|---|
|USB|Product is powered through USB or USB-C input|The product’s power input is USB / USB-C|
|ADP|Product relies on an external power adapter|The adapter is part of the approved power supply configuration|

If a product uses USB-C input and is sold with an external adapter, the primary power code should be selected according to the commercial and certification identity of the SKU.

Recommended approach:

|Situation|Recommended Power Code|
|---|--:|
|USB-C powered device, no adapter included|USB|
|USB-C powered device sold with approved adapter|ADP or USB, depending on certification and package identity|
|Barrel jack with external adapter|ADP|
|Direct DC terminal input|DC|
|USB used only for firmware service, not power|Do not use USB as power code|

### ZH-TW

USB 與 ADP 必須區分，因為它們描述不同的供電關係。

|代碼|含義|使用條件|
|--:|---|---|
|USB|產品透過 USB 或 USB-C 輸入供電|產品電源輸入為 USB / USB-C|
|ADP|產品依賴外部電源適配器|適配器是已核准供電配置的一部分|

如果產品使用 USB-C 輸入，且包裝內包含外部適配器，主要供電代碼應依據該 SKU 的商業身份與認證身份選擇。

建議方式：

|情況|建議供電代碼|
|---|--:|
|USB-C 供電設備，不含適配器|USB|
|USB-C 供電設備，附已核准適配器|依認證與包裝身份使用 ADP 或 USB|
|圓孔 DC 接口，使用外部適配器|ADP|
|直接 DC 端子輸入|DC|
|USB 僅用於韌體維護，不作供電|不使用 USB 作為供電代碼|

---

## 8.7 Special Boundary: AC, SL, and ZN

## 8.7 特別邊界：AC、SL 與 ZN

### EN

AC, SL, and ZN must be separated for wall switch and electrical control products.

|Code|Meaning|Use When|
|--:|---|---|
|AC|General AC mains powered|Product receives AC mains power, but wiring type is not the defining SKU distinction|
|SL|Single-live configuration|Product is installed in a no-neutral switch box or single-live wiring condition|
|ZN|Zero-neutral configuration|Product requires both live and neutral conductors|

For switch products, SL and ZN are often more precise than AC because they describe the actual installation condition.

Examples:

|Product Scenario|Recommended Power Code|
|---|--:|
|Battery-powered BLE scene switch|BAT|
|Single-live wall switch|SL|
|Zero-neutral smart switch|ZN|
|AC plug / socket execution node|AC|
|AC relay module with neutral-required power input|ZN or AC, depending on SKU identity|
|AC-powered device where wiring type is not customer-facing|AC|

### ZH-TW

AC、SL 與 ZN 必須在牆壁開關與電氣控制產品中加以區分。

|代碼|含義|使用條件|
|--:|---|---|
|AC|一般市電供電|產品由 AC 市電供電，但接線類型不是該 SKU 的定義性差異|
|SL|單火配置|產品安裝於無零線開關盒或單火接線條件|
|ZN|零火配置|產品需要火線與零線同時接入|

對於開關產品，SL 與 ZN 通常比 AC 更精確，因為它們描述實際安裝條件。

示例：

|產品場景|建議供電代碼|
|---|--:|
|電池供電 BLE 場景開關|BAT|
|單火牆壁開關|SL|
|零火智慧開關|ZN|
|AC 插座 / 插頭型執行節點|AC|
|需要零線供電的 AC 繼電器模組|依 SKU 身份使用 ZN 或 AC|
|接線類型不是客戶端差異的 AC 供電設備|AC|

---

## 8.8 Special Boundary: DC, LV, and POE

## 8.8 特別邊界：DC、LV 與 POE

### EN

DC, LV, and POE must be separated because they describe different power installation methods.

|Code|Meaning|Use When|
|--:|---|---|
|DC|Direct DC input|Product receives DC input through terminal, jack, or fixed DC supply|
|LV|Low-voltage powered|Product is designed for low-voltage installation or SELV-type system|
|POE|Power over Ethernet|Product receives power through Ethernet cable using PoE|

Recommended distinction:

|Scenario|Recommended Power Code|
|---|--:|
|12 V / 24 V DC terminal input|DC|
|SELV wall-panel low-voltage system|LV|
|PoE camera or PoE panel|POE|
|USB-C 5 V input|USB|
|External adapter outputting DC|ADP or DC depending on commercial identity|

### ZH-TW

DC、LV 與 POE 必須區分，因為它們描述不同的供電安裝方式。

|代碼|含義|使用條件|
|--:|---|---|
|DC|直接 DC 輸入|產品透過端子、接口或固定 DC 電源接收直流輸入|
|LV|低壓供電|產品設計為低壓安裝或 SELV 類系統|
|POE|乙太網供電|產品透過 Ethernet 線纜使用 PoE 供電|

建議區分：

|場景|建議供電代碼|
|---|--:|
|12 V / 24 V DC 端子輸入|DC|
|SELV 牆面面板低壓系統|LV|
|PoE 攝影機或 PoE 面板|POE|
|USB-C 5 V 輸入|USB|
|外部適配器輸出 DC|依商業身份使用 ADP 或 DC|

---

## 8.9 Special Boundary: BAT and SOL

## 8.9 特別邊界：BAT 與 SOL

### EN

BAT and SOL must be separated because solar-assisted power does not automatically replace battery power.

|Code|Meaning|Use When|
|--:|---|---|
|BAT|Battery powered|Product operates primarily from battery|
|SOL|Solar-assisted power|Product includes implemented and validated solar charging or solar-assisted energy input|

If a product includes a battery and solar-assisted charging, SOL may be used only when solar support is a defined and validated product capability.

If solar is only a future concept, accessory option, or unvalidated feature, the SKU must use BAT rather than SOL.

### ZH-TW

BAT 與 SOL 必須區分，因為太陽能輔助供電不會自動取代電池供電。

|代碼|含義|使用條件|
|--:|---|---|
|BAT|電池供電|產品主要依靠電池運作|
|SOL|太陽能輔助供電|產品包含已實作並驗證的太陽能充電或太陽能輔助能量輸入|

如果產品同時包含電池與太陽能輔助充電，只有在太陽能支援是已定義並驗證的產品能力時，才可使用 SOL。

如果太陽能僅是未來概念、配件選項或未驗證功能，SKU 必須使用 BAT，而不是 SOL。

---

## 8.10 Power Code and Certification Impact

## 8.10 供電代碼與認證影響

### EN

Power codes may directly affect electrical safety certification, RF certification, product labeling, installation instructions, and regional release readiness.

|Power Code|Certification / Compliance Impact|
|--:|---|
|BAT|Battery safety, charging safety if rechargeable, transportation compliance|
|AC|Electrical safety, load rating, insulation, thermal, enclosure, regional mains compliance|
|DC|Power input rating, adapter compatibility, safety and EMC review|
|USB|USB power input, adapter dependency, EMC and safety review|
|POE|PoE standard, Ethernet interface, safety, EMC, thermal review|
|LV|SELV / low-voltage installation, isolation, wiring and installation review|
|SL|No-neutral wall switch safety, load compatibility, leakage current, installation review|
|ZN|Live-neutral wiring, relay safety, load control, installation review|
|ADP|Adapter certification, rating compatibility, package and label alignment|
|SOL|Solar charging, battery management, outdoor exposure, environmental safety|
|NA|Must be justified as software, service, or non-powered record|

Power code changes must be reviewed by engineering and compliance before commercial use.

### ZH-TW

供電代碼可能直接影響電氣安全認證、RF 認證、產品標籤、安裝說明與區域發布準備。

|供電代碼|認證 / 合規影響|
|--:|---|
|BAT|電池安全；若可充電，需充電安全；運輸合規|
|AC|電氣安全、負載額定、絕緣、熱、外殼、區域市電合規|
|DC|電源輸入額定、適配器相容性、安全與 EMC 審查|
|USB|USB 供電輸入、適配器依賴、EMC 與安全審查|
|POE|PoE 標準、Ethernet 介面、安全、EMC、熱審查|
|LV|SELV / 低壓安裝、隔離、接線與安裝審查|
|SL|無零線牆壁開關安全、負載相容性、漏電流、安裝審查|
|ZN|火線-零線接線、繼電器安全、負載控制、安裝審查|
|ADP|適配器認證、額定匹配、包裝與標籤一致性|
|SOL|太陽能充電、電池管理、戶外暴露、環境安全|
|NA|必須證明其為軟體、服務或非供電記錄|

供電代碼變更在商業使用前，必須經工程與合規審查。

---

## 8.11 When to Change Power Code

## 8.11 何時需要更改供電代碼

### EN

|Change Scenario|Change Power Code?|Notes|
|---|---|---|
|Battery product becomes USB-powered|Yes|BAT changes to USB|
|USB-powered product becomes adapter-dependent|Usually yes|USB may change to ADP depending on commercial identity|
|Adapter changes only, product input unchanged|Maybe|Review package, label, and certification impact|
|AC product becomes low-voltage product|Yes|AC changes to LV or DC|
|Zero-neutral switch becomes single-live switch|Yes|ZN changes to SL|
|Single-live switch becomes battery event switch|Yes|SL changes to BAT|
|AC plug adds energy monitoring|No|Update variant, not power code|
|DC input voltage changes|Maybe|May require engineering and certification review|
|PoE added to Ethernet product|Yes|Power code may change to POE or HYB record may be needed|
|Solar accessory added but not validated|No|Do not use SOL|
|Solar charging implemented and validated|Yes|SOL may be used|
|Product becomes software-only service|Yes|Power code may change to NA|

### ZH-TW

|變更場景|是否更改供電代碼？|備註|
|---|---|---|
|電池產品變成 USB 供電|是|BAT 變更為 USB|
|USB 供電產品變成依賴適配器|通常是|依商業身份，USB 可能變更為 ADP|
|僅更換適配器，產品輸入不變|視情況|需審查包裝、標籤與認證影響|
|AC 產品變成低壓產品|是|AC 變更為 LV 或 DC|
|零火開關變成單火開關|是|ZN 變更為 SL|
|單火開關變成電池事件開關|是|SL 變更為 BAT|
|AC 插座增加電能監測|否|更新版本代碼，而不是供電代碼|
|DC 輸入電壓變更|視情況|可能需要工程與認證審查|
|Ethernet 產品增加 PoE|是|供電代碼可能變為 POE，或需要 HYB 記錄|
|增加太陽能配件但未驗證|否|不得使用 SOL|
|太陽能充電已實作並驗證|是|可使用 SOL|
|產品變成純軟體服務|是|供電代碼可變更為 NA|

---

## 8.12 Power Code Governance Rules

## 8.12 供電代碼治理規則

### EN

|Rule|Requirement|
|---|---|
|One power code must represent one defined power architecture or installation condition|Do not use power codes loosely|
|Power code must reflect the actual powered product configuration|Do not use future or optional power designs|
|USB must not imply USB data capability|USB power and USB connectivity must be tracked separately|
|ADP must map to an approved adapter configuration|Adapter rating and certification must be recorded|
|SL and ZN must not be mixed|Single-live and zero-neutral are different installation configurations|
|AC must not hide installation-specific differences when SL or ZN matters|Use precise power code where needed|
|SOL must not be used unless solar function is implemented and validated|Future solar options do not qualify|
|Power code changes require engineering review|Safety, thermal, load, and certification impact must be checked|
|Power code must map to product label and package records|Rating and installation text must match|
|Power code must map to certification records|Electrical safety status must be traceable|

### ZH-TW

|規則|要求|
|---|---|
|一個供電代碼必須代表一種已定義供電架構或安裝條件|不得鬆散使用供電代碼|
|供電代碼必須反映產品的實際供電配置|不得使用未來或可選供電設計|
|USB 不代表 USB 數據能力|USB 供電與 USB 連接能力必須分開追蹤|
|ADP 必須映射至已核准適配器配置|必須記錄適配器額定與認證|
|SL 與 ZN 不得混用|單火與零火是不同安裝配置|
|當 SL 或 ZN 重要時，AC 不得掩蓋安裝差異|需要時應使用精確供電代碼|
|SOL 必須在太陽能功能已實作並驗證後使用|未來太陽能選項不符合使用條件|
|供電代碼變更需要工程審查|必須檢查安全、熱、負載與認證影響|
|供電代碼必須映射至產品標籤與包裝記錄|額定與安裝文字必須一致|
|供電代碼必須映射至認證記錄|電氣安全狀態必須可追蹤|

---

## 8.13 Required Master Table Fields

## 8.13 必備主表欄位

### EN

Each SKU master record must include power-related fields.

|Field|Requirement|
|---|---|
|Power Code|Required|
|Power Input Type|Required|
|Input Voltage / Current|Required where applicable|
|Frequency|Required for AC products|
|Battery Type|Required for BAT products|
|Rechargeable Battery Status|Required where applicable|
|Adapter Model|Required for ADP products|
|Adapter Certification Status|Required for ADP products|
|Wiring Configuration|Required for SL / ZN / AC installation products|
|Load Rating|Required for load-control products|
|Safety Certification Impact|Required|
|Product Label Rating|Required|
|Installation Guide Version|Required where applicable|
|Thermal Validation Status|Required where applicable|
|Power Architecture Approval Owner|Required|
|Revision Date|Required|

### ZH-TW

每一筆 SKU 主記錄都必須包含與供電相關的欄位。

|欄位|要求|
|---|---|
|供電代碼|必填|
|電源輸入類型|必填|
|輸入電壓 / 電流|適用時必填|
|頻率|AC 產品必填|
|電池類型|BAT 產品必填|
|可充電電池狀態|適用時必填|
|適配器型號|ADP 產品必填|
|適配器認證狀態|ADP 產品必填|
|接線配置|SL / ZN / AC 安裝產品必填|
|負載額定|負載控制產品必填|
|安全認證影響|必填|
|產品標籤額定|必填|
|安裝指南版本|適用時必填|
|熱驗證狀態|適用時必填|
|供電架構核准負責人|必填|
|修訂日期|必填|

---

## 8.14 Chapter Conclusion

## 8.14 本章結論

### EN

Power codes define how an Artibird product is powered, installed, or electrically configured.

These codes directly affect product safety, certification, labeling, installation instructions, load compatibility, packaging, market release, and customer expectations. They must represent implemented and validated power architectures, not future options or general assumptions.

A clear power code system allows Artibird products to remain traceable across engineering design, certification review, manufacturing, packaging, SKU management, Amazon listing, channel release, and commercial deployment.

### ZH-TW

供電代碼定義 Artibird 產品如何供電、如何安裝，或如何進行電氣配置。

這些代碼直接影響產品安全、認證、標籤、安裝說明、負載相容性、包裝、市場發布與客戶預期。它們必須代表已實作並驗證的供電架構，而不是未來選項或一般性假設。

清晰的供電代碼系統，可使 Artibird 產品在工程設計、認證審查、生產、包裝、SKU 管理、Amazon 上架、渠道發布與商業部署中保持可追蹤。

---

本章依據《Artibird SKU & Model Naming Specification v1.0》的既定撰寫計劃展開；原始規劃已將 Power Codes 設為 Chapter 8，並列出 BAT、AC、DC、USB、POE、LV、SL、ZN、ADP、SOL 作為標準供電代碼。

**話題延伸｜互動建議**  
下一章可以繼續寫 **Chapter 9 — Variant Codes｜第九章｜版本代碼**，正式定義 STD、PRO、MINI、E、OUT、RLY、SCN、DIM、CAM、DEV、BETA 在功能配置、商業版本與工程狀態中的使用邊界。