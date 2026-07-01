# Artibird SKU & Model Naming Specification v1.0

# Artibird SKU 與型號命名規範 v1.0

## Chapter 35 — Document Relationship and Record Index

## 第三十五章｜文件關聯與記錄索引

---

## 35.1 Purpose

## 35.1 目的

### EN

This chapter defines the Document Relationship and Record Index used to connect all controlled documents, master tables, model records, SKU records, compliance records, lifecycle records, and change records within the Artibird SKU and model naming system.

The purpose of this chapter is to ensure that every SKU can be traced across product identity, product line definition, engineering configuration, certification mapping, manufacturing control, packaging control, commercial release, support boundary, lifecycle status, and change history.

A SKU should never exist as an isolated code. It must be connected to a complete record structure.

### ZH-TW

本章定義文件關聯與記錄索引，用於連接 Artibird SKU 與型號命名系統中的所有受控文件、主表、型號記錄、SKU 記錄、合規記錄、生命週期記錄與變更記錄。

本章目的，是確保每一個 SKU 都能跨越產品身份、產品線定義、工程配置、認證映射、生產管控、包裝管控、商業發布、支持邊界、生命週期狀態與變更歷史被追蹤。

SKU 不應作為孤立代碼存在。它必須連接至完整的記錄結構。

---

## 35.2 Document Relationship Principle

## 35.2 文件關聯原則

### EN

The core principle of document relationship control is:

```text
One SKU = one connected record network.
```

Each SKU should be traceable through the following relationship chain:

```text
Product Line
→ SKU Master Record
→ Internal Model
→ Engineering Model
→ Certification Model
→ Manufacturing Model
→ Package Model
→ Compliance Mapping
→ Lifecycle Record
→ Change Log
→ Commercial / Support Record
```

This structure allows Artibird to control not only what a product is called, but also how it is engineered, certified, manufactured, packaged, released, supported, revised, and archived.

### ZH-TW

文件關聯管控的核心原則是：

```text
一個 SKU = 一個互相關聯的記錄網路。
```

每一個 SKU 都應能透過以下關係鏈被追蹤：

```text
產品線
→ SKU 主記錄
→ 內部型號
→ 工程型號
→ 認證型號
→ 生產型號
→ 包裝型號
→ 合規映射
→ 生命週期記錄
→ 變更記錄
→ 商業 / 支持記錄
```

此結構讓 Artibird 不只管控產品叫什麼，也管控產品如何被工程化、認證、生產、包裝、發布、支持、修訂與歸檔。

---

## 35.3 Controlled Document Types

## 35.3 受控文件類型

### EN

|Document Type|Purpose|
|---|---|
|Product Line Master Table|Defines approved product families and system-layer record types|
|SKU Master Table|Defines sellable, deployable, service, or package-level SKU identity|
|Internal Model Record|Defines internal product identity used by product and engineering teams|
|Engineering Model Record|Defines HW, FW, PCB, BOM, and validation-stage configuration|
|Certification Model Record|Defines model identity used for certification, reports, labels, and regulatory files|
|Manufacturing Model Record|Defines BOM, assembly, supplier, QC, production, and packaging control|
|Package Record|Defines package model name, package code, barcode, FNSKU, and included products|
|Region Master Table|Defines market, language, electrical, and compliance boundary|
|Connectivity Master Table|Defines communication and access method boundary|
|Power Architecture Master Table|Defines electrical power, installation, and safety boundary|
|Variant Master Table|Defines functional, commercial, and deployment-specific differences|
|Compliance Mapping Table|Defines applicable compliance frameworks, review requirements, and claim limits|
|Lifecycle Record|Defines development, validation, release, retirement, and archival status|
|Change Log|Defines controlled changes, approvals, evidence, and implementation status|
|Commercial Release Record|Defines sales channel, market availability, price reference, and release scope|
|Support Record|Defines warranty, service, replacement, support boundary, and end-of-life handling|

### ZH-TW

|文件類型|用途|
|---|---|
|產品線主表|定義已核准產品家族與系統層記錄類型|
|SKU 主表|定義可銷售、可部署、服務或包裝級 SKU 身份|
|內部型號記錄|定義產品與工程團隊使用的內部產品身份|
|工程型號記錄|定義 HW、FW、PCB、BOM 與驗證階段配置|
|認證型號記錄|定義用於認證、報告、標籤與法規文件的型號身份|
|生產型號記錄|定義 BOM、組裝、供應商、QC、生產與包裝管控|
|包裝記錄|定義包裝型號名稱、包裝代碼、條碼、FNSKU 與內含產品|
|區域主表|定義市場、語言、電氣與合規邊界|
|連接方式主表|定義通訊與接入方式邊界|
|供電架構主表|定義電氣供電、安裝與安全邊界|
|版本主表|定義功能、商業與部署特定差異|
|合規映射表|定義適用合規框架、審查要求與宣稱限制|
|生命週期記錄|定義開發、驗證、發布、退市與歸檔狀態|
|變更記錄|定義受控變更、核准、證據與實施狀態|
|商業發布記錄|定義銷售渠道、市場可用性、價格引用與發布範圍|
|支持記錄|定義保固、服務、替代、支持邊界與生命週期結束處理|

---

## 35.4 Master Relationship Map

## 35.4 主關聯圖

### EN

|Source Record|Must Link To|Purpose|
|---|---|---|
|Product Line Master Table|SKU Master Table|Ensures SKU uses approved product line|
|SKU Master Table|Internal Model Record|Connects commercial SKU to internal identity|
|Internal Model Record|Engineering Model Record|Connects product identity to technical configuration|
|Engineering Model Record|Certification Model Record|Connects technical configuration to certification scope|
|Engineering Model Record|Manufacturing Model Record|Connects validated design to production control|
|Certification Model Record|Compliance Mapping Table|Connects certification identity to compliance frameworks|
|Manufacturing Model Record|Package Record|Connects production configuration to package output|
|Package Record|Barcode / FNSKU Record|Connects physical package to sales and logistics identity|
|SKU Master Table|Lifecycle Record|Connects SKU to development and release status|
|SKU Master Table|Change Log|Connects SKU to revision and audit history|
|Compliance Mapping Table|Claim Boundary Record|Controls public statements and marketplace claims|
|Lifecycle Record|Commercial Release Record|Controls whether the SKU may be sold or deployed|
|Commercial Release Record|Support Record|Defines post-release support boundary|
|Discontinued Record|Archived Record|Preserves historical traceability|

