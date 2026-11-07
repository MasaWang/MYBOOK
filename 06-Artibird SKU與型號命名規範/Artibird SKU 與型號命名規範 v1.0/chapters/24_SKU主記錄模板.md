# Artibird SKU & Model Naming Specification v1.0

# Artibird SKU 與型號命名規範 v1.0

## Part IV — SKU Master Table Templates

## 第四部分｜SKU 主表模板

## Chapter 24 — SKU Master Record Template

## 第二十四章｜SKU 主記錄模板

---

## 24.1 Purpose

## 24.1 目的

### EN

This chapter defines the standard SKU master record template for Artibird products and related OceanAI system-layer records.

The SKU master record is the official source of truth for connecting customer-facing model names, internal model numbers, SKU codes, engineering model numbers, certification model numbers, manufacturing model numbers, package records, release status, commercial channels, claim boundaries, and lifecycle control.

The purpose of this template is to ensure that every SKU is traceable, approved, commercially usable, technically accurate, certification-aware, package-aligned, and lifecycle-controlled.

### ZH-TW

本章定義 Artibird 產品與相關 OceanAI 系統層記錄使用的標準 SKU 主記錄模板。

SKU 主記錄是連接面向客戶型號名稱、內部型號、SKU 代碼、工程型號、認證型號、生產型號、包裝記錄、發布狀態、商業渠道、宣稱邊界與生命週期管控的官方唯一可信來源。

此模板的目的，是確保每一個 SKU 都具備可追蹤、已核准、可商業使用、技術準確、認證可識別、包裝一致與生命週期受控的狀態。

---

## 24.2 SKU Master Record Definition

## 24.2 SKU 主記錄定義

### EN

A SKU master record is a structured data record that defines one controlled commercial configuration.

It answers the following questions:

|Question|Description|
|---|---|
|What is the SKU code?|The official commercial identifier|
|What is the customer-facing name?|The readable name used in public communication|
|What internal model does it map to?|Product and engineering coordination identity|
|What engineering model does it use?|Hardware, firmware, PCB, validation configuration|
|What certification model does it map to?|Regulatory and compliance identity|
|What manufacturing model is used?|Factory, BOM, QC, assembly, and package build record|
|What package does it use?|Single unit, kit, FBA, project, demo, sample|
|What is its release status?|Concept, Prototype, EVT, DVT, PVT, Pilot, Certified, Released, Deprecated, Discontinued, Archived|
|Which channels can use it?|Amazon, website, distributor, project, education, internal|
|What claims are allowed?|Approved feature, certification, compatibility, region, and performance boundaries|

### ZH-TW

SKU 主記錄是一種結構化資料記錄，用於定義一種受控商業配置。

它回答以下問題：

|問題|說明|
|---|---|
|SKU 代碼是什麼？|官方商業識別碼|
|面向客戶名稱是什麼？|公開溝通中使用的可讀名稱|
|映射至哪一個內部型號？|產品與工程協同身份|
|使用哪一個工程型號？|硬體、韌體、PCB、驗證配置|
|映射至哪一個認證型號？|法規與合規身份|
|使用哪一個生產型號？|工廠、BOM、QC、組裝與包裝構建記錄|
|使用哪一種包裝？|單品、套組、FBA、專案、展示、樣品|
|發布狀態是什麼？|Concept、Prototype、EVT、DVT、PVT、Pilot、Certified、Released、Deprecated、Discontinued、Archived|
|哪些渠道可以使用？|Amazon、網站、分銷、專案、教育、內部|
|允許哪些宣稱？|已核准功能、認證、相容性、區域與性能邊界|

---

## 24.3 Master Record Principle

## 24.3 主記錄原則

### EN

The SKU master record follows one core principle:

```text
One SKU master record = one controlled commercial configuration.
```

A SKU master record must not represent multiple unrelated configurations. If product line, generation, region, connectivity, power, variant, package, certification mapping, or commercial release identity changes, the record must be reviewed and a new SKU may be required.

### ZH-TW

SKU 主記錄遵循一個核心原則：

```text
一筆 SKU 主記錄 = 一種受控商業配置。
```

一筆 SKU 主記錄不得表示多個無關配置。如果產品線、世代、區域、連接方式、供電、版本、包裝、認證映射或商業發布身份發生變更，必須重新審查該記錄，並可能需要建立新 SKU。

---

## 24.4 Standard SKU Master Record Fields

## 24.4 標準 SKU 主記錄欄位

### EN

