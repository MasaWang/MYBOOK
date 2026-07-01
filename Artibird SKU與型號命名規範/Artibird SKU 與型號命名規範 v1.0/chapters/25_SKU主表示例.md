# Artibird SKU & Model Naming Specification v1.0

# Artibird SKU 與型號命名規範 v1.0

## Chapter 25 — SKU Master Table Example

## 第二十五章｜SKU 主表示例

---

## 25.1 Purpose

## 25.1 目的

### EN

This chapter provides a complete example of the Artibird SKU master table.

The purpose of this chapter is to demonstrate how the SKU structure, customer-facing model name, internal model number, engineering model number, certification model number, manufacturing model number, package model name, release status, commercial channel, and claim boundary fields are combined into one traceable master table.

This table may be used as a starting structure for Excel, Google Sheets, Airtable, ERP staging tables, PLM import tables, internal product planning records, or SKU governance review documents.

### ZH-TW

本章提供一份完整的 Artibird SKU 主表示例。

本章目的，是示範如何將 SKU 結構、面向客戶型號名稱、內部型號、工程型號、認證型號、生產型號、包裝型號名稱、發布狀態、商業渠道與宣稱邊界欄位整合為一張可追蹤主表。

此表可作為 Excel、Google Sheets、Airtable、ERP 暫存表、PLM 匯入表、內部產品規劃記錄或 SKU 治理審查文件的起始結構。

---

## 25.2 Master Table Example Principle

## 25.2 主表示例原則

### EN

The example table follows the same principle defined in the previous chapter:

```text
One SKU master record = one controlled commercial configuration.
```

Each row represents one SKU-level commercial configuration.  
If the product configuration, region, package, certification mapping, commercial release identity, or package unit changes, a separate row may be required.

### ZH-TW

本章示例表遵循前一章定義的同一原則：

```text
一筆 SKU 主記錄 = 一種受控商業配置。
```

每一列代表一個 SKU 級商業配置。  
如果產品配置、區域、包裝、認證映射、商業發布身份或包裝單位發生變化，可能需要建立單獨記錄列。

---

## 25.3 Recommended Column Groups

## 25.3 建議欄位分組

### EN

For readability, the SKU master table may be divided into the following field groups:

|Field Group|Purpose|
|---|---|
|Identity|Defines the SKU and product identity|
|Configuration|Defines region, connectivity, power, variant, and package|
|Engineering|Connects the SKU to technical configuration|
|Certification|Connects the SKU to compliance records|
|Manufacturing|Connects the SKU to factory production records|
|Packaging|Connects the SKU to package, barcode, FBA, and included items|
|Commercial|Defines release status, channel, market, and pricing reference|
|Governance|Defines approval status, owner, revision, and claim boundary|

### ZH-TW

為提升可讀性，SKU 主表可分為以下欄位組：

|欄位組|用途|
|---|---|
|Identity｜身份|定義 SKU 與產品身份|
|Configuration｜配置|定義區域、連接、供電、版本與包裝|
|Engineering｜工程|將 SKU 連接至技術配置|
|Certification｜認證|將 SKU 連接至合規記錄|
|Manufacturing｜生產|將 SKU 連接至工廠生產記錄|
|Packaging｜包裝|將 SKU 連接至包裝、條碼、FBA 與內含項目|
|Commercial｜商業|定義發布狀態、渠道、市場與定價引用|
|Governance｜治理|定義核准狀態、負責人、修訂與宣稱邊界|

---

## 25.4 Identity and Configuration Master Table

## 25.4 身份與配置主表示例

### EN

|SKU Code|Customer-Facing Name|Internal Model|Product Line|Gen|Region|Conn.|Power|Variant|Package|
|---|---|---|---|---|---|---|---|---|---|
|ATB-HUB-G1-US-ETH-DC-STD-S|Artibird Hub G1|HUB-G1|HUB|G1|US|ETH|DC|STD|S|
|ATB-GATE-G1-US-HYB-USB-PRO-S|Artibird Gate Pro|GATE-G1-PRO|GATE|G1|US|HYB|USB|PRO|S|
|ATB-SYNC-G1-GL-IRRF-USB-STD-S|Artibird Sync IR/RF|SYNC-G1-IRRF|SYNC|G1|GL|IRRF|USB|STD|S|
|ATB-SW-G1-US-BLE-BAT-SCN-S|Artibird Switch Scene|SW-G1-SCN|SW|G1|US|BLE|BAT|SCN|S|
|ATB-SW-G1-US-WF-ZN-RLY-S|Artibird Switch Relay|SW-G1-RLY|SW|G1|US|WF|ZN|RLY|S|
|ATB-PNL-G1-US-WF-DC-STD-S|Artibird Panel Room|PNL-G1-ROOM|PNL|G1|US|WF|DC|STD|S|
|ATB-ACT-G1-US-WF-AC-STD-S|Artibird Act|ACT-G1-STD|ACT|G1|US|WF|AC|STD|S|
|ATB-ACT-G1-US-WF-AC-E-S|Artibird Act-E|ACT-G1-E|ACT|G1|US|WF|AC|E|S|
|ATB-SNS-G1-GL-BLE-BAT-STD-S|Artibird Sense Climate|SNS-G1-CLM|SNS|G1|GL|BLE|BAT|STD|S|
|ATB-VIS-G1-US-WF-DC-CAM-S|Artibird Vision Edge|VIS-G1-EDGE|VIS|G1|US|WF|DC|CAM|S|
|ATB-APP-G1-GL-CLD-NA-STD-NA|Artibird App|APP-G1|APP|G1|GL|CLD|NA|STD|NA|
|ATB-CLD-G1-US-CLD-NA-STD-NA|OceanAI Cloud|CLD-G1|CLD|G1|US|CLD|NA|STD|NA|
|ATB-EDGE-G1-US-ETH-DC-PRO-S|OceanAI Edge|EDGE-G1|EDGE|G1|US|ETH|DC|PRO|S|

