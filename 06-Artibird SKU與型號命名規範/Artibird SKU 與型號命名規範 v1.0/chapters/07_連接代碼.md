# Artibird SKU & Model Naming Specification v1.0

# Artibird SKU 與型號命名規範 v1.0

## Chapter 7 — Connectivity Codes

## 第七章｜連接代碼

---

## 7.1 Purpose

## 7.1 目的

### EN

This chapter defines the official connectivity codes used in Artibird SKU codes, internal model records, engineering records, certification mapping, packaging records, Amazon listings, channel documents, and commercial release planning.

Connectivity codes identify the communication path, network interface, wireless protocol, wired interface, or service connection method used by an Artibird product or related OceanAI system layer.

Connectivity codes must be used carefully because they may affect engineering design, RF certification, product claims, packaging text, app onboarding behavior, gateway compatibility, cloud service dependency, and customer expectations.

### ZH-TW

本章定義 Artibird SKU 代碼、內部型號記錄、工程記錄、認證映射、包裝記錄、Amazon 上架、渠道文件與商業發布規劃中使用的官方連接代碼。

連接代碼用於識別 Artibird 產品或相關 OceanAI 系統層所使用的通訊路徑、網路介面、無線協議、有線介面或服務連接方式。

連接代碼必須謹慎使用，因為它可能影響工程設計、RF 認證、產品宣稱、包裝文字、App 入網流程、網關相容性、雲端服務依賴與客戶預期。

---

## 7.2 Connectivity Code Definition

## 7.2 連接代碼定義

### EN

A connectivity code is a controlled identifier that describes how a product communicates, connects, participates in the system, or receives commands.

It answers the following questions:

|Question|Description|
|---|---|
|How does the product connect to the local system?|Wi-Fi, Ethernet, BLE Mesh, local network, gateway path|
|Does the product use wired or wireless communication?|Ethernet, Wi-Fi, BLE, RF, IR, LoRa, LTE|
|Does the product require a gateway?|Direct Wi-Fi, BLE through Gate, RF through Sync, etc.|
|Does the product depend on cloud services?|Cloud-connected path, account service, remote control|
|Does the product support hybrid communication?|Multiple communication paths in one product|
|Does the connection method affect certification?|RF, wireless, module approval, regional radio requirements|
|Can the connection method be claimed commercially?|Only if implemented and validated|

### ZH-TW

連接代碼是一種受控識別碼，用於描述產品如何通訊、連接、參與系統或接收指令。

它回答以下問題：

|問題|說明|
|---|---|
|產品如何連接到本地系統？|Wi-Fi、Ethernet、BLE Mesh、本地網路、網關路徑|
|產品使用有線還是無線通訊？|Ethernet、Wi-Fi、BLE、RF、IR、LoRa、LTE|
|產品是否需要網關？|直接 Wi-Fi、透過 Gate 的 BLE、透過 Sync 的 RF 等|
|產品是否依賴雲端服務？|雲端連接路徑、帳號服務、遠端控制|
|產品是否支援混合通訊？|一個產品具備多種通訊路徑|
|連接方式是否影響認證？|RF、無線、模組核准、區域無線要求|
|連接方式是否可以對外商業宣稱？|僅在已實作並驗證後可以|

---

## 7.3 Official Connectivity Code Table

## 7.3 官方連接代碼表

### EN

|Code|Meaning|Primary Use|Notes|
|--:|---|---|---|
|WF|Wi-Fi|Wi-Fi device connection|Used for products that communicate through Wi-Fi|
|ETH|Ethernet|Wired network connection|Used for products with Ethernet interface|
|BLE|BLE / BLE Mesh|Low-power wireless device communication|Used for BLE or BLE Mesh products|
|RF|RF|Radio-frequency control or communication|Used for RF-only communication or control path|
|IR|Infrared|Infrared command transmission or learning|Used for IR remote control and learning functions|
|IRRF|IR + RF|Combined infrared and RF capability|Used for products such as Artibird Sync|
|HYB|Hybrid communication|Multiple validated communication paths|Must specify actual supported paths in master record|
|LAN|Local network|Local-only or local-priority network path|Used where local network behavior is the defining connection method|
|CLD|Cloud-connected service path|Cloud service connection or remote path|Used for cloud service layer or cloud-dependent service records|
|LTE|Cellular / LTE|Cellular network communication where supported|Use only when cellular function is implemented and validated|
|LORA|LoRa|Long-range low-power communication where supported|Use only when LoRa function is implemented and validated|
|USB|USB / USB-C data path|Wired USB connection where data is supported|Do not use when USB is power-only|
|NA|Not applicable|No connectivity field applies|Used for non-connected package records or service placeholders|

