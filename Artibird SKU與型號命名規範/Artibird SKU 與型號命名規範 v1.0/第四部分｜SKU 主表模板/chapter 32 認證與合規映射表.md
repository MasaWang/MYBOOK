# Artibird SKU & Model Naming Specification v1.0

# Artibird SKU 與型號命名規範 v1.0

## Chapter 32 — Certification and Compliance Mapping Table

## 第三十二章｜認證與合規映射表

---

## 32.1 Purpose

## 32.1 目的

### EN

This chapter defines the Certification and Compliance Mapping Table used by Artibird SKU records, engineering records, certification model records, manufacturing records, packaging records, product labels, Amazon listings, channel documents, project deployment documents, and commercial release plans.

The certification and compliance mapping table connects product identity, region, connectivity, power architecture, variant function, package type, label requirements, and claim boundaries to applicable certification and compliance review items.

The purpose of this chapter is to ensure that no Artibird SKU enters public release, Amazon listing, channel sales, project deployment, or customer-facing documentation without clear compliance mapping and approval status.

### ZH-TW

本章定義 Artibird SKU 記錄、工程記錄、認證型號記錄、生產記錄、包裝記錄、產品標籤、Amazon 上架、渠道文件、專案部署文件與商業發布計劃中使用的認證與合規映射表。

認證與合規映射表將產品身份、區域、連接方式、供電架構、功能版本、包裝類型、標籤要求與宣稱邊界，連接至適用的認證與合規審查項目。

本章目的，是確保任何 Artibird SKU 在進入公開發布、Amazon 上架、渠道銷售、專案部署或面向客戶文件之前，都具備清晰的合規映射與核准狀態。

---

## 32.2 Compliance Mapping Definition

## 32.2 合規映射定義

### EN

A compliance mapping record identifies which certification, safety, wireless, electrical, privacy, labeling, packaging, and marketplace requirements may apply to a SKU.

It answers the following questions:

|Question|Description|
|---|---|
|Which market is this SKU intended for?|US, CA, EU, UK, TW, JP, AU, CN, GL, INT|
|Which product line is involved?|Hub, Gate, Sync, Switch, Panel, Act, Sense, Vision, App, Cloud, Edge|
|Does the product use wireless communication?|Wi-Fi, BLE, RF, IRRF, HYB|
|Does the product connect to mains power?|AC, ZN, SL, relay, dimmer, plug, load-control products|
|Does the product include a battery?|BAT products and battery shipping / safety requirements|
|Does the product include a camera or AI claim?|Vision, CAM, EDGE, privacy, cybersecurity, AI claim review|
|Does the product require marketplace compliance?|Amazon, distributor, project procurement, institutional use|
|Which certification models apply?|FCC, UL / ETL, CE, UKCA, NCC, PSE, RCM, ISED, etc.|
|Which label and package records must align?|Product label, manual, barcode, safety marks, package language|
|What claims are allowed?|Certification, safety, compatibility, energy, AI, camera, region, and performance claims|

### ZH-TW

合規映射記錄用於識別某一 SKU 可能適用哪些認證、安全、無線、電氣、隱私、標籤、包裝與 marketplace 要求。

它回答以下問題：

|問題|說明|
|---|---|
|此 SKU 面向哪一個市場？|US、CA、EU、UK、TW、JP、AU、CN、GL、INT|
|涉及哪一個產品線？|Hub、Gate、Sync、Switch、Panel、Act、Sense、Vision、App、Cloud、Edge|
|產品是否使用無線通訊？|Wi-Fi、BLE、RF、IRRF、HYB|
|產品是否連接市電？|AC、ZN、SL、繼電器、調光、插座、負載控制產品|
|產品是否包含電池？|BAT 產品與電池運輸 / 安全要求|
|產品是否包含攝影機或 AI 宣稱？|Vision、CAM、EDGE、隱私、網路安全、AI 宣稱審查|
|產品是否需要 marketplace 合規？|Amazon、分銷商、專案採購、機構用途|
|適用哪些認證型號？|FCC、UL / ETL、CE、UKCA、NCC、PSE、RCM、ISED 等|
|哪些標籤與包裝記錄必須一致？|產品標籤、手冊、條碼、安全標誌、包裝語言|
|允許哪些宣稱？|認證、安全、相容性、能源、AI、攝影機、區域與性能宣稱|

---

## 32.3 Compliance Governance Principle

## 32.3 合規治理原則

### EN

The core principle of compliance mapping is:

```text
No SKU should be publicly sold, shipped, listed, labeled, or claimed beyond its approved compliance scope.
```

A certification name, region code, product category, connectivity code, power code, variant code, package code, or marketplace readiness status must not be treated as approval by itself.

For example:

```text
US + WF + AC + E
```

does not automatically mean:

```text
FCC approved
UL listed
ETL listed
Energy metering certified
Amazon compliance approved
Safe for all AC loads
Ready for commercial release
```

Each compliance status must be mapped, reviewed, documented, and approved separately.

### ZH-TW

合規映射的核心原則是：

```text
任何 SKU 不得超出其已核准合規範圍進行公開銷售、出貨、上架、貼標或宣稱。
```

認證名稱、區域代碼、產品類別、連接代碼、供電代碼、版本代碼、包裝代碼或 marketplace 準備狀態，本身都不得被視為核准。

例如：

```text
US + WF + AC + E
```

不自動代表：

```text
FCC 已核准
UL 已列名
ETL 已列名
能源計量已認證
Amazon 合規已核准
適用所有 AC 負載
已可商業發布
```

每一項合規狀態都必須被單獨映射、審查、記錄與核准。

---

## 32.4 Standard Compliance Framework Reference Table

## 32.4 標準合規框架參考表

### EN

|Framework|Typical Scope|Commonly Related Fields|
|---|---|---|
|FCC|U.S. radio, EMC, intentional / unintentional radiators|US, WF, BLE, RF, IRRF, HYB, electronics|
|UL / ETL / NRTL|U.S. safety listing or safety evaluation|US, AC, ZN, SL, RLY, DIM, plug, relay, load-control|
|ISED|Canada wireless and radio compliance|CA, WF, BLE, RF, HYB|
|cUL / CSA|Canada safety compliance review|CA, AC, adapter, relay, load-control|
|CE|EU conformity marking framework|EU, electronics, wireless, safety, EMC|
|RED|EU radio equipment directive review|EU, WF, BLE, RF, IRRF, HYB|
|RoHS|Restricted substances review|EU, electronics, hardware products|
|REACH|Chemical substance compliance review|EU, hardware, packaging materials|
|UKCA|United Kingdom conformity marking|UK, electronics, wireless, safety|
|NCC|Taiwan wireless / telecom-related review|TW, WF, BLE, RF, HYB|
|MIC / TELEC|Japan radio equipment review|JP, WF, BLE, RF, HYB|
|PSE|Japan electrical product safety where applicable|JP, adapter, AC-powered products|
|RCM|Australia / New Zealand compliance marking|AU, wireless, EMC, electrical products|
|Privacy / Data Review|Data, app, camera, cloud, AI, account behavior|APP, CLD, VIS, EDGE, CAM|
|Cybersecurity Review|Device, cloud, account, firmware, OTA, network security|WF, ETH, CLD, APP, EDGE|
|Marketplace Compliance|Amazon or platform-specific compliance documents|FBA, Amazon listing, barcode, label, certification proof|

