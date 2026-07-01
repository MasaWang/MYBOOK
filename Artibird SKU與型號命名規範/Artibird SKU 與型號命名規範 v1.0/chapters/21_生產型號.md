# Artibird SKU & Model Naming Specification v1.0

# Artibird SKU 與型號命名規範 v1.0

## Chapter 21 — Manufacturing Model Numbers

## 第二十一章｜生產型號

---

## 21.1 Purpose

## 21.1 目的

### EN

This chapter defines the manufacturing model number system used by factories, BOM systems, ERP systems, suppliers, production records, QC records, assembly records, packaging records, warehouse systems, and shipment documents.

Manufacturing model numbers identify the production-controlled configuration of an Artibird product. They are used to connect the commercial SKU, internal model, engineering model, certification model, BOM version, PCB revision, assembly configuration, supplier code, production batch, QC version, and packaging version.

The purpose of manufacturing model control is to ensure that the product built by the factory matches the approved engineering configuration, certification scope, SKU master record, package configuration, quality requirements, and shipment record.

### ZH-TW

本章定義工廠、BOM 系統、ERP 系統、供應商、生產記錄、QC 記錄、組裝記錄、包裝記錄、倉儲系統與出貨文件中使用的生產型號系統。

生產型號用於識別 Artibird 產品在生產端受控的配置。它用來連接商業 SKU、內部型號、工程型號、認證型號、BOM 版本、PCB 修訂、組裝配置、供應商代碼、生產批次、QC 版本與包裝版本。

生產型號管控的目的，是確保工廠實際生產的產品與已核准工程配置、認證範圍、SKU 主記錄、包裝配置、品質要求與出貨記錄一致。

---

## 21.2 Manufacturing Model Number Definition

## 21.2 生產型號定義

### EN

A manufacturing model number is a factory-controlled identifier that describes the buildable production configuration of a product.

It answers the following questions:

|Question|Description|
|---|---|
|What product is the factory building?|Internal model or approved production product identity|
|Which BOM is used?|Bill of Materials version|
|Which PCB version is assembled?|PCB revision used in production|
|Which assembly configuration is used?|Mechanical, electrical, enclosure, and accessory assembly|
|Which supplier or factory is responsible?|Supplier code or factory code|
|Which production batch does it belong to?|Batch, lot, or production run|
|Which QC plan applies?|Quality control version|
|Which package version is used?|Retail, FBA, bulk, project, or kit packaging|
|Which SKU does it map to?|Commercial SKU master record|
|Which certification model does it map to?|Approved compliance identity|

### ZH-TW

生產型號是一種由工廠管控的識別碼，用於描述產品可被生產的製造配置。

它回答以下問題：

|問題|說明|
|---|---|
|工廠正在生產哪一個產品？|內部型號或已核准生產產品身份|
|使用哪一個 BOM？|物料清單版本|
|組裝哪一個 PCB 版本？|生產中使用的 PCB 修訂版本|
|使用哪一種組裝配置？|機構、電氣、外殼與配件組裝|
|哪一個供應商或工廠負責？|供應商代碼或工廠代碼|
|屬於哪一個生產批次？|Batch、Lot 或生產批次|
|適用哪一版 QC 計劃？|品質控制版本|
|使用哪一個包裝版本？|零售、FBA、批量、專案或套組包裝|
|映射至哪一個 SKU？|商業 SKU 主記錄|
|映射至哪一個認證型號？|已核准合規身份|

---

## 21.3 Manufacturing Model vs Other Identifiers

## 21.3 生產型號與其他識別碼的區別

### EN

|Identifier Type|Example|Primary Use|
|---|---|---|
|Customer-Facing Name|Artibird Act-E|Public product communication|
|Internal Model Number|ACT-G1-E|Product and engineering coordination|
|SKU Code|ATB-ACT-G1-US-WF-AC-E-S|Commercial, region, package, channel, and inventory control|
|Engineering Model Number|ACT-G1-E-HW1.0-FW1.2-PCB1.1-DVT|Hardware, firmware, PCB, and validation tracking|
|Certification Model Number|ACT-G1-E|Regulatory filing and product label control|
|Manufacturing Model Number|MFG-ACT-G1-E-BOM1.0-PCB1.1-ASM1.0-SUP01-QC1.0-PKG1.0|BOM, factory, assembly, QC, and production control|

Manufacturing model numbers are production-facing identifiers. They must remain connected to engineering, certification, SKU, and packaging records, but they should not replace any of them.

### ZH-TW

|識別類型|示例|主要用途|
|---|---|---|
|面向客戶名稱|Artibird Act-E|公開產品溝通|
|內部型號|ACT-G1-E|產品與工程協同|
|SKU 代碼|ATB-ACT-G1-US-WF-AC-E-S|商業、區域、包裝、渠道與庫存管控|
|工程型號|ACT-G1-E-HW1.0-FW1.2-PCB1.1-DVT|硬體、韌體、PCB 與驗證追蹤|
|認證型號|ACT-G1-E|法規提交與產品標籤管控|
|生產型號|MFG-ACT-G1-E-BOM1.0-PCB1.1-ASM1.0-SUP01-QC1.0-PKG1.0|BOM、工廠、組裝、QC 與生產管控|