### ZH-TW

|代碼|含義|主要用途|備註|
|--:|---|---|---|
|WF|Wi-Fi|Wi-Fi 設備連接|用於透過 Wi-Fi 通訊的產品|
|ETH|Ethernet|有線網路連接|用於具備 Ethernet 介面的產品|
|BLE|BLE / BLE Mesh|低功耗無線設備通訊|用於 BLE 或 BLE Mesh 產品|
|RF|RF|射頻控制或通訊|用於 RF-only 通訊或控制路徑|
|IR|Infrared|紅外指令發射或學習|用於紅外遙控與學習功能|
|IRRF|IR + RF|紅外與射頻組合能力|用於 Artibird Sync 等產品|
|HYB|混合通訊|多種已驗證通訊路徑|必須在主記錄中說明實際支援路徑|
|LAN|本地網路|本地-only 或本地優先網路路徑|用於本地網路行為是核心連接方式的產品|
|CLD|雲端連接服務路徑|雲端服務連接或遠端路徑|用於雲端服務層或雲端依賴服務記錄|
|LTE|蜂窩 / LTE|支援條件下的蜂窩網路通訊|僅在蜂窩功能已實作並驗證後使用|
|LORA|LoRa|支援條件下的長距離低功耗通訊|僅在 LoRa 功能已實作並驗證後使用|
|USB|USB / USB-C 數據路徑|支援數據的有線 USB 連接|若 USB 僅供電，不得使用此代碼|
|NA|不適用|無適用連接欄位|用於非連接型包裝記錄或服務佔位記錄|

---

## 7.4 Connectivity Code Usage in SKU

## 7.4 連接代碼在 SKU 中的使用

### EN

The connectivity code appears as the fifth field in the official SKU format.

Recommended SKU structure:

```text
ATB-[PRODUCT]-[GEN]-[REGION]-[CONNECTIVITY]-[POWER]-[VARIANT]-[PACKAGE]
```

Example:

```text
ATB-SYNC-G1-GL-IRRF-USB-STD-S
```

|SKU Field|Value|Meaning|
|---|---|---|
|Brand|ATB|Artibird|
|Product Line|SYNC|Artibird Sync|
|Generation|G1|First generation|
|Region|GL|Global reference version|
|Connectivity|IRRF|IR + RF capability|
|Power|USB|USB / USB-C powered|
|Variant|STD|Standard version|
|Package|S|Single unit|

The connectivity code must represent the primary or defining communication capability of the SKU.

If a product supports more than one validated communication path, the HYB code may be used only when the master record clearly lists the supported paths.

### ZH-TW

連接代碼出現在官方 SKU 格式的第五個欄位。

建議 SKU 結構：

```text
ATB-[產品]-[世代]-[區域]-[連接]-[供電]-[版本]-[包裝]
```

示例：

```text
ATB-SYNC-G1-GL-IRRF-USB-STD-S
```

|SKU 欄位|數值|含義|
|---|---|---|
|品牌|ATB|Artibird|
|產品線|SYNC|Artibird Sync|
|世代|G1|第一代|
|區域|GL|全球參考版本|
|連接|IRRF|IR + RF 能力|
|供電|USB|USB / USB-C 供電|
|版本|STD|標準版|
|包裝|S|單品|

連接代碼必須代表該 SKU 的主要或定義性通訊能力。

如果產品支援一種以上已驗證通訊路徑，只有在主記錄中清楚列出實際支援路徑時，才可使用 HYB 代碼。

