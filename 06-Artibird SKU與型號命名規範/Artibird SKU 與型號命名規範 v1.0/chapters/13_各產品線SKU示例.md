# Artibird SKU & Model Naming Specification v1.0

# Artibird SKU 與型號命名規範 v1.0

## Chapter 13 — SKU Examples by Product Line

## 第十三章｜各產品線 SKU 示例

---

## 13.1 Purpose

## 13.1 目的

### EN

This chapter provides standard placeholder SKU examples for each Artibird product line and related OceanAI system-layer record.

The purpose is to demonstrate how the official SKU format should be applied across different product families, including Hub, Gate, Sync, Switch, Panel, Act, Sense, Vision, App, OceanAI Cloud, and OceanAI Edge.

These examples are for planning, documentation, and master table preparation only. They must not be treated as released commercial SKUs unless reviewed and approved through the SKU governance process.

### ZH-TW

本章為每一條 Artibird 產品線與相關 OceanAI 系統層記錄提供標準佔位 SKU 示例。

其目的，是示範官方 SKU 格式如何應用於不同產品家族，包括 Hub、Gate、Sync、Switch、Panel、Act、Sense、Vision、App、OceanAI Cloud 與 OceanAI Edge。

這些示例僅用於規劃、文件撰寫與 SKU 主表準備。在未經 SKU 治理流程審查與核准前，不得視為已發布商業 SKU。

---

## 13.2 Standard SKU Format Reference

## 13.2 標準 SKU 格式參考

### EN

The official SKU format is:

```text
ATB-[PRODUCT]-[GEN]-[REGION]-[CONNECTIVITY]-[POWER]-[VARIANT]-[PACKAGE]
```

|Field|Meaning|
|---|---|
|ATB|Artibird brand prefix|
|PRODUCT|Product line code|
|GEN|Generation code|
|REGION|Target market or regional configuration|
|CONNECTIVITY|Communication or connection method|
|POWER|Power architecture or installation condition|
|VARIANT|Functional or commercial variant|
|PACKAGE|Packaging or sales unit|

### ZH-TW

官方 SKU 格式為：

```text
ATB-[產品]-[世代]-[區域]-[連接]-[供電]-[版本]-[包裝]
```

|欄位|含義|
|---|---|
|ATB|Artibird 品牌前綴|
|PRODUCT|產品線代碼|
|GEN|世代代碼|
|REGION|目標市場或區域配置|
|CONNECTIVITY|通訊或連接方式|
|POWER|供電架構或安裝條件|
|VARIANT|功能或商業版本|
|PACKAGE|包裝或銷售單位|

---

## 13.3 Important Use Limitation

## 13.3 重要使用限制

### EN

All SKU examples in this chapter are placeholders.

They are intended to show naming logic, not final commercial approval. Before any SKU is used in sales, packaging, Amazon listing, channel communication, certification mapping, production records, or pricing sheets, it must be reviewed against the SKU master table and approval checklist.

### ZH-TW

本章所有 SKU 示例均為佔位示例。

它們用於展示命名邏輯，而不是最終商業核准。在任何 SKU 被用於銷售、包裝、Amazon 上架、渠道溝通、認證映射、生產記錄或價格表之前，都必須依據 SKU 主表與核准清單完成審查。

---

## 13.4 Master Example Table

## 13.4 主示例表

### EN

|Product|Placeholder SKU|Meaning|
|---|---|---|
|Artibird Hub|ATB-HUB-G1-US-ETH-DC-STD-S|Hub G1, U.S. market, Ethernet, DC powered, standard version, single unit|
|Artibird Gate|ATB-GATE-G1-US-HYB-USB-PRO-S|Gate G1, U.S. market, hybrid communication, USB powered, Pro version, single unit|
|Artibird Sync|ATB-SYNC-G1-GL-IRRF-USB-STD-S|Sync G1, global reference, IR + RF, USB powered, standard version, single unit|
|Artibird Switch Scene|ATB-SW-G1-US-BLE-BAT-SCN-S|Switch G1, U.S. market, BLE, battery powered, scene switch, single unit|
|Artibird Switch Relay|ATB-SW-G1-US-WF-ZN-RLY-S|Switch G1, U.S. market, Wi-Fi, zero-neutral, relay version, single unit|
|Artibird Panel|ATB-PNL-G1-US-WF-DC-STD-S|Panel G1, U.S. market, Wi-Fi, DC powered, standard version, single unit|
|Artibird Act|ATB-ACT-G1-US-WF-AC-STD-S|Act G1, U.S. market, Wi-Fi, AC powered, standard version, single unit|
|Artibird Act-E|ATB-ACT-G1-US-WF-AC-E-S|Act-E G1, U.S. market, Wi-Fi, AC powered, energy-aware version, single unit|
|Artibird Sense|ATB-SNS-G1-GL-BLE-BAT-STD-S|Sense G1, global reference, BLE, battery powered, standard version, single unit|
|Artibird Vision|ATB-VIS-G1-US-WF-DC-CAM-S|Vision G1, U.S. market, Wi-Fi, DC powered, camera / vision version, single unit|
|Artibird App|ATB-APP-G1-GL-CLD-NA-STD-NA|App G1, global reference, cloud-connected service path, no physical power, standard version|
|OceanAI Cloud|ATB-CLD-G1-US-CLD-NA-STD-NA|Cloud service record, U.S. market, cloud-connected path, no physical power, standard service record|
|OceanAI Edge|ATB-EDGE-G1-US-ETH-DC-PRO-S|Edge G1, U.S. market, Ethernet, DC powered, Pro version, single unit|