### ZH-TW

|來源記錄|必須連接至|用途|
|---|---|---|
|產品線主表|SKU 主表|確保 SKU 使用已核准產品線|
|SKU 主表|內部型號記錄|將商業 SKU 連接至內部身份|
|內部型號記錄|工程型號記錄|將產品身份連接至技術配置|
|工程型號記錄|認證型號記錄|將技術配置連接至認證範圍|
|工程型號記錄|生產型號記錄|將已驗證設計連接至生產管控|
|認證型號記錄|合規映射表|將認證身份連接至合規框架|
|生產型號記錄|包裝記錄|將生產配置連接至包裝輸出|
|包裝記錄|條碼 / FNSKU 記錄|將實體包裝連接至銷售與物流身份|
|SKU 主表|生命週期記錄|將 SKU 連接至開發與發布狀態|
|SKU 主表|變更記錄|將 SKU 連接至版本與稽核歷史|
|合規映射表|宣稱邊界記錄|管控公開說法與 marketplace 宣稱|
|生命週期記錄|商業發布記錄|管控 SKU 是否可銷售或部署|
|商業發布記錄|支持記錄|定義發布後支持邊界|
|停產記錄|歸檔記錄|保留歷史可追蹤性|

---

## 35.5 Record ID Naming System

## 35.5 記錄 ID 命名系統

### EN

Each controlled record should have a unique record ID.

|Record Type|ID Format|Example|
|---|---|---|
|Product Line Record|PL-[PRODUCT]-[SEQ]|PL-ACT-001|
|SKU Master Record|SKU-[PRODUCT]-[REGION]-[SEQ]|SKU-ACT-US-001|
|Internal Model Record|IM-[MODEL]-[SEQ]|IM-ACT-G1-E-001|
|Engineering Model Record|ENG-[MODEL]-[SEQ]|ENG-ACT-G1-E-001|
|Certification Model Record|CERT-[MODEL]-[REGION]-[SEQ]|CERT-ACT-G1-E-US-001|
|Manufacturing Model Record|MFG-[MODEL]-[SEQ]|MFG-ACT-G1-E-001|
|Package Record|PKG-[MODEL]-[PACKAGE]-[SEQ]|PKG-ACT-G1-E-S-001|
|Compliance Mapping Record|CMP-[MODEL]-[REGION]-[SEQ]|CMP-ACT-G1-E-US-001|
|Lifecycle Record|LC-[MODEL]-[REGION]-[SEQ]|LC-ACT-G1-E-US-001|
|Change Log Record|CR-[TYPE]-[SCOPE]-[SEQ]|CR-SKU-ACT-001|
|Commercial Release Record|REL-[MODEL]-[REGION]-[SEQ]|REL-ACT-G1-E-US-001|
|Support Record|SUP-[MODEL]-[REGION]-[SEQ]|SUP-ACT-G1-E-US-001|
|Archive Record|ARC-[MODEL]-[SEQ]|ARC-ACT-G1-E-001|

### ZH-TW

每一個受控記錄都應具有唯一記錄 ID。

|記錄類型|ID 格式|示例|
|---|---|---|
|產品線記錄|PL-[產品]-[序號]|PL-ACT-001|
|SKU 主記錄|SKU-[產品]-[區域]-[序號]|SKU-ACT-US-001|
|內部型號記錄|IM-[型號]-[序號]|IM-ACT-G1-E-001|
|工程型號記錄|ENG-[型號]-[序號]|ENG-ACT-G1-E-001|
|認證型號記錄|CERT-[型號]-[區域]-[序號]|CERT-ACT-G1-E-US-001|
|生產型號記錄|MFG-[型號]-[序號]|MFG-ACT-G1-E-001|
|包裝記錄|PKG-[型號]-[包裝]-[序號]|PKG-ACT-G1-E-S-001|
|合規映射記錄|CMP-[型號]-[區域]-[序號]|CMP-ACT-G1-E-US-001|
|生命週期記錄|LC-[型號]-[區域]-[序號]|LC-ACT-G1-E-US-001|
|變更記錄|CR-[類型]-[範圍]-[序號]|CR-SKU-ACT-001|
|商業發布記錄|REL-[型號]-[區域]-[序號]|REL-ACT-G1-E-US-001|
|支持記錄|SUP-[型號]-[區域]-[序號]|SUP-ACT-G1-E-US-001|
|歸檔記錄|ARC-[型號]-[序號]|ARC-ACT-G1-E-001|

---

## 35.6 SKU-to-Record Relationship Table

## 35.6 SKU 至記錄關聯表

### EN