|Field Group|Field Name|Required|
|---|---|--:|
|Identity|SKU Code|Yes|
|Identity|Customer-Facing Model Name|Yes|
|Identity|Internal Model Number|Yes|
|Identity|Product Line Code|Yes|
|Identity|Product Line Name|Yes|
|Identity|Generation Code|Yes|
|Configuration|Region Code|Yes|
|Configuration|Connectivity Code|Yes|
|Configuration|Power Code|Yes|
|Configuration|Variant Code|Yes|
|Configuration|Package Code|Yes|
|Engineering|Engineering Model Number|Required where applicable|
|Engineering|Hardware Version|Required where applicable|
|Engineering|Firmware Version|Required where applicable|
|Engineering|PCB Version|Required where applicable|
|Certification|Certification Model Number|Required where applicable|
|Certification|Certification Framework|Required where applicable|
|Certification|Certification Status|Yes|
|Manufacturing|Manufacturing Model Number|Required where applicable|
|Manufacturing|BOM Version|Required where applicable|
|Manufacturing|QC Version|Required where applicable|
|Packaging|Package Model Name|Required where applicable|
|Packaging|Packaging Version|Yes|
|Packaging|Barcode / GTIN / UPC / EAN|Required where applicable|
|Packaging|Amazon FNSKU|Required for FBA|
|Commercial|Release Status|Yes|
|Commercial|Commercial Channel|Yes|
|Commercial|Pricing Record Reference|Required where applicable|
|Governance|Claim Boundary Notes|Yes|
|Governance|Approval Owner|Yes|
|Governance|Revision Date|Yes|
|Governance|Change Log Reference|Yes|

### ZH-TW

|欄位組|欄位名稱|是否必填|
|---|---|--:|
|身份|SKU 代碼|是|
|身份|面向客戶型號名稱|是|
|身份|內部型號|是|
|身份|產品線代碼|是|
|身份|產品線名稱|是|
|身份|世代代碼|是|
|配置|區域代碼|是|
|配置|連接代碼|是|
|配置|供電代碼|是|
|配置|版本代碼|是|
|配置|包裝代碼|是|
|工程|工程型號|適用時必填|
|工程|硬體版本|適用時必填|
|工程|韌體版本|適用時必填|
|工程|PCB 版本|適用時必填|
|認證|認證型號|適用時必填|
|認證|認證框架|適用時必填|
|認證|認證狀態|是|
|生產|生產型號|適用時必填|
|生產|BOM 版本|適用時必填|
|生產|QC 版本|適用時必填|
|包裝|包裝型號名稱|適用時必填|
|包裝|包裝版本|是|
|包裝|條碼 / GTIN / UPC / EAN|適用時必填|
|包裝|Amazon FNSKU|FBA 必填|
|商業|發布狀態|是|
|商業|商業渠道|是|
|商業|定價記錄引用|適用時必填|
|治理|宣稱邊界備註|是|
|治理|核准負責人|是|
|治理|修訂日期|是|
|治理|變更記錄引用|是|

---

## 24.5 Identity Field Group

## 24.5 身份欄位組

### EN

The identity field group defines what the SKU is.

|Field|Description|Example|
|---|---|---|
|SKU Code|Official SKU identifier|ATB-ACT-G1-US-WF-AC-E-S|
|Customer-Facing Model Name|Public product name|Artibird Act-E|
|Internal Model Number|Internal product identity|ACT-G1-E|
|Product Line Code|Product line abbreviation|ACT|
|Product Line Name|Full product line name|Artibird Act|
|Generation Code|Product generation|G1|

The identity field group must remain consistent across product, sales, operations, and documentation teams.

### ZH-TW

身份欄位組定義該 SKU 是什麼。

|欄位|說明|示例|
|---|---|---|
|SKU 代碼|官方 SKU 識別碼|ATB-ACT-G1-US-WF-AC-E-S|
|面向客戶型號名稱|公開產品名稱|Artibird Act-E|
|內部型號|內部產品身份|ACT-G1-E|
|產品線代碼|產品線縮寫|ACT|
|產品線名稱|完整產品線名稱|Artibird Act|
|世代代碼|產品世代|G1|

身份欄位組必須在產品、銷售、運營與文件團隊之間保持一致。

---

## 24.6 Configuration Field Group

## 24.6 配置欄位組

### EN

The configuration field group defines the market, connectivity, power, variant, and package configuration.

|Field|Description|Example|
|---|---|---|
|Region Code|Target market or regional configuration|US|
|Connectivity Code|Communication or connection method|WF|
|Power Code|Power architecture or installation condition|AC|
|Variant Code|Functional or commercial variant|E|
|Package Code|Packaging or sales unit|S|

These fields must match the official controlled code libraries. They should not be entered as free text.

### ZH-TW

配置欄位組定義市場、連接、供電、版本與包裝配置。