### ZH-TW

|框架|典型範圍|常見相關欄位|
|---|---|---|
|FCC|美國無線、EMC、有意 / 無意輻射設備|US、WF、BLE、RF、IRRF、HYB、電子產品|
|UL / ETL / NRTL|美國安全列名或安全評估|US、AC、ZN、SL、RLY、DIM、插座、繼電器、負載控制|
|ISED|加拿大無線與射頻合規|CA、WF、BLE、RF、HYB|
|cUL / CSA|加拿大安全合規審查|CA、AC、適配器、繼電器、負載控制|
|CE|歐盟符合性標誌框架|EU、電子產品、無線、安全、EMC|
|RED|歐盟無線設備指令審查|EU、WF、BLE、RF、IRRF、HYB|
|RoHS|有害物質限制審查|EU、電子產品、硬體產品|
|REACH|化學物質合規審查|EU、硬體、包裝材料|
|UKCA|英國符合性標誌|UK、電子產品、無線、安全|
|NCC|台灣無線 / 電信相關審查|TW、WF、BLE、RF、HYB|
|MIC / TELEC|日本無線設備審查|JP、WF、BLE、RF、HYB|
|PSE|適用時日本電氣產品安全|JP、適配器、AC 供電產品|
|RCM|澳洲 / 紐西蘭合規標誌|AU、無線、EMC、電氣產品|
|Privacy / Data Review|數據、App、攝影機、雲端、AI、帳號行為|APP、CLD、VIS、EDGE、CAM|
|Cybersecurity Review|設備、雲端、帳號、韌體、OTA、網路安全|WF、ETH、CLD、APP、EDGE|
|Marketplace Compliance|Amazon 或平台特定合規文件|FBA、Amazon 上架、條碼、標籤、認證證明|

---

## 32.5 Region-to-Compliance Mapping Table

## 32.5 區域至合規映射表

### EN

|Region Code|Primary Compliance Mapping|Notes|
|---|---|---|
|US|FCC, UL / ETL / NRTL review where applicable|FCC for wireless / EMC; safety listing for mains or load-control products|
|CA|ISED, cUL / CSA review where applicable|Canada requires separate wireless and safety review where applicable|
|EU|CE, RED, RoHS, REACH|EU requires technical file and declaration where applicable|
|UK|UKCA|Separate UK marking and declaration review may apply|
|TW|NCC and local requirements|Traditional Chinese label and local wireless review may apply|
|JP|MIC / TELEC, PSE where applicable|Japanese language, radio, and electrical safety review may apply|
|AU|RCM and applicable electrical / wireless review|AU / NZ compliance and label review may apply|
|CN|China market certification review|Simplified Chinese label and local market review required|
|GL|Reference only|Not a certification claim|
|INT|Project-specific local review|Must map to final deployment country or site|

### ZH-TW

|區域代碼|主要合規映射|備註|
|---|---|---|
|US|適用時 FCC、UL / ETL / NRTL 審查|無線 / EMC 走 FCC；市電或負載控制產品需安全列名審查|
|CA|適用時 ISED、cUL / CSA 審查|加拿大適用時需要獨立無線與安全審查|
|EU|CE、RED、RoHS、REACH|適用時需要 EU 技術文件與符合性聲明|
|UK|UKCA|可能需要獨立 UK 標誌與聲明審查|
|TW|NCC 與本地要求|可能需要繁體中文標籤與本地無線審查|
|JP|適用時 MIC / TELEC、PSE|可能需要日文、無線與電氣安全審查|
|AU|RCM 與適用電氣 / 無線審查|可能需要 AU / NZ 合規與標籤審查|
|CN|中國市場認證審查|需要簡體中文標籤與本地市場審查|
|GL|僅參考|不代表認證宣稱|
|INT|專案特定本地審查|必須映射至最終部署國家或場地|

---

## 32.6 Product Line-to-Compliance Mapping Table

## 32.6 產品線至合規映射表

### EN

|Product Line|Compliance Relevance|Common Review Areas|
|---|---|---|
|Artibird Hub|Medium to High|Adapter, Ethernet, Wi-Fi, local services, cybersecurity, EMC|
|Artibird Gate|High|Wi-Fi, Ethernet, BLE, RF gateway behavior, adapter, EMC, cybersecurity|
|Artibird Sync|Medium to High|IR, RF, USB power, adapter, RF compliance, compatibility claims|
|Artibird Switch|High|Battery, BLE, AC, ZN, SL, relay, dimmer, load, installation, safety|
|Artibird Panel|Medium to High|Display, touch, Wi-Fi, DC / adapter, enclosure, user interface claims|
|Artibird Act|High|AC, relay, plug, load control, energy monitoring, safety, thermal|
|Artibird Sense|Medium|Battery, BLE, sensor claims, environmental accuracy, enclosure|
|Artibird Vision|High|Camera, Wi-Fi, privacy, cybersecurity, power, storage, AI claims|
|Artibird App|Medium|Privacy, app store, cloud access, account behavior, device control claims|
|OceanAI Cloud|Medium to High|Privacy, data handling, security, subscription, service-level claims|
|OceanAI Edge|High|AI inference, camera, local data, hardware, power, thermal, cybersecurity|

### ZH-TW

|產品線|合規相關性|常見審查項目|
|---|---|---|
|Artibird Hub|中至高|適配器、Ethernet、Wi-Fi、本地服務、網路安全、EMC|
|Artibird Gate|高|Wi-Fi、Ethernet、BLE、RF 網關行為、適配器、EMC、網路安全|
|Artibird Sync|中至高|IR、RF、USB 供電、適配器、RF 合規、相容性宣稱|
|Artibird Switch|高|電池、BLE、AC、ZN、SL、繼電器、調光、負載、安裝、安全|
|Artibird Panel|中至高|顯示、觸控、Wi-Fi、DC / 適配器、外殼、使用者介面宣稱|
|Artibird Act|高|AC、繼電器、插座、負載控制、能源監測、安全、熱|
|Artibird Sense|中|電池、BLE、感測宣稱、環境精度、外殼|
|Artibird Vision|高|攝影機、Wi-Fi、隱私、網路安全、供電、儲存、AI 宣稱|
|Artibird App|中|隱私、App Store、雲端存取、帳號行為、設備控制宣稱|
|OceanAI Cloud|中至高|隱私、數據處理、安全、訂閱、服務層級宣稱|
|OceanAI Edge|高|AI 推理、攝影機、本地數據、硬體、供電、熱、網路安全|