|SKU Code|Required Linked Records|
|---|---|
|ATB-HUB-G1-US-ETH-DC-STD-S|PL-HUB, IM-HUB, ENG-HUB, CERT-HUB, MFG-HUB, PKG-HUB, CMP-HUB, LC-HUB, CR-HUB|
|ATB-GATE-G1-US-HYB-USB-PRO-S|PL-GATE, IM-GATE, ENG-GATE, CERT-GATE, MFG-GATE, PKG-GATE, CMP-GATE, LC-GATE, CR-GATE|
|ATB-SYNC-G1-GL-IRRF-USB-STD-S|PL-SYNC, IM-SYNC, ENG-SYNC, CERT-SYNC, MFG-SYNC, PKG-SYNC, CMP-SYNC, LC-SYNC, CR-SYNC|
|ATB-SW-G1-US-BLE-BAT-SCN-S|PL-SW, IM-SW, ENG-SW, CERT-SW, MFG-SW, PKG-SW, CMP-SW, LC-SW, CR-SW|
|ATB-SW-G1-US-WF-ZN-RLY-S|PL-SW, IM-SW, ENG-SW, CERT-SW, MFG-SW, PKG-SW, CMP-SW, LC-SW, CR-SW|
|ATB-PNL-G1-US-WF-DC-STD-S|PL-PNL, IM-PNL, ENG-PNL, CERT-PNL, MFG-PNL, PKG-PNL, CMP-PNL, LC-PNL, CR-PNL|
|ATB-ACT-G1-US-WF-AC-E-S|PL-ACT, IM-ACT, ENG-ACT, CERT-ACT, MFG-ACT, PKG-ACT, CMP-ACT, LC-ACT, CR-ACT|
|ATB-SNS-G1-GL-BLE-BAT-CLM-S|PL-SNS, IM-SNS, ENG-SNS, CERT-SNS, MFG-SNS, PKG-SNS, CMP-SNS, LC-SNS, CR-SNS|
|ATB-VIS-G1-US-WF-DC-CAM-S|PL-VIS, IM-VIS, ENG-VIS, CERT-VIS, MFG-VIS, PKG-VIS, CMP-VIS, LC-VIS, CR-VIS|
|ATB-APP-G1-GL-CLD-NA-STD-NA|PL-APP, IM-APP, APP-REL, CMP-APP, LC-APP, CR-APP|
|ATB-CLD-G1-US-CLD-NA-STD-NA|PL-CLD, IM-CLD, SERVICE-CLD, CMP-CLD, LC-CLD, CR-CLD|
|ATB-EDGE-G1-US-ETH-DC-PRO-S|PL-EDGE, IM-EDGE, ENG-EDGE, CERT-EDGE, MFG-EDGE, PKG-EDGE, CMP-EDGE, LC-EDGE, CR-EDGE|

### ZH-TW

|SKU 代碼|必要關聯記錄|
|---|---|
|ATB-HUB-G1-US-ETH-DC-STD-S|PL-HUB、IM-HUB、ENG-HUB、CERT-HUB、MFG-HUB、PKG-HUB、CMP-HUB、LC-HUB、CR-HUB|
|ATB-GATE-G1-US-HYB-USB-PRO-S|PL-GATE、IM-GATE、ENG-GATE、CERT-GATE、MFG-GATE、PKG-GATE、CMP-GATE、LC-GATE、CR-GATE|
|ATB-SYNC-G1-GL-IRRF-USB-STD-S|PL-SYNC、IM-SYNC、ENG-SYNC、CERT-SYNC、MFG-SYNC、PKG-SYNC、CMP-SYNC、LC-SYNC、CR-SYNC|
|ATB-SW-G1-US-BLE-BAT-SCN-S|PL-SW、IM-SW、ENG-SW、CERT-SW、MFG-SW、PKG-SW、CMP-SW、LC-SW、CR-SW|
|ATB-SW-G1-US-WF-ZN-RLY-S|PL-SW、IM-SW、ENG-SW、CERT-SW、MFG-SW、PKG-SW、CMP-SW、LC-SW、CR-SW|
|ATB-PNL-G1-US-WF-DC-STD-S|PL-PNL、IM-PNL、ENG-PNL、CERT-PNL、MFG-PNL、PKG-PNL、CMP-PNL、LC-PNL、CR-PNL|
|ATB-ACT-G1-US-WF-AC-E-S|PL-ACT、IM-ACT、ENG-ACT、CERT-ACT、MFG-ACT、PKG-ACT、CMP-ACT、LC-ACT、CR-ACT|
|ATB-SNS-G1-GL-BLE-BAT-CLM-S|PL-SNS、IM-SNS、ENG-SNS、CERT-SNS、MFG-SNS、PKG-SNS、CMP-SNS、LC-SNS、CR-SNS|
|ATB-VIS-G1-US-WF-DC-CAM-S|PL-VIS、IM-VIS、ENG-VIS、CERT-VIS、MFG-VIS、PKG-VIS、CMP-VIS、LC-VIS、CR-VIS|
|ATB-APP-G1-GL-CLD-NA-STD-NA|PL-APP、IM-APP、APP-REL、CMP-APP、LC-APP、CR-APP|
|ATB-CLD-G1-US-CLD-NA-STD-NA|PL-CLD、IM-CLD、SERVICE-CLD、CMP-CLD、LC-CLD、CR-CLD|
|ATB-EDGE-G1-US-ETH-DC-PRO-S|PL-EDGE、IM-EDGE、ENG-EDGE、CERT-EDGE、MFG-EDGE、PKG-EDGE、CMP-EDGE、LC-EDGE、CR-EDGE|

---

## 35.7 Engineering Record Relationship

## 35.7 工程記錄關聯

### EN

The engineering record links product identity to technical reality.

|Engineering Record Field|Must Align With|
|---|---|
|Engineering Model|Internal Model, SKU Master Record|
|HW Version|PCB version, BOM version, validation report|
|FW Version|Feature claims, app compatibility, test records|
|PCB Version|Certification sample, manufacturing model, BOM|
|BOM Version|Manufacturing record, supplier record, certification sample|
|EVT / DVT / PVT Stage|Lifecycle record|
|Test Reports|Compliance mapping and release gate|
|Design Issue Log|Change log and lifecycle movement|
|Product Claim Boundary|Compliance mapping and public copy review|

### ZH-TW

工程記錄將產品身份連接至技術現實。

|工程記錄欄位|必須對齊|
|---|---|
|工程型號|內部型號、SKU 主記錄|
|HW 版本|PCB 版本、BOM 版本、驗證報告|
|FW 版本|功能宣稱、App 相容性、測試記錄|
|PCB 版本|認證樣品、生產型號、BOM|
|BOM 版本|生產記錄、供應商記錄、認證樣品|
|EVT / DVT / PVT 階段|生命週期記錄|
|測試報告|合規映射與發布關卡|
|設計問題清單|變更記錄與生命週期推進|
|產品宣稱邊界|合規映射與公開文案審查|