### ZH-TW

|SKU 代碼|面向客戶名稱|內部型號|產品線|世代|區域|連接|供電|版本|包裝|
|---|---|---|---|---|---|---|---|---|---|
|ATB-HUB-G1-US-ETH-DC-STD-S|Artibird Hub G1|HUB-G1|HUB|G1|US|ETH|DC|STD|S|
|ATB-GATE-G1-US-HYB-USB-PRO-S|Artibird Gate Pro|GATE-G1-PRO|GATE|G1|US|HYB|USB|PRO|S|
|ATB-SYNC-G1-GL-IRRF-USB-STD-S|Artibird Sync IR/RF|SYNC-G1-IRRF|SYNC|G1|GL|IRRF|USB|STD|S|
|ATB-SW-G1-US-BLE-BAT-SCN-S|Artibird Switch Scene|SW-G1-SCN|SW|G1|US|BLE|BAT|SCN|S|
|ATB-SW-G1-US-WF-ZN-RLY-S|Artibird Switch Relay|SW-G1-RLY|SW|G1|US|WF|ZN|RLY|S|
|ATB-PNL-G1-US-WF-DC-STD-S|Artibird Panel Room|PNL-G1-ROOM|PNL|G1|US|WF|DC|STD|S|
|ATB-ACT-G1-US-WF-AC-STD-S|Artibird Act|ACT-G1-STD|ACT|G1|US|WF|AC|STD|S|
|ATB-ACT-G1-US-WF-AC-E-S|Artibird Act-E|ACT-G1-E|ACT|G1|US|WF|AC|E|S|
|ATB-SNS-G1-GL-BLE-BAT-STD-S|Artibird Sense Climate|SNS-G1-CLM|SNS|G1|GL|BLE|BAT|STD|S|
|ATB-VIS-G1-US-WF-DC-CAM-S|Artibird Vision Edge|VIS-G1-EDGE|VIS|G1|US|WF|DC|CAM|S|
|ATB-APP-G1-GL-CLD-NA-STD-NA|Artibird App|APP-G1|APP|G1|GL|CLD|NA|STD|NA|
|ATB-CLD-G1-US-CLD-NA-STD-NA|OceanAI Cloud|CLD-G1|CLD|G1|US|CLD|NA|STD|NA|
|ATB-EDGE-G1-US-ETH-DC-PRO-S|OceanAI Edge|EDGE-G1|EDGE|G1|US|ETH|DC|PRO|S|

---

## 25.5 Engineering and Certification Master Table

## 25.5 工程與認證主表示例

### EN