---

## 32.7 Connectivity-to-Compliance Mapping Table

## 32.7 連接方式至合規映射表

### EN

|Connectivity Code|Compliance Relevance|Common Review Areas|
|---|---|---|
|WF|High|RF, EMC, antenna, modular approval, region-specific wireless rules|
|ETH|Medium|EMC, Ethernet port, surge / ESD, adapter, cybersecurity|
|BLE|High|RF, Bluetooth qualification, antenna, low-power claims, region-specific wireless rules|
|IR|Low to Medium|EMC, eye-safety considerations where applicable, compatibility claims|
|RF|High|Frequency, transmitter behavior, antenna, regional RF approval|
|IRRF|High|RF approval plus IR compatibility scope|
|HYB|High|All included connectivity paths must be reviewed|
|CLD|Medium|Privacy, cloud security, remote access, account and service policies|
|USB|Medium|Adapter, cable, EMC, USB-C, power / data role|
|LAN|Medium|Local network behavior, cybersecurity, offline claims|
|NA|Low / Depends|Depends on accessory, package, or service context|

### ZH-TW

|連接代碼|合規相關性|常見審查項目|
|---|---|---|
|WF|高|RF、EMC、天線、模組核准、區域無線規則|
|ETH|中|EMC、Ethernet 埠、浪湧 / ESD、適配器、網路安全|
|BLE|高|RF、Bluetooth 資格、天線、低功耗宣稱、區域無線規則|
|IR|低至中|EMC、適用時眼安全考量、相容性宣稱|
|RF|高|頻率、發射行為、天線、區域 RF 核准|
|IRRF|高|RF 核准加 IR 相容性範圍|
|HYB|高|所有內含連接路徑都必須審查|
|CLD|中|隱私、雲端安全、遠端存取、帳號與服務政策|
|USB|中|適配器、線材、EMC、USB-C、供電 / 數據角色|
|LAN|中|本地網路行為、網路安全、離線宣稱|
|NA|低 / 視情況|取決於配件、包裝或服務上下文|

---

## 32.8 Power-to-Compliance Mapping Table

## 32.8 供電架構至合規映射表

### EN

|Power Code|Compliance Relevance|Common Review Areas|
|---|---|---|
|AC|High|Mains safety, load rating, insulation, thermal, surge, label, installation|
|DC|Medium to High|Adapter, input rating, connector, polarity, thermal, enclosure|
|USB|Medium|Adapter, USB-C, cable, input current, EMC, power claim|
|BAT|Medium to High|Battery safety, charging, transport, wireless, enclosure, battery-life claims|
|ZN|High|Line / neutral wiring, load, relay / dimmer, in-wall safety, installation|
|SL|High|No-neutral behavior, leakage, load compatibility, safety, installation limits|
|POE|Medium to High|PoE standard, Ethernet power, isolation, thermal, port safety|
|SELV|Medium|SELV boundary, approved source, low-voltage wiring|
|ADP|Medium to High|Adapter rating, adapter certification, plug type, region|
|NA|Low / Not Applicable|Usually applies to App, Cloud, or service records|

### ZH-TW

|供電代碼|合規相關性|常見審查項目|
|---|---|---|
|AC|高|市電安全、負載額定、絕緣、熱、浪湧、標籤、安裝|
|DC|中至高|適配器、輸入額定、連接器、極性、熱、外殼|
|USB|中|適配器、USB-C、線材、輸入電流、EMC、供電宣稱|
|BAT|中至高|電池安全、充電、運輸、無線、外殼、續航宣稱|
|ZN|高|火線 / 零線接線、負載、繼電器 / 調光、牆內安全、安裝|
|SL|高|無零線行為、漏電、負載相容性、安全、安裝限制|
|POE|中至高|PoE 標準、Ethernet 供電、隔離、熱、埠安全|
|SELV|中|SELV 邊界、已核准來源、低壓接線|
|ADP|中至高|適配器額定、適配器認證、插頭類型、區域|
|NA|低 / 不適用|通常適用於 App、Cloud 或服務記錄|

---

## 32.9 Variant-to-Compliance Mapping Table

## 32.9 版本至合規映射表

### EN

|Variant Code|Compliance Relevance|Common Review Areas|
|---|---|---|
|STD|Depends|Base product compliance depends on product line, region, connectivity, and power|
|PRO|Medium to High|Additional features, professional claims, package scope|
|MINI|Low to Medium|Mechanical, thermal, RF, adapter, label changes|
|E|Medium to High|Energy monitoring, measurement claims, calibration, electrical safety|
|SCN|Medium|Wireless, battery, event-only claim boundary|
|RLY|High|Relay, load, AC safety, thermal, endurance, fail-safe|
|DIM|High|Dimming topology, EMC, LED compatibility, thermal, load testing|
|CLM|Medium|Sensor accuracy, environmental claims, battery, wireless|
|CAM|Medium to High|Camera, privacy, security, storage, wireless|
|EDGE|High|AI inference, privacy, local data, thermal, compute, cybersecurity|
|IR / RF / IRRF|Medium to High|RF frequency, compatibility scope, regional wireless review|
|OUT|Medium to High|Outdoor, enclosure, IP, weather, temperature, UV, installation|
|EDU|Depends|Institutional use, classroom claims, included hardware|
|CUSTOM|Case-by-case|Project-specific compliance scope|
|BETA / DEV|Internal only|Public use requires special approval|

### ZH-TW

|版本代碼|合規相關性|常見審查項目|
|---|---|---|
|STD|視情況|基礎產品合規取決於產品線、區域、連接與供電|
|PRO|中至高|新增功能、專業宣稱、包裝範圍|
|MINI|低至中|機構、熱、RF、適配器、標籤變更|
|E|中至高|能源監測、測量宣稱、校準、電氣安全|
|SCN|中|無線、電池、event-only 宣稱邊界|
|RLY|高|繼電器、負載、AC 安全、熱、壽命、故障安全|
|DIM|高|調光拓撲、EMC、LED 相容性、熱、負載測試|
|CLM|中|感測精度、環境宣稱、電池、無線|
|CAM|中至高|攝影機、隱私、安全、儲存、無線|
|EDGE|高|AI 推理、隱私、本地數據、熱、運算、網路安全|
|IR / RF / IRRF|中至高|RF 頻率、相容性範圍、區域無線審查|
|OUT|中至高|戶外、外殼、IP、耐候、溫度、UV、安裝|
|EDU|視情況|機構用途、教室宣稱、內含硬體|
|CUSTOM|逐案審查|專案特定合規範圍|
|BETA / DEV|僅內部|公開使用需要特別核准|