---

## 7.5 Connectivity Code Usage by Product Line

## 7.5 各產品線連接代碼使用

### EN

|Product Line|Common Connectivity Codes|Notes|
|---|---|---|
|Artibird Hub|ETH, WF, LAN, HYB|Used for local runtime, MQTT, local services, and network access|
|Artibird Gate|WF, ETH, BLE, HYB|Used for device access, gateway communication, BLE Mesh or network participation|
|Artibird Sync|IR, RF, IRRF, WF|Used for IR / RF appliance synchronization and network command reception|
|Artibird Switch|BLE, WF, HYB|Depends on battery scene switch, zero-neutral relay switch, or other variant|
|Artibird Panel|WF, ETH, LAN, HYB|Depends on wall panel, room controller, or wired interface design|
|Artibird Act|WF, BLE, ETH, LAN, HYB|Depends on plug, relay, actuator, energy-aware, or project variant|
|Artibird Sense|BLE, WF, LORA, HYB|Depends on sensor type, power design, and deployment distance|
|Artibird Vision|WF, ETH, LAN, CLD|Depends on video, local processing, cloud upload, or edge participation|
|Artibird App|LAN, CLD, HYB|Used for local control, cloud account, remote access, and onboarding|
|OceanAI Cloud|CLD|Used for cloud service layer and remote service path|
|OceanAI Edge|LAN, ETH, WF, HYB|Used for local edge intelligence and data connection with Hub / ArtiOS|

### ZH-TW

|產品線|常用連接代碼|備註|
|---|---|---|
|Artibird Hub|ETH、WF、LAN、HYB|用於本地 Runtime、MQTT、本地服務與網路接入|
|Artibird Gate|WF、ETH、BLE、HYB|用於設備接入、網關通訊、BLE Mesh 或網路參與|
|Artibird Sync|IR、RF、IRRF、WF|用於 IR / RF 家電同步與網路指令接收|
|Artibird Switch|BLE、WF、HYB|依電池場景開關、零火繼電器開關或其他版本而定|
|Artibird Panel|WF、ETH、LAN、HYB|依牆面面板、房間控制器或有線介面設計而定|
|Artibird Act|WF、BLE、ETH、LAN、HYB|依插座、繼電器、執行器、能源感知或專案版本而定|
|Artibird Sense|BLE、WF、LORA、HYB|依感測器類型、供電設計與部署距離而定|
|Artibird Vision|WF、ETH、LAN、CLD|依視頻、本地處理、雲端上傳或邊緣參與而定|
|Artibird App|LAN、CLD、HYB|用於本地控制、雲端帳號、遠端存取與設備入網|
|OceanAI Cloud|CLD|用於雲端服務層與遠端服務路徑|
|OceanAI Edge|LAN、ETH、WF、HYB|用於本地邊緣智慧，以及與 Hub / ArtiOS 的數據連接|

---

## 7.6 Special Boundary: Wi-Fi, Ethernet, and LAN

## 7.6 特別邊界：Wi-Fi、Ethernet 與 LAN

### EN

WF, ETH, and LAN must be separated because they describe different connection meanings.

|Code|Meaning|Use When|
|--:|---|---|
|WF|Wi-Fi|The product communicates through Wi-Fi|
|ETH|Ethernet|The product communicates through a wired Ethernet interface|
|LAN|Local network|The defining behavior is local network operation, regardless of whether the physical path is Wi-Fi or Ethernet|

LAN should not replace WF or ETH when the physical interface is important for SKU, packaging, certification, or installation.

LAN should be used only when the product record focuses on local network behavior rather than a specific physical interface.

### ZH-TW

WF、ETH 與 LAN 必須區分，因為它們描述不同的連接含義。

|代碼|含義|使用條件|
|--:|---|---|
|WF|Wi-Fi|產品透過 Wi-Fi 通訊|
|ETH|Ethernet|產品透過有線 Ethernet 介面通訊|
|LAN|本地網路|定義性行為是本地網路運作，而不強調實體路徑是 Wi-Fi 或 Ethernet|