|SKU Code|Engineering Model|HW|FW|PCB|Stage|Certification Model|Framework|Certification Status|
|---|---|---|---|---|---|---|---|---|
|ATB-HUB-G1-US-ETH-DC-STD-S|HUB-G1-HW1.0-FW1.0-PCB1.0-DVT|HW1.0|FW1.0|PCB1.0|DVT|HUB-G1|FCC / ETL|Preparing|
|ATB-GATE-G1-US-HYB-USB-PRO-S|GATE-G1-PRO-HW1.0-FW1.1-PCB1.0-DVT|HW1.0|FW1.1|PCB1.0|DVT|GATE-G1-PRO|FCC|Preparing|
|ATB-SYNC-G1-GL-IRRF-USB-STD-S|SYNC-G1-IRRF-HW1.0-FW1.2-PCB1.1-DVT|HW1.0|FW1.2|PCB1.1|DVT|SYNC-G1-IRRF|FCC / CE Review|Preparing|
|ATB-SW-G1-US-BLE-BAT-SCN-S|SW-G1-SCN-HW1.0-FW1.0-PCB1.0-EVT|HW1.0|FW1.0|PCB1.0|EVT|SW-G1-SCN|FCC Review|Not Started|
|ATB-SW-G1-US-WF-ZN-RLY-S|SW-G1-RLY-HW1.0-FW1.2-PCB1.1-DVT|HW1.0|FW1.2|PCB1.1|DVT|SW-G1-RLY|FCC / ETL Review|Preparing|
|ATB-PNL-G1-US-WF-DC-STD-S|PNL-G1-ROOM-HW1.0-FW1.0-PCB1.0-DVT|HW1.0|FW1.0|PCB1.0|DVT|PNL-G1-ROOM|FCC|Preparing|
|ATB-ACT-G1-US-WF-AC-STD-S|ACT-G1-STD-HW1.0-FW1.0-PCB1.0-DVT|HW1.0|FW1.0|PCB1.0|DVT|ACT-G1-STD|FCC / ETL Review|Preparing|
|ATB-ACT-G1-US-WF-AC-E-S|ACT-G1-E-HW1.0-FW1.2-PCB1.1-DVT|HW1.0|FW1.2|PCB1.1|DVT|ACT-G1-E|FCC / ETL Review|Preparing|
|ATB-SNS-G1-GL-BLE-BAT-STD-S|SNS-G1-CLM-HW1.0-FW1.0-PCB1.0-EVT|HW1.0|FW1.0|PCB1.0|EVT|SNS-G1-CLM|FCC / CE Review|Not Started|
|ATB-VIS-G1-US-WF-DC-CAM-S|VIS-G1-EDGE-HW1.0-FW1.1-PCB1.0-DVT|HW1.0|FW1.1|PCB1.0|DVT|VIS-G1-EDGE|FCC / Privacy Review|Preparing|
|ATB-APP-G1-GL-CLD-NA-STD-NA|N/A|N/A|APP1.0|N/A|N/A|N/A|N/A|Not Applicable|
|ATB-CLD-G1-US-CLD-NA-STD-NA|N/A|N/A|CLD1.0|N/A|N/A|N/A|N/A|Not Applicable|
|ATB-EDGE-G1-US-ETH-DC-PRO-S|EDGE-G1-HW1.0-FW1.0-PCB1.0-PVT|HW1.0|FW1.0|PCB1.0|PVT|EDGE-G1|FCC / Safety Review|Preparing|

### ZH-TW

|SKU 代碼|工程型號|HW|FW|PCB|階段|認證型號|認證框架|認證狀態|
|---|---|---|---|---|---|---|---|---|
|ATB-HUB-G1-US-ETH-DC-STD-S|HUB-G1-HW1.0-FW1.0-PCB1.0-DVT|HW1.0|FW1.0|PCB1.0|DVT|HUB-G1|FCC / ETL|Preparing|
|ATB-GATE-G1-US-HYB-USB-PRO-S|GATE-G1-PRO-HW1.0-FW1.1-PCB1.0-DVT|HW1.0|FW1.1|PCB1.0|DVT|GATE-G1-PRO|FCC|Preparing|
|ATB-SYNC-G1-GL-IRRF-USB-STD-S|SYNC-G1-IRRF-HW1.0-FW1.2-PCB1.1-DVT|HW1.0|FW1.2|PCB1.1|DVT|SYNC-G1-IRRF|FCC / CE Review|Preparing|
|ATB-SW-G1-US-BLE-BAT-SCN-S|SW-G1-SCN-HW1.0-FW1.0-PCB1.0-EVT|HW1.0|FW1.0|PCB1.0|EVT|SW-G1-SCN|FCC Review|Not Started|
|ATB-SW-G1-US-WF-ZN-RLY-S|SW-G1-RLY-HW1.0-FW1.2-PCB1.1-DVT|HW1.0|FW1.2|PCB1.1|DVT|SW-G1-RLY|FCC / ETL Review|Preparing|
|ATB-PNL-G1-US-WF-DC-STD-S|PNL-G1-ROOM-HW1.0-FW1.0-PCB1.0-DVT|HW1.0|FW1.0|PCB1.0|DVT|PNL-G1-ROOM|FCC|Preparing|
|ATB-ACT-G1-US-WF-AC-STD-S|ACT-G1-STD-HW1.0-FW1.0-PCB1.0-DVT|HW1.0|FW1.0|PCB1.0|DVT|ACT-G1-STD|FCC / ETL Review|Preparing|
|ATB-ACT-G1-US-WF-AC-E-S|ACT-G1-E-HW1.0-FW1.2-PCB1.1-DVT|HW1.0|FW1.2|PCB1.1|DVT|ACT-G1-E|FCC / ETL Review|Preparing|
|ATB-SNS-G1-GL-BLE-BAT-STD-S|SNS-G1-CLM-HW1.0-FW1.0-PCB1.0-EVT|HW1.0|FW1.0|PCB1.0|EVT|SNS-G1-CLM|FCC / CE Review|Not Started|
|ATB-VIS-G1-US-WF-DC-CAM-S|VIS-G1-EDGE-HW1.0-FW1.1-PCB1.0-DVT|HW1.0|FW1.1|PCB1.0|DVT|VIS-G1-EDGE|FCC / Privacy Review|Preparing|
|ATB-APP-G1-GL-CLD-NA-STD-NA|N/A|N/A|APP1.0|N/A|N/A|N/A|N/A|Not Applicable|
|ATB-CLD-G1-US-CLD-NA-STD-NA|N/A|N/A|CLD1.0|N/A|N/A|N/A|N/A|Not Applicable|
|ATB-EDGE-G1-US-ETH-DC-PRO-S|EDGE-G1-HW1.0-FW1.0-PCB1.0-PVT|HW1.0|FW1.0|PCB1.0|PVT|EDGE-G1|FCC / Safety Review|Preparing|