### ZH-TW

|產品|佔位 SKU|含義|
|---|---|---|
|Artibird Hub|ATB-HUB-G1-US-ETH-DC-STD-S|Hub G1，美國市場，Ethernet，DC 供電，標準版，單品|
|Artibird Gate|ATB-GATE-G1-US-HYB-USB-PRO-S|Gate G1，美國市場，混合通訊，USB 供電，Pro 版，單品|
|Artibird Sync|ATB-SYNC-G1-GL-IRRF-USB-STD-S|Sync G1，全球參考版本，IR + RF，USB 供電，標準版，單品|
|Artibird Switch Scene|ATB-SW-G1-US-BLE-BAT-SCN-S|Switch G1，美國市場，BLE，電池供電，場景開關，單品|
|Artibird Switch Relay|ATB-SW-G1-US-WF-ZN-RLY-S|Switch G1，美國市場，Wi-Fi，零火配置，繼電器版本，單品|
|Artibird Panel|ATB-PNL-G1-US-WF-DC-STD-S|Panel G1，美國市場，Wi-Fi，DC 供電，標準版，單品|
|Artibird Act|ATB-ACT-G1-US-WF-AC-STD-S|Act G1，美國市場，Wi-Fi，AC 供電，標準版，單品|
|Artibird Act-E|ATB-ACT-G1-US-WF-AC-E-S|Act-E G1，美國市場，Wi-Fi，AC 供電，能源感知版本，單品|
|Artibird Sense|ATB-SNS-G1-GL-BLE-BAT-STD-S|Sense G1，全球參考版本，BLE，電池供電，標準版，單品|
|Artibird Vision|ATB-VIS-G1-US-WF-DC-CAM-S|Vision G1，美國市場，Wi-Fi，DC 供電，攝影機 / 視覺版本，單品|
|Artibird App|ATB-APP-G1-GL-CLD-NA-STD-NA|App G1，全球參考版本，雲端連接服務路徑，無實體供電，標準版|
|OceanAI Cloud|ATB-CLD-G1-US-CLD-NA-STD-NA|Cloud 服務記錄，美國市場，雲端連接路徑，無實體供電，標準服務記錄|
|OceanAI Edge|ATB-EDGE-G1-US-ETH-DC-PRO-S|Edge G1，美國市場，Ethernet，DC 供電，Pro 版，單品|

---

## 13.5 Artibird Hub SKU Examples

## 13.5 Artibird Hub SKU 示例

### EN

Artibird Hub represents the local runtime center. It may support local services, MQTT, state management, automation, web services, and ArtiOS modules.

|Example Type|Placeholder SKU|Meaning|
|---|---|---|
|Standard Hub|ATB-HUB-G1-US-ETH-DC-STD-S|Standard Hub, U.S., Ethernet, DC powered, single unit|
|Wi-Fi Hub|ATB-HUB-G1-US-WF-DC-STD-S|Standard Hub, U.S., Wi-Fi, DC powered, single unit|
|Pro Hub|ATB-HUB-G1-US-HYB-DC-PRO-S|Pro Hub, U.S., hybrid connectivity, DC powered, single unit|
|Education Hub Kit|ATB-HUB-G1-US-ETH-DC-EDU-EDU|Education-oriented Hub package|
|Project Hub|ATB-HUB-G1-US-ETH-DC-PRO-PRJ|Project deployment Hub package|

### ZH-TW

Artibird Hub 代表本地 Runtime 中樞。它可支援本地服務、MQTT、狀態管理、自動化、Web 服務與 ArtiOS 模組。

|示例類型|佔位 SKU|含義|
|---|---|---|
|標準 Hub|ATB-HUB-G1-US-ETH-DC-STD-S|標準 Hub，美國，Ethernet，DC 供電，單品|
|Wi-Fi Hub|ATB-HUB-G1-US-WF-DC-STD-S|標準 Hub，美國，Wi-Fi，DC 供電，單品|
|Pro Hub|ATB-HUB-G1-US-HYB-DC-PRO-S|Pro Hub，美國，混合連接，DC 供電，單品|
|教育 Hub 套組|ATB-HUB-G1-US-ETH-DC-EDU-EDU|教育導向 Hub 包裝|
|專案 Hub|ATB-HUB-G1-US-ETH-DC-PRO-PRJ|專案部署 Hub 包裝|