---

## 32.10 Package-to-Compliance Mapping Table

## 32.10 包裝至合規映射表

### EN

|Package Code|Compliance Relevance|Common Review Areas|
|---|---|---|
|S|Medium|Product label, barcode, manual, safety text, marketplace requirements|
|2P|Medium|Multi-pack barcode, quantity labeling, manual count, inventory|
|4P|Medium|Multi-pack barcode, carton layout, quantity labeling, inventory|
|KIT|Medium to High|Included SKU compliance, kit label, manual, compatibility claims|
|PROKIT|Medium to High|Professional claims, included accessories, adapter, deployment docs|
|EDU|Medium to High|Education claims, classroom deployment docs, included hardware compliance|
|PRJ|Case-by-case|Project site, local requirements, installation records, support boundary|
|CH|Medium|Distributor labels, channel documents, inventory control|
|FBA|High|Barcode, FNSKU, Amazon compliance, packaging, label, listing claims|
|BULK|Medium|Carton labels, logistics, non-retail boundary|
|DEMO|Medium|Demo-only boundary, sample status, claim limits|
|SAMPLE|Medium|Sample status, engineering version, certification sample control|
|NA|Low / Not Applicable|App, Cloud, service records|

### ZH-TW

|包裝代碼|合規相關性|常見審查項目|
|---|---|---|
|S|中|產品標籤、條碼、手冊、安全文字、marketplace 要求|
|2P|中|多入裝條碼、數量標示、手冊數量、庫存|
|4P|中|多入裝條碼、外箱布局、數量標示、庫存|
|KIT|中至高|內含 SKU 合規、套組標籤、手冊、相容性宣稱|
|PROKIT|中至高|專業宣稱、內含配件、適配器、部署文件|
|EDU|中至高|教育宣稱、教室部署文件、內含硬體合規|
|PRJ|逐案審查|專案場地、本地要求、安裝記錄、支持邊界|
|CH|中|分銷標籤、渠道文件、庫存管控|
|FBA|高|條碼、FNSKU、Amazon 合規、包裝、標籤、上架宣稱|
|BULK|中|外箱標籤、物流、非零售邊界|
|DEMO|中|Demo-only 邊界、樣品狀態、宣稱限制|
|SAMPLE|中|樣品狀態、工程版本、認證樣品管控|
|NA|低 / 不適用|App、Cloud、服務記錄|

---

## 32.11 High-Risk Compliance Trigger Table

## 32.11 高風險合規觸發表

### EN

|Trigger|Required Review|
|---|---|
|AC mains input|Safety, thermal, label, installation, certification review|
|Relay load control|Load, endurance, safety, thermal, fail-safe review|
|Dimming function|Load compatibility, EMC, thermal, safety review|
|RF transmitter|Region-specific wireless approval review|
|BLE / Wi-Fi transmitter|Wireless, antenna, EMC, cybersecurity review|
|Battery product|Battery safety, shipping, charging, power-consumption review|
|Camera product|Privacy, cybersecurity, storage, camera claim review|
|Edge AI / local inference|AI claim, privacy, local data, thermal, cybersecurity review|
|Energy monitoring|Measurement, calibration, electrical safety, claim review|
|Outdoor claim|Environmental, enclosure, IP / weather claim review|
|Amazon FBA package|Barcode, FNSKU, listing, packaging, compliance review|
|Education package|Institutional use, classroom deployment, claim review|
|Project package|Site-specific compliance and installation review|
|“Certified” wording|Certification proof and claim wording approval|
|“Universal” compatibility claim|Compatibility database and test evidence review|

### ZH-TW

|觸發條件|必要審查|
|---|---|
|AC 市電輸入|安全、熱、標籤、安裝、認證審查|
|繼電器負載控制|負載、壽命、安全、熱、故障安全審查|
|調光功能|負載相容性、EMC、熱、安全審查|
|RF 發射器|區域特定無線核准審查|
|BLE / Wi-Fi 發射器|無線、天線、EMC、網路安全審查|
|電池產品|電池安全、運輸、充電、功耗審查|
|攝影機產品|隱私、網路安全、儲存、攝影機宣稱審查|
|Edge AI / 本地推理|AI 宣稱、隱私、本地數據、熱、網路安全審查|
|能源監測|測量、校準、電氣安全、宣稱審查|
|戶外宣稱|環境、外殼、IP / 耐候宣稱審查|
|Amazon FBA 包裝|條碼、FNSKU、上架、包裝、合規審查|
|教育包裝|機構用途、教室部署、宣稱審查|
|專案包裝|場地特定合規與安裝審查|
|“Certified” 文字|認證證明與宣稱文字核准|
|“Universal” 相容性宣稱|相容性資料庫與測試證據審查|

---

## 32.12 Certification Status Definitions

## 32.12 認證狀態定義

### EN

|Status|Meaning|Allowed Use|
|---|---|---|
|Not Applicable|Certification framework does not apply|Record reason|
|Not Started|Review not started|Internal planning only|
|Preparing|Documents or samples being prepared|Internal or controlled planning|
|Testing|Lab test or pre-compliance test in progress|No public certification claim|
|Pending Report|Testing completed, report not yet finalized|No public certification claim|
|Report Available|Test report available but certification claim not yet approved|Controlled use only|
|Certified / Listed|Certification or listing completed|Public claim allowed only with approved wording|
|Failed / Issue Found|Compliance issue found|No release until resolved|
|On Hold|Certification paused|No public claim|
|Expired / Superseded|No longer current|Do not use for new release|
|Archived|Historical record only|Do not reuse without review|

### ZH-TW

|狀態|含義|允許使用|
|---|---|---|
|Not Applicable|認證框架不適用|必須記錄原因|
|Not Started|尚未開始審查|僅內部規劃|
|Preparing|文件或樣品準備中|僅內部或受控規劃|
|Testing|實驗室測試或預合規測試中|不得公開宣稱認證|
|Pending Report|測試完成，但報告尚未最終定稿|不得公開宣稱認證|
|Report Available|測試報告可用，但認證宣稱尚未核准|僅受控使用|
|Certified / Listed|認證或列名完成|僅可使用已核准文字公開宣稱|
|Failed / Issue Found|發現合規問題|解決前不得發布|
|On Hold|認證暫停|不得公開宣稱|
|Expired / Superseded|不再有效或已被取代|不得用於新發布|
|Archived|僅歷史記錄|未審查不得重用|

---

## 32.13 Label and Marking Alignment Rules

## 32.13 標籤與標誌一致性規則

### EN

Certification mapping must align with product labels, packaging labels, manuals, and marketplace documents.