當實體介面對 SKU、包裝、認證或安裝很重要時，LAN 不應取代 WF 或 ETH。

只有當產品記錄重點是本地網路行為，而不是特定實體介面時，才應使用 LAN。

---

## 7.7 Special Boundary: BLE and BLE Mesh

## 7.7 特別邊界：BLE 與 BLE Mesh

### EN

The BLE code may be used for BLE or BLE Mesh products only when BLE-based communication is implemented and validated.

For Artibird products, BLE may apply to:

|Product Type|BLE Use Case|
|---|---|
|Battery scene switch|Low-power event transmission|
|Sense device|Low-power sensor reporting|
|Gate|BLE Mesh gateway or Friend node support where implemented|
|Switch variant|BLE Mesh event or control participation|
|Project sensor node|Low-power local communication|

If a product supports BLE hardware but BLE functionality is disabled, unvalidated, or reserved for future use, BLE must not be used in the commercial SKU.

BLE Mesh-specific behavior must be recorded in the engineering or capability fields of the SKU master table.

### ZH-TW

BLE 代碼僅在產品已實作並驗證 BLE-based 通訊時，才可用於 BLE 或 BLE Mesh 產品。

對 Artibird 產品而言，BLE 可適用於：

|產品類型|BLE 使用場景|
|---|---|
|電池場景開關|低功耗事件傳輸|
|Sense 設備|低功耗感測上報|
|Gate|已實作條件下的 BLE Mesh 網關或 Friend 節點支援|
|Switch 版本|BLE Mesh 事件或控制參與|
|專案感測節點|低功耗本地通訊|

如果產品具備 BLE 硬體，但 BLE 功能被停用、未驗證或僅保留為未來用途，則不得在商業 SKU 中使用 BLE。

BLE Mesh 特定行為必須記錄在 SKU 主表的工程欄位或能力欄位中。

---

## 7.8 Special Boundary: IR, RF, and IRRF

## 7.8 特別邊界：IR、RF 與 IRRF

### EN

IR, RF, and IRRF are used primarily for synchronization and appliance-control products.

|Code|Meaning|Use When|
|--:|---|---|
|IR|Infrared only|Product supports infrared command transmission, learning, or control|
|RF|RF only|Product supports RF communication or RF appliance control|
|IRRF|IR + RF|Product supports both IR and RF capability|

For Artibird Sync, IRRF may be used when both IR and RF are implemented, validated, and commercially supported.

If only one function is available in a specific SKU, use IR or RF instead of IRRF.

A product should not use IRRF merely because the platform has design space for both functions. Both capabilities must be validated for the specific SKU.

### ZH-TW

IR、RF 與 IRRF 主要用於同步與家電控制類產品。

|代碼|含義|使用條件|
|--:|---|---|
|IR|僅紅外|產品支援紅外指令發射、學習或控制|
|RF|僅射頻|產品支援 RF 通訊或 RF 家電控制|
|IRRF|IR + RF|產品同時支援 IR 與 RF 能力|

對 Artibird Sync 而言，只有在 IR 與 RF 均已實作、驗證並可商業支援時，才可使用 IRRF。

如果某一 SKU 只提供其中一種功能，應使用 IR 或 RF，而不是 IRRF。

不得因平台預留了雙功能設計空間，就使用 IRRF。兩種能力都必須針對該 SKU 完成驗證。

---

## 7.9 Special Boundary: HYB Hybrid Communication

## 7.9 特別邊界：HYB 混合通訊

### EN

HYB is used only when a product has multiple validated communication paths and those paths are commercially relevant.

Examples:

|Product|Possible HYB Meaning|
|---|---|
|Artibird Gate|Wi-Fi + Ethernet + BLE Mesh gateway participation|
|Artibird Hub|Ethernet + Wi-Fi + local runtime services|
|Artibird Panel|Wi-Fi + wired local interface|
|Artibird Act project version|Wi-Fi + local network + wired control path|
|OceanAI Edge|Ethernet + local network + AI data interface|

HYB must not be used as a vague technology label. The SKU master record must list the exact supported communication paths.