---

## 13.6 Artibird Gate SKU Examples

## 13.6 Artibird Gate SKU 示例

### EN

Artibird Gate represents the device access gateway. It may support Wi-Fi, Ethernet, BLE Mesh, Wi-Fi Mesh where supported, and local gateway participation.

|Example Type|Placeholder SKU|Meaning|
|---|---|---|
|Standard Gate|ATB-GATE-G1-US-WF-USB-STD-S|Standard Gate, U.S., Wi-Fi, USB powered, single unit|
|Ethernet Gate|ATB-GATE-G1-US-ETH-USB-STD-S|Gate with Ethernet, U.S., USB powered, single unit|
|Hybrid Gate Pro|ATB-GATE-G1-US-HYB-USB-PRO-S|Gate Pro, U.S., hybrid communication, USB powered|
|Outdoor Gate|ATB-GATE-G1-US-HYB-DC-OUT-S|Outdoor-oriented Gate, U.S., hybrid communication, DC powered|
|Gate Pro Kit|ATB-GATE-G1-US-HYB-USB-PRO-PROKIT|Professional Gate kit|

### ZH-TW

Artibird Gate 代表設備接入網關。它可支援 Wi-Fi、Ethernet、BLE Mesh、支援條件下的 Wi-Fi Mesh，以及本地網關參與。

|示例類型|佔位 SKU|含義|
|---|---|---|
|標準 Gate|ATB-GATE-G1-US-WF-USB-STD-S|標準 Gate，美國，Wi-Fi，USB 供電，單品|
|Ethernet Gate|ATB-GATE-G1-US-ETH-USB-STD-S|具 Ethernet 的 Gate，美國，USB 供電，單品|
|Hybrid Gate Pro|ATB-GATE-G1-US-HYB-USB-PRO-S|Gate Pro，美國，混合通訊，USB 供電|
|Outdoor Gate|ATB-GATE-G1-US-HYB-DC-OUT-S|戶外導向 Gate，美國，混合通訊，DC 供電|
|Gate Pro Kit|ATB-GATE-G1-US-HYB-USB-PRO-PROKIT|專業 Gate 套組|

---

## 13.7 Artibird Sync SKU Examples

## 13.7 Artibird Sync SKU 示例

### EN

Artibird Sync represents the IR / RF synchronization node. It is used for appliance synchronization, IR command control, RF command control, and supported synchronization workflows.

|Example Type|Placeholder SKU|Meaning|
|---|---|---|
|IR Sync|ATB-SYNC-G1-GL-IR-USB-STD-S|Sync G1, global reference, IR, USB powered|
|RF Sync|ATB-SYNC-G1-GL-RF-USB-STD-S|Sync G1, global reference, RF, USB powered|
|IR/RF Sync|ATB-SYNC-G1-GL-IRRF-USB-STD-S|Sync G1, global reference, IR + RF, USB powered|
|U.S. IR/RF Sync|ATB-SYNC-G1-US-IRRF-USB-STD-S|U.S. market Sync, IR + RF, USB powered|
|Sync Demo Kit|ATB-SYNC-G1-US-IRRF-USB-STD-DEMO|Demonstration package for Sync|

### ZH-TW

Artibird Sync 代表 IR / RF 同步節點。它用於家電同步、紅外指令控制、射頻指令控制與受支援的同步工作流。

|示例類型|佔位 SKU|含義|
|---|---|---|
|IR Sync|ATB-SYNC-G1-GL-IR-USB-STD-S|Sync G1，全球參考版本，IR，USB 供電|
|RF Sync|ATB-SYNC-G1-GL-RF-USB-STD-S|Sync G1，全球參考版本，RF，USB 供電|
|IR/RF Sync|ATB-SYNC-G1-GL-IRRF-USB-STD-S|Sync G1，全球參考版本，IR + RF，USB 供電|
|美國 IR/RF Sync|ATB-SYNC-G1-US-IRRF-USB-STD-S|美國市場 Sync，IR + RF，USB 供電|
|Sync 展示套組|ATB-SYNC-G1-US-IRRF-USB-STD-DEMO|Sync 展示包裝|

---

## 13.8 Artibird Switch SKU Examples

## 13.8 Artibird Switch SKU 示例

### EN

Artibird Switch represents switch-class products, including scene switches, battery event switches, zero-neutral relay switches, and dimmer variants where supported.