|Label Element|Requirement|
|---|---|
|Product model|Must match certification model or approved label model reference|
|SKU code|Must match SKU master record where used|
|Electrical rating|Must match engineering and certification records|
|Wireless ID|Must match applicable wireless certification records where required|
|Certification mark|Use only after certification or listing is complete and mark use is approved|
|Safety warning|Must match power architecture and installation condition|
|Region language|Must match region master table|
|Manual reference|Must match approved manual version|
|Barcode / GTIN / UPC / EAN|Must match package record|
|Amazon FNSKU|Must match FBA package record|
|Responsible party / importer|Must follow region-specific requirements where applicable|

### ZH-TW

認證映射必須與產品標籤、包裝標籤、手冊與 marketplace 文件一致。

|標籤元素|要求|
|---|---|
|產品型號|必須匹配認證型號或已核准標籤型號引用|
|SKU 代碼|使用時必須匹配 SKU 主記錄|
|電氣額定|必須匹配工程與認證記錄|
|無線 ID|必要時必須匹配適用無線認證記錄|
|認證標誌|只有在認證或列名完成且標誌使用核准後才可使用|
|安全警告|必須匹配供電架構與安裝條件|
|區域語言|必須匹配區域主表|
|手冊引用|必須匹配已核准手冊版本|
|條碼 / GTIN / UPC / EAN|必須匹配包裝記錄|
|Amazon FNSKU|必須匹配 FBA 包裝記錄|
|責任方 / 進口商|適用時必須符合區域特定要求|

---

## 32.14 Amazon and Marketplace Compliance Rules

## 32.14 Amazon 與 Marketplace 合規規則

### EN

Amazon or marketplace use requires a separate compliance review from general product readiness.

|Marketplace Item|Requirement|
|---|---|
|Product title|Must not include unsupported certification, compatibility, or performance claims|
|Bullet points|Must match approved feature and claim boundaries|
|A+ content|Must match package, system, and compatibility records|
|Product images|Must show correct label, package, accessories, and warning where applicable|
|Compliance documents|Must match the exact SKU, model, region, and product type|
|Barcode|Must match package record|
|FNSKU|Required for FBA package|
|Product category|Must match product function and safety category|
|Battery information|Required where applicable|
|Wireless information|Required where applicable|
|Safety certification proof|Required where marketplace asks for it|
|Restricted claims|Must be removed or supported before listing approval|

### ZH-TW

Amazon 或 marketplace 使用需要獨立於一般產品準備狀態之外的合規審查。

|Marketplace 項目|要求|
|---|---|
|產品標題|不得包含未支援認證、相容性或性能宣稱|
|五點描述|必須匹配已核准功能與宣稱邊界|
|A+ 內容|必須匹配包裝、系統與相容性記錄|
|產品圖片|適用時必須呈現正確標籤、包裝、配件與警告|
|合規文件|必須匹配精確 SKU、型號、區域與產品類型|
|條碼|必須匹配包裝記錄|
|FNSKU|FBA 包裝必填|
|產品類別|必須匹配產品功能與安全類別|
|電池資訊|適用時必填|
|無線資訊|適用時必填|
|安全認證證明|Marketplace 要求時必填|
|受限宣稱|上架核准前必須移除或提供支持|

---

## 32.15 Compliance Mapping Table Template

## 32.15 合規映射表模板

### EN

|Field|Entry|
|---|---|
|Compliance Mapping ID|TBD|
|SKU Code|TBD|
|Customer-Facing Name|TBD|
|Internal Model|TBD|
|Certification Model|TBD|
|Engineering Model|TBD|
|Region Code|TBD|
|Product Line Code|TBD|
|Connectivity Code|TBD|
|Power Code|TBD|
|Variant Code|TBD|
|Package Code|TBD|
|Applicable Frameworks|FCC / UL / ETL / CE / UKCA / NCC / PSE / RCM / ISED / Other|
|Safety Review Required|Yes / No / TBD|
|Wireless Review Required|Yes / No / TBD|
|EMC Review Required|Yes / No / TBD|
|Battery Review Required|Yes / No / TBD|
|Privacy Review Required|Yes / No / TBD|
|Cybersecurity Review Required|Yes / No / TBD|
|Marketplace Review Required|Yes / No / TBD|
|Label Review Required|Yes / No / TBD|
|Manual Review Required|Yes / No / TBD|
|Packaging Review Required|Yes / No / TBD|
|Claim Boundary Notes|TBD|
|Certification Status|Not Started / Preparing / Testing / Certified / Listed / N/A|
|Compliance Owner|TBD|
|Approval Status|Draft / Pending / Approved / On Hold / Archived|
|Revision Date|TBD|
|Change Log Reference|TBD|

### ZH-TW

|欄位|填寫|
|---|---|
|合規映射 ID|TBD|
|SKU 代碼|TBD|
|面向客戶名稱|TBD|
|內部型號|TBD|
|認證型號|TBD|
|工程型號|TBD|
|區域代碼|TBD|
|產品線代碼|TBD|
|連接代碼|TBD|
|供電代碼|TBD|
|版本代碼|TBD|
|包裝代碼|TBD|
|適用框架|FCC / UL / ETL / CE / UKCA / NCC / PSE / RCM / ISED / Other|
|是否需要安全審查|Yes / No / TBD|
|是否需要無線審查|Yes / No / TBD|
|是否需要 EMC 審查|Yes / No / TBD|
|是否需要電池審查|Yes / No / TBD|
|是否需要隱私審查|Yes / No / TBD|
|是否需要網路安全審查|Yes / No / TBD|
|是否需要 Marketplace 審查|Yes / No / TBD|
|是否需要標籤審查|Yes / No / TBD|
|是否需要手冊審查|Yes / No / TBD|
|是否需要包裝審查|Yes / No / TBD|
|宣稱邊界備註|TBD|
|認證狀態|Not Started / Preparing / Testing / Certified / Listed / N/A|
|合規負責人|TBD|
|核准狀態|Draft / Pending / Approved / On Hold / Archived|
|修訂日期|TBD|
|變更記錄引用|TBD|

---

## 32.16 Completed Example — Artibird Act-E U.S. SKU

## 32.16 完整示例 — Artibird Act-E 美國 SKU

### EN