Required HYB master record fields:

|Field|Requirement|
|---|---|
|Primary Connection|Required|
|Secondary Connection|Required|
|Additional Connections|Required where applicable|
|Gateway Dependency|Required|
|Cloud Dependency|Required|
|Local Mode Support|Required|
|Validation Status|Required|
|Certification Impact|Required|

### ZH-TW

HYB 僅在產品具備多種已驗證通訊路徑，且這些路徑具有商業相關性時使用。

示例：

|產品|可能的 HYB 含義|
|---|---|
|Artibird Gate|Wi-Fi + Ethernet + BLE Mesh 網關參與|
|Artibird Hub|Ethernet + Wi-Fi + 本地 Runtime 服務|
|Artibird Panel|Wi-Fi + 有線本地介面|
|Artibird Act 專案版本|Wi-Fi + 本地網路 + 有線控制路徑|
|OceanAI Edge|Ethernet + 本地網路 + AI 數據介面|

HYB 不得作為模糊技術標籤使用。SKU 主記錄必須列出實際支援的通訊路徑。

HYB 主記錄必備欄位：

|欄位|要求|
|---|---|
|主要連接|必填|
|次要連接|必填|
|其他連接|適用時必填|
|網關依賴|必填|
|雲端依賴|必填|
|本地模式支援|必填|
|驗證狀態|必填|
|認證影響|必填|

---

## 7.10 Special Boundary: CLD Cloud-Connected Path

## 7.10 特別邊界：CLD 雲端連接路徑

### EN

CLD is used when the record refers to a cloud-connected service path, cloud service layer, subscription service, remote management capability, or cloud-dependent commercial configuration.

CLD may apply to:

|Record Type|Example|
|---|---|
|OceanAI Cloud service record|CLD|
|App cloud service path|ATB-APP-G1-GL-CLD-NA-STD-NA|
|Cloud subscription package|Cloud service plan SKU|
|Remote access service|Account-based remote control|
|Multi-site management service|Cloud-managed deployment|

CLD should not be used for a physical product simply because the product can be controlled remotely through the system. If the physical product primarily connects through Wi-Fi, BLE, Ethernet, or another interface, the physical connectivity code should be used.

### ZH-TW

CLD 用於表示雲端連接服務路徑、雲端服務層、訂閱服務、遠端管理能力或依賴雲端的商業配置。

CLD 可適用於：

|記錄類型|示例|
|---|---|
|OceanAI Cloud 服務記錄|CLD|
|App 雲端服務路徑|ATB-APP-G1-GL-CLD-NA-STD-NA|
|雲端訂閱包|雲端服務方案 SKU|
|遠端存取服務|基於帳號的遠端控制|
|多站點管理服務|雲端管理部署|

不得因為某一實體產品可以透過系統遠端控制，就將其連接代碼寫為 CLD。如果實體產品主要透過 Wi-Fi、BLE、Ethernet 或其他介面連接，應使用其實際物理連接代碼。

---

## 7.11 Connectivity Code and Certification Impact

## 7.11 連接代碼與認證影響

### EN

Connectivity codes may affect certification, especially where wireless communication is involved.

|Connectivity Code|Certification Impact|
|--:|---|
|WF|May require Wi-Fi module approval, FCC / CE / regional radio review|
|ETH|May affect EMC and wired interface testing|
|BLE|May require Bluetooth / RF certification review|
|RF|Requires RF band, transmit power, and regional radio compliance review|
|IR|Usually lower regulatory impact, but product safety and labeling still apply|
|IRRF|RF portion requires regional radio compliance review|
|HYB|Requires review of each included communication path|
|LAN|Depends on underlying physical interface|
|CLD|May affect privacy, data, account, and service compliance|
|LTE|Requires cellular module, carrier, and regional telecom review|
|LORA|Requires LoRa frequency band and regional radio review|
|USB|May affect EMC, power, data, and safety review depending on implementation|

A connectivity code must not be added to a SKU unless the related engineering and certification implications have been reviewed.

### ZH-TW

連接代碼可能影響認證，尤其在涉及無線通訊時。