生產型號是面向生產端的識別碼。它必須連接至工程、認證、SKU 與包裝記錄，但不應取代其中任何一種識別碼。

---

## 21.4 Recommended Manufacturing Model Structure

## 21.4 建議生產型號結構

### EN

The recommended manufacturing model number structure is:

```text
MFG-[INTERNAL-MODEL]-BOM[BOM]-PCB[PCB]-ASM[ASSEMBLY]-SUP[SUPPLIER]-QC[QC]-PKG[PACKAGE]
```

Example:

```text
MFG-ACT-G1-E-BOM1.0-PCB1.1-ASM1.0-SUP01-QC1.0-PKG1.0
```

|Field|Value|Meaning|
|---|---|---|
|MFG|MFG|Manufacturing model prefix|
|Internal Model|ACT-G1-E|Artibird Act, first generation, energy-aware version|
|BOM Version|BOM1.0|Bill of Materials version 1.0|
|PCB Version|PCB1.1|PCB revision 1.1|
|Assembly Version|ASM1.0|Assembly configuration version 1.0|
|Supplier Code|SUP01|Supplier or factory identifier|
|QC Version|QC1.0|Quality control plan version 1.0|
|Packaging Version|PKG1.0|Packaging configuration version 1.0|

### ZH-TW

建議生產型號結構如下：

```text
MFG-[內部型號]-BOM[BOM]-PCB[PCB]-ASM[組裝]-SUP[供應商]-QC[QC]-PKG[包裝]
```

示例：

```text
MFG-ACT-G1-E-BOM1.0-PCB1.1-ASM1.0-SUP01-QC1.0-PKG1.0
```

|欄位|數值|含義|
|---|---|---|
|MFG|MFG|生產型號前綴|
|內部型號|ACT-G1-E|Artibird Act，第一代，能源感知版本|
|BOM 版本|BOM1.0|物料清單版本 1.0|
|PCB 版本|PCB1.1|PCB 修訂版本 1.1|
|組裝版本|ASM1.0|組裝配置版本 1.0|
|供應商代碼|SUP01|供應商或工廠識別碼|
|QC 版本|QC1.0|品質控制計劃版本 1.0|
|包裝版本|PKG1.0|包裝配置版本 1.0|

---

## 21.5 Required Manufacturing Fields

## 21.5 必備生產欄位

### EN

Each manufacturing model record must include the following required fields:

|Field|Description|
|---|---|
|Factory Model|Factory-controlled internal production model|
|BOM Version|Bill of Materials version|
|PCB Version|PCB revision used in production|
|Assembly Version|Assembly configuration|
|Supplier Code|Supplier-specific or factory-specific identifier|
|Production Batch|Batch or lot number|
|QC Version|Quality control version|
|Packaging Version|Packaging configuration|

### ZH-TW

每一筆生產型號記錄都必須包含以下必備欄位：

|欄位|說明|
|---|---|
|工廠型號|工廠管控內部生產型號|
|BOM 版本|物料清單版本|
|PCB 版本|生產中使用的 PCB 修訂版本|
|組裝版本|組裝配置|
|供應商代碼|供應商專用或工廠專用識別碼|
|生產批次|Batch 或 Lot 編號|
|QC 版本|品質控制版本|
|包裝版本|包裝配置|

---

## 21.6 Factory Model Rules

## 21.6 工廠型號規則

### EN

The Factory Model identifies the product configuration used by the factory for production execution.

|Rule|Requirement|
|---|---|
|Factory model must map to internal model|It must not be independent from product identity|
|Factory model must map to engineering model|It must reflect approved engineering configuration|
|Factory model must map to SKU where applicable|It must support inventory and shipment traceability|
|Factory model must map to certification model where applicable|It must support compliance traceability|
|Factory model must be controlled by operations and manufacturing|No informal factory aliases|
|Factory model must not replace customer-facing name|It is not for public use|
|Factory model must not replace SKU|It does not define region, package, channel, or commercial availability by itself|

Example:

|Internal Model|Factory Model|Notes|
|---|---|---|
|ACT-G1-E|MFG-ACT-G1-E|Factory-controlled base production model|
|SW-G1-RLY|MFG-SW-G1-RLY|Factory-controlled relay switch production model|
|GATE-G1-PRO|MFG-GATE-G1-PRO|Factory-controlled gateway production model|

### ZH-TW

工廠型號用於識別工廠執行生產時使用的產品配置。

|規則|要求|
|---|---|
|工廠型號必須映射至內部型號|不得脫離產品身份獨立存在|
|工廠型號必須映射至工程型號|必須反映已核准工程配置|
|適用時，工廠型號必須映射至 SKU|必須支援庫存與出貨可追蹤|
|適用時，工廠型號必須映射至認證型號|必須支援合規可追蹤|
|工廠型號必須由運營與生產管控|不得使用非正式工廠別名|
|工廠型號不得取代面向客戶名稱|它不面向公開使用|
|工廠型號不得取代 SKU|它本身不定義區域、包裝、渠道或商業可用性|