|Field|Entry|
|---|---|
|Compliance Mapping ID|CMP-ACT-G1-E-US-001|
|SKU Code|ATB-ACT-G1-US-WF-AC-E-S|
|Customer-Facing Name|Artibird Act-E|
|Internal Model|ACT-G1-E|
|Certification Model|ACT-G1-E|
|Engineering Model|ACT-G1-E-HW1.0-FW1.2-PCB1.1-DVT|
|Region Code|US|
|Product Line Code|ACT|
|Connectivity Code|WF|
|Power Code|AC|
|Variant Code|E|
|Package Code|S|
|Applicable Frameworks|FCC / UL or ETL review where applicable|
|Safety Review Required|Yes|
|Wireless Review Required|Yes|
|EMC Review Required|Yes|
|Battery Review Required|No|
|Privacy Review Required|No, unless cloud or app behavior is included|
|Cybersecurity Review Required|Yes, because Wi-Fi and device control are involved|
|Marketplace Review Required|Yes if listed on Amazon|
|Label Review Required|Yes|
|Manual Review Required|Yes|
|Packaging Review Required|Yes|
|Claim Boundary Notes|Energy monitoring may be described only after validation; no energy savings, certified metering, or UL / ETL claim without approval|
|Certification Status|Preparing|
|Compliance Owner|TBD|
|Approval Status|Pending Review|
|Revision Date|TBD|
|Change Log Reference|CR-CMP-ACT-001|

### ZH-TW

|欄位|填寫|
|---|---|
|合規映射 ID|CMP-ACT-G1-E-US-001|
|SKU 代碼|ATB-ACT-G1-US-WF-AC-E-S|
|面向客戶名稱|Artibird Act-E|
|內部型號|ACT-G1-E|
|認證型號|ACT-G1-E|
|工程型號|ACT-G1-E-HW1.0-FW1.2-PCB1.1-DVT|
|區域代碼|US|
|產品線代碼|ACT|
|連接代碼|WF|
|供電代碼|AC|
|版本代碼|E|
|包裝代碼|S|
|適用框架|適用時 FCC / UL 或 ETL 審查|
|是否需要安全審查|Yes|
|是否需要無線審查|Yes|
|是否需要 EMC 審查|Yes|
|是否需要電池審查|No|
|是否需要隱私審查|No，除非包含雲端或 App 行為|
|是否需要網路安全審查|Yes，因涉及 Wi-Fi 與設備控制|
|是否需要 Marketplace 審查|若上架 Amazon，則 Yes|
|是否需要標籤審查|Yes|
|是否需要手冊審查|Yes|
|是否需要包裝審查|Yes|
|宣稱邊界備註|僅在驗證後可描述電能監測；未核准前不得宣稱節能、已認證計量或 UL / ETL|
|認證狀態|Preparing|
|合規負責人|TBD|
|核准狀態|Pending Review|
|修訂日期|TBD|
|變更記錄引用|CR-CMP-ACT-001|

---

## 32.17 Completed Example — Artibird Switch Scene U.S. SKU

## 32.17 完整示例 — Artibird Switch Scene 美國 SKU

### EN

|Field|Entry|
|---|---|
|Compliance Mapping ID|CMP-SW-SCN-US-001|
|SKU Code|ATB-SW-G1-US-BLE-BAT-SCN-S|
|Customer-Facing Name|Artibird Switch Scene|
|Internal Model|SW-G1-SCN|
|Certification Model|SW-G1-SCN|
|Engineering Model|SW-G1-SCN-HW1.0-FW1.0-PCB1.0-EVT|
|Region Code|US|
|Product Line Code|SW|
|Connectivity Code|BLE|
|Power Code|BAT|
|Variant Code|SCN|
|Package Code|S|
|Applicable Frameworks|FCC review; battery and Bluetooth-related review where applicable|
|Safety Review Required|Low to Medium; battery and enclosure review required|
|Wireless Review Required|Yes|
|EMC Review Required|Yes|
|Battery Review Required|Yes|
|Privacy Review Required|No|
|Cybersecurity Review Required|Medium; pairing and device identity review required|
|Marketplace Review Required|Yes if listed on Amazon|
|Label Review Required|Yes|
|Manual Review Required|Yes|
|Packaging Review Required|Yes|
|Claim Boundary Notes|Event-only scene switch; no relay, load-control, dimming, or direct electrical switching claim|
|Certification Status|Not Started|
|Compliance Owner|TBD|
|Approval Status|Draft|
|Revision Date|TBD|
|Change Log Reference|CR-CMP-SW-SCN-001|

### ZH-TW

|欄位|填寫|
|---|---|
|合規映射 ID|CMP-SW-SCN-US-001|
|SKU 代碼|ATB-SW-G1-US-BLE-BAT-SCN-S|
|面向客戶名稱|Artibird Switch Scene|
|內部型號|SW-G1-SCN|
|認證型號|SW-G1-SCN|
|工程型號|SW-G1-SCN-HW1.0-FW1.0-PCB1.0-EVT|
|區域代碼|US|
|產品線代碼|SW|
|連接代碼|BLE|
|供電代碼|BAT|
|版本代碼|SCN|
|包裝代碼|S|
|適用框架|FCC 審查；適用時電池與 Bluetooth 相關審查|
|是否需要安全審查|Low to Medium；需要電池與外殼審查|
|是否需要無線審查|Yes|
|是否需要 EMC 審查|Yes|
|是否需要電池審查|Yes|
|是否需要隱私審查|No|
|是否需要網路安全審查|Medium；需要配對與設備身份審查|
|是否需要 Marketplace 審查|若上架 Amazon，則 Yes|
|是否需要標籤審查|Yes|
|是否需要手冊審查|Yes|
|是否需要包裝審查|Yes|
|宣稱邊界備註|Event-only 場景開關；不得宣稱繼電器、負載控制、調光或直接電力開關|
|認證狀態|Not Started|
|合規負責人|TBD|
|核准狀態|Draft|
|修訂日期|TBD|
|變更記錄引用|CR-CMP-SW-SCN-001|

---

## 32.18 Completed Example — Artibird Gate Pro U.S. SKU

## 32.18 完整示例 — Artibird Gate Pro 美國 SKU

### EN

|Field|Entry|
|---|---|
|Compliance Mapping ID|CMP-GATE-PRO-US-001|
|SKU Code|ATB-GATE-G1-US-HYB-USB-PRO-S|
|Customer-Facing Name|Artibird Gate Pro|
|Internal Model|GATE-G1-PRO|
|Certification Model|GATE-G1-PRO|
|Engineering Model|GATE-G1-PRO-HW1.0-FW1.1-PCB1.0-DVT|
|Region Code|US|
|Product Line Code|GATE|
|Connectivity Code|HYB|
|Power Code|USB|
|Variant Code|PRO|
|Package Code|S|
|Applicable Frameworks|FCC; adapter / USB power review where applicable|
|Safety Review Required|Medium|
|Wireless Review Required|Yes|
|EMC Review Required|Yes|
|Battery Review Required|No|
|Privacy Review Required|No by default; yes if cloud account or user data is included|
|Cybersecurity Review Required|Yes|
|Marketplace Review Required|Yes if listed on Amazon|
|Label Review Required|Yes|
|Manual Review Required|Yes|
|Packaging Review Required|Yes|
|Claim Boundary Notes|HYB must list actual supported paths; Pro must reflect documented enhanced configuration|
|Certification Status|Preparing|
|Compliance Owner|TBD|
|Approval Status|Pending Review|
|Revision Date|TBD|
|Change Log Reference|CR-CMP-GATE-001|