|Example Type|Placeholder SKU|Meaning|
|---|---|---|
|Battery Scene Switch|ATB-SW-G1-US-BLE-BAT-SCN-S|Battery-powered BLE scene switch|
|Battery Scene Switch Two-Pack|ATB-SW-G1-US-BLE-BAT-SCN-2P|Two-pack battery scene switch|
|Zero-Neutral Relay Switch|ATB-SW-G1-US-WF-ZN-RLY-S|Wi-Fi zero-neutral relay switch|
|Single-Live Scene Switch|ATB-SW-G1-US-BLE-SL-SCN-S|Single-live scene switch or event transmitter|
|Dimmer Switch|ATB-SW-G1-US-WF-ZN-DIM-S|Wi-Fi zero-neutral dimmer switch where validated|
|Switch Bulk Pack|ATB-SW-G1-US-WF-ZN-RLY-BULK|Bulk shipment relay switch package|

### ZH-TW

Artibird Switch 代表開關類產品，包括場景開關、電池事件開關、零火繼電器開關，以及支援條件下的調光版本。

|示例類型|佔位 SKU|含義|
|---|---|---|
|電池場景開關|ATB-SW-G1-US-BLE-BAT-SCN-S|電池供電 BLE 場景開關|
|電池場景開關兩入裝|ATB-SW-G1-US-BLE-BAT-SCN-2P|電池場景開關兩入裝|
|零火繼電器開關|ATB-SW-G1-US-WF-ZN-RLY-S|Wi-Fi 零火繼電器開關|
|單火場景開關|ATB-SW-G1-US-BLE-SL-SCN-S|單火場景開關或事件發射器|
|調光開關|ATB-SW-G1-US-WF-ZN-DIM-S|支援條件下的 Wi-Fi 零火調光開關|
|開關批量包|ATB-SW-G1-US-WF-ZN-RLY-BULK|繼電器開關批量出貨包|

---

## 13.9 Artibird Panel SKU Examples

## 13.9 Artibird Panel SKU 示例

### EN

Artibird Panel represents room-level interaction interfaces, touch panels, display interfaces, or command surfaces.

|Example Type|Placeholder SKU|Meaning|
|---|---|---|
|Standard Panel|ATB-PNL-G1-US-WF-DC-STD-S|Standard Wi-Fi panel, DC powered|
|Low-Voltage Panel|ATB-PNL-G1-US-WF-LV-STD-S|Low-voltage panel|
|PoE Panel|ATB-PNL-G1-US-ETH-POE-PRO-S|Ethernet / PoE Pro panel|
|Education Panel|ATB-PNL-G1-US-WF-DC-EDU-EDU|Education-oriented panel package|
|Panel Demo Kit|ATB-PNL-G1-US-WF-DC-STD-DEMO|Panel demonstration package|

### ZH-TW

Artibird Panel 代表房間級互動介面、觸控面板、顯示介面或指令介面。

|示例類型|佔位 SKU|含義|
|---|---|---|
|標準 Panel|ATB-PNL-G1-US-WF-DC-STD-S|標準 Wi-Fi Panel，DC 供電|
|低壓 Panel|ATB-PNL-G1-US-WF-LV-STD-S|低壓 Panel|
|PoE Panel|ATB-PNL-G1-US-ETH-POE-PRO-S|Ethernet / PoE Pro Panel|
|教育 Panel|ATB-PNL-G1-US-WF-DC-EDU-EDU|教育導向 Panel 包裝|
|Panel 展示套組|ATB-PNL-G1-US-WF-DC-STD-DEMO|Panel 展示包裝|

---

## 13.10 Artibird Act SKU Examples

## 13.10 Artibird Act SKU 示例

### EN

Artibird Act represents electrical execution nodes, including relay, plug, load-control, and energy-aware execution variants.

|Example Type|Placeholder SKU|Meaning|
|---|---|---|
|Standard Act|ATB-ACT-G1-US-WF-AC-STD-S|Standard Wi-Fi AC-powered execution node|
|Act-E|ATB-ACT-G1-US-WF-AC-E-S|Energy-aware Act with validated energy capability|
|Relay Act|ATB-ACT-G1-US-WF-AC-RLY-S|Relay execution version|
|Act-E Two-Pack|ATB-ACT-G1-US-WF-AC-E-2P|Two-pack energy-aware Act|
|Outdoor Act|ATB-ACT-G1-US-WF-AC-OUT-S|Outdoor-oriented Act where validated|
|Project Act|ATB-ACT-G1-US-WF-AC-E-PRJ|Project package for energy-aware deployment|

### ZH-TW

Artibird Act 代表電力執行節點，包括繼電器、插座、負載控制與能源感知執行版本。