示例：

|內部型號|工廠型號|備註|
|---|---|---|
|ACT-G1-E|MFG-ACT-G1-E|工廠管控基礎生產型號|
|SW-G1-RLY|MFG-SW-G1-RLY|工廠管控繼電器開關生產型號|
|GATE-G1-PRO|MFG-GATE-G1-PRO|工廠管控網關生產型號|

---

## 21.7 BOM Version Rules

## 21.7 BOM 版本規則

### EN

The BOM Version identifies the approved Bill of Materials used for production.

Recommended format:

```text
BOMx.y
```

|Version Type|Example|Meaning|
|---|---|---|
|Initial BOM|BOM1.0|First approved production BOM|
|Minor BOM revision|BOM1.1|Minor component update, supplier substitution, or sourcing adjustment|
|Major BOM revision|BOM2.0|Major component, platform, safety, RF, or power change|

### When to Change BOM Version

|Change Scenario|Change BOM Version?|Notes|
|---|---|---|
|Component supplier changes|Yes|Supplier and compliance review may be required|
|MCU changes|Yes|Engineering, firmware, and certification review required|
|RF module changes|Yes|Certification review required|
|Power component changes|Yes|Safety and thermal review required|
|Relay changes|Yes|Load and safety review required|
|Sensor IC changes|Yes|Functional validation required|
|Passive component substitution|Usually yes|May be minor if equivalent and approved|
|Packaging-only change|No|Update packaging version|
|Firmware-only change|No|Update firmware record|

### ZH-TW

BOM 版本用於識別生產中使用的已核准物料清單。

建議格式：

```text
BOMx.y
```

|版本類型|示例|含義|
|---|---|---|
|初始 BOM|BOM1.0|第一個已核准生產 BOM|
|輕微 BOM 修訂|BOM1.1|輕微元件更新、供應商替代或採購調整|
|重大 BOM 修訂|BOM2.0|重大元件、平台、安全、RF 或供電變更|

### 何時變更 BOM 版本

|變更場景|是否變更 BOM 版本？|備註|
|---|---|---|
|元件供應商變更|是|可能需要供應商與合規審查|
|MCU 變更|是|需要工程、韌體與認證審查|
|RF 模組變更|是|需要認證審查|
|電源元件變更|是|需要安全與熱審查|
|繼電器變更|是|需要負載與安全審查|
|感測 IC 變更|是|需要功能驗證|
|被動元件替代|通常是|若等效且已核准，可作輕微修訂|
|僅包裝變更|否|更新包裝版本|
|僅韌體變更|否|更新韌體記錄|

---

## 21.8 Assembly Version Rules

## 21.8 組裝版本規則

### EN

The Assembly Version identifies the approved mechanical, electrical, enclosure, accessory, and final assembly configuration.

Recommended format:

```text
ASMx.y
```

|Assembly Area|Description|
|---|---|
|PCB assembly|Mounted PCB configuration and component assembly method|
|Enclosure assembly|Housing, frame, glass, plastic, metal, gasket, screw, adhesive|
|Antenna assembly|Antenna placement, cable, window, orientation, or matching method|
|Power assembly|Adapter, terminal, wiring harness, relay, load connector|
|Sensor assembly|Sensor window, light pipe, aperture, seal, placement|
|Packaging assembly|Accessory placement, manual, label, carton insert|

### When to Change Assembly Version

|Change Scenario|Change ASM Version?|Notes|
|---|---|---|
|Enclosure assembly changes|Yes|Mechanical and certification review may be required|
|Antenna placement changes|Yes|RF review required|
|Cable or connector assembly changes|Yes|Electrical and manufacturing review required|
|Screw, adhesive, gasket, or seal method changes|Usually yes|Reliability review may be required|
|Accessory placement changes|Maybe|Package version may also change|
|Manufacturing fixture changes only|Maybe|May affect QC or process record|
|Firmware-only change|No|Update firmware record|
|BOM-only substitution without assembly impact|No or maybe|Depends on production process impact|

### ZH-TW

組裝版本用於識別已核准的機構、電氣、外殼、配件與最終組裝配置。

建議格式：

```text
ASMx.y
```

|組裝領域|說明|
|---|---|
|PCB 組裝|已貼裝 PCB 配置與元件組裝方式|
|外殼組裝|外殼、框架、玻璃、塑膠、金屬、墊圈、螺絲、膠黏|
|天線組裝|天線位置、線纜、窗口、方向或匹配方式|
|電源組裝|適配器、端子、線束、繼電器、負載接頭|
|感測組裝|感測窗口、導光件、開孔、密封、位置|
|包裝組裝|配件放置、說明書、標籤、紙箱內襯|

### 何時變更組裝版本