---

## 35.8 Certification Record Relationship

## 35.8 認證記錄關聯

### EN

The certification record links engineering reality to regulatory evidence.

|Certification Record Field|Must Align With|
|---|---|
|Certification Model|Engineering model and label model|
|Region Code|Region master table|
|Applicable Framework|Compliance mapping table|
|Test Sample|Engineering model, BOM, PCB, FW version|
|Test Report|Compliance status and release gate|
|Certification Mark|Label and packaging record|
|Approved Claim Wording|Website, Amazon, catalog, manual|
|Certification Status|Lifecycle record and release record|
|Expiration / Supersession|Change log and archive record|

### ZH-TW

認證記錄將工程現實連接至法規證據。

|認證記錄欄位|必須對齊|
|---|---|
|認證型號|工程型號與標籤型號|
|區域代碼|區域主表|
|適用框架|合規映射表|
|測試樣品|工程型號、BOM、PCB、FW 版本|
|測試報告|合規狀態與發布關卡|
|認證標誌|標籤與包裝記錄|
|已核准宣稱文字|網站、Amazon、型錄、手冊|
|認證狀態|生命週期記錄與發布記錄|
|到期 / 被取代|變更記錄與歸檔記錄|

---

## 35.9 Manufacturing Record Relationship

## 35.9 生產記錄關聯

### EN

The manufacturing record links validated design to controlled production.

|Manufacturing Record Field|Must Align With|
|---|---|
|Manufacturing Model|Engineering model and SKU master record|
|BOM Version|Engineering BOM and supplier records|
|Assembly Version|Factory workflow and QC plan|
|Supplier Code|Approved supplier list|
|QC Plan|Engineering validation and compliance requirements|
|Production Lot Rule|Traceability and support record|
|Package Version|Package record|
|Manufacturing Status|Lifecycle record|
|Production Change|Change log|

### ZH-TW

生產記錄將已驗證設計連接至受控生產。

|生產記錄欄位|必須對齊|
|---|---|
|生產型號|工程型號與 SKU 主記錄|
|BOM 版本|工程 BOM 與供應商記錄|
|組裝版本|工廠流程與 QC 計劃|
|供應商代碼|已核准供應商清單|
|QC 計劃|工程驗證與合規要求|
|生產批次規則|可追蹤性與支持記錄|
|包裝版本|包裝記錄|
|生產狀態|生命週期記錄|
|生產變更|變更記錄|

---

## 35.10 Packaging Record Relationship

## 35.10 包裝記錄關聯

### EN

The packaging record links product identity to physical sales and logistics identity.

|Packaging Record Field|Must Align With|
|---|---|
|Package Model Name|SKU master record and customer-facing name|
|Package Code|Package code master table|
|Included Product List|SKU master table and kit mapping|
|Barcode / GTIN / UPC / EAN|Package record and commercial release record|
|FNSKU|Amazon FBA record|
|Package Artwork Version|Label, claims, certification marks, manual version|
|Manual Included|Documentation record|
|Safety Warning|Power architecture and compliance mapping|
|Region Language|Region master table|
|Package Status|Lifecycle and release record|

### ZH-TW

包裝記錄將產品身份連接至實體銷售與物流身份。

|包裝記錄欄位|必須對齊|
|---|---|
|包裝型號名稱|SKU 主記錄與面向客戶名稱|
|包裝代碼|包裝代碼主表|
|內含產品清單|SKU 主表與套組映射|
|條碼 / GTIN / UPC / EAN|包裝記錄與商業發布記錄|
|FNSKU|Amazon FBA 記錄|
|包裝 Artwork 版本|標籤、宣稱、認證標誌、手冊版本|
|內含手冊|文件記錄|
|安全警告|供電架構與合規映射|
|區域語言|區域主表|
|包裝狀態|生命週期與發布記錄|

---

## 35.11 Commercial and Support Record Relationship

## 35.11 商業與支持記錄關聯

### EN

Commercial and support records define how a SKU moves from internal readiness to market use and post-release support.

|Record Field|Must Align With|
|---|---|
|Release Scope|Lifecycle record and compliance mapping|
|Sales Channel|Region master and package record|
|Marketplace Status|Amazon record and compliance mapping|
|Price Reference|Commercial release record|
|Channel Availability|Region, package, and release status|
|Support Boundary|Product line, lifecycle, warranty, and replacement records|
|Replacement SKU|Deprecated or discontinued lifecycle record|
|Warranty Terms|Product category, region, commercial record|
|Support End Date|Discontinued and archive record|
|Customer Communication|Approved claims and documentation records|

### ZH-TW

商業與支持記錄定義 SKU 如何從內部準備度進入市場使用與發布後支持。

|記錄欄位|必須對齊|
|---|---|
|發布範圍|生命週期記錄與合規映射|
|銷售渠道|區域主表與包裝記錄|
|Marketplace 狀態|Amazon 記錄與合規映射|
|價格引用|商業發布記錄|
|渠道可用性|區域、包裝與發布狀態|
|支持邊界|產品線、生命週期、保固與替代記錄|
|替代 SKU|停用或停產生命週期記錄|
|保固條款|產品類別、區域、商業記錄|
|支持結束日期|停產與歸檔記錄|
|客戶溝通|已核准宣稱與文件記錄|

---

## 35.12 Document Dependency Matrix

## 35.12 文件依賴矩陣

### EN

|Document|Depends On|Cannot Be Finalized Until|
|---|---|---|
|SKU Master Table|Product line, region, connectivity, power, variant, package tables|All code fields are approved|
|Internal Model Record|Product line and SKU identity|Internal model prefix is approved|
|Engineering Model Record|Internal model and technical design|HW / FW / PCB / BOM are defined|
|Certification Model Record|Engineering model and region|Compliance framework is identified|
|Manufacturing Model Record|Engineering model and BOM|Production process and QC plan are defined|
|Package Record|SKU, package code, label, manual|Package content and barcode are defined|
|Compliance Mapping Table|SKU, engineering, region, power, connectivity, variant|Review requirements are identified|
|Lifecycle Record|SKU, engineering, certification, packaging, release scope|Current status evidence is available|
|Change Log|Any controlled record|Previous and new values are known|
|Commercial Release Record|SKU, compliance, package, lifecycle|Release gate is passed|
|Support Record|Commercial release and lifecycle|Support boundary is defined|