|示例類型|佔位 SKU|含義|
|---|---|---|
|標準 Act|ATB-ACT-G1-US-WF-AC-STD-S|標準 Wi-Fi AC 供電執行節點|
|Act-E|ATB-ACT-G1-US-WF-AC-E-S|具備已驗證能源能力的能源感知 Act|
|Relay Act|ATB-ACT-G1-US-WF-AC-RLY-S|繼電器執行版本|
|Act-E 兩入裝|ATB-ACT-G1-US-WF-AC-E-2P|能源感知 Act 兩入裝|
|戶外 Act|ATB-ACT-G1-US-WF-AC-OUT-S|已驗證條件下的戶外導向 Act|
|專案 Act|ATB-ACT-G1-US-WF-AC-E-PRJ|能源感知部署專案包|

---

## 13.11 Artibird Sense SKU Examples

## 13.11 Artibird Sense SKU 示例

### EN

Artibird Sense represents environmental sensing nodes, including temperature, humidity, light, occupancy, and project-specific sensing variants.

|Example Type|Placeholder SKU|Meaning|
|---|---|---|
|Standard Sense|ATB-SNS-G1-GL-BLE-BAT-STD-S|Standard BLE battery-powered sensor|
|U.S. Sense|ATB-SNS-G1-US-BLE-BAT-STD-S|U.S. market BLE battery-powered sensor|
|Outdoor Sense|ATB-SNS-G1-US-LORA-BAT-OUT-S|Outdoor LoRa battery-powered sensor where validated|
|Sense Four-Pack|ATB-SNS-G1-US-BLE-BAT-STD-4P|Four-pack BLE sensor package|
|Education Sense Kit|ATB-SNS-G1-US-BLE-BAT-EDU-EDU|Education-oriented sensor package|
|Sense Sample|ATB-SNS-G1-US-BLE-BAT-STD-SAMPLE|Evaluation or sample sensor package|

### ZH-TW

Artibird Sense 代表環境感知節點，包括溫度、濕度、光照、人體存在與專案特定感測版本。

|示例類型|佔位 SKU|含義|
|---|---|---|
|標準 Sense|ATB-SNS-G1-GL-BLE-BAT-STD-S|標準 BLE 電池供電感測器|
|美國 Sense|ATB-SNS-G1-US-BLE-BAT-STD-S|美國市場 BLE 電池供電感測器|
|戶外 Sense|ATB-SNS-G1-US-LORA-BAT-OUT-S|已驗證條件下的戶外 LoRa 電池供電感測器|
|Sense 四入裝|ATB-SNS-G1-US-BLE-BAT-STD-4P|BLE 感測器四入裝|
|教育 Sense 套組|ATB-SNS-G1-US-BLE-BAT-EDU-EDU|教育導向感測器包裝|
|Sense 樣品包|ATB-SNS-G1-US-BLE-BAT-STD-SAMPLE|評估或樣品感測器包裝|

---

## 13.12 Artibird Vision SKU Examples

## 13.12 Artibird Vision SKU 示例

### EN

Artibird Vision represents camera, visual perception, vision event, and AI-assisted visual context products.

|Example Type|Placeholder SKU|Meaning|
|---|---|---|
|Standard Vision|ATB-VIS-G1-US-WF-DC-CAM-S|Wi-Fi DC-powered camera / vision node|
|Ethernet Vision|ATB-VIS-G1-US-ETH-DC-CAM-S|Ethernet DC-powered vision node|
|PoE Vision|ATB-VIS-G1-US-ETH-POE-CAM-S|PoE vision node|
|Outdoor Vision|ATB-VIS-G1-US-WF-DC-OUT-S|Outdoor-oriented vision node where validated|
|Vision Pro Kit|ATB-VIS-G1-US-ETH-POE-CAM-PROKIT|Professional vision deployment kit|
|Vision Sample|ATB-VIS-G1-US-WF-DC-CAM-SAMPLE|Evaluation or review sample|

### ZH-TW

Artibird Vision 代表攝影機、視覺感知、視覺事件與 AI 輔助視覺上下文產品。

|示例類型|佔位 SKU|含義|
|---|---|---|
|標準 Vision|ATB-VIS-G1-US-WF-DC-CAM-S|Wi-Fi DC 供電攝影機 / 視覺節點|
|Ethernet Vision|ATB-VIS-G1-US-ETH-DC-CAM-S|Ethernet DC 供電視覺節點|
|PoE Vision|ATB-VIS-G1-US-ETH-POE-CAM-S|PoE 視覺節點|
|戶外 Vision|ATB-VIS-G1-US-WF-DC-OUT-S|已驗證條件下的戶外導向視覺節點|
|Vision Pro Kit|ATB-VIS-G1-US-ETH-POE-CAM-PROKIT|專業視覺部署套組|
|Vision 樣品包|ATB-VIS-G1-US-WF-DC-CAM-SAMPLE|評估或審查樣品|

---

## 13.13 Artibird App SKU / Record Examples

## 13.13 Artibird App SKU / 記錄示例

### EN

Artibird App is a software and interface record. It may not require a physical SKU in the same way as hardware products, but controlled records may be needed for app release, subscription mapping, service packaging, or channel documentation.