|變更場景|是否變更 ASM 版本？|備註|
|---|---|---|
|外殼組裝變更|是|可能需要機構與認證審查|
|天線位置變更|是|需要 RF 審查|
|線纜或連接器組裝變更|是|需要電氣與生產審查|
|螺絲、膠黏、墊圈或密封方式變更|通常是|可能需要可靠性審查|
|配件放置變更|視情況|包裝版本也可能變更|
|僅生產治具變更|視情況|可能影響 QC 或流程記錄|
|僅韌體變更|否|更新韌體記錄|
|BOM 替代但不影響組裝|否或視情況|取決於生產流程影響|

---

## 21.9 Supplier Code Rules

## 21.9 供應商代碼規則

### EN

The Supplier Code identifies the supplier, factory, contract manufacturer, or production site responsible for a production build.

Recommended format:

```text
SUPxx
```

Examples:

|Supplier Code|Meaning|
|---|---|
|SUP01|Approved supplier or factory 01|
|SUP02|Approved supplier or factory 02|
|CM01|Contract manufacturer 01|
|PCB01|PCB supplier 01|
|ASM01|Assembly partner 01|

Supplier codes must be controlled internally. They should not expose sensitive supplier identity in public documents.

### ZH-TW

供應商代碼用於識別負責某次生產的供應商、工廠、合約製造商或生產地點。

建議格式：

```text
SUPxx
```

示例：

|供應商代碼|含義|
|---|---|
|SUP01|已核准供應商或工廠 01|
|SUP02|已核准供應商或工廠 02|
|CM01|合約製造商 01|
|PCB01|PCB 供應商 01|
|ASM01|組裝合作方 01|

供應商代碼必須內部受控。不應在公開文件中暴露敏感供應商身份。

---

## 21.10 Production Batch / Lot Rules

## 21.10 生產批次 / Lot 規則

### EN

The Production Batch or Lot Number identifies a specific production run.

Recommended format:

```text
LOT-[YYYYMMDD]-[SUPPLIER]-[SEQ]
```

Example:

```text
LOT-20260512-SUP01-001
```

|Field|Meaning|
|---|---|
|LOT|Lot prefix|
|YYYYMMDD|Production date or batch start date|
|SUPPLIER|Supplier or factory code|
|SEQ|Sequence number|

Batch and lot numbers must be recorded for traceability, warranty, recall, QC analysis, and shipment tracking.

### ZH-TW

生產批次或 Lot 編號用於識別特定生產批次。

建議格式：

```text
LOT-[YYYYMMDD]-[SUPPLIER]-[SEQ]
```

示例：

```text
LOT-20260512-SUP01-001
```

|欄位|含義|
|---|---|
|LOT|批次前綴|
|YYYYMMDD|生產日期或批次開始日期|
|SUPPLIER|供應商或工廠代碼|
|SEQ|序列號|

批次與 Lot 編號必須被記錄，用於可追蹤性、保固、召回、QC 分析與出貨追蹤。

---

## 21.11 QC Version Rules

## 21.11 QC 版本規則

### EN

The QC Version identifies the quality control plan used for inspection, testing, acceptance, and production release.

Recommended format:

```text
QCx.y
```

|QC Area|Description|
|---|---|
|Incoming inspection|Component and material inspection|
|In-process inspection|Assembly and process inspection|
|Functional test|Device function and firmware behavior|
|Electrical test|Voltage, current, insulation, load, safety where applicable|
|RF test|Wireless signal, antenna, connectivity|
|Burn-in / aging|Reliability and stability test where applicable|
|Final inspection|Appearance, label, packaging, accessories|
|Outgoing quality control|Shipment-level inspection|

### When to Change QC Version

|Change Scenario|Change QC Version?|Notes|
|---|---|---|
|Test item changes|Yes|Update QC plan|
|Acceptance criteria changes|Yes|Update QC plan and release requirement|
|Product function changes|Yes|QC must match capability|
|Certification requirement changes|Yes|QC may need new checks|
|Packaging inspection changes|Usually yes|May also update package version|
|Supplier changes|Usually yes|Incoming inspection may change|
|Minor wording change in checklist|Maybe|Version control still recommended|
|Price or channel change|No|QC not affected|

### ZH-TW

QC 版本用於識別檢驗、測試、驗收與生產放行所使用的品質控制計劃。

建議格式：

```text
QCx.y
```

|QC 項目|說明|
|---|---|
|來料檢驗|元件與材料檢驗|
|製程檢驗|組裝與流程檢驗|
|功能測試|設備功能與韌體行為|
|電氣測試|電壓、電流、絕緣、負載、適用時的安全測試|
|RF 測試|無線信號、天線、連接能力|
|老化 / 燒機|適用時的可靠性與穩定性測試|
|最終檢驗|外觀、標籤、包裝、配件|
|出貨品質控制|出貨級檢驗|

### 何時變更 QC 版本