|欄位|說明|示例|
|---|---|---|
|區域代碼|目標市場或區域配置|US|
|連接代碼|通訊或連接方式|WF|
|供電代碼|供電架構或安裝條件|AC|
|版本代碼|功能或商業版本|E|
|包裝代碼|包裝或銷售單位|S|

這些欄位必須匹配官方受控代碼庫，不應作為自由文字填寫。

---

## 24.7 Engineering Field Group

## 24.7 工程欄位組

### EN

The engineering field group connects the SKU to the approved technical configuration.

|Field|Description|Example|
|---|---|---|
|Engineering Model Number|Full engineering identifier|ACT-G1-E-HW1.0-FW1.2-PCB1.1-DVT|
|Hardware Version|Hardware revision|HW1.0|
|Firmware Version|Firmware baseline|FW1.2|
|PCB Version|PCB revision|PCB1.1|
|Validation Stage|EVT, DVT, or PVT|DVT|
|Test Report Reference|Functional, RF, safety, thermal, reliability report ID|TR-ACT-DVT-001|

The engineering fields are required when the SKU refers to a physical product or hardware-dependent system component.

### ZH-TW

工程欄位組將 SKU 連接至已核准技術配置。

|欄位|說明|示例|
|---|---|---|
|工程型號|完整工程識別碼|ACT-G1-E-HW1.0-FW1.2-PCB1.1-DVT|
|硬體版本|硬體修訂|HW1.0|
|韌體版本|韌體基線|FW1.2|
|PCB 版本|PCB 修訂|PCB1.1|
|驗證階段|EVT、DVT 或 PVT|DVT|
|測試報告引用|功能、RF、安全、熱、可靠性報告 ID|TR-ACT-DVT-001|

當 SKU 指向實體產品或依賴硬體的系統組件時，工程欄位為必填。

---

## 24.8 Certification Field Group

## 24.8 認證欄位組

### EN

The certification field group connects the SKU to regulatory and compliance records.

|Field|Description|Example|
|---|---|---|
|Certification Model Number|Filed or planned certification model|ACT-G1-E|
|Certification Framework|Applicable certification system|FCC / ETL|
|Certification Status|Current certification state|Preparing / Testing / Certified|
|Target Region|Certification market|US|
|Test Lab / Certification Body|Lab or body name|TBD|
|Test Report Number|Report reference|TBD|
|Product Label Model Reference|Model shown on product label|ACT-G1-E|
|Claim Boundary Notes|Approved certification claim scope|No certification claim until approved|

Certification status must never be inferred from SKU code alone. It must be recorded explicitly.

### ZH-TW

認證欄位組將 SKU 連接至法規與合規記錄。

|欄位|說明|示例|
|---|---|---|
|認證型號|已提交或計劃提交的認證型號|ACT-G1-E|
|認證框架|適用認證系統|FCC / ETL|
|認證狀態|當前認證狀態|Preparing / Testing / Certified|
|目標區域|認證市場|US|
|測試實驗室 / 認證機構|實驗室或機構名稱|TBD|
|測試報告編號|報告引用|TBD|
|產品標籤型號引用|產品標籤上顯示的型號|ACT-G1-E|
|宣稱邊界備註|已核准認證宣稱範圍|未核准前不得宣稱認證|

認證狀態絕不能僅由 SKU 代碼推斷，必須明確記錄。

---

## 24.9 Manufacturing Field Group

## 24.9 生產欄位組

### EN

The manufacturing field group connects the SKU to the factory-controlled production configuration.

|Field|Description|Example|
|---|---|---|
|Manufacturing Model Number|Factory-controlled production model|MFG-ACT-G1-E-BOM1.0-PCB1.1-ASM1.0-SUP01-QC1.1-PKG1.0|
|BOM Version|Bill of Materials version|BOM1.0|
|PCB Version|Production PCB revision|PCB1.1|
|Assembly Version|Assembly configuration|ASM1.0|
|Supplier Code|Supplier or factory identifier|SUP01|
|QC Version|Quality control plan version|QC1.1|
|Production Lot Rule|Batch / lot format|LOT-YYYYMMDD-SUPxx-SEQ|
|Factory Test Procedure|Factory test reference|FTP-ACT-G1-E-001|

Manufacturing fields are required before production release or inventory receiving.

### ZH-TW

生產欄位組將 SKU 連接至工廠受控生產配置。

|欄位|說明|示例|
|---|---|---|
|生產型號|工廠受控生產型號|MFG-ACT-G1-E-BOM1.0-PCB1.1-ASM1.0-SUP01-QC1.1-PKG1.0|
|BOM 版本|物料清單版本|BOM1.0|
|PCB 版本|生產 PCB 修訂|PCB1.1|
|組裝版本|組裝配置|ASM1.0|
|供應商代碼|供應商或工廠識別碼|SUP01|
|QC 版本|品質控制計劃版本|QC1.1|
|生產 Lot 規則|批次 / Lot 格式|LOT-YYYYMMDD-SUPxx-SEQ|
|工廠測試流程|工廠測試引用|FTP-ACT-G1-E-001|