|Example Type|Placeholder Record|Meaning|
|---|---|---|
|Standard App Record|ATB-APP-G1-GL-CLD-NA-STD-NA|App G1, global reference, cloud-connected path, no physical package|
|U.S. App Service Record|ATB-APP-G1-US-CLD-NA-STD-NA|U.S. app service record|
|Education App Record|ATB-APP-G1-US-CLD-NA-EDU-NA|Education-oriented app service record|
|Beta App Record|ATB-APP-G1-GL-CLD-NA-BETA-NA|Controlled beta app record|

### ZH-TW

Artibird App 是軟體與介面記錄。它可能不像硬體產品一樣需要實體 SKU，但在 App 發布、訂閱映射、服務包裝或渠道文件中，可能需要受控記錄。

|示例類型|佔位記錄|含義|
|---|---|---|
|標準 App 記錄|ATB-APP-G1-GL-CLD-NA-STD-NA|App G1，全球參考版本，雲端連接路徑，無實體包裝|
|美國 App 服務記錄|ATB-APP-G1-US-CLD-NA-STD-NA|美國 App 服務記錄|
|教育 App 記錄|ATB-APP-G1-US-CLD-NA-EDU-NA|教育導向 App 服務記錄|
|Beta App 記錄|ATB-APP-G1-GL-CLD-NA-BETA-NA|受控 Beta App 記錄|

---

## 13.14 OceanAI Cloud SKU / Service Record Examples

## 13.14 OceanAI Cloud SKU / 服務記錄示例

### EN

OceanAI Cloud is a system-layer service record rather than a physical Artibird device. Controlled records may be used for subscription, remote access, multi-site management, analytics, lifecycle services, or project deployment.

|Example Type|Placeholder Record|Meaning|
|---|---|---|
|Standard Cloud Service|ATB-CLD-G1-US-CLD-NA-STD-NA|U.S. standard cloud service record|
|Pro Cloud Service|ATB-CLD-G1-US-CLD-NA-PRO-NA|U.S. professional cloud service record|
|Education Cloud Service|ATB-CLD-G1-US-CLD-NA-EDU-NA|Education-oriented cloud service record|
|Project Cloud Service|ATB-CLD-G1-US-CLD-NA-CUSTOM-PRJ|Project-specific cloud service record|

### ZH-TW

OceanAI Cloud 是系統層服務記錄，而不是 Artibird 實體設備。受控記錄可用於訂閱、遠端存取、多站點管理、分析、生命週期服務或專案部署。

|示例類型|佔位記錄|含義|
|---|---|---|
|標準 Cloud 服務|ATB-CLD-G1-US-CLD-NA-STD-NA|美國標準雲端服務記錄|
|Pro Cloud 服務|ATB-CLD-G1-US-CLD-NA-PRO-NA|美國專業雲端服務記錄|
|教育 Cloud 服務|ATB-CLD-G1-US-CLD-NA-EDU-NA|教育導向雲端服務記錄|
|專案 Cloud 服務|ATB-CLD-G1-US-CLD-NA-CUSTOM-PRJ|專案特定雲端服務記錄|

---

## 13.15 OceanAI Edge SKU Examples

## 13.15 OceanAI Edge SKU 示例

### EN

OceanAI Edge represents the edge intelligence layer, including Jetson-based local AI inference, SLM / VLM-assisted analysis, vision processing, sensor fusion, and local intelligence workflows.

|Example Type|Placeholder SKU|Meaning|
|---|---|---|
|Standard Edge|ATB-EDGE-G1-US-ETH-DC-STD-S|Standard Edge node, Ethernet, DC powered|
|Edge Pro|ATB-EDGE-G1-US-ETH-DC-PRO-S|Pro Edge node for advanced deployment|
|Edge Vision|ATB-EDGE-G1-US-ETH-DC-CAM-S|Edge node with vision-oriented configuration|
|Edge Pro Kit|ATB-EDGE-G1-US-ETH-DC-PRO-PROKIT|Professional Edge deployment kit|
|Edge Project Package|ATB-EDGE-G1-US-ETH-DC-CUSTOM-PRJ|Project-specific Edge deployment package|

### ZH-TW

OceanAI Edge 代表邊緣智慧層，包括基於 Jetson 的本地 AI 推理、SLM / VLM 輔助分析、視覺處理、感測融合與本地智慧工作流。

|示例類型|佔位 SKU|含義|
|---|---|---|
|標準 Edge|ATB-EDGE-G1-US-ETH-DC-STD-S|標準 Edge 節點，Ethernet，DC 供電|
|Edge Pro|ATB-EDGE-G1-US-ETH-DC-PRO-S|用於高階部署的 Pro Edge 節點|
|Edge Vision|ATB-EDGE-G1-US-ETH-DC-CAM-S|視覺導向配置 Edge 節點|
|Edge Pro Kit|ATB-EDGE-G1-US-ETH-DC-PRO-PROKIT|專業 Edge 部署套組|
|Edge Project Package|ATB-EDGE-G1-US-ETH-DC-CUSTOM-PRJ|專案特定 Edge 部署包|