---

## 25.6 Manufacturing and Packaging Master Table

## 25.6 生產與包裝主表示例

### EN

|SKU Code|Manufacturing Model|BOM|ASM|Supplier|QC|Package Model Name|PKG|Barcode / FNSKU|
|---|---|---|---|---|---|---|---|---|
|ATB-HUB-G1-US-ETH-DC-STD-S|MFG-HUB-G1-BOM1.0-PCB1.0-ASM1.0-SUP01-QC1.0-PKG1.0|BOM1.0|ASM1.0|SUP01|QC1.0|Artibird Hub G1 Single Pack|PKG1.0|TBD|
|ATB-GATE-G1-US-HYB-USB-PRO-S|MFG-GATE-G1-PRO-BOM1.0-PCB1.0-ASM1.0-SUP01-QC1.0-PKG1.0|BOM1.0|ASM1.0|SUP01|QC1.0|Artibird Gate Pro Single Pack|PKG1.0|TBD|
|ATB-SYNC-G1-GL-IRRF-USB-STD-S|MFG-SYNC-G1-IRRF-BOM1.0-PCB1.1-ASM1.0-SUP01-QC1.0-PKG1.0|BOM1.0|ASM1.0|SUP01|QC1.0|Artibird Sync IR/RF Single Pack|PKG1.0|TBD|
|ATB-SW-G1-US-BLE-BAT-SCN-S|MFG-SW-G1-SCN-BOM1.0-PCB1.0-ASM1.0-SUP02-QC1.0-PKG1.0|BOM1.0|ASM1.0|SUP02|QC1.0|Artibird Switch Scene Single Pack|PKG1.0|TBD|
|ATB-SW-G1-US-WF-ZN-RLY-S|MFG-SW-G1-RLY-BOM1.0-PCB1.1-ASM1.0-SUP02-QC1.1-PKG1.0|BOM1.0|ASM1.0|SUP02|QC1.1|Artibird Switch Relay Single Pack|PKG1.0|TBD|
|ATB-PNL-G1-US-WF-DC-STD-S|MFG-PNL-G1-ROOM-BOM1.0-PCB1.0-ASM1.0-SUP01-QC1.0-PKG1.0|BOM1.0|ASM1.0|SUP01|QC1.0|Artibird Panel Room Single Pack|PKG1.0|TBD|
|ATB-ACT-G1-US-WF-AC-STD-S|MFG-ACT-G1-STD-BOM1.0-PCB1.0-ASM1.0-SUP01-QC1.0-PKG1.0|BOM1.0|ASM1.0|SUP01|QC1.0|Artibird Act Single Pack|PKG1.0|TBD|
|ATB-ACT-G1-US-WF-AC-E-S|MFG-ACT-G1-E-BOM1.0-PCB1.1-ASM1.0-SUP01-QC1.1-PKG1.0|BOM1.0|ASM1.0|SUP01|QC1.1|Artibird Act-E Single Pack|PKG1.0|TBD|
|ATB-SNS-G1-GL-BLE-BAT-STD-S|MFG-SNS-G1-CLM-BOM1.0-PCB1.0-ASM1.0-SUP02-QC1.0-PKG1.0|BOM1.0|ASM1.0|SUP02|QC1.0|Artibird Sense Climate Single Pack|PKG1.0|TBD|
|ATB-VIS-G1-US-WF-DC-CAM-S|MFG-VIS-G1-EDGE-BOM1.0-PCB1.0-ASM1.0-SUP01-QC1.0-PKG1.0|BOM1.0|ASM1.0|SUP01|QC1.0|Artibird Vision Edge Single Pack|PKG1.0|TBD|
|ATB-APP-G1-GL-CLD-NA-STD-NA|N/A|N/A|N/A|N/A|N/A|App Service Record|N/A|N/A|
|ATB-CLD-G1-US-CLD-NA-STD-NA|N/A|N/A|N/A|N/A|N/A|Cloud Service Record|N/A|N/A|
|ATB-EDGE-G1-US-ETH-DC-PRO-S|MFG-EDGE-G1-BOM1.0-PCB1.0-ASM1.0-SUP01-QC1.0-PKG1.0|BOM1.0|ASM1.0|SUP01|QC1.0|OceanAI Edge Pro Single Pack|PKG1.0|TBD|

### ZH-TW