生產欄位在生產放行或庫存入庫前為必填。

---

## 24.10 Packaging Field Group

## 24.10 包裝欄位組

### EN

The packaging field group connects the SKU to packaging, barcode, Amazon, kit, and shipment records.

|Field|Description|Example|
|---|---|---|
|Package Model Name|Readable package name|Artibird Act-E Single Pack|
|Package Code|Package type|S|
|Package Version|Packaging configuration version|PKG1.0|
|Packaging Artwork Version|Artwork version|ART1.0|
|Barcode / GTIN / UPC / EAN|Retail barcode|TBD|
|Amazon FNSKU|Amazon fulfillment identifier|Required for FBA|
|Included Product SKUs|Required for kits|ACT SKU, SNS SKU, HUB SKU|
|Included Accessories|Adapter, cable, screws, mounting parts|TBD|
|Manual Version|User manual or installation guide version|MAN1.0|
|Warranty Version|Warranty document version|WAR1.0|

Packaging fields must be complete before retail packaging, Amazon listing, channel pack, kit, demo kit, or project package use.

### ZH-TW

包裝欄位組將 SKU 連接至包裝、條碼、Amazon、套組與出貨記錄。

|欄位|說明|示例|
|---|---|---|
|包裝型號名稱|可讀包裝名稱|Artibird Act-E Single Pack|
|包裝代碼|包裝類型|S|
|包裝版本|包裝配置版本|PKG1.0|
|包裝 artwork 版本|Artwork 版本|ART1.0|
|條碼 / GTIN / UPC / EAN|零售條碼|TBD|
|Amazon FNSKU|Amazon 履約識別碼|FBA 必填|
|內含產品 SKU|套組必填|ACT SKU、SNS SKU、HUB SKU|
|內含配件|適配器、線材、螺絲、安裝件|TBD|
|手冊版本|用戶手冊或安裝指南版本|MAN1.0|
|保固版本|保固文件版本|WAR1.0|

在零售包裝、Amazon 上架、渠道包、套組、展示套組或專案包使用前，包裝欄位必須完整。

---

## 24.11 Commercial Field Group

## 24.11 商業欄位組

### EN

The commercial field group defines whether and where the SKU may be used commercially.

|Field|Description|Example|
|---|---|---|
|Release Status|Current SKU lifecycle status|Released|
|Commercial Channel|Approved sales channel|Website / Amazon / Distributor / Project|
|Market Availability|Approved sales region|US|
|Pricing Record Reference|Link or ID for pricing sheet|PRICE-ACT-US-001|
|Sales Availability Date|Commercial launch date|TBD|
|Retirement Status|Active / Deprecated / Discontinued|Active|
|Replacement SKU|Required if deprecated or discontinued|TBD|
|Support Boundary|Support and warranty scope|Standard support|

Commercial fields must be aligned with product, operations, sales, channel, and support teams.

### ZH-TW

商業欄位組定義該 SKU 是否以及在哪裡可被商業使用。

|欄位|說明|示例|
|---|---|---|
|發布狀態|當前 SKU 生命週期狀態|Released|
|商業渠道|已核准銷售渠道|Website / Amazon / Distributor / Project|
|市場可用性|已核准銷售區域|US|
|定價記錄引用|價格表連結或 ID|PRICE-ACT-US-001|
|銷售可用日期|商業上市日期|TBD|
|退市狀態|Active / Deprecated / Discontinued|Active|
|替代 SKU|停用或退市時必填|TBD|
|支持邊界|支持與保固範圍|Standard support|

商業欄位必須與產品、運營、銷售、渠道與支持團隊保持一致。

---

## 24.12 Governance Field Group

## 24.12 治理欄位組

### EN

The governance field group records approval, revision, claim boundary, and change-control information.

|Field|Description|Example|
|---|---|---|
|Claim Boundary Notes|What may and may not be claimed|Energy monitoring allowed; no savings claim without data|
|Approval Status|Draft, Pending Review, Approved Internal, Approved Public|Approved Public|
|Approval Owner|Responsible approval owner|Product / Operations Owner|
|Approval Date|Date of approval|TBD|
|Revision Date|Latest revision date|TBD|
|Change Log Reference|Change request or revision ID|CR-SKU-001|
|Legal / Compliance Review Status|Review status where applicable|Reviewed / Not Required|
|Notes|Additional controlled notes|TBD|