### ZH-TW

|欄位|填寫|
|---|---|
|合規映射 ID|CMP-GATE-PRO-US-001|
|SKU 代碼|ATB-GATE-G1-US-HYB-USB-PRO-S|
|面向客戶名稱|Artibird Gate Pro|
|內部型號|GATE-G1-PRO|
|認證型號|GATE-G1-PRO|
|工程型號|GATE-G1-PRO-HW1.0-FW1.1-PCB1.0-DVT|
|區域代碼|US|
|產品線代碼|GATE|
|連接代碼|HYB|
|供電代碼|USB|
|版本代碼|PRO|
|包裝代碼|S|
|適用框架|FCC；適用時適配器 / USB 供電審查|
|是否需要安全審查|Medium|
|是否需要無線審查|Yes|
|是否需要 EMC 審查|Yes|
|是否需要電池審查|No|
|是否需要隱私審查|預設 No；若包含雲端帳號或用戶數據，則 Yes|
|是否需要網路安全審查|Yes|
|是否需要 Marketplace 審查|若上架 Amazon，則 Yes|
|是否需要標籤審查|Yes|
|是否需要手冊審查|Yes|
|是否需要包裝審查|Yes|
|宣稱邊界備註|HYB 必須列出實際支援路徑；Pro 必須反映已記錄增強配置|
|認證狀態|Preparing|
|合規負責人|TBD|
|核准狀態|Pending Review|
|修訂日期|TBD|
|變更記錄引用|CR-CMP-GATE-001|

---

## 32.19 Certification Claim Boundary Rules

## 32.19 認證宣稱邊界規則

### EN

|Claim Type|Rule|
|---|---|
|“FCC certified”|Use only when FCC authorization is completed and wording is approved|
|“UL listed”|Use only when UL listing is completed and mark use is authorized|
|“ETL listed”|Use only when ETL listing is completed and mark use is authorized|
|“CE compliant”|Use only when EU technical file and declaration are complete|
|“UKCA compliant”|Use only when UKCA file and declaration are complete|
|“NCC approved”|Use only when Taiwan approval is completed|
|“PSE compliant”|Use only when Japan PSE requirements are completed where applicable|
|“RCM compliant”|Use only when AU / NZ compliance requirements are completed|
|“Certified safe”|Avoid unless specific safety certification and claim wording are approved|
|“Meets all standards”|Do not use; overly broad and unsupported|
|“Globally certified”|Do not use unless every claimed market is approved|
|“Amazon approved”|Do not use unless Amazon listing / compliance status is actually approved|

### ZH-TW

|宣稱類型|規則|
|---|---|
|“FCC certified”|只有 FCC 授權完成且文字核准後才可使用|
|“UL listed”|只有 UL 列名完成且標誌使用獲授權後才可使用|
|“ETL listed”|只有 ETL 列名完成且標誌使用獲授權後才可使用|
|“CE compliant”|只有 EU 技術文件與符合性聲明完成後才可使用|
|“UKCA compliant”|只有 UKCA 文件與聲明完成後才可使用|
|“NCC approved”|只有台灣核准完成後才可使用|
|“PSE compliant”|適用時只有日本 PSE 要求完成後才可使用|
|“RCM compliant”|只有 AU / NZ 合規要求完成後才可使用|
|“Certified safe”|除非特定安全認證與宣稱文字已核准，否則避免使用|
|“Meets all standards”|不得使用；過於寬泛且缺乏支持|
|“Globally certified”|除非每個宣稱市場均已核准，否則不得使用|
|“Amazon approved”|除非 Amazon 上架 / 合規狀態實際核准，否則不得使用|

---

## 32.20 Compliance Change Control Rules

## 32.20 合規變更管控規則

### EN

Any compliance-impacting change requires review before production, release, labeling, packaging, shipment, listing, or customer communication.

|Change Scenario|Compliance Review Required?|Possible Required Action|
|---|--:|---|
|Region changes|Yes|New SKU, new label, new certification mapping|
|Wireless module changes|Yes|New RF / EMC review, possible certification update|
|Antenna changes|Yes|RF performance and certification review|
|Power architecture changes|Yes|Safety, label, installation, certification review|
|Relay or load rating changes|Yes|Load, thermal, safety, label review|
|Dimmer function added|Yes|Load compatibility, EMC, thermal, safety review|
|Battery type or capacity changes|Yes|Battery safety, transport, label, manual review|
|Camera added|Yes|Privacy, cybersecurity, label, claim review|
|AI / Edge claim added|Yes|AI capability, privacy, local data, cybersecurity review|
|Energy monitoring added|Yes|Measurement, calibration, safety, claim review|
|Package changed to FBA|Yes|Amazon, barcode, FNSKU, package review|
|Manual or warning text changes|Usually yes|Label and documentation review|
|Certification mark added|Yes|Proof and mark-use approval required|
|Claim wording changes|Yes|Product, legal, compliance review|

### ZH-TW

任何影響合規的變更，都必須在生產、發布、貼標、包裝、出貨、上架或面向客戶溝通前完成審查。

|變更場景|是否需要合規審查？|可能必要動作|
|---|--:|---|
|區域變更|是|新 SKU、新標籤、新認證映射|
|無線模組變更|是|新 RF / EMC 審查，可能需要認證更新|
|天線變更|是|RF 性能與認證審查|
|供電架構變更|是|安全、標籤、安裝、認證審查|
|繼電器或負載額定變更|是|負載、熱、安全、標籤審查|
|新增調光功能|是|負載相容性、EMC、熱、安全審查|
|電池類型或容量變更|是|電池安全、運輸、標籤、手冊審查|
|新增攝影機|是|隱私、網路安全、標籤、宣稱審查|
|新增 AI / Edge 宣稱|是|AI 能力、隱私、本地數據、網路安全審查|
|新增能源監測|是|測量、校準、安全、宣稱審查|
|包裝變更為 FBA|是|Amazon、條碼、FNSKU、包裝審查|
|手冊或警告文字變更|通常是|標籤與文件審查|
|新增認證標誌|是|需要證明與標誌使用核准|
|宣稱文字變更|是|產品、法律、合規審查|

---

## 32.21 Compliance Release Checklist

## 32.21 合規發布清單

### EN