|連接代碼|認證影響|
|--:|---|
|WF|可能需要 Wi-Fi 模組核准、FCC / CE / 區域無線審查|
|ETH|可能影響 EMC 與有線介面測試|
|BLE|可能需要 Bluetooth / RF 認證審查|
|RF|需要 RF 頻段、發射功率與區域無線合規審查|
|IR|通常法規影響較低，但仍需產品安全與標籤審查|
|IRRF|RF 部分需要區域無線合規審查|
|HYB|需要審查每一條包含的通訊路徑|
|LAN|取決於底層實體介面|
|CLD|可能影響隱私、數據、帳號與服務合規|
|LTE|需要蜂窩模組、運營商與區域電信審查|
|LORA|需要 LoRa 頻段與區域無線審查|
|USB|視實作方式，可能影響 EMC、供電、數據與安全審查|

除非相關工程與認證影響已完成審查，否則不得將某一連接代碼加入 SKU。

---

## 7.12 When to Change Connectivity Code

## 7.12 何時需要更改連接代碼

### EN

|Change Scenario|Change Connectivity Code?|Notes|
|---|---|---|
|Wi-Fi-only product becomes Ethernet-only|Yes|WF changes to ETH|
|Wi-Fi product adds validated Ethernet|Usually yes|May change to HYB if both paths are commercial|
|BLE hardware added but disabled|No|Do not claim BLE|
|BLE Mesh support enabled and validated|Yes, if commercially relevant|Update to BLE or HYB depending on primary path|
|IR-only Sync adds validated RF control|Yes|IR may change to IRRF|
|RF removed from IRRF product|Yes|IRRF may change to IR|
|Cloud remote control added through system service|Usually no for physical device SKU|Update service record, not necessarily device connectivity|
|LTE module added|Yes|Certification review required|
|LoRa project version created|Yes|Use LORA only if validated|
|USB changes from power-only to data-capable|Maybe|Use USB connectivity only if data path is supported|
|Local mode added without interface change|Usually no|Update capability field, not connectivity code|

### ZH-TW

|變更場景|是否更改連接代碼？|備註|
|---|---|---|
|Wi-Fi-only 產品變為 Ethernet-only|是|WF 變更為 ETH|
|Wi-Fi 產品增加已驗證 Ethernet|通常是|若兩條路徑均可商業使用，可改為 HYB|
|增加 BLE 硬體但功能停用|否|不得宣稱 BLE|
|BLE Mesh 支援已啟用並驗證|若具商業相關性則是|依主要路徑更新為 BLE 或 HYB|
|IR-only Sync 增加已驗證 RF 控制|是|IR 可變更為 IRRF|
|IRRF 產品移除 RF|是|IRRF 可變更為 IR|
|透過系統服務增加雲端遠端控制|對實體設備 SKU 通常否|更新服務記錄，不一定更新設備連接代碼|
|增加 LTE 模組|是|需要認證審查|
|建立 LoRa 專案版本|是|僅在已驗證時使用 LORA|
|USB 從僅供電變為支援數據|視情況|僅在支援數據路徑時使用 USB 連接代碼|
|新增本地模式但介面未變|通常否|更新能力欄位，而非連接代碼|

---

## 7.13 Connectivity Code Governance Rules

## 7.13 連接代碼治理規則

### EN

|Rule|Requirement|
|---|---|
|One connectivity code must represent one validated connection method or defined service path|Do not use unsupported codes|
|Connectivity code must not be based on future roadmap only|Planned functions must not appear in commercial SKU codes|
|HYB must list actual supported paths|Hybrid must not be vague|
|CLD must not replace physical connectivity for device SKUs|Cloud path and device interface must remain separate|
|BLE must not be used for disabled or unvalidated BLE hardware|Hardware existence alone is not enough|
|IRRF must not be used unless both IR and RF are supported|Use IR or RF if only one capability is available|
|Connectivity code must map to certification records|Wireless functions require compliance review|
|Connectivity code must map to onboarding behavior|App and setup flow must match actual connection method|
|Connectivity code must map to packaging claims|Package text must match validated connectivity|
|Deprecated connectivity configurations must be archived|Do not reuse old records without review|