|SKU 代碼|生產型號|BOM|ASM|供應商|QC|包裝型號名稱|PKG|條碼 / FNSKU|
|---|---|---|---|---|---|---|---|---|
|ATB-HUB-G1-US-ETH-DC-STD-S|MFG-HUB-G1-BOM1.0-PCB1.0-ASM1.0-SUP01-QC1.0-PKG1.0|BOM1.0|ASM1.0|SUP01|QC1.0|Artibird Hub G1 Single Pack|PKG1.0|TBD|
|ATB-GATE-G1-US-HYB-USB-PRO-S|MFG-GATE-G1-PRO-BOM1.0-PCB1.0-ASM1.0-SUP01-QC1.0-PKG1.0|BOM1.0|ASM1.0|SUP01|QC1.0|Artibird Gate Pro Single Pack|PKG1.0|TBD|
|ATB-SYNC-G1-GL-IRRF-USB-STD-S|MFG-SYNC-G1-IRRF-BOM1.0-PCB1.1-ASM1.0-SUP01-QC1.0-PKG1.0|BOM1.0|ASM1.0|SUP01|QC1.0|Artibird Sync IR/RF Single Pack|PKG1.0|TBD|
|ATB-SW-G1-US-BLE-BAT-SCN-S|MFG-SW-G1-SCN-BOM1.0-PCB1.0-ASM1.0-SUP02-QC1.0-PKG1.0|BOM1.0|ASM1.0|SUP02|QC1.0|Artibird Switch Scene Single Pack|PKG1.0|TBD|
|ATB-SW-G1-US-WF-ZN-RLY-S|MFG-SW-G1-RLY-BOM1.0-PCB1.1-ASM1.0-SUP02-QC1.1-PKG1.0|BOM1.0|ASM1.0|SUP02|QC1.1|Artibird Switch Relay Single Pack|PKG1.0|TBD|
|ATB-PNL-G1-US-WF-DC-STD-S|MFG-PNL-G1-ROOM-BOM1.0-PCB1.0-ASM1.0-SUP01-QC1.0-PKG1.0|BOM1.0|ASM1.0|SUP01|QC1.0|Artibird Panel Room Single Pack|PKG1.0|TBD|
|ATB-ACT-G1-US-WF-AC-STD-S|MFG-ACT-G1-STD-BOM1.0-PCB1.0-ASM1.0-SUP01-QC1.0-PKG1.0|BOM1.0|ASM1.0|SUP01|QC1.0|Artibird Act Single Pack|PKG1.0|TBD|
|ATB-ACT-G1-US-WF-AC-E-S|MFG-ACT-G1-E-BOM1.0-PCB1.1-ASM1.0-SUP01-QC1.1-PKG1.0|BOM1.0|ASM1.0|SUP01|QC1.1|Artibird Act-E Single Pack|PKG1.0|TBD|
|ATB-SNS-G1-GL-BLE-BAT-STD-S|MFG-SNS-G1-CLM-BOM1.0-PCB1.0-ASM1.0-SUP02-QC1.0-PKG1.0|BOM1.0|ASM1.0|SUP02|QC1.0|Artibird Sense Climate Single Pack|PKG1.0|TBD|
|ATB-VIS-G1-US-WF-DC-CAM-S|MFG-VIS-G1-EDGE-BOM1.0-PCB1.0-ASM1.0-SUP01-QC1.0-PKG1.0|BOM1.0|ASM1.0|SUP01|QC1.0|Artibird Vision Edge Single Pack|PKG1.0|TBD|
|ATB-APP-G1-GL-CLD-NA-STD-NA|N/A|N/A|N/A|N/A|N/A|App Service Record|N/A|N/A|
|ATB-CLD-G1-US-CLD-NA-STD-NA|N/A|N/A|N/A|N/A|N/A|Cloud Service Record|N/A|N/A|
|ATB-EDGE-G1-US-ETH-DC-PRO-S|MFG-EDGE-G1-BOM1.0-PCB1.0-ASM1.0-SUP01-QC1.0-PKG1.0|BOM1.0|ASM1.0|SUP01|QC1.0|OceanAI Edge Pro Single Pack|PKG1.0|TBD|

---

## 25.7 Commercial and Governance Master Table

## 25.7 商業與治理主表示例

### EN