Governance fields are mandatory. A SKU without governance fields should not be treated as approved.

### ZH-TW

治理欄位組記錄核准、修訂、宣稱邊界與變更管控資訊。

|欄位|說明|示例|
|---|---|---|
|宣稱邊界備註|可宣稱與不可宣稱內容|允許宣稱電能監測；無數據不得宣稱節能|
|核准狀態|Draft、Pending Review、Approved Internal、Approved Public|Approved Public|
|核准負責人|負責核准人|Product / Operations Owner|
|核准日期|核准日期|TBD|
|修訂日期|最新修訂日期|TBD|
|變更記錄引用|變更申請或修訂 ID|CR-SKU-001|
|法律 / 合規審查狀態|適用時的審查狀態|Reviewed / Not Required|
|備註|其他受控備註|TBD|

治理欄位是強制欄位。缺少治理欄位的 SKU 不應被視為已核准。

---

## 24.13 Standard SKU Master Record Template

## 24.13 標準 SKU 主記錄模板

### EN

|Field Group|Field|Entry|
|---|---|---|
|Identity|SKU Code|TBD|
|Identity|Customer-Facing Model Name|TBD|
|Identity|Internal Model Number|TBD|
|Identity|Product Line Code|TBD|
|Identity|Product Line Name|TBD|
|Identity|Generation Code|TBD|
|Configuration|Region Code|TBD|
|Configuration|Connectivity Code|TBD|
|Configuration|Power Code|TBD|
|Configuration|Variant Code|TBD|
|Configuration|Package Code|TBD|
|Engineering|Engineering Model Number|TBD / N/A|
|Engineering|Hardware Version|TBD / N/A|
|Engineering|Firmware Version|TBD / N/A|
|Engineering|PCB Version|TBD / N/A|
|Engineering|Validation Stage|TBD / N/A|
|Engineering|Test Report Reference|TBD / N/A|
|Certification|Certification Model Number|TBD / N/A|
|Certification|Certification Framework|TBD / N/A|
|Certification|Certification Status|TBD / N/A|
|Certification|Product Label Model Reference|TBD / N/A|
|Manufacturing|Manufacturing Model Number|TBD / N/A|
|Manufacturing|BOM Version|TBD / N/A|
|Manufacturing|Assembly Version|TBD / N/A|
|Manufacturing|Supplier Code|TBD / N/A|
|Manufacturing|QC Version|TBD / N/A|
|Packaging|Package Model Name|TBD|
|Packaging|Package Version|TBD|
|Packaging|Packaging Artwork Version|TBD|
|Packaging|Barcode / GTIN / UPC / EAN|TBD / N/A|
|Packaging|Amazon FNSKU|TBD / N/A|
|Packaging|Included Product SKUs|TBD / N/A|
|Packaging|Manual Version|TBD / N/A|
|Commercial|Release Status|TBD|
|Commercial|Commercial Channel|TBD|
|Commercial|Market Availability|TBD|
|Commercial|Pricing Record Reference|TBD / N/A|
|Commercial|Replacement SKU|TBD / N/A|
|Governance|Claim Boundary Notes|TBD|
|Governance|Approval Status|TBD|
|Governance|Approval Owner|TBD|
|Governance|Approval Date|TBD|
|Governance|Revision Date|TBD|
|Governance|Change Log Reference|TBD|

### ZH-TW

|欄位組|欄位|填寫|
|---|---|---|
|身份|SKU 代碼|TBD|
|身份|面向客戶型號名稱|TBD|
|身份|內部型號|TBD|
|身份|產品線代碼|TBD|
|身份|產品線名稱|TBD|
|身份|世代代碼|TBD|
|配置|區域代碼|TBD|
|配置|連接代碼|TBD|
|配置|供電代碼|TBD|
|配置|版本代碼|TBD|
|配置|包裝代碼|TBD|
|工程|工程型號|TBD / N/A|
|工程|硬體版本|TBD / N/A|
|工程|韌體版本|TBD / N/A|
|工程|PCB 版本|TBD / N/A|
|工程|驗證階段|TBD / N/A|
|工程|測試報告引用|TBD / N/A|
|認證|認證型號|TBD / N/A|
|認證|認證框架|TBD / N/A|
|認證|認證狀態|TBD / N/A|
|認證|產品標籤型號引用|TBD / N/A|
|生產|生產型號|TBD / N/A|
|生產|BOM 版本|TBD / N/A|
|生產|組裝版本|TBD / N/A|
|生產|供應商代碼|TBD / N/A|
|生產|QC 版本|TBD / N/A|
|包裝|包裝型號名稱|TBD|
|包裝|包裝版本|TBD|
|包裝|包裝 artwork 版本|TBD|
|包裝|條碼 / GTIN / UPC / EAN|TBD / N/A|
|包裝|Amazon FNSKU|TBD / N/A|
|包裝|內含產品 SKU|TBD / N/A|
|包裝|手冊版本|TBD / N/A|
|商業|發布狀態|TBD|
|商業|商業渠道|TBD|
|商業|市場可用性|TBD|
|商業|定價記錄引用|TBD / N/A|
|商業|替代 SKU|TBD / N/A|
|治理|宣稱邊界備註|TBD|
|治理|核准狀態|TBD|
|治理|核准負責人|TBD|
|治理|核准日期|TBD|
|治理|修訂日期|TBD|
|治理|變更記錄引用|TBD|