|變更場景|是否變更 QC 版本？|備註|
|---|---|---|
|測試項目變更|是|更新 QC 計劃|
|驗收標準變更|是|更新 QC 計劃與放行要求|
|產品功能變更|是|QC 必須匹配能力|
|認證要求變更|是|QC 可能需要新增檢查|
|包裝檢驗變更|通常是|也可能更新包裝版本|
|供應商變更|通常是|來料檢驗可能變更|
|檢查表文字輕微變更|視情況|仍建議版本管控|
|價格或渠道變更|否|QC 不受影響|

---

## 21.12 Packaging Version Rules

## 21.12 包裝版本規則

### EN

The Packaging Version identifies the approved packaging configuration used in production.

Recommended format:

```text
PKGx.y
```

|Packaging Area|Description|
|---|---|
|Retail box|Box structure and artwork|
|Product label|Model, rating, certification, barcode|
|Manual|User manual and installation guide|
|Accessories|Adapter, cable, screws, mounts, inserts|
|Amazon FBA label|FNSKU and marketplace preparation|
|Outer carton|Carton label, quantity, carton size|
|Project package|Project-specific delivery pack|
|Sample / demo package|Demo or sample identification|

Packaging version must match the SKU package code, barcode record, label version, and commercial release status.

### ZH-TW

包裝版本用於識別生產中使用的已核准包裝配置。

建議格式：

```text
PKGx.y
```

|包裝項目|說明|
|---|---|
|零售盒|盒型結構與 artwork|
|產品標籤|型號、額定、認證、條碼|
|說明書|用戶手冊與安裝指南|
|配件|適配器、線材、螺絲、安裝件、內襯|
|Amazon FBA 標籤|FNSKU 與 marketplace 準備|
|外箱|外箱標籤、數量、紙箱尺寸|
|專案包裝|專案特定交付包|
|樣品 / 展示包|展示或樣品識別|

包裝版本必須匹配 SKU 包裝代碼、條碼記錄、標籤版本與商業發布狀態。

---

## 21.13 Manufacturing Model Examples by Product Line

## 21.13 各產品線生產型號示例

### EN

|Product Line|Internal Model|Manufacturing Model Example|
|---|---|---|
|Hub|HUB-G1|MFG-HUB-G1-BOM1.0-PCB1.0-ASM1.0-SUP01-QC1.0-PKG1.0|
|Gate Pro|GATE-G1-PRO|MFG-GATE-G1-PRO-BOM1.0-PCB1.0-ASM1.0-SUP01-QC1.0-PKG1.0|
|Sync IR/RF|SYNC-G1-IRRF|MFG-SYNC-G1-IRRF-BOM1.0-PCB1.1-ASM1.0-SUP01-QC1.0-PKG1.0|
|Switch Scene|SW-G1-SCN|MFG-SW-G1-SCN-BOM1.0-PCB1.0-ASM1.0-SUP02-QC1.0-PKG1.0|
|Switch Relay|SW-G1-RLY|MFG-SW-G1-RLY-BOM1.0-PCB1.1-ASM1.0-SUP02-QC1.1-PKG1.0|
|Panel Room|PNL-G1-ROOM|MFG-PNL-G1-ROOM-BOM1.0-PCB1.0-ASM1.0-SUP01-QC1.0-PKG1.0|
|Act-E|ACT-G1-E|MFG-ACT-G1-E-BOM1.0-PCB1.1-ASM1.0-SUP01-QC1.1-PKG1.0|
|Sense Climate|SNS-G1-CLM|MFG-SNS-G1-CLM-BOM1.0-PCB1.0-ASM1.0-SUP02-QC1.0-PKG1.0|
|Vision Edge|VIS-G1-EDGE|MFG-VIS-G1-EDGE-BOM1.0-PCB1.0-ASM1.0-SUP01-QC1.0-PKG1.0|
|OceanAI Edge|EDGE-G1|MFG-EDGE-G1-BOM1.0-PCB1.0-ASM1.0-SUP01-QC1.0-PKG1.0|

### ZH-TW

|產品線|內部型號|生產型號示例|
|---|---|---|
|Hub|HUB-G1|MFG-HUB-G1-BOM1.0-PCB1.0-ASM1.0-SUP01-QC1.0-PKG1.0|
|Gate Pro|GATE-G1-PRO|MFG-GATE-G1-PRO-BOM1.0-PCB1.0-ASM1.0-SUP01-QC1.0-PKG1.0|
|Sync IR/RF|SYNC-G1-IRRF|MFG-SYNC-G1-IRRF-BOM1.0-PCB1.1-ASM1.0-SUP01-QC1.0-PKG1.0|
|Switch Scene|SW-G1-SCN|MFG-SW-G1-SCN-BOM1.0-PCB1.0-ASM1.0-SUP02-QC1.0-PKG1.0|
|Switch Relay|SW-G1-RLY|MFG-SW-G1-RLY-BOM1.0-PCB1.1-ASM1.0-SUP02-QC1.1-PKG1.0|
|Panel Room|PNL-G1-ROOM|MFG-PNL-G1-ROOM-BOM1.0-PCB1.0-ASM1.0-SUP01-QC1.0-PKG1.0|
|Act-E|ACT-G1-E|MFG-ACT-G1-E-BOM1.0-PCB1.1-ASM1.0-SUP01-QC1.1-PKG1.0|
|Sense Climate|SNS-G1-CLM|MFG-SNS-G1-CLM-BOM1.0-PCB1.0-ASM1.0-SUP02-QC1.0-PKG1.0|
|Vision Edge|VIS-G1-EDGE|MFG-VIS-G1-EDGE-BOM1.0-PCB1.0-ASM1.0-SUP01-QC1.0-PKG1.0|
|OceanAI Edge|EDGE-G1|MFG-EDGE-G1-BOM1.0-PCB1.0-ASM1.0-SUP01-QC1.0-PKG1.0|