### ZH-TW

|文件|依賴於|完成前提|
|---|---|---|
|SKU 主表|產品線、區域、連接、供電、版本、包裝主表|所有代碼欄位已核准|
|內部型號記錄|產品線與 SKU 身份|內部型號前綴已核准|
|工程型號記錄|內部型號與技術設計|HW / FW / PCB / BOM 已定義|
|認證型號記錄|工程型號與區域|合規框架已識別|
|生產型號記錄|工程型號與 BOM|生產流程與 QC 計劃已定義|
|包裝記錄|SKU、包裝代碼、標籤、手冊|包裝內容與條碼已定義|
|合規映射表|SKU、工程、區域、供電、連接、版本|審查要求已識別|
|生命週期記錄|SKU、工程、認證、包裝、發布範圍|當前狀態證據可用|
|變更記錄|任一受控記錄|已知原值與新值|
|商業發布記錄|SKU、合規、包裝、生命週期|已通過發布關卡|
|支持記錄|商業發布與生命週期|支持邊界已定義|

---

## 35.13 Record Completeness Checklist

## 35.13 記錄完整性清單

### EN

|Check Item|Required?|
|---|--:|
|Product line record exists|Yes|
|SKU master record exists|Yes|
|Internal model record exists|Yes|
|Engineering model record exists for hardware products|Yes|
|Certification model record exists where applicable|Yes|
|Manufacturing model record exists for physical products|Yes|
|Package record exists for physical or commercial packages|Yes|
|Region record exists|Yes|
|Connectivity record exists|Yes|
|Power record exists|Yes|
|Variant record exists|Yes|
|Package code record exists|Yes|
|Compliance mapping exists|Yes|
|Lifecycle record exists|Yes|
|Change log reference exists where changes occurred|Yes|
|Commercial release record exists before sale|Yes|
|Support record exists before release|Yes|
|Archive record exists for retired records|Yes where applicable|

### ZH-TW

|檢查項目|是否必須？|
|---|--:|
|產品線記錄存在|是|
|SKU 主記錄存在|是|
|內部型號記錄存在|是|
|硬體產品存在工程型號記錄|是|
|適用時存在認證型號記錄|是|
|實體產品存在生產型號記錄|是|
|實體或商業包裝存在包裝記錄|是|
|區域記錄存在|是|
|連接方式記錄存在|是|
|供電記錄存在|是|
|版本記錄存在|是|
|包裝代碼記錄存在|是|
|合規映射存在|是|
|生命週期記錄存在|是|
|發生變更時存在變更記錄引用|是|
|銷售前存在商業發布記錄|是|
|發布前存在支持記錄|是|
|適用時退役記錄存在歸檔記錄|是|

---

## 35.14 Completed Example — Artibird Act-E Record Index

## 35.14 完整示例 — Artibird Act-E 記錄索引

### EN

|Record Type|Record ID|Example Value|
|---|---|---|
|Product Line Record|PL-ACT-001|Artibird Act|
|SKU Master Record|SKU-ACT-US-001|ATB-ACT-G1-US-WF-AC-E-S|
|Internal Model Record|IM-ACT-G1-E-001|ACT-G1-E|
|Engineering Model Record|ENG-ACT-G1-E-001|ACT-G1-E-HW1.0-FW1.2-PCB1.1-DVT|
|Certification Model Record|CERT-ACT-G1-E-US-001|ACT-G1-E|
|Manufacturing Model Record|MFG-ACT-G1-E-001|MFG-ACT-G1-E-BOM1.0-PCB1.1-ASM1.0-SUP01-QC1.1-PKG1.0|
|Package Record|PKG-ACT-G1-E-S-001|Artibird Act-E Single Pack|
|Compliance Mapping Record|CMP-ACT-G1-E-US-001|FCC / UL or ETL review where applicable|
|Lifecycle Record|LC-ACT-G1-E-US-001|DVT / CERT-PREP|
|Change Log Record|CR-SKU-ACT-001|Variant field correction and compliance review|
|Commercial Release Record|REL-ACT-G1-E-US-001|Pending|
|Support Record|SUP-ACT-G1-E-US-001|Internal only / not released|
|Archive Record|N/A|Not archived|

### ZH-TW

|記錄類型|記錄 ID|示例值|
|---|---|---|
|產品線記錄|PL-ACT-001|Artibird Act|
|SKU 主記錄|SKU-ACT-US-001|ATB-ACT-G1-US-WF-AC-E-S|
|內部型號記錄|IM-ACT-G1-E-001|ACT-G1-E|
|工程型號記錄|ENG-ACT-G1-E-001|ACT-G1-E-HW1.0-FW1.2-PCB1.1-DVT|
|認證型號記錄|CERT-ACT-G1-E-US-001|ACT-G1-E|
|生產型號記錄|MFG-ACT-G1-E-001|MFG-ACT-G1-E-BOM1.0-PCB1.1-ASM1.0-SUP01-QC1.1-PKG1.0|
|包裝記錄|PKG-ACT-G1-E-S-001|Artibird Act-E Single Pack|
|合規映射記錄|CMP-ACT-G1-E-US-001|適用時 FCC / UL 或 ETL 審查|
|生命週期記錄|LC-ACT-G1-E-US-001|DVT / CERT-PREP|
|變更記錄|CR-SKU-ACT-001|版本欄位修正與合規審查|
|商業發布記錄|REL-ACT-G1-E-US-001|Pending|
|支持記錄|SUP-ACT-G1-E-US-001|僅內部 / 未發布|
|歸檔記錄|N/A|未歸檔|

---

## 35.15 Completed Example — Artibird Switch Scene Record Index