|SKU Code|Release Status|Channel|Market|Pricing Ref.|Approval Status|Owner|Claim Boundary Notes|
|---|---|---|---|---|---|---|---|
|ATB-HUB-G1-US-ETH-DC-STD-S|DVT / Preparing|Website / Project|US|PRICE-HUB-US-001|Pending Review|Product / Ops|Local runtime center may be described; no certification claim until approved|
|ATB-GATE-G1-US-HYB-USB-PRO-S|DVT / Preparing|Website / Project / Channel|US|PRICE-GATE-US-001|Pending Review|Product / Ops|Hybrid connectivity must list validated paths|
|ATB-SYNC-G1-GL-IRRF-USB-STD-S|DVT / Preparing|Website / Amazon Planning|GL / US Review|PRICE-SYNC-GL-001|Pending Review|Product / Ops|IR/RF capability may be described only within validated protocol scope|
|ATB-SW-G1-US-BLE-BAT-SCN-S|EVT|Internal / Pilot Planning|US|PRICE-SW-US-001|Draft|Product / Eng|Scene switch is event-only; no load-control claim|
|ATB-SW-G1-US-WF-ZN-RLY-S|DVT / Preparing|Website / Project|US|PRICE-SW-US-002|Pending Review|Product / Ops|Relay control may be described; load rating requires validation|
|ATB-PNL-G1-US-WF-DC-STD-S|DVT / Preparing|Website / Project|US|PRICE-PNL-US-001|Pending Review|Product / Ops|Room interface may be described; avoid unsupported display or AI claims|
|ATB-ACT-G1-US-WF-AC-STD-S|DVT / Preparing|Website / Project|US|PRICE-ACT-US-000|Pending Review|Product / Ops|Electrical execution may be described; no energy claim|
|ATB-ACT-G1-US-WF-AC-E-S|DVT / Preparing|Website / Project Planning|US|PRICE-ACT-US-001|Pending Review|Product / Ops|Energy monitoring may be described only after validation; no savings claim without data|
|ATB-SNS-G1-GL-BLE-BAT-STD-S|EVT|Internal / Pilot Planning|GL / US Review|PRICE-SNS-GL-001|Draft|Product / Eng|Environmental sensing may be described; sensor accuracy requires validation|
|ATB-VIS-G1-US-WF-DC-CAM-S|DVT / Preparing|Website / Project|US|PRICE-VIS-US-001|Pending Review|Product / Ops|Vision capability requires privacy and camera claim review|
|ATB-APP-G1-GL-CLD-NA-STD-NA|Released / Service Record|App Store / Google Play|GL|PRICE-APP-GL-001|Approved Internal|Product / Software|App functions must match released software capability|
|ATB-CLD-G1-US-CLD-NA-STD-NA|Service Planning|Subscription / Project|US|PRICE-CLD-US-001|Pending Review|Product / Cloud|Cloud service claims must match service tier and privacy policy|
|ATB-EDGE-G1-US-ETH-DC-PRO-S|PVT / Preparing|Project / Professional Channel|US|PRICE-EDGE-US-001|Pending Review|Product / Ops|Edge AI claims must match deployed model capability and privacy boundary|

### ZH-TW

|SKU 代碼|發布狀態|渠道|市場|定價引用|核准狀態|負責人|宣稱邊界備註|
|---|---|---|---|---|---|---|---|
|ATB-HUB-G1-US-ETH-DC-STD-S|DVT / Preparing|Website / Project|US|PRICE-HUB-US-001|Pending Review|Product / Ops|可描述本地 Runtime 中樞；核准前不得宣稱認證|
|ATB-GATE-G1-US-HYB-USB-PRO-S|DVT / Preparing|Website / Project / Channel|US|PRICE-GATE-US-001|Pending Review|Product / Ops|混合連接必須列出已驗證通訊路徑|
|ATB-SYNC-G1-GL-IRRF-USB-STD-S|DVT / Preparing|Website / Amazon Planning|GL / US Review|PRICE-SYNC-GL-001|Pending Review|Product / Ops|IR/RF 能力僅可在已驗證協議範圍內描述|
|ATB-SW-G1-US-BLE-BAT-SCN-S|EVT|Internal / Pilot Planning|US|PRICE-SW-US-001|Draft|Product / Eng|場景開關為 event-only；不得宣稱負載控制|
|ATB-SW-G1-US-WF-ZN-RLY-S|DVT / Preparing|Website / Project|US|PRICE-SW-US-002|Pending Review|Product / Ops|可描述繼電器控制；負載額定需完成驗證|
|ATB-PNL-G1-US-WF-DC-STD-S|DVT / Preparing|Website / Project|US|PRICE-PNL-US-001|Pending Review|Product / Ops|可描述房間介面；避免未支援顯示或 AI 宣稱|
|ATB-ACT-G1-US-WF-AC-STD-S|DVT / Preparing|Website / Project|US|PRICE-ACT-US-000|Pending Review|Product / Ops|可描述電力執行；不得宣稱能源能力|
|ATB-ACT-G1-US-WF-AC-E-S|DVT / Preparing|Website / Project Planning|US|PRICE-ACT-US-001|Pending Review|Product / Ops|僅在驗證後可描述電能監測；無數據不得宣稱節能|
|ATB-SNS-G1-GL-BLE-BAT-STD-S|EVT|Internal / Pilot Planning|GL / US Review|PRICE-SNS-GL-001|Draft|Product / Eng|可描述環境感知；感測精度需驗證|
|ATB-VIS-G1-US-WF-DC-CAM-S|DVT / Preparing|Website / Project|US|PRICE-VIS-US-001|Pending Review|Product / Ops|視覺能力需進行隱私與攝影機宣稱審查|
|ATB-APP-G1-GL-CLD-NA-STD-NA|Released / Service Record|App Store / Google Play|GL|PRICE-APP-GL-001|Approved Internal|Product / Software|App 功能必須匹配已發布軟體能力|
|ATB-CLD-G1-US-CLD-NA-STD-NA|Service Planning|Subscription / Project|US|PRICE-CLD-US-001|Pending Review|Product / Cloud|雲端服務宣稱必須匹配服務層級與隱私政策|
|ATB-EDGE-G1-US-ETH-DC-PRO-S|PVT / Preparing|Project / Professional Channel|US|PRICE-EDGE-US-001|Pending Review|Product / Ops|Edge AI 宣稱必須匹配已部署模型能力與隱私邊界|

---