---

## 21.14 Manufacturing Model to SKU Mapping

## 21.14 生產型號至 SKU 映射

### EN

One manufacturing model may map to one or more SKUs only when the production configuration is the same and the commercial difference is controlled outside the production build.

Example:

|Manufacturing Model|SKU Code|Mapping Reason|
|---|---|---|
|MFG-ACT-G1-E-BOM1.0-PCB1.1-ASM1.0-SUP01-QC1.1-PKG1.0|ATB-ACT-G1-US-WF-AC-E-S|U.S. single-unit production package|
|MFG-ACT-G1-E-BOM1.0-PCB1.1-ASM1.0-SUP01-QC1.1-PKG1.0|ATB-ACT-G1-US-WF-AC-E-FBA|Same device build, Amazon-ready package if PKG version supports FBA|
|MFG-ACT-G1-E-BOM1.0-PCB1.1-ASM1.0-SUP01-QC1.1-PKG1.0|ATB-ACT-G1-US-WF-AC-E-PRJ|Same device build, project shipment if package configuration supports it|

If packaging, label, accessory, adapter, manual, barcode, or carton configuration changes, a new packaging version or manufacturing record may be required.

### ZH-TW

只有在生產配置相同，且商業差異由生產構建之外的記錄管控時，一個生產型號才可映射至一個或多個 SKU。

示例：

|生產型號|SKU 代碼|映射原因|
|---|---|---|
|MFG-ACT-G1-E-BOM1.0-PCB1.1-ASM1.0-SUP01-QC1.1-PKG1.0|ATB-ACT-G1-US-WF-AC-E-S|美國單品生產包裝|
|MFG-ACT-G1-E-BOM1.0-PCB1.1-ASM1.0-SUP01-QC1.1-PKG1.0|ATB-ACT-G1-US-WF-AC-E-FBA|同一設備構建，若 PKG 版本支援 FBA，則用於 Amazon-ready 包裝|
|MFG-ACT-G1-E-BOM1.0-PCB1.1-ASM1.0-SUP01-QC1.1-PKG1.0|ATB-ACT-G1-US-WF-AC-E-PRJ|同一設備構建，若包裝配置支持，則用於專案出貨|

如果包裝、標籤、配件、適配器、說明書、條碼或外箱配置變更，可能需要新的包裝版本或生產記錄。

---

## 21.15 Manufacturing Model to Engineering and Certification Mapping

## 21.15 生產型號至工程與認證映射

### EN

A manufacturing model must map to the approved engineering and certification records before production release.

|Manufacturing Record|Required Mapping|
|---|---|
|Factory Model|Internal model|
|BOM Version|Approved BOM record|
|PCB Version|Engineering model PCB version|
|Assembly Version|Mechanical / electrical assembly record|
|Supplier Code|Approved supplier record|
|QC Version|Approved quality control plan|
|Packaging Version|Approved package record|
|Production Batch|Lot / shipment / warranty traceability|
|Engineering Model|Tested and approved engineering configuration|
|Certification Model|Applicable certified configuration|

Production must not start when manufacturing records are not aligned with engineering and certification records.

### ZH-TW

生產型號在生產放行前，必須映射至已核准工程與認證記錄。

|生產記錄|必要映射|
|---|---|
|工廠型號|內部型號|
|BOM 版本|已核准 BOM 記錄|
|PCB 版本|工程型號中的 PCB 版本|
|組裝版本|機構 / 電氣組裝記錄|
|供應商代碼|已核准供應商記錄|
|QC 版本|已核准品質控制計劃|
|包裝版本|已核准包裝記錄|
|生產批次|Lot / 出貨 / 保固可追蹤|
|工程型號|已測試與核准工程配置|
|認證型號|適用的已認證配置|

當生產記錄與工程、認證記錄不一致時，不得啟動生產。

---

## 21.16 When to Create a New Manufacturing Model

## 21.16 何時建立新生產型號

### EN

A new manufacturing model should be created when the production configuration changes.