---

## 13.16 Example Mapping — Customer Name to SKU

## 13.16 示例映射 — 面向客戶名稱至 SKU

### EN

|Customer-Facing Name|Internal Model|Placeholder SKU|
|---|---|---|
|Artibird Hub G1|HUB-G1|ATB-HUB-G1-US-ETH-DC-STD-S|
|Artibird Gate Pro|GATE-G1-PRO|ATB-GATE-G1-US-HYB-USB-PRO-S|
|Artibird Sync IR/RF|SYNC-G1-IRRF|ATB-SYNC-G1-GL-IRRF-USB-STD-S|
|Artibird Switch Scene|SW-G1-SCN|ATB-SW-G1-US-BLE-BAT-SCN-S|
|Artibird Switch Relay|SW-G1-RLY|ATB-SW-G1-US-WF-ZN-RLY-S|
|Artibird Panel Room|PNL-G1-ROOM|ATB-PNL-G1-US-WF-DC-STD-S|
|Artibird Act-E|ACT-G1-E|ATB-ACT-G1-US-WF-AC-E-S|
|Artibird Sense Climate|SNS-G1-CLM|ATB-SNS-G1-GL-BLE-BAT-STD-S|
|Artibird Vision Edge|VIS-G1-EDGE|ATB-VIS-G1-US-WF-DC-CAM-S|

### ZH-TW

|面向客戶名稱|內部型號|佔位 SKU|
|---|---|---|
|Artibird Hub G1|HUB-G1|ATB-HUB-G1-US-ETH-DC-STD-S|
|Artibird Gate Pro|GATE-G1-PRO|ATB-GATE-G1-US-HYB-USB-PRO-S|
|Artibird Sync IR/RF|SYNC-G1-IRRF|ATB-SYNC-G1-GL-IRRF-USB-STD-S|
|Artibird Switch Scene|SW-G1-SCN|ATB-SW-G1-US-BLE-BAT-SCN-S|
|Artibird Switch Relay|SW-G1-RLY|ATB-SW-G1-US-WF-ZN-RLY-S|
|Artibird Panel Room|PNL-G1-ROOM|ATB-PNL-G1-US-WF-DC-STD-S|
|Artibird Act-E|ACT-G1-E|ATB-ACT-G1-US-WF-AC-E-S|
|Artibird Sense Climate|SNS-G1-CLM|ATB-SNS-G1-GL-BLE-BAT-STD-S|
|Artibird Vision Edge|VIS-G1-EDGE|ATB-VIS-G1-US-WF-DC-CAM-S|

---

## 13.17 SKU Example Review Checklist

## 13.17 SKU 示例審查清單

### EN

Before converting any placeholder SKU into a released SKU, review the following:

|Check Item|Required|
|---|---|
|Product line code is approved|Yes|
|Generation code is correct|Yes|
|Region code matches target market|Yes|
|Connectivity code matches validated communication capability|Yes|
|Power code matches actual power architecture|Yes|
|Variant code matches validated product function|Yes|
|Package code matches actual packaging unit|Yes|
|Customer-facing name is approved|Yes|
|Internal model is approved|Yes|
|Engineering model is mapped|Required where applicable|
|Certification model is mapped|Required where applicable|
|Packaging version is assigned|Yes|
|Barcode / FNSKU is assigned where needed|Required where applicable|
|Commercial release status is approved|Yes|
|Claim boundary notes are recorded|Yes|

### ZH-TW

在將任何佔位 SKU 轉換為已發布 SKU 前，必須審查以下項目：

|檢查項目|是否必須|
|---|---|
|產品線代碼已核准|是|
|世代代碼正確|是|
|區域代碼匹配目標市場|是|
|連接代碼匹配已驗證通訊能力|是|
|供電代碼匹配實際供電架構|是|
|版本代碼匹配已驗證產品功能|是|
|包裝代碼匹配實際包裝單位|是|
|面向客戶名稱已核准|是|
|內部型號已核准|是|
|工程型號已映射|適用時必須|
|認證型號已映射|適用時必須|
|包裝版本已分配|是|
|條碼 / FNSKU 已在需要時分配|適用時必須|
|商業發布狀態已核准|是|
|宣稱邊界備註已記錄|是|

---

## 13.18 SKU Example Governance Rules

## 13.18 SKU 示例治理規則

### EN