## 25.8 Package-Level SKU Examples

## 25.8 包裝級 SKU 示例

### EN

|Package Model Name|Package SKU|Package Code|Included Product SKUs|Release Status|
|---|---|--:|---|---|
|Artibird Smart Room Starter Kit|ATB-KIT-G1-US-HYB-NA-STD-KIT|KIT|HUB SKU, SW SKU, ACT SKU, SNS SKU, APP record|Planning|
|Artibird Classroom Control Kit|ATB-KIT-G1-US-HYB-NA-EDU-EDU|EDU|HUB SKU, PNL SKU, SW SKU, SYNC SKU, ACT SKU, SNS SKU|Planning|
|Artibird Energy Starter Kit|ATB-KIT-G1-US-HYB-NA-E-KIT|KIT|HUB SKU, ACT-E SKU, SNS SKU, CLD service record|Planning|
|Artibird Gate Pro Kit|ATB-GATE-G1-US-HYB-USB-PRO-PROKIT|PROKIT|GATE SKU, adapter record, accessories|Planning|
|Artibird Demo Kit|ATB-KIT-G1-US-HYB-NA-STD-DEMO|DEMO|Selected demo product SKUs|Internal Demo|

### ZH-TW

|包裝型號名稱|包裝 SKU|包裝代碼|內含產品 SKU|發布狀態|
|---|---|--:|---|---|
|Artibird Smart Room Starter Kit|ATB-KIT-G1-US-HYB-NA-STD-KIT|KIT|HUB SKU、SW SKU、ACT SKU、SNS SKU、APP 記錄|Planning|
|Artibird Classroom Control Kit|ATB-KIT-G1-US-HYB-NA-EDU-EDU|EDU|HUB SKU、PNL SKU、SW SKU、SYNC SKU、ACT SKU、SNS SKU|Planning|
|Artibird Energy Starter Kit|ATB-KIT-G1-US-HYB-NA-E-KIT|KIT|HUB SKU、ACT-E SKU、SNS SKU、CLD 服務記錄|Planning|
|Artibird Gate Pro Kit|ATB-GATE-G1-US-HYB-USB-PRO-PROKIT|PROKIT|GATE SKU、適配器記錄、配件|Planning|
|Artibird Demo Kit|ATB-KIT-G1-US-HYB-NA-STD-DEMO|DEMO|特定展示產品 SKU|Internal Demo|

---

## 25.9 Example Interpretation — Artibird Act-E

## 25.9 示例解讀 — Artibird Act-E

### EN

The SKU:

```text
ATB-ACT-G1-US-WF-AC-E-S
```

means:

|Field|Value|Meaning|
|---|---|---|
|Brand|ATB|Artibird|
|Product|ACT|Artibird Act|
|Generation|G1|First generation|
|Region|US|United States market|
|Connectivity|WF|Wi-Fi|
|Power|AC|AC mains powered|
|Variant|E|Energy-aware version|
|Package|S|Single unit|

This SKU maps to:

|Identifier|Value|
|---|---|
|Customer-Facing Name|Artibird Act-E|
|Internal Model|ACT-G1-E|
|Engineering Model|ACT-G1-E-HW1.0-FW1.2-PCB1.1-DVT|
|Certification Model|ACT-G1-E|
|Manufacturing Model|MFG-ACT-G1-E-BOM1.0-PCB1.1-ASM1.0-SUP01-QC1.1-PKG1.0|
|Package Model Name|Artibird Act-E Single Pack|

### ZH-TW

SKU：

```text
ATB-ACT-G1-US-WF-AC-E-S
```

表示：

|欄位|數值|含義|
|---|---|---|
|品牌|ATB|Artibird|
|產品|ACT|Artibird Act|
|世代|G1|第一代|
|區域|US|美國市場|
|連接|WF|Wi-Fi|
|供電|AC|AC 市電供電|
|版本|E|能源感知版本|
|包裝|S|單品|

此 SKU 映射至：

|識別碼|數值|
|---|---|
|面向客戶名稱|Artibird Act-E|
|內部型號|ACT-G1-E|
|工程型號|ACT-G1-E-HW1.0-FW1.2-PCB1.1-DVT|
|認證型號|ACT-G1-E|
|生產型號|MFG-ACT-G1-E-BOM1.0-PCB1.1-ASM1.0-SUP01-QC1.1-PKG1.0|
|包裝型號名稱|Artibird Act-E Single Pack|

---

## 25.10 Example Interpretation — Artibird Switch Scene

## 25.10 示例解讀 — Artibird Switch Scene

### EN

The SKU:

```text
ATB-SW-G1-US-BLE-BAT-SCN-S
```

means:

|Field|Value|Meaning|
|---|---|---|
|Brand|ATB|Artibird|
|Product|SW|Artibird Switch|
|Generation|G1|First generation|
|Region|US|United States market|
|Connectivity|BLE|BLE / BLE Mesh|
|Power|BAT|Battery powered|
|Variant|SCN|Scene switch / event-only version|
|Package|S|Single unit|

This SKU must not be described as a load-control relay switch unless the variant changes and the hardware supports relay output.