|Change Scenario|New Manufacturing Model Required?|Notes|
|---|---|---|
|BOM version changes|Yes|New production configuration|
|PCB version changes|Yes|Board revision changed|
|Assembly version changes|Yes|Assembly process or configuration changed|
|Supplier changes|Usually yes|Supplier traceability required|
|QC plan changes|Usually yes|QC version must be visible|
|Packaging version changes|Usually yes|Especially if label, barcode, carton, or manual changes|
|Factory production site changes|Usually yes|Supplier / factory traceability required|
|Engineering model changes|Yes|Production must map to engineering record|
|Certification model changes|Yes|Production must map to compliance record|
|Production batch changes only|No|Create new Lot record, not necessarily new manufacturing model|
|Price or channel changes|No|Update commercial records only|
|Warehouse location changes|No|Update logistics records only|

### ZH-TW

當生產配置發生變化時，應建立新的生產型號。

|變更場景|是否需要新生產型號？|備註|
|---|---|---|
|BOM 版本變更|是|新生產配置|
|PCB 版本變更|是|板卡修訂已變更|
|組裝版本變更|是|組裝流程或配置已變更|
|供應商變更|通常是|需要供應商可追蹤性|
|QC 計劃變更|通常是|QC 版本必須可見|
|包裝版本變更|通常是|尤其當標籤、條碼、外箱或說明書變更時|
|工廠生產地點變更|通常是|需要供應商 / 工廠可追蹤性|
|工程型號變更|是|生產必須映射至工程記錄|
|認證型號變更|是|生產必須映射至合規記錄|
|僅生產批次變更|否|建立新 Lot 記錄，不一定建立新生產型號|
|價格或渠道變更|否|僅更新商業記錄|
|倉庫位置變更|否|僅更新物流記錄|

---

## 21.17 When Not to Create a New Manufacturing Model

## 21.17 何時不建立新生產型號

### EN

A new manufacturing model should not be created for changes outside the production configuration.

|Change Scenario|New Manufacturing Model Required?|Required Action|
|---|---|---|
|Price change|No|Update pricing sheet|
|Sales channel change|No|Update channel record|
|Warehouse transfer|No|Update logistics record|
|Inventory quantity change|No|Update inventory system|
|Customer-facing copy update|No|Update catalog or listing record|
|Amazon title update|No|Update e-commerce record|
|Firmware OTA update after shipment|No|Update firmware release record|
|Support policy change|No|Update support documentation|
|Warranty wording change|No|Update warranty document|
|Product photo update|No|Update media record|

### ZH-TW

不應因生產配置之外的變更而建立新生產型號。

|變更場景|是否需要新生產型號？|必要處理|
|---|---|---|
|價格變更|否|更新價格表|
|銷售渠道變更|否|更新渠道記錄|
|倉庫轉移|否|更新物流記錄|
|庫存數量變化|否|更新庫存系統|
|面向客戶文案更新|否|更新型錄或上架記錄|
|Amazon 標題更新|否|更新電商記錄|
|出貨後韌體 OTA 更新|否|更新韌體發布記錄|
|支持政策變更|否|更新支持文件|
|保固文字變更|否|更新保固文件|
|產品照片更新|否|更新媒體記錄|

---

## 21.18 Production Release Checklist

## 21.18 生產放行清單

### EN

Before a manufacturing model is released for production, the following items must be confirmed:

|Check Item|Required|
|---|---|
|Internal model mapped|Yes|
|SKU mapped where applicable|Yes|
|Engineering model approved|Yes|
|Certification model approved where applicable|Yes|
|BOM version approved|Yes|
|PCB version approved|Yes|
|Assembly version approved|Yes|
|Supplier code approved|Yes|
|Production batch rule defined|Yes|
|QC version approved|Yes|
|Packaging version approved|Yes|
|Label version approved|Required where applicable|
|Firmware loading process defined|Required where applicable|
|Serial number rule defined|Required where applicable|
|Factory test process approved|Yes|
|Shipment inspection process approved|Yes|
|Approval owner recorded|Yes|

### ZH-TW

在生產型號放行生產前，必須確認以下項目：

|檢查項目|是否必須|
|---|---|
|已映射內部型號|是|
|適用時已映射 SKU|是|
|工程型號已核准|是|
|適用時認證型號已核准|是|
|BOM 版本已核准|是|
|PCB 版本已核准|是|
|組裝版本已核准|是|
|供應商代碼已核准|是|
|生產批次規則已定義|是|
|QC 版本已核准|是|
|包裝版本已核准|是|
|適用時標籤版本已核准|必須|
|適用時韌體燒錄流程已定義|必須|
|適用時序列號規則已定義|必須|
|工廠測試流程已核准|是|
|出貨檢驗流程已核准|是|
|核准負責人已記錄|是|

---

## 21.19 Manufacturing Change Control Rules

## 21.19 生產變更管控規則

### EN