## 35.15 完整示例 — Artibird Switch Scene 記錄索引

### EN

|Record Type|Record ID|Example Value|
|---|---|---|
|Product Line Record|PL-SW-001|Artibird Switch|
|SKU Master Record|SKU-SW-US-001|ATB-SW-G1-US-BLE-BAT-SCN-S|
|Internal Model Record|IM-SW-G1-SCN-001|SW-G1-SCN|
|Engineering Model Record|ENG-SW-G1-SCN-001|SW-G1-SCN-HW1.0-FW1.0-PCB1.0-EVT|
|Certification Model Record|CERT-SW-G1-SCN-US-001|SW-G1-SCN|
|Manufacturing Model Record|MFG-SW-G1-SCN-001|TBD|
|Package Record|PKG-SW-G1-SCN-S-001|Artibird Switch Scene Single Pack|
|Compliance Mapping Record|CMP-SW-SCN-US-001|FCC and battery review where applicable|
|Lifecycle Record|LC-SW-SCN-US-001|EVT|
|Change Log Record|CR-LC-SW-001|PROTO to EVT lifecycle movement|
|Commercial Release Record|REL-SW-SCN-US-001|Not released|
|Support Record|SUP-SW-SCN-US-001|Internal engineering only|
|Archive Record|N/A|Not archived|

### ZH-TW

|記錄類型|記錄 ID|示例值|
|---|---|---|
|產品線記錄|PL-SW-001|Artibird Switch|
|SKU 主記錄|SKU-SW-US-001|ATB-SW-G1-US-BLE-BAT-SCN-S|
|內部型號記錄|IM-SW-G1-SCN-001|SW-G1-SCN|
|工程型號記錄|ENG-SW-G1-SCN-001|SW-G1-SCN-HW1.0-FW1.0-PCB1.0-EVT|
|認證型號記錄|CERT-SW-G1-SCN-US-001|SW-G1-SCN|
|生產型號記錄|MFG-SW-G1-SCN-001|TBD|
|包裝記錄|PKG-SW-G1-SCN-S-001|Artibird Switch Scene Single Pack|
|合規映射記錄|CMP-SW-SCN-US-001|適用時 FCC 與電池審查|
|生命週期記錄|LC-SW-SCN-US-001|EVT|
|變更記錄|CR-LC-SW-001|PROTO 至 EVT 生命週期推進|
|商業發布記錄|REL-SW-SCN-US-001|未發布|
|支持記錄|SUP-SW-SCN-US-001|僅內部工程|
|歸檔記錄|N/A|未歸檔|

---

## 35.16 Completed Example — Artibird Gate Pro Record Index

## 35.16 完整示例 — Artibird Gate Pro 記錄索引

### EN

|Record Type|Record ID|Example Value|
|---|---|---|
|Product Line Record|PL-GATE-001|Artibird Gate|
|SKU Master Record|SKU-GATE-US-001|ATB-GATE-G1-US-HYB-USB-PRO-S|
|Internal Model Record|IM-GATE-G1-PRO-001|GATE-G1-PRO|
|Engineering Model Record|ENG-GATE-G1-PRO-001|GATE-G1-PRO-HW1.0-FW1.1-PCB1.0-DVT|
|Certification Model Record|CERT-GATE-G1-PRO-US-001|GATE-G1-PRO|
|Manufacturing Model Record|MFG-GATE-G1-PRO-001|MFG-GATE-G1-PRO-BOM1.0-PCB1.0-ASM1.0-SUP01-QC1.0-PKG1.0|
|Package Record|PKG-GATE-G1-PRO-S-001|Artibird Gate Pro Single Pack|
|Compliance Mapping Record|CMP-GATE-PRO-US-001|FCC and USB / adapter review where applicable|
|Lifecycle Record|LC-GATE-PRO-US-001|DVT / Preparing|
|Change Log Record|CR-ENG-GATE-001|Hybrid connectivity validation update|
|Commercial Release Record|REL-GATE-PRO-US-001|Pending|
|Support Record|SUP-GATE-PRO-US-001|Internal / project planning|
|Archive Record|N/A|Not archived|

### ZH-TW

|記錄類型|記錄 ID|示例值|
|---|---|---|
|產品線記錄|PL-GATE-001|Artibird Gate|
|SKU 主記錄|SKU-GATE-US-001|ATB-GATE-G1-US-HYB-USB-PRO-S|
|內部型號記錄|IM-GATE-G1-PRO-001|GATE-G1-PRO|
|工程型號記錄|ENG-GATE-G1-PRO-001|GATE-G1-PRO-HW1.0-FW1.1-PCB1.0-DVT|
|認證型號記錄|CERT-GATE-G1-PRO-US-001|GATE-G1-PRO|
|生產型號記錄|MFG-GATE-G1-PRO-001|MFG-GATE-G1-PRO-BOM1.0-PCB1.0-ASM1.0-SUP01-QC1.0-PKG1.0|
|包裝記錄|PKG-GATE-G1-PRO-S-001|Artibird Gate Pro Single Pack|
|合規映射記錄|CMP-GATE-PRO-US-001|適用時 FCC 與 USB / 適配器審查|
|生命週期記錄|LC-GATE-PRO-US-001|DVT / Preparing|
|變更記錄|CR-ENG-GATE-001|混合連接驗證更新|
|商業發布記錄|REL-GATE-PRO-US-001|Pending|
|支持記錄|SUP-GATE-PRO-US-001|內部 / 專案規劃|
|歸檔記錄|N/A|未歸檔|

---

## 35.17 Document Relationship Index Template

## 35.17 文件關聯索引模板

### EN