|Check Item|Required Before Public Release?|
|---|--:|
|SKU master record completed|Yes|
|Region code approved|Yes|
|Product line approved|Yes|
|Connectivity mapping completed|Yes|
|Power architecture mapping completed|Yes|
|Variant mapping completed|Yes|
|Package mapping completed|Yes|
|Applicable certification frameworks identified|Yes|
|Certification status recorded|Yes|
|Safety review completed where required|Yes|
|Wireless review completed where required|Yes|
|EMC review completed where required|Yes|
|Battery review completed where required|Yes|
|Privacy / cybersecurity review completed where required|Yes|
|Product label approved|Yes|
|Manual / installation guide approved|Yes|
|Packaging version approved|Yes|
|Barcode / FNSKU completed where required|Yes|
|Marketplace compliance completed where required|Yes|
|Claim boundary notes approved|Yes|
|Compliance owner recorded|Yes|
|Approval status updated|Yes|

### ZH-TW

|檢查項目|公開發布前是否必須？|
|---|--:|
|SKU 主記錄完成|是|
|區域代碼已核准|是|
|產品線已核准|是|
|連接方式映射完成|是|
|供電架構映射完成|是|
|版本映射完成|是|
|包裝映射完成|是|
|適用認證框架已識別|是|
|認證狀態已記錄|是|
|必要時安全審查已完成|是|
|必要時無線審查已完成|是|
|必要時 EMC 審查已完成|是|
|必要時電池審查已完成|是|
|必要時隱私 / 網路安全審查已完成|是|
|產品標籤已核准|是|
|手冊 / 安裝指南已核准|是|
|包裝版本已核准|是|
|必要時條碼 / FNSKU 已完成|是|
|必要時 marketplace 合規已完成|是|
|宣稱邊界備註已核准|是|
|合規負責人已記錄|是|
|核准狀態已更新|是|

---

## 32.22 Compliance Master Governance Rules

## 32.22 合規主表治理規則

### EN

|Rule|Requirement|
|---|---|
|Compliance mapping must exist before public release|No public SKU without compliance mapping|
|Region code is not certification approval|Certification status must be recorded separately|
|Certification marks require completed authorization|No premature mark use|
|Wireless products require wireless review|Wi-Fi, BLE, RF, IRRF, HYB products must be reviewed|
|Mains products require safety review|AC, ZN, SL, RLY, DIM, load-control products must be reviewed|
|Camera and AI products require privacy and cybersecurity review|VIS, CAM, EDGE, APP, CLD records require claim control|
|FBA packages require marketplace compliance review|FNSKU, barcode, listing, label, and documents must align|
|Labels must match certification records|No mismatched model, rating, or mark|
|Claims must match approved evidence|No unsupported compatibility, safety, energy, AI, or certification claims|
|Compliance changes require change control|No silent compliance-impacting change|
|Archived compliance records must remain accessible|Historical traceability must be preserved|

### ZH-TW

|規則|要求|
|---|---|
|公開發布前必須存在合規映射|無合規映射不得公開 SKU|
|區域代碼不是認證核准|認證狀態必須分開記錄|
|認證標誌需要完成授權|不得提前使用標誌|
|無線產品需要無線審查|Wi-Fi、BLE、RF、IRRF、HYB 產品必須審查|
|市電產品需要安全審查|AC、ZN、SL、RLY、DIM、負載控制產品必須審查|
|攝影機與 AI 產品需要隱私與網路安全審查|VIS、CAM、EDGE、APP、CLD 記錄需要宣稱管控|
|FBA 包裝需要 marketplace 合規審查|FNSKU、條碼、上架、標籤與文件必須一致|
|標籤必須匹配認證記錄|不得出現型號、額定或標誌不一致|
|宣稱必須匹配已核准證據|不得使用未支援相容性、安全、能源、AI 或認證宣稱|
|合規變更需要變更管控|不得靜默進行影響合規的變更|
|已歸檔合規記錄必須可存取|必須保留歷史可追蹤性|

---

## 32.23 Spreadsheet Column Recommendation

## 32.23 表格欄位建議

### EN

For Excel, Google Sheets, Airtable, ERP staging tables, certification trackers, or PLM reference tables, the following column order is recommended:

```text
Compliance Mapping ID
SKU Code
Customer-Facing Name
Internal Model
Certification Model
Engineering Model
Region Code
Product Line Code
Connectivity Code
Power Code
Variant Code
Package Code
Applicable Frameworks
Safety Review Required
Wireless Review Required
EMC Review Required
Battery Review Required
Privacy Review Required
Cybersecurity Review Required
Marketplace Review Required
Label Review Required
Manual Review Required
Packaging Review Required
Claim Boundary Notes
Certification Status
Compliance Owner
Approval Status
Revision Date
Change Log Reference
```

### ZH-TW

對於 Excel、Google Sheets、Airtable、ERP 暫存表、認證追蹤表或 PLM 參考表，建議使用以下欄位順序：

```text
Compliance Mapping ID
SKU Code
Customer-Facing Name
Internal Model
Certification Model
Engineering Model
Region Code
Product Line Code
Connectivity Code
Power Code
Variant Code
Package Code
Applicable Frameworks
Safety Review Required
Wireless Review Required
EMC Review Required
Battery Review Required
Privacy Review Required
Cybersecurity Review Required
Marketplace Review Required
Label Review Required
Manual Review Required
Packaging Review Required
Claim Boundary Notes
Certification Status
Compliance Owner
Approval Status
Revision Date
Change Log Reference
```

---

## 32.24 Chapter Conclusion

## 32.24 本章結論

### EN

The Certification and Compliance Mapping Table is the release-control layer of the Artibird SKU and model naming system.

It connects region, product line, connectivity, power architecture, variant function, package type, certification model, engineering configuration, label records, packaging records, marketplace records, and customer-facing claims into one controlled compliance structure.

A controlled compliance mapping table ensures that Artibird products are not sold, listed, labeled, shipped, or described beyond their approved certification, safety, wireless, electrical, privacy, cybersecurity, marketplace, and claim boundaries.

### ZH-TW

認證與合規映射表是 Artibird SKU 與型號命名系統的發布管控層。

它將區域、產品線、連接方式、供電架構、功能版本、包裝類型、認證型號、工程配置、標籤記錄、包裝記錄、marketplace 記錄與面向客戶宣稱，整合為一套受控合規結構。

受控的合規映射表，可確保 Artibird 產品不會超出已核准的認證、安全、無線、電氣、隱私、網路安全、marketplace 與宣稱邊界，被銷售、上架、貼標、出貨或描述。

---

**話題延伸｜互動建議**  
下一章可以繼續寫 **Chapter 33 — Lifecycle and Release Status Master Table｜第三十三章｜生命週期與發布狀態主表**，把 Concept、Prototype、EVT、DVT、PVT、Pilot、Certified、Released、Deprecated、Discontinued、Archived 等狀態與 SKU、工程、認證、生產、包裝、Amazon、渠道發布條件對齊。