---

## 24.14 Completed Example — Artibird Act-E Single Unit

## 24.14 完整示例 — Artibird Act-E 單品

### EN

|Field Group|Field|Entry|
|---|---|---|
|Identity|SKU Code|ATB-ACT-G1-US-WF-AC-E-S|
|Identity|Customer-Facing Model Name|Artibird Act-E|
|Identity|Internal Model Number|ACT-G1-E|
|Identity|Product Line Code|ACT|
|Identity|Product Line Name|Artibird Act|
|Identity|Generation Code|G1|
|Configuration|Region Code|US|
|Configuration|Connectivity Code|WF|
|Configuration|Power Code|AC|
|Configuration|Variant Code|E|
|Configuration|Package Code|S|
|Engineering|Engineering Model Number|ACT-G1-E-HW1.0-FW1.2-PCB1.1-DVT|
|Engineering|Hardware Version|HW1.0|
|Engineering|Firmware Version|FW1.2|
|Engineering|PCB Version|PCB1.1|
|Engineering|Validation Stage|DVT|
|Engineering|Test Report Reference|TR-ACT-DVT-001|
|Certification|Certification Model Number|ACT-G1-E|
|Certification|Certification Framework|FCC / ETL|
|Certification|Certification Status|Preparing|
|Certification|Product Label Model Reference|ACT-G1-E|
|Manufacturing|Manufacturing Model Number|MFG-ACT-G1-E-BOM1.0-PCB1.1-ASM1.0-SUP01-QC1.1-PKG1.0|
|Manufacturing|BOM Version|BOM1.0|
|Manufacturing|Assembly Version|ASM1.0|
|Manufacturing|Supplier Code|SUP01|
|Manufacturing|QC Version|QC1.1|
|Packaging|Package Model Name|Artibird Act-E Single Pack|
|Packaging|Package Version|PKG1.0|
|Packaging|Packaging Artwork Version|ART1.0|
|Packaging|Barcode / GTIN / UPC / EAN|TBD|
|Packaging|Amazon FNSKU|N/A|
|Packaging|Included Product SKUs|N/A|
|Packaging|Manual Version|MAN1.0|
|Commercial|Release Status|DVT / Preparing|
|Commercial|Commercial Channel|Website / Project Planning|
|Commercial|Market Availability|US|
|Commercial|Pricing Record Reference|PRICE-ACT-US-001|
|Commercial|Replacement SKU|N/A|
|Governance|Claim Boundary Notes|Energy monitoring may be described only after validation; no energy savings claim without test data|
|Governance|Approval Status|Pending Review|
|Governance|Approval Owner|Product / Operations Owner|
|Governance|Approval Date|TBD|
|Governance|Revision Date|TBD|
|Governance|Change Log Reference|CR-SKU-ACT-001|

### ZH-TW