### ZH-TW

|規則|要求|
|---|---|
|一個連接代碼必須代表一種已驗證連接方式或已定義服務路徑|不得使用未支援代碼|
|連接代碼不得僅基於未來路線圖|計劃中功能不得出現在商業 SKU 代碼中|
|HYB 必須列出實際支援路徑|混合通訊不得模糊|
|CLD 不得取代設備 SKU 的物理連接方式|雲端路徑與設備介面必須分離|
|BLE 不得用於停用或未驗證 BLE 硬體|僅有硬體存在並不足夠|
|IRRF 必須在 IR 與 RF 均支援時使用|若只有一種能力，應使用 IR 或 RF|
|連接代碼必須映射至認證記錄|無線功能需要合規審查|
|連接代碼必須映射至入網行為|App 與設定流程必須匹配實際連接方式|
|連接代碼必須映射至包裝宣稱|包裝文字必須匹配已驗證連接能力|
|停用的連接配置必須歸檔|不得未經審查重用舊記錄|

---

## 7.14 Required Master Table Fields

## 7.14 必備主表欄位

### EN

Each SKU master record must include connectivity-related fields.

|Field|Requirement|
|---|---|
|Connectivity Code|Required|
|Primary Connection Method|Required|
|Secondary Connection Method|Required where applicable|
|Wireless Protocol|Required where applicable|
|Wired Interface|Required where applicable|
|Gateway Dependency|Required|
|Cloud Dependency|Required|
|Local Mode Support|Required|
|App Onboarding Method|Required|
|Certification Impact|Required|
|RF / Wireless Certification Status|Required where applicable|
|Connectivity Validation Status|Required|
|Packaging Claim Boundary|Required|
|Revision Date|Required|

### ZH-TW

每一筆 SKU 主記錄都必須包含與連接相關的欄位。

|欄位|要求|
|---|---|
|連接代碼|必填|
|主要連接方式|必填|
|次要連接方式|適用時必填|
|無線協議|適用時必填|
|有線介面|適用時必填|
|網關依賴|必填|
|雲端依賴|必填|
|本地模式支援|必填|
|App 入網方式|必填|
|認證影響|必填|
|RF / 無線認證狀態|適用時必填|
|連接驗證狀態|必填|
|包裝宣稱邊界|必填|
|修訂日期|必填|

---

## 7.15 Chapter Conclusion

## 7.15 本章結論

### EN

Connectivity codes define how an Artibird product or OceanAI system-layer service connects, communicates, participates in the local system, or depends on cloud services.

These codes must reflect implemented and validated capabilities, not future roadmap intentions. They also affect certification, app onboarding, packaging claims, gateway compatibility, cloud service records, and customer expectations.

A clear connectivity code system allows Artibird products to remain traceable across engineering, certification, packaging, SKU management, system deployment, and commercial release.

### ZH-TW

連接代碼定義 Artibird 產品或 OceanAI 系統層服務如何連接、通訊、參與本地系統，或依賴雲端服務。

這些代碼必須反映已實作並驗證的能力，而不是未來路線圖意圖。它們也會影響認證、App 入網、包裝宣稱、網關相容性、雲端服務記錄與客戶預期。

清晰的連接代碼系統，可使 Artibird 產品在工程、認證、包裝、SKU 管理、系統部署與商業發布中保持可追蹤。

---

本章依據《Artibird SKU & Model Naming Specification v1.0》的既定撰寫計劃展開；原始規劃已將 Connectivity Codes 設為 Chapter 7，並列出 WF、ETH、BLE、RF、IR、IRRF、HYB、LAN、CLD、LTE、LORA 作為標準連接代碼。

**話題延伸｜互動建議**  
下一章可以繼續寫 **Chapter 8 — Power Codes｜第八章｜供電代碼**，正式定義 BAT、AC、DC、USB、POE、LV、SL、ZN、ADP、SOL 在 SKU、工程配置、安規與包裝中的使用邊界。