|Field|Entry|
|---|---|
|Relationship Index ID|TBD|
|SKU Code|TBD|
|Customer-Facing Name|TBD|
|Product Line Record ID|TBD|
|SKU Master Record ID|TBD|
|Internal Model Record ID|TBD|
|Engineering Model Record ID|TBD|
|Certification Model Record ID|TBD|
|Manufacturing Model Record ID|TBD|
|Package Record ID|TBD|
|Compliance Mapping Record ID|TBD|
|Lifecycle Record ID|TBD|
|Change Log IDs|TBD|
|Commercial Release Record ID|TBD|
|Support Record ID|TBD|
|Archive Record ID|TBD / N/A|
|Current Lifecycle Status|TBD|
|Current Release Scope|TBD|
|Current Compliance Status|TBD|
|Current Package Status|TBD|
|Current Revision|TBD|
|Record Owner|TBD|
|Last Review Date|TBD|
|Next Review Date|TBD|
|Notes|TBD|

### ZH-TW

|欄位|填寫|
|---|---|
|關聯索引 ID|TBD|
|SKU 代碼|TBD|
|面向客戶名稱|TBD|
|產品線記錄 ID|TBD|
|SKU 主記錄 ID|TBD|
|內部型號記錄 ID|TBD|
|工程型號記錄 ID|TBD|
|認證型號記錄 ID|TBD|
|生產型號記錄 ID|TBD|
|包裝記錄 ID|TBD|
|合規映射記錄 ID|TBD|
|生命週期記錄 ID|TBD|
|變更記錄 ID|TBD|
|商業發布記錄 ID|TBD|
|支持記錄 ID|TBD|
|歸檔記錄 ID|TBD / N/A|
|當前生命週期狀態|TBD|
|當前發布範圍|TBD|
|當前合規狀態|TBD|
|當前包裝狀態|TBD|
|當前修訂版本|TBD|
|記錄負責人|TBD|
|上次審查日期|TBD|
|下次審查日期|TBD|
|備註|TBD|

---

## 35.18 Relationship Integrity Rules

## 35.18 關聯完整性規則

### EN

|Rule|Requirement|
|---|---|
|No orphan SKU|Every SKU must link to a product line and lifecycle record|
|No orphan engineering model|Every engineering model must link to an internal model and SKU|
|No orphan certification model|Every certification model must link to engineering and compliance records|
|No orphan package record|Every package record must link to SKU and package code|
|No released SKU without compliance mapping|Public release requires compliance mapping|
|No released SKU without support boundary|Support must be defined before release|
|No package claim without package record|Package claims must match controlled package record|
|No certification claim without certification record|Certification wording must match approved record|
|No lifecycle movement without evidence|Status changes must link to evidence|
|No change without change log|Controlled fields must not change silently|
|No archive without snapshot|Archived records must preserve final state|

### ZH-TW

|規則|要求|
|---|---|
|不得存在孤立 SKU|每個 SKU 必須連接至產品線與生命週期記錄|
|不得存在孤立工程型號|每個工程型號必須連接至內部型號與 SKU|
|不得存在孤立認證型號|每個認證型號必須連接至工程與合規記錄|
|不得存在孤立包裝記錄|每個包裝記錄必須連接至 SKU 與包裝代碼|
|無合規映射不得發布 SKU|公開發布需要合規映射|
|無支持邊界不得發布 SKU|發布前必須定義支持|
|無包裝記錄不得使用包裝宣稱|包裝宣稱必須匹配受控包裝記錄|
|無認證記錄不得使用認證宣稱|認證文字必須匹配已核准記錄|
|無證據不得推進生命週期|狀態變更必須連接至證據|
|無變更記錄不得變更|受控欄位不得靜默變更|
|無快照不得歸檔|歸檔記錄必須保留最終狀態|

---

## 35.19 Audit Use of the Record Index

## 35.19 記錄索引的稽核用途

### EN

The Document Relationship and Record Index may be used for internal audit, external certification preparation, manufacturing review, marketplace review, support traceability, and lifecycle governance.

|Audit Scenario|Record Index Use|
|---|---|
|Certification audit|Trace SKU to engineering model, test sample, certification model, and label|
|Amazon compliance request|Trace SKU to package, barcode, FNSKU, certification proof, and claim boundary|
|Manufacturing issue|Trace SKU to BOM, supplier, assembly version, production lot, and QC plan|
|Customer support issue|Trace SKU to lifecycle status, support boundary, warranty, and replacement SKU|
|Field failure review|Trace SKU to engineering version, manufacturing batch, change log, and support records|
|Claim dispute|Trace public claim to compliance mapping, evidence, and approval|
|Product retirement|Trace active SKU to deprecated, discontinued, and archived records|
|Version conflict|Trace current revision and superseded change logs|
|Channel release review|Trace SKU to region, package, pricing, and release scope|
|Project deployment review|Trace SKU to project package, site scope, compliance, and support plan|

### ZH-TW

文件關聯與記錄索引可用於內部稽核、外部認證準備、生產審查、marketplace 審查、支持追蹤與生命週期治理。

|稽核場景|記錄索引用途|
|---|---|
|認證稽核|將 SKU 追蹤至工程型號、測試樣品、認證型號與標籤|
|Amazon 合規請求|將 SKU 追蹤至包裝、條碼、FNSKU、認證證明與宣稱邊界|
|生產問題|將 SKU 追蹤至 BOM、供應商、組裝版本、生產批次與 QC 計劃|
|客戶支持問題|將 SKU 追蹤至生命週期狀態、支持邊界、保固與替代 SKU|
|現場故障審查|將 SKU 追蹤至工程版本、生產批次、變更記錄與支持記錄|
|宣稱爭議|將公開宣稱追蹤至合規映射、證據與核准|
|產品退市|將有效 SKU 追蹤至停用、停產與歸檔記錄|
|版本衝突|追蹤當前修訂與被取代變更記錄|
|渠道發布審查|將 SKU 追蹤至區域、包裝、價格與發布範圍|
|專案部署審查|將 SKU 追蹤至專案包、場地範圍、合規與支持計劃|

---

## 35.20 Record Review Schedule

## 35.20 記錄審查週期

### EN