|欄位組|欄位|填寫|
|---|---|---|
|身份|SKU 代碼|ATB-ACT-G1-US-WF-AC-E-S|
|身份|面向客戶型號名稱|Artibird Act-E|
|身份|內部型號|ACT-G1-E|
|身份|產品線代碼|ACT|
|身份|產品線名稱|Artibird Act|
|身份|世代代碼|G1|
|配置|區域代碼|US|
|配置|連接代碼|WF|
|配置|供電代碼|AC|
|配置|版本代碼|E|
|配置|包裝代碼|S|
|工程|工程型號|ACT-G1-E-HW1.0-FW1.2-PCB1.1-DVT|
|工程|硬體版本|HW1.0|
|工程|韌體版本|FW1.2|
|工程|PCB 版本|PCB1.1|
|工程|驗證階段|DVT|
|工程|測試報告引用|TR-ACT-DVT-001|
|認證|認證型號|ACT-G1-E|
|認證|認證框架|FCC / ETL|
|認證|認證狀態|Preparing|
|認證|產品標籤型號引用|ACT-G1-E|
|生產|生產型號|MFG-ACT-G1-E-BOM1.0-PCB1.1-ASM1.0-SUP01-QC1.1-PKG1.0|
|生產|BOM 版本|BOM1.0|
|生產|組裝版本|ASM1.0|
|生產|供應商代碼|SUP01|
|生產|QC 版本|QC1.1|
|包裝|包裝型號名稱|Artibird Act-E Single Pack|
|包裝|包裝版本|PKG1.0|
|包裝|包裝 artwork 版本|ART1.0|
|包裝|條碼 / GTIN / UPC / EAN|TBD|
|包裝|Amazon FNSKU|N/A|
|包裝|內含產品 SKU|N/A|
|包裝|手冊版本|MAN1.0|
|商業|發布狀態|DVT / Preparing|
|商業|商業渠道|Website / Project Planning|
|商業|市場可用性|US|
|商業|定價記錄引用|PRICE-ACT-US-001|
|商業|替代 SKU|N/A|
|治理|宣稱邊界備註|僅在驗證後可描述電能監測；無測試數據不得宣稱節能|
|治理|核准狀態|Pending Review|
|治理|核准負責人|Product / Operations Owner|
|治理|核准日期|TBD|
|治理|修訂日期|TBD|
|治理|變更記錄引用|CR-SKU-ACT-001|

---

## 24.15 Data Entry Rules

## 24.15 資料填寫規則

### EN

|Rule|Requirement|
|---|---|
|Use controlled codes|Region, connectivity, power, variant, and package must use approved code libraries|
|Avoid free text where controlled codes exist|Free text causes inconsistency|
|Use TBD only for incomplete draft records|Released records must not contain unresolved TBD fields|
|Use N/A only when a field truly does not apply|Do not use N/A to avoid required review|
|Keep dates consistent|Use ISO-style date format where possible|
|Record owner fields|Every approved record must have an owner|
|Record claim boundaries|Every SKU must define what may or may not be claimed|
|Link related records|SKU must map to engineering, certification, manufacturing, and packaging records where applicable|
|Do not delete old values silently|Use change log when values change|
|Do not publish incomplete records|Public use requires approval status and required fields complete|

### ZH-TW

|規則|要求|
|---|---|
|使用受控代碼|區域、連接、供電、版本與包裝必須使用已核准代碼庫|
|已有受控代碼時避免自由文字|自由文字會造成不一致|
|TBD 僅用於未完成草案記錄|已發布記錄不得包含未解決 TBD 欄位|
|N/A 僅用於欄位確實不適用|不得使用 N/A 迴避必要審查|
|日期保持一致|盡可能使用 ISO 格式日期|
|記錄負責人欄位|每筆已核准記錄都必須有負責人|
|記錄宣稱邊界|每個 SKU 必須定義可宣稱與不可宣稱內容|
|連接相關記錄|SKU 必須在適用時映射至工程、認證、生產與包裝記錄|
|不得靜默刪除舊值|值發生變更時必須使用變更記錄|
|不得發布不完整記錄|公開使用需要核准狀態與必填欄位完整|

---

## 24.16 Required Field Completion by Release Status

## 24.16 依發布狀態定義必填完整度

### EN

|Release Status|Required Completion Level|
|---|---|
|Concept|Identity and basic configuration fields required|
|Prototype|Identity, internal model, early engineering fields required|
|EVT|Engineering fields required|
|DVT|Engineering, validation, certification preparation fields required|
|PVT|Manufacturing, QC, package, and production fields required|
|Pilot|Claim boundary, support boundary, package and channel fields required|
|Certified|Certification model and certification status fields required|
|Released|All required commercial, packaging, certification, governance fields completed|
|Deprecated|Replacement SKU and support boundary required|
|Discontinued|Last sales / production status and archive references required|
|Archived|Historical references and archive location required|

### ZH-TW

|發布狀態|必填完整度|
|---|---|
|Concept|需要身份與基礎配置欄位|
|Prototype|需要身份、內部型號與早期工程欄位|
|EVT|需要工程欄位|
|DVT|需要工程、驗證、認證準備欄位|
|PVT|需要生產、QC、包裝與試產欄位|
|Pilot|需要宣稱邊界、支持邊界、包裝與渠道欄位|
|Certified|需要認證型號與認證狀態欄位|
|Released|所有必要商業、包裝、認證、治理欄位完成|
|Deprecated|需要替代 SKU 與支持邊界|
|Discontinued|需要最後銷售 / 生產狀態與歸檔引用|
|Archived|需要歷史引用與歸檔位置|

---

## 24.17 SKU Master Record Governance Rules

## 24.17 SKU 主記錄治理規則

### EN