|Rule|Requirement|
|---|---|
|Manufacturing model numbers must be controlled|No informal factory model names|
|BOM, PCB, assembly, supplier, QC, and package versions must be visible|Production configuration must be traceable|
|Production batch must be recorded|Lot traceability is mandatory|
|Supplier code must be controlled internally|Do not expose sensitive supplier information publicly|
|Manufacturing model must map to engineering model|Factory must build approved technical configuration|
|Manufacturing model must map to certification model where applicable|Factory build must remain within compliance scope|
|Manufacturing model must map to SKU where applicable|Inventory and shipment must remain traceable|
|Manufacturing changes must be reviewed before production|No silent production changes|
|Lot records must support recall and warranty analysis|Batch traceability must be preserved|
|Retired manufacturing records must remain archived|Historical traceability required|

### ZH-TW

|規則|要求|
|---|---|
|生產型號必須受控|不得使用非正式工廠型號|
|BOM、PCB、組裝、供應商、QC 與包裝版本必須可見|生產配置必須可追蹤|
|生產批次必須記錄|Lot 可追蹤性是強制要求|
|供應商代碼必須內部受控|不得公開暴露敏感供應商資訊|
|生產型號必須映射至工程型號|工廠必須生產已核准技術配置|
|適用時生產型號必須映射至認證型號|工廠構建必須保持在合規範圍內|
|適用時生產型號必須映射至 SKU|庫存與出貨必須可追蹤|
|生產變更必須在生產前審查|不允許靜默生產變更|
|Lot 記錄必須支援召回與保固分析|必須保留批次可追蹤性|
|已退役生產記錄必須歸檔|需要歷史可追蹤性|

---

## 21.20 Required Master Table Fields

## 21.20 必備主表欄位

### EN

Each manufacturing model record must include the following fields:

|Field|Requirement|
|---|---|
|Manufacturing Model Number|Required|
|Factory Model|Required|
|Internal Model Number|Required|
|SKU Code Mapping|Required where applicable|
|Engineering Model Mapping|Required|
|Certification Model Mapping|Required where applicable|
|BOM Version|Required|
|PCB Version|Required|
|Assembly Version|Required|
|Supplier Code|Required|
|Production Batch / Lot Rule|Required|
|QC Version|Required|
|Packaging Version|Required|
|Label Version|Required where applicable|
|Firmware Loading Version|Required where applicable|
|Serial Number Rule|Required where applicable|
|ERP / BOM System Reference|Required where applicable|
|Factory Test Procedure Reference|Required|
|Shipment Inspection Reference|Required|
|Approval Owner|Required|
|Revision Date|Required|
|Notes|Required where applicable|

### ZH-TW

每一筆生產型號記錄都必須包含以下欄位：

|欄位|要求|
|---|---|
|生產型號|必填|
|工廠型號|必填|
|內部型號|必填|
|SKU 代碼映射|適用時必填|
|工程型號映射|必填|
|認證型號映射|適用時必填|
|BOM 版本|必填|
|PCB 版本|必填|
|組裝版本|必填|
|供應商代碼|必填|
|生產批次 / Lot 規則|必填|
|QC 版本|必填|
|包裝版本|必填|
|標籤版本|適用時必填|
|韌體燒錄版本|適用時必填|
|序列號規則|適用時必填|
|ERP / BOM 系統引用|適用時必填|
|工廠測試流程引用|必填|
|出貨檢驗引用|必填|
|核准負責人|必填|
|修訂日期|必填|
|備註|適用時必填|

---

## 21.21 Chapter Conclusion

## 21.21 本章結論

### EN

Manufacturing model numbers provide the production-control identity of Artibird products.

They connect the factory build to the internal model, engineering model, certification model, SKU record, BOM version, PCB revision, assembly configuration, supplier code, production batch, QC version, and packaging version.

A controlled manufacturing model system ensures that the product produced by the factory is the product approved by engineering, covered by certification where applicable, represented correctly by SKU, packaged correctly for commercial release, and traceable through inventory, shipment, warranty, and support.

### ZH-TW

生產型號為 Artibird 產品提供生產管控身份。

它將工廠實際構建連接至內部型號、工程型號、認證型號、SKU 記錄、BOM 版本、PCB 修訂、組裝配置、供應商代碼、生產批次、QC 版本與包裝版本。

受控的生產型號系統確保工廠生產出的產品，正是工程已核准、適用時被認證覆蓋、由 SKU 正確表示、按商業發布要求正確包裝，並且能在庫存、出貨、保固與支持中保持可追蹤的產品。

---

本章依據《Artibird SKU & Model Naming Specification v1.0》的既定撰寫計劃展開；原始規劃已將 Chapter 21 設為 Manufacturing Model Numbers，並要求定義工廠、BOM 系統、ERP 系統、供應商與生產記錄中使用的生產型號；其必備欄位包括 Factory Model、BOM Version、PCB Version、Assembly Version、Supplier Code、Production Batch、QC Version 與 Packaging Version。

**話題延伸｜互動建議**  
下一章可以繼續寫 **Chapter 22 — Package Model Names｜第二十二章｜包裝型號名稱**，正式定義 Artibird Smart Room Starter Kit、Classroom Control Kit、Energy Starter Kit、Gate Pro Kit、Demo Kit 等套組與包裝級型號名稱。