|Record Type|Recommended Review Frequency|
|---|---|
|Product Line Master Table|Quarterly or when new product line is added|
|SKU Master Table|Monthly during active development; quarterly after release|
|Engineering Model Record|At every EVT / DVT / PVT milestone|
|Certification Model Record|Before certification submission and before release|
|Manufacturing Model Record|Before pilot build and before mass production|
|Package Record|Before artwork approval, FBA preparation, and release|
|Compliance Mapping Table|Before release and after any claim or design change|
|Lifecycle Record|At every lifecycle stage movement|
|Change Log|At every controlled change|
|Commercial Release Record|Before website, Amazon, channel, or project release|
|Support Record|Before release and during deprecation / discontinuation|
|Archive Record|At discontinuation and final lifecycle closure|

### ZH-TW

|記錄類型|建議審查頻率|
|---|---|
|產品線主表|每季度，或新增產品線時|
|SKU 主表|開發活躍期每月；發布後每季度|
|工程型號記錄|每個 EVT / DVT / PVT 節點|
|認證型號記錄|認證提交前與發布前|
|生產型號記錄|試產前與量產前|
|包裝記錄|Artwork 核准、FBA 準備與發布前|
|合規映射表|發布前，以及任何宣稱或設計變更後|
|生命週期記錄|每次生命週期階段推進時|
|變更記錄|每次受控變更時|
|商業發布記錄|官網、Amazon、渠道或專案發布前|
|支持記錄|發布前，以及停用 / 停產期間|
|歸檔記錄|停產與最終生命週期關閉時|

---

## 35.21 Document Relationship Governance Rules

## 35.21 文件關聯治理規則

### EN

|Rule|Requirement|
|---|---|
|Every controlled record must have an owner|Ownership is required for review and updates|
|Every released SKU must have complete record links|Missing links block release|
|Every public claim must trace to evidence|Claims must connect to compliance or validation records|
|Every package must trace to included products|Kits and bundles require included SKU mapping|
|Every certification mark must trace to authorization|No mark without certification record|
|Every lifecycle movement must trace to evidence|No status advancement without supporting record|
|Every change must trace to change log|No silent update|
|Every discontinued SKU must trace to support plan|Customers and support teams need replacement guidance|
|Every archived record must preserve final snapshot|Historical identity must remain auditable|
|Every index must be reviewed before release|Relationship integrity is part of release control|

### ZH-TW

|規則|要求|
|---|---|
|每個受控記錄都必須有負責人|審查與更新需要責任歸屬|
|每個已發布 SKU 都必須有完整記錄連結|缺少連結會阻止發布|
|每個公開宣稱都必須追蹤至證據|宣稱必須連接至合規或驗證記錄|
|每個包裝都必須追蹤至內含產品|套組與組合包需要內含 SKU 映射|
|每個認證標誌都必須追蹤至授權|無認證記錄不得使用標誌|
|每次生命週期推進都必須追蹤至證據|無支持記錄不得推進狀態|
|每項變更都必須追蹤至變更記錄|不得靜默更新|
|每個停產 SKU 都必須追蹤至支持計劃|客戶與支持團隊需要替代指引|
|每個歸檔記錄都必須保留最終快照|歷史身份必須可稽核|
|每個索引都必須在發布前審查|關聯完整性是發布管控的一部分|

---

## 35.22 Spreadsheet Column Recommendation

## 35.22 表格欄位建議

### EN

For Excel, Google Sheets, Airtable, ERP staging tables, PLM systems, compliance trackers, or document-control systems, the following column order is recommended:

```text
Relationship Index ID
SKU Code
Customer-Facing Name
Product Line Record ID
SKU Master Record ID
Internal Model Record ID
Engineering Model Record ID
Certification Model Record ID
Manufacturing Model Record ID
Package Record ID
Compliance Mapping Record ID
Lifecycle Record ID
Change Log IDs
Commercial Release Record ID
Support Record ID
Archive Record ID
Current Lifecycle Status
Current Release Scope
Current Compliance Status
Current Package Status
Current Revision
Record Owner
Last Review Date
Next Review Date
Notes
```

### ZH-TW

對於 Excel、Google Sheets、Airtable、ERP 暫存表、PLM 系統、合規追蹤表或文件管控系統，建議使用以下欄位順序：

```text
Relationship Index ID
SKU Code
Customer-Facing Name
Product Line Record ID
SKU Master Record ID
Internal Model Record ID
Engineering Model Record ID
Certification Model Record ID
Manufacturing Model Record ID
Package Record ID
Compliance Mapping Record ID
Lifecycle Record ID
Change Log IDs
Commercial Release Record ID
Support Record ID
Archive Record ID
Current Lifecycle Status
Current Release Scope
Current Compliance Status
Current Package Status
Current Revision
Record Owner
Last Review Date
Next Review Date
Notes
```

---

## 35.23 Chapter Conclusion

## 35.23 本章結論

### EN

The Document Relationship and Record Index is the structural map of the Artibird SKU and model naming system.

It connects every SKU to its product line, internal model, engineering model, certification model, manufacturing model, package record, compliance mapping, lifecycle status, change history, release scope, support boundary, and archive state.

Without this index, SKU records may become fragmented across engineering, certification, packaging, production, marketplace, sales, and support workflows. With this index, every product identity becomes traceable, reviewable, auditable, and controllable across its full lifecycle.

### ZH-TW

文件關聯與記錄索引是 Artibird SKU 與型號命名系統的結構地圖。

它將每一個 SKU 連接至產品線、內部型號、工程型號、認證型號、生產型號、包裝記錄、合規映射、生命週期狀態、變更歷史、發布範圍、支持邊界與歸檔狀態。

如果沒有這份索引，SKU 記錄可能在工程、認證、包裝、生產、marketplace、銷售與支持流程中被割裂。透過這份索引，每一個產品身份都能在完整生命週期中被追蹤、審查、稽核與管控。

---

**話題延伸｜互動建議**  
下一章可以繼續寫 **Chapter 36 — Final SKU Governance Checklist｜第三十六章｜最終 SKU 治理檢查清單**，把前面所有主表與索引濃縮成一份發布前、上架前、生產前、認證前都可使用的最終審查清單。