|Rule|Requirement|
|---|---|
|Placeholder SKUs must be marked as placeholder|Do not treat examples as released SKUs|
|Example SKUs must use approved code libraries|No unofficial codes should appear in examples|
|Example SKUs must not imply certification|Certification status must be tracked separately|
|Example SKUs must not imply commercial availability|Release status must be tracked separately|
|Example SKUs must map to product line roles|Product codes must match system roles|
|Example SKUs must not hide configuration differences|Connectivity, power, variant, and package must remain visible|
|Example SKUs must be reviewed before public use|Catalog, Amazon, packaging, and sales use require approval|
|Example SKUs must be maintained when code libraries change|Updates must follow revision control|

### ZH-TW

|規則|要求|
|---|---|
|佔位 SKU 必須標註為佔位|不得將示例視為已發布 SKU|
|示例 SKU 必須使用已核准代碼庫|示例中不得出現非官方代碼|
|示例 SKU 不得暗示認證|認證狀態必須另行追蹤|
|示例 SKU 不得暗示商業可用|發布狀態必須另行追蹤|
|示例 SKU 必須映射至產品線角色|產品代碼必須匹配系統角色|
|示例 SKU 不得隱藏配置差異|連接、供電、版本與包裝必須保持可見|
|示例 SKU 公開使用前必須審查|型錄、Amazon、包裝與銷售使用均需核准|
|當代碼庫變更時，示例 SKU 必須同步維護|更新必須遵循版本管控|

---

## 13.19 Required Master Table Fields for Example Conversion

## 13.19 示例轉正式記錄的主表欄位要求

### EN

When a placeholder SKU is converted into a formal SKU master record, the following fields must be completed:

|Field|Requirement|
|---|---|
|SKU Code|Required|
|Placeholder Status|Must be changed to approved release status|
|Customer-Facing Name|Required|
|Internal Model|Required|
|Product Line|Required|
|Generation|Required|
|Region|Required|
|Connectivity|Required|
|Power|Required|
|Variant|Required|
|Package|Required|
|Engineering Model|Required where applicable|
|Certification Model|Required where applicable|
|Manufacturing Model|Required where applicable|
|Package Version|Required|
|Barcode / GTIN / UPC / EAN|Required where applicable|
|Amazon FNSKU|Required for FBA|
|Release Status|Required|
|Approval Owner|Required|
|Revision Date|Required|
|Claim Boundary Notes|Required|

### ZH-TW

當佔位 SKU 轉換為正式 SKU 主記錄時，必須完成以下欄位：

|欄位|要求|
|---|---|
|SKU 代碼|必填|
|佔位狀態|必須變更為已核准發布狀態|
|面向客戶名稱|必填|
|內部型號|必填|
|產品線|必填|
|世代|必填|
|區域|必填|
|連接|必填|
|供電|必填|
|版本|必填|
|包裝|必填|
|工程型號|適用時必填|
|認證型號|適用時必填|
|生產型號|適用時必填|
|包裝版本|必填|
|條碼 / GTIN / UPC / EAN|適用時必填|
|Amazon FNSKU|FBA 必填|
|發布狀態|必填|
|核准負責人|必填|
|修訂日期|必填|
|宣稱邊界備註|必填|

---

## 13.20 Chapter Conclusion

## 13.20 本章結論

### EN

SKU examples help demonstrate how the Artibird SKU structure should be applied across different product lines and system-layer records.

These examples provide a planning baseline for Hub, Gate, Sync, Switch, Panel, Act, Sense, Vision, App, OceanAI Cloud, and OceanAI Edge. However, they remain placeholder examples until approved through formal SKU governance.

A placeholder SKU becomes a formal SKU only when it is mapped to a customer-facing name, internal model, engineering model, certification record, packaging version, barcode where required, release status, approval owner, and claim boundary notes.

### ZH-TW

SKU 示例用於展示 Artibird SKU 結構如何應用於不同產品線與系統層記錄。

這些示例為 Hub、Gate、Sync、Switch、Panel、Act、Sense、Vision、App、OceanAI Cloud 與 OceanAI Edge 提供規劃基準。然而，在正式 SKU 治理流程核准前，它們仍然只是佔位示例。

只有當佔位 SKU 已映射至面向客戶名稱、內部型號、工程型號、認證記錄、包裝版本、必要條碼、發布狀態、核准負責人與宣稱邊界備註後，才可成為正式 SKU。

---

本章依據《Artibird SKU & Model Naming Specification v1.0》的既定撰寫計劃展開；原始規劃已將 Chapter 13 設為 SKU Examples by Product Line，並列出 Hub、Gate、Sync、Switch Scene、Switch Relay、Panel、Act、Act-E、Sense、Vision 與 App 的預留 SKU 示例。

**話題延伸｜互動建議**  
下一章可以繼續寫 **Chapter 14 — SKU Governance Rules｜第十四章｜SKU 治理規則**，正式建立 SKU 建立、修改、核准、停用、退市與禁止重用的管理規則。