|Rule|Requirement|
|---|---|
|Master record is the source of truth|SKU use must follow the master record|
|One SKU equals one controlled configuration|Do not merge unrelated configurations into one record|
|Required fields must be completed before release|No incomplete released SKU|
|Controlled fields must use approved code libraries|No unofficial code values|
|Claim boundary must be recorded|No SKU without claim control|
|Changes must be logged|No silent edits|
|Deprecated records must remain visible|Do not delete historical SKU records|
|Certification status must be explicit|Do not infer from SKU|
|Packaging status must be explicit|Do not infer from package name|
|Public use requires approved status|Draft or pending records must not be published|

### ZH-TW

|規則|要求|
|---|---|
|主記錄是唯一可信來源|SKU 使用必須依據主記錄|
|一個 SKU 等於一種受控配置|不得將無關配置合併到一筆記錄|
|發布前必填欄位必須完成|不得發布不完整 SKU|
|受控欄位必須使用已核准代碼庫|不得使用非官方代碼值|
|必須記錄宣稱邊界|不得存在無宣稱管控 SKU|
|變更必須記錄|不得靜默編輯|
|已停用記錄必須可見|不得刪除歷史 SKU 記錄|
|認證狀態必須明確|不得由 SKU 推斷認證|
|包裝狀態必須明確|不得由包裝名稱推斷|
|公開使用需要核准狀態|Draft 或 Pending 記錄不得發布|

---

## 24.18 Spreadsheet Column Recommendation

## 24.18 表格欄位建議

### EN

For Excel, Google Sheets, Airtable, ERP staging tables, or PLM import tables, the following column order is recommended:

```text
SKU Code
Customer-Facing Model Name
Internal Model Number
Product Line Code
Product Line Name
Generation Code
Region Code
Connectivity Code
Power Code
Variant Code
Package Code
Engineering Model Number
Hardware Version
Firmware Version
PCB Version
Validation Stage
Certification Model Number
Certification Framework
Certification Status
Manufacturing Model Number
BOM Version
Assembly Version
Supplier Code
QC Version
Package Model Name
Package Version
Packaging Artwork Version
Barcode / GTIN / UPC / EAN
Amazon FNSKU
Included Product SKUs
Manual Version
Release Status
Commercial Channel
Market Availability
Pricing Record Reference
Replacement SKU
Claim Boundary Notes
Approval Status
Approval Owner
Approval Date
Revision Date
Change Log Reference
```

### ZH-TW

對於 Excel、Google Sheets、Airtable、ERP 暫存表或 PLM 匯入表，建議使用以下欄位順序：

```text
SKU Code
Customer-Facing Model Name
Internal Model Number
Product Line Code
Product Line Name
Generation Code
Region Code
Connectivity Code
Power Code
Variant Code
Package Code
Engineering Model Number
Hardware Version
Firmware Version
PCB Version
Validation Stage
Certification Model Number
Certification Framework
Certification Status
Manufacturing Model Number
BOM Version
Assembly Version
Supplier Code
QC Version
Package Model Name
Package Version
Packaging Artwork Version
Barcode / GTIN / UPC / EAN
Amazon FNSKU
Included Product SKUs
Manual Version
Release Status
Commercial Channel
Market Availability
Pricing Record Reference
Replacement SKU
Claim Boundary Notes
Approval Status
Approval Owner
Approval Date
Revision Date
Change Log Reference
```

---

## 24.19 Chapter Conclusion

## 24.19 本章結論

### EN

The SKU master record is the central control table of the Artibird SKU and model naming system.

It connects public names, internal models, SKU codes, engineering versions, certification models, manufacturing records, package versions, barcode records, release status, commercial channels, approval status, and claim boundaries into one traceable record.

A complete SKU master record ensures that Artibird products can move from product planning to engineering validation, certification preparation, manufacturing, packaging, Amazon listing, channel release, commercial sales, support, retirement, and archival without losing identity control.

### ZH-TW

SKU 主記錄是 Artibird SKU 與型號命名系統的核心管控表。

它將公開名稱、內部型號、SKU 代碼、工程版本、認證型號、生產記錄、包裝版本、條碼記錄、發布狀態、商業渠道、核准狀態與宣稱邊界整合為一筆可追蹤記錄。

完整的 SKU 主記錄，可確保 Artibird 產品從產品規劃、工程驗證、認證準備、生產、包裝、Amazon 上架、渠道發布、商業銷售、支持、退市到歸檔的過程中，都不失去身份管控。

---

**話題延伸｜互動建議**  
下一章可以繼續寫 **Chapter 25 — SKU Master Table Example｜第二十五章｜SKU 主表示例**，把 Hub、Gate、Sync、Switch、Panel、Act、Sense、Vision、App、Cloud、Edge 的代表性 SKU 全部填入一張完整主表示例。