### ZH-TW

SKU：

```text
ATB-SW-G1-US-BLE-BAT-SCN-S
```

表示：

|欄位|數值|含義|
|---|---|---|
|品牌|ATB|Artibird|
|產品|SW|Artibird Switch|
|世代|G1|第一代|
|區域|US|美國市場|
|連接|BLE|BLE / BLE Mesh|
|供電|BAT|電池供電|
|版本|SCN|場景開關 / event-only 版本|
|包裝|S|單品|

除非版本變更且硬體支援繼電器輸出，否則此 SKU 不得被描述為負載控制繼電器開關。

---

## 25.11 Example Interpretation — Artibird Gate Pro

## 25.11 示例解讀 — Artibird Gate Pro

### EN

The SKU:

```text
ATB-GATE-G1-US-HYB-USB-PRO-S
```

means:

|Field|Value|Meaning|
|---|---|---|
|Brand|ATB|Artibird|
|Product|GATE|Artibird Gate|
|Generation|G1|First generation|
|Region|US|United States market|
|Connectivity|HYB|Hybrid communication|
|Power|USB|USB / USB-C powered|
|Variant|PRO|Professional version|
|Package|S|Single unit|

The HYB field must be supported by a master table note listing the actual validated communication paths, such as Wi-Fi, Ethernet, BLE Mesh, or other supported gateway behavior.

### ZH-TW

SKU：

```text
ATB-GATE-G1-US-HYB-USB-PRO-S
```

表示：

|欄位|數值|含義|
|---|---|---|
|品牌|ATB|Artibird|
|產品|GATE|Artibird Gate|
|世代|G1|第一代|
|區域|US|美國市場|
|連接|HYB|混合通訊|
|供電|USB|USB / USB-C 供電|
|版本|PRO|專業版|
|包裝|S|單品|

HYB 欄位必須由主表備註支持，並列出實際已驗證通訊路徑，例如 Wi-Fi、Ethernet、BLE Mesh 或其他受支援網關行為。

---

## 25.12 Example Table Usage Rules

## 25.12 示例表使用規則

### EN

|Rule|Requirement|
|---|---|
|Treat example rows as planning records|Do not treat them as released SKUs unless approved|
|Replace TBD fields before release|Released records must not contain unresolved TBD fields|
|Confirm hardware reality|SKU examples must match actual engineering configuration|
|Confirm certification scope|Certification status must be verified before public claim|
|Confirm package content|Package-level SKUs must list included products|
|Confirm channel readiness|Amazon, website, distributor, and project channels require approval|
|Confirm claim boundary|Every SKU must define what may and may not be claimed|
|Update owner and revision fields|Every approved record needs accountable ownership|
|Do not delete retired rows|Use Deprecated, Discontinued, or Archived status|
|Do not reuse old SKU codes|Historical traceability must be protected|

### ZH-TW

|規則|要求|
|---|---|
|將示例列視為規劃記錄|未經核准不得視為已發布 SKU|
|發布前替換 TBD 欄位|已發布記錄不得包含未解決 TBD 欄位|
|確認硬體真實性|SKU 示例必須匹配實際工程配置|
|確認認證範圍|公開宣稱前必須驗證認證狀態|
|確認包裝內容|包裝級 SKU 必須列出內含產品|
|確認渠道就緒|Amazon、網站、分銷與專案渠道都需要核准|
|確認宣稱邊界|每個 SKU 必須定義可宣稱與不可宣稱內容|
|更新負責人與修訂欄位|每筆已核准記錄都需要責任歸屬|
|不刪除退市記錄|使用 Deprecated、Discontinued 或 Archived 狀態|
|不重用舊 SKU 代碼|必須保護歷史可追蹤性|

---

## 25.13 Chapter Conclusion

## 25.13 本章結論

### EN

The SKU master table example demonstrates how Artibird product identity, technical configuration, certification mapping, manufacturing control, package configuration, commercial channel, release status, and governance records are connected.

A complete SKU master table is not merely an inventory list. It is the operational backbone of product identity control. It allows Artibird to manage product planning, engineering validation, certification preparation, manufacturing, packaging, Amazon listing, channel release, commercial sales, support, retirement, and archival through one controlled structure.

### ZH-TW

SKU 主表示例展示了 Artibird 產品身份、技術配置、認證映射、生產管控、包裝配置、商業渠道、發布狀態與治理記錄如何被連接起來。

完整的 SKU 主表不只是庫存清單。它是產品身份管控的運營骨架。它讓 Artibird 能夠透過一套受控結構，管理產品規劃、工程驗證、認證準備、生產、包裝、Amazon 上架、渠道發布、商業銷售、支持、退市與歸檔。

---

**話題延伸｜互動建議**  
下一章可以繼續寫 **Chapter 26 — Product Line Master Table｜第二十六章｜產品線主表**，把 Hub、Gate、Sync、Switch、Panel、Act、Sense、Vision、App、Cloud、Edge 的產品線代碼、系統角色、對外名稱、內部型號前綴、可用版本與命名限制整理成一張產品線級主表。