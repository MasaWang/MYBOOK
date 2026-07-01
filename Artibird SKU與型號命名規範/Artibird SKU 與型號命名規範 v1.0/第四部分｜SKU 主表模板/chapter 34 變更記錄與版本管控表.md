# Artibird SKU & Model Naming Specification v1.0

# Artibird SKU 與型號命名規範 v1.0

## Chapter 34 — Change Log and Revision Control Table

## 第三十四章｜變更記錄與版本管控表

---

## 34.1 Purpose

## 34.1 目的

### EN

This chapter defines the Change Log and Revision Control Table used by Artibird SKU records, model records, engineering records, certification records, manufacturing records, packaging records, Amazon listing records, lifecycle records, and commercial release records.

The change log records what changed, why it changed, who approved it, which records were affected, what evidence supports the change, and whether the change requires a new SKU, new model number, new certification record, new package record, or new commercial release approval.

The purpose of this chapter is to ensure that every meaningful change in the Artibird SKU and model naming system is traceable, reviewable, auditable, and controlled.

### ZH-TW

本章定義 Artibird SKU 記錄、型號記錄、工程記錄、認證記錄、生產記錄、包裝記錄、Amazon 上架記錄、生命週期記錄與商業發布記錄中使用的變更記錄與版本管控表。

變更記錄用於記錄變更了什麼、為什麼變更、誰核准了變更、哪些記錄受到影響、哪些證據支持該變更，以及該變更是否需要新 SKU、新型號、新認證記錄、新包裝記錄或新的商業發布核准。

本章目的，是確保 Artibird SKU 與型號命名系統中的每一項重要變更，都具備可追蹤、可審查、可稽核與受控狀態。

---

## 34.2 Change Log Definition

## 34.2 變更記錄定義

### EN

A change log record is a controlled entry that documents a change to an approved, draft, released, deprecated, discontinued, or archived product-related record.

It answers the following questions:

|Question|Description|
|---|---|
|What changed?|SKU, model number, product line, region, connectivity, power, variant, package, status, claim, label, or document|
|Why did it change?|Engineering correction, compliance requirement, packaging update, Amazon requirement, market change, product improvement|
|Who requested the change?|Product, engineering, compliance, operations, sales, support, channel, or management|
|Who approved the change?|Responsible approval owner|
|Which records were affected?|SKU master, engineering model, certification model, manufacturing model, package, label, manual, Amazon listing|
|Does the change require a new SKU?|Yes, no, or review required|
|Does the change affect compliance?|Safety, wireless, EMC, battery, privacy, cybersecurity, marketplace, or claim review|
|Does the change affect public communication?|Website, product catalog, Amazon, manual, packaging, channel documents|
|What evidence supports the change?|Test report, certification report, design review, packaging proof, approval record|
|What is the final status?|Draft, pending, approved, rejected, superseded, archived|

### ZH-TW

變更記錄是一筆受控條目，用於記錄對已核准、草案、已發布、已停用、已停產或已歸檔產品相關記錄的變更。

它回答以下問題：

|問題|說明|
|---|---|
|變更了什麼？|SKU、型號、產品線、區域、連接、供電、版本、包裝、狀態、宣稱、標籤或文件|
|為什麼變更？|工程修正、合規要求、包裝更新、Amazon 要求、市場變更、產品改進|
|誰提出變更？|產品、工程、合規、運營、銷售、支持、渠道或管理層|
|誰核准變更？|負責核准人|
|哪些記錄受到影響？|SKU 主表、工程型號、認證型號、生產型號、包裝、標籤、手冊、Amazon 上架|
|是否需要新 SKU？|是、否或需要審查|
|是否影響合規？|安全、無線、EMC、電池、隱私、網路安全、marketplace 或宣稱審查|
|是否影響公開溝通？|網站、產品型錄、Amazon、手冊、包裝、渠道文件|
|哪些證據支持變更？|測試報告、認證報告、設計審查、包裝 proof、核准記錄|
|最終狀態是什麼？|Draft、Pending、Approved、Rejected、Superseded、Archived|

---

## 34.3 Revision Control Governance Principle

## 34.3 版本管控治理原則

### EN

The core principle of revision control is:

```text
No controlled product identity should change silently.
```

A change that affects identity, engineering, certification, manufacturing, packaging, commercial release, support, or public claims must be recorded.

A change log is required when any of the following fields change:

|Change Type|Examples|
|---|---|
|Identity Change|SKU code, customer-facing name, internal model number|
|Architecture Change|Product line, connectivity, power, variant, package|
|Engineering Change|HW version, FW version, PCB version, BOM version|
|Certification Change|Certification model, framework, status, label mark|
|Manufacturing Change|Supplier, assembly process, QC plan, production model|
|Packaging Change|Package code, package version, artwork, barcode, FNSKU|
|Commercial Change|Release status, channel, price reference, market availability|
|Claim Change|Feature claim, compatibility claim, certification claim, AI claim, energy claim|
|Lifecycle Change|EVT, DVT, PVT, Released, Deprecated, Discontinued, Archived|

### ZH-TW

版本管控的核心原則是：

```text
任何受控產品身份都不得靜默變更。
```

任何影響身份、工程、認證、生產、包裝、商業發布、支持或公開宣稱的變更，都必須被記錄。

當以下欄位發生變更時，需要建立變更記錄：

|變更類型|示例|
|---|---|
|身份變更|SKU 代碼、面向客戶名稱、內部型號|
|架構變更|產品線、連接方式、供電架構、版本、包裝|
|工程變更|HW 版本、FW 版本、PCB 版本、BOM 版本|
|認證變更|認證型號、認證框架、認證狀態、標籤標誌|
|生產變更|供應商、組裝流程、QC 計劃、生產型號|
|包裝變更|包裝代碼、包裝版本、artwork、條碼、FNSKU|
|商業變更|發布狀態、渠道、價格引用、市場可用性|
|宣稱變更|功能宣稱、相容性宣稱、認證宣稱、AI 宣稱、能源宣稱|
|生命週期變更|EVT、DVT、PVT、Released、Deprecated、Discontinued、Archived|

---

## 34.4 Standard Change Log Status Table

## 34.4 標準變更記錄狀態表

### EN

|Change Status|Meaning|Allowed Use|
|---|---|---|
|DRAFT|Change record created but not submitted|Internal preparation|
|SUBMITTED|Change submitted for review|Review in progress|
|UNDER-REVIEW|Being reviewed by responsible owners|No implementation unless approved|
|APPROVED|Change approved for implementation|Implementation may proceed|
|IMPLEMENTED|Change applied to affected records|Verification required|
|VERIFIED|Implementation verified|Change may be closed|
|REJECTED|Change not approved|Do not implement|
|SUPERSEDED|Replaced by another change record|Historical reference only|
|ROLLED-BACK|Implemented change reversed|Requires rollback note|
|CLOSED|Change fully completed and archived|Final audit state|
|ARCHIVED|Historical change record|Traceability only|

### ZH-TW

|變更狀態|含義|允許用途|
|---|---|---|
|DRAFT|變更記錄已建立但尚未提交|內部準備|
|SUBMITTED|變更已提交審查|審查進行中|
|UNDER-REVIEW|責任負責人正在審查|未核准前不得實施|
|APPROVED|變更已核准可實施|可進入實施|
|IMPLEMENTED|變更已套用至受影響記錄|需要驗證|
|VERIFIED|實施結果已驗證|可關閉變更|
|REJECTED|變更未獲核准|不得實施|
|SUPERSEDED|已被另一變更記錄取代|僅歷史參考|
|ROLLED-BACK|已實施變更被回退|需要回退備註|
|CLOSED|變更已完整完成並歸檔|最終稽核狀態|
|ARCHIVED|歷史變更記錄|僅可追蹤|

---

## 34.5 Change Type Master Table

## 34.5 變更類型主表

### EN

|Change Type Code|Change Type Name|Typical Trigger|
|---|---|---|
|SKU|SKU Change|SKU code, SKU structure, SKU field correction|
|NAME|Naming Change|Customer-facing name, product line name, package name|
|MODEL|Model Change|Internal model, engineering model, certification model|
|ENG|Engineering Change|HW, FW, PCB, BOM, test report, design revision|
|CERT|Certification Change|Certification framework, report, mark, listing status|
|MFG|Manufacturing Change|Supplier, QC, assembly, production lot rule|
|PKG|Packaging Change|Package code, artwork, barcode, FNSKU, manual|
|AMZ|Amazon Change|Listing, FNSKU, product title, compliance upload|
|REGION|Region Change|Market, language, electrical configuration, label|
|CONN|Connectivity Change|Wi-Fi, Ethernet, BLE, RF, IRRF, HYB, cloud|
|POWER|Power Change|AC, DC, USB, BAT, ZN, SL, PoE, adapter|
|VAR|Variant Change|STD, PRO, E, SCN, RLY, DIM, CAM, EDGE|
|CLAIM|Claim Change|Feature, certification, compatibility, safety, energy, AI|
|LC|Lifecycle Change|EVT, DVT, PVT, Released, Deprecated, Archived|
|DOC|Documentation Change|Manual, install guide, spec sheet, catalog|
|PRICE|Pricing Change|Price record, channel price, bundle price|
|SUPPORT|Support Change|Warranty, replacement SKU, support boundary|

### ZH-TW

|變更類型代碼|變更類型名稱|典型觸發條件|
|---|---|---|
|SKU|SKU Change|SKU 代碼、SKU 結構、SKU 欄位修正|
|NAME|Naming Change|面向客戶名稱、產品線名稱、包裝名稱|
|MODEL|Model Change|內部型號、工程型號、認證型號|
|ENG|Engineering Change|HW、FW、PCB、BOM、測試報告、設計修訂|
|CERT|Certification Change|認證框架、報告、標誌、列名狀態|
|MFG|Manufacturing Change|供應商、QC、組裝、生產批次規則|
|PKG|Packaging Change|包裝代碼、artwork、條碼、FNSKU、手冊|
|AMZ|Amazon Change|上架、FNSKU、產品標題、合規文件上傳|
|REGION|Region Change|市場、語言、電氣配置、標籤|
|CONN|Connectivity Change|Wi-Fi、Ethernet、BLE、RF、IRRF、HYB、雲端|
|POWER|Power Change|AC、DC、USB、BAT、ZN、SL、PoE、適配器|
|VAR|Variant Change|STD、PRO、E、SCN、RLY、DIM、CAM、EDGE|
|CLAIM|Claim Change|功能、認證、相容性、安全、能源、AI 宣稱|
|LC|Lifecycle Change|EVT、DVT、PVT、Released、Deprecated、Archived|
|DOC|Documentation Change|手冊、安裝指南、規格書、型錄|
|PRICE|Pricing Change|價格記錄、渠道價格、套組價格|
|SUPPORT|Support Change|保固、替代 SKU、支持邊界|

---

## 34.6 Change Severity Levels

## 34.6 變更嚴重等級

### EN

|Severity Level|Meaning|Typical Examples|
|---|---|---|
|LOW|Administrative or non-public correction|Typo in draft record, internal note update|
|MEDIUM|Affects internal coordination or documentation|Manual update, package note, owner change|
|HIGH|Affects SKU identity, engineering, packaging, compliance, or channel use|SKU field change, package code change, certification status update|
|CRITICAL|Affects safety, certification, public claims, product identity, release status, or customer risk|AC design change, RF module change, certification claim, recall-related change|

Severity determines review depth, required approvers, evidence, and implementation control.

### ZH-TW

|嚴重等級|含義|典型示例|
|---|---|---|
|LOW|行政或非公開修正|草案記錄錯字、內部備註更新|
|MEDIUM|影響內部協同或文件|手冊更新、包裝備註、負責人變更|
|HIGH|影響 SKU 身份、工程、包裝、合規或渠道使用|SKU 欄位變更、包裝代碼變更、認證狀態更新|
|CRITICAL|影響安全、認證、公開宣稱、產品身份、發布狀態或客戶風險|AC 設計變更、RF 模組變更、認證宣稱、召回相關變更|

嚴重等級決定審查深度、必要核准人、證據與實施管控方式。

---

## 34.7 Standard Change Log Table

## 34.7 標準變更記錄表

### EN

|Field|Description|
|---|---|
|Change Log ID|Unique change record identifier|
|Change Type|SKU, ENG, CERT, PKG, AMZ, LC, CLAIM, etc.|
|Severity|LOW, MEDIUM, HIGH, CRITICAL|
|Affected SKU Code|SKU affected by the change|
|Affected Model|Internal, engineering, certification, manufacturing, or package model|
|Previous Value|Value before change|
|New Value|Value after change|
|Change Description|Summary of the change|
|Change Reason|Why the change is needed|
|Impact Area|Engineering, certification, packaging, Amazon, channel, support, etc.|
|New SKU Required?|Yes / No / Review Required|
|Compliance Review Required?|Yes / No / TBD|
|Evidence Required|Test report, approval, label proof, package proof, certification file|
|Requested By|Person or team requesting change|
|Review Owners|Product, engineering, compliance, operations, packaging, commercial|
|Approval Owner|Final approval owner|
|Approval Status|Draft / Submitted / Approved / Rejected|
|Implementation Status|Not Started / In Progress / Implemented / Verified|
|Effective Date|Date when change becomes active|
|Revision Date|Date of latest revision|
|Related Records|Linked SKU, engineering, certification, package, lifecycle, support records|
|Notes|Additional controlled notes|

### ZH-TW

|欄位|說明|
|---|---|
|變更記錄 ID|唯一變更記錄識別碼|
|變更類型|SKU、ENG、CERT、PKG、AMZ、LC、CLAIM 等|
|嚴重等級|LOW、MEDIUM、HIGH、CRITICAL|
|受影響 SKU 代碼|受變更影響的 SKU|
|受影響型號|內部、工程、認證、生產或包裝型號|
|原值|變更前的值|
|新值|變更後的值|
|變更描述|變更摘要|
|變更原因|為什麼需要變更|
|影響領域|工程、認證、包裝、Amazon、渠道、支持等|
|是否需要新 SKU|Yes / No / Review Required|
|是否需要合規審查|Yes / No / TBD|
|必要證據|測試報告、核准、標籤 proof、包裝 proof、認證文件|
|申請人|提出變更的人或團隊|
|審查負責人|產品、工程、合規、運營、包裝、商業|
|核准負責人|最終核准人|
|核准狀態|Draft / Submitted / Approved / Rejected|
|實施狀態|Not Started / In Progress / Implemented / Verified|
|生效日期|變更生效日期|
|修訂日期|最新修訂日期|
|相關記錄|連結 SKU、工程、認證、包裝、生命週期、支持記錄|
|備註|其他受控備註|

---

## 34.8 Change Log ID Format

## 34.8 變更記錄 ID 格式

### EN

The standard change log ID format is:

```text
CR-[CHANGE TYPE]-[PRODUCT / SCOPE]-[SEQUENCE]
```

Examples:

|Change Log ID|Meaning|
|---|---|
|CR-SKU-ACT-001|First SKU-related change for Artibird Act|
|CR-ENG-GATE-002|Second engineering change for Artibird Gate|
|CR-CERT-SYNC-001|First certification change for Artibird Sync|
|CR-PKG-ACT-003|Third packaging change for Artibird Act|
|CR-AMZ-SYNC-001|First Amazon-related change for Artibird Sync|
|CR-LC-SW-001|First lifecycle change for Artibird Switch|
|CR-CLAIM-EDGE-001|First claim-related change for OceanAI Edge|

### ZH-TW

標準變更記錄 ID 格式為：

```text
CR-[變更類型]-[產品 / 範圍]-[序號]
```

示例：

|變更記錄 ID|含義|
|---|---|
|CR-SKU-ACT-001|Artibird Act 的第一個 SKU 相關變更|
|CR-ENG-GATE-002|Artibird Gate 的第二個工程變更|
|CR-CERT-SYNC-001|Artibird Sync 的第一個認證變更|
|CR-PKG-ACT-003|Artibird Act 的第三個包裝變更|
|CR-AMZ-SYNC-001|Artibird Sync 的第一個 Amazon 相關變更|
|CR-LC-SW-001|Artibird Switch 的第一個生命週期變更|
|CR-CLAIM-EDGE-001|OceanAI Edge 的第一個宣稱相關變更|

---

## 34.9 Revision Numbering Rules

## 34.9 版本編號規則

### EN

Revision numbers should be assigned based on the significance of the change.

|Revision Type|Format|Meaning|
|---|---|---|
|Major Revision|v2.0, v3.0|Structural change, public identity change, certification-impacting change|
|Minor Revision|v1.1, v1.2|Feature, field, wording, package, or internal process update|
|Patch Revision|v1.0.1, v1.0.2|Typo correction, formatting correction, non-substantive fix|
|Draft Revision|v1.0-Draft, v1.1-Draft|Not yet approved|
|Release Candidate|v1.0-RC1|Candidate before release approval|
|Approved Release|v1.0|Approved formal version|
|Archived Revision|v1.0-Archived|Historical version retained for reference|

### ZH-TW

版本編號應依據變更的重要程度分配。

|版本類型|格式|含義|
|---|---|---|
|Major Revision|v2.0、v3.0|結構性變更、公開身份變更、影響認證的變更|
|Minor Revision|v1.1、v1.2|功能、欄位、文字、包裝或內部流程更新|
|Patch Revision|v1.0.1、v1.0.2|錯字修正、格式修正、非實質修正|
|Draft Revision|v1.0-Draft、v1.1-Draft|尚未核准|
|Release Candidate|v1.0-RC1|發布核准前候選版|
|Approved Release|v1.0|已核准正式版本|
|Archived Revision|v1.0-Archived|留作參考的歷史版本|

---

## 34.10 When a New SKU Is Required

## 34.10 何時需要新 SKU

### EN

A new SKU is usually required when the change affects customer-facing configuration, commercial unit, market, compliance, package, or physical capability.

|Change Scenario|New SKU Required?|
|---|--:|
|Product line changes|Yes|
|Region changes after release|Usually yes|
|Connectivity changes|Usually yes|
|Power architecture changes|Usually yes|
|Variant changes|Usually yes|
|Package code changes|Usually yes|
|Single unit changes to 2-pack or kit|Yes|
|AC product changes to battery product|Yes|
|Scene switch changes to relay switch|Yes|
|RF capability added|Yes|
|Camera capability added|Yes|
|Energy monitoring added|Yes|
|Packaging artwork update only|Usually no|
|Manual wording update only|Usually no|
|Barcode correction|Review required|
|Certification status update|Usually no, unless label or claim changes|
|Typo correction in draft record|No|

### ZH-TW

當變更影響面向客戶配置、商業單位、市場、合規、包裝或實體能力時，通常需要新 SKU。

|變更場景|是否需要新 SKU？|
|---|--:|
|產品線變更|是|
|發布後區域變更|通常是|
|連接方式變更|通常是|
|供電架構變更|通常是|
|版本變更|通常是|
|包裝代碼變更|通常是|
|單品變更為兩入裝或套組|是|
|AC 產品變更為電池產品|是|
|場景開關變更為繼電器開關|是|
|新增 RF 能力|是|
|新增攝影機能力|是|
|新增能源監測|是|
|僅包裝 artwork 更新|通常否|
|僅手冊文字更新|通常否|
|條碼修正|需要審查|
|認證狀態更新|通常否，除非影響標籤或宣稱|
|草案記錄錯字修正|否|

---

## 34.11 When New Certification Review Is Required

## 34.11 何時需要新認證審查

### EN

Certification review is required when a change may affect safety, wireless behavior, EMC, electrical rating, label marks, product claims, or marketplace compliance.

|Change Scenario|Certification Review Required?|
|---|--:|
|Wireless module changes|Yes|
|Antenna changes|Yes|
|RF frequency changes|Yes|
|Power architecture changes|Yes|
|AC load rating changes|Yes|
|Relay model changes|Yes|
|Dimmer topology changes|Yes|
|Battery type changes|Yes|
|Adapter changes|Usually yes|
|Enclosure material changes|Usually yes|
|Camera added|Yes|
|Edge AI claim added|Review required|
|Energy monitoring added|Review required|
|Product label changes certification mark|Yes|
|Package language changes only|Maybe|
|Manual safety warning changes|Usually yes|
|Claim wording changes to include certification|Yes|

### ZH-TW

當變更可能影響安全、無線行為、EMC、電氣額定、標籤標誌、產品宣稱或 marketplace 合規時，需要認證審查。

|變更場景|是否需要認證審查？|
|---|--:|
|無線模組變更|是|
|天線變更|是|
|RF 頻率變更|是|
|供電架構變更|是|
|AC 負載額定變更|是|
|繼電器型號變更|是|
|調光拓撲變更|是|
|電池類型變更|是|
|適配器變更|通常是|
|外殼材料變更|通常是|
|新增攝影機|是|
|新增 Edge AI 宣稱|需要審查|
|新增能源監測|需要審查|
|產品標籤變更認證標誌|是|
|僅包裝語言變更|視情況|
|手冊安全警告變更|通常是|
|宣稱文字新增認證內容|是|

---

## 34.12 When New Packaging Review Is Required

## 34.12 何時需要新包裝審查

### EN

|Change Scenario|Packaging Review Required?|
|---|--:|
|Package code changes|Yes|
|Package quantity changes|Yes|
|Included product list changes|Yes|
|Barcode changes|Yes|
|FNSKU changes|Yes|
|Amazon listing content changes|Usually yes|
|Certification mark added to package|Yes|
|Product image on package changes|Usually yes|
|Safety warning changes|Yes|
|Region language changes|Yes|
|Manual version included in package changes|Yes|
|Accessories included in package change|Yes|
|External carton rules change|Usually yes|
|Artwork color or layout-only update|Maybe|
|Internal carton protection changes|Maybe|

### ZH-TW

|變更場景|是否需要包裝審查？|
|---|--:|
|包裝代碼變更|是|
|包裝數量變更|是|
|內含產品清單變更|是|
|條碼變更|是|
|FNSKU 變更|是|
|Amazon 上架內容變更|通常是|
|包裝新增認證標誌|是|
|包裝產品圖片變更|通常是|
|安全警告變更|是|
|區域語言變更|是|
|包裝內含手冊版本變更|是|
|包裝內含配件變更|是|
|外箱規則變更|通常是|
|僅 artwork 顏色或版面更新|視情況|
|內部外箱保護方式變更|視情況|

---

## 34.13 Impact Area Matrix

## 34.13 影響領域矩陣

### EN

|Change Type|Engineering|Certification|Manufacturing|Packaging|Amazon|Sales|Support|
|---|--:|--:|--:|--:|--:|--:|--:|
|SKU|Maybe|Maybe|Maybe|Yes|Yes|Yes|Yes|
|NAME|No / Maybe|Maybe|No|Yes|Yes|Yes|Yes|
|MODEL|Yes|Yes|Yes|Maybe|Maybe|Maybe|Yes|
|ENG|Yes|Maybe|Maybe|Maybe|Maybe|No / Maybe|Yes|
|CERT|Maybe|Yes|Maybe|Yes|Yes|Yes|Yes|
|MFG|Maybe|Maybe|Yes|Maybe|No / Maybe|No|Maybe|
|PKG|No / Maybe|Maybe|Yes|Yes|Yes|Yes|Yes|
|AMZ|No|Maybe|No|Yes|Yes|Yes|Maybe|
|REGION|Maybe|Yes|Maybe|Yes|Yes|Yes|Yes|
|CONN|Yes|Yes|Maybe|Yes|Yes|Yes|Yes|
|POWER|Yes|Yes|Yes|Yes|Yes|Yes|Yes|
|VAR|Yes|Yes|Yes|Yes|Yes|Yes|Yes|
|CLAIM|Maybe|Yes|No|Yes|Yes|Yes|Yes|
|LC|Maybe|Maybe|Maybe|Maybe|Maybe|Yes|Yes|
|DOC|Maybe|Maybe|No|Yes|Yes|Yes|Yes|

### ZH-TW

|變更類型|工程|認證|生產|包裝|Amazon|銷售|支持|
|---|--:|--:|--:|--:|--:|--:|--:|
|SKU|視情況|視情況|視情況|是|是|是|是|
|NAME|否 / 視情況|視情況|否|是|是|是|是|
|MODEL|是|是|是|視情況|視情況|視情況|是|
|ENG|是|視情況|視情況|視情況|視情況|否 / 視情況|是|
|CERT|視情況|是|視情況|是|是|是|是|
|MFG|視情況|視情況|是|視情況|否 / 視情況|否|視情況|
|PKG|否 / 視情況|視情況|是|是|是|是|是|
|AMZ|否|視情況|否|是|是|是|視情況|
|REGION|視情況|是|視情況|是|是|是|是|
|CONN|是|是|視情況|是|是|是|是|
|POWER|是|是|是|是|是|是|是|
|VAR|是|是|是|是|是|是|是|
|CLAIM|視情況|是|否|是|是|是|是|
|LC|視情況|視情況|視情況|視情況|視情況|是|是|
|DOC|視情況|視情況|否|是|是|是|是|

---

## 34.14 Required Approver Matrix

## 34.14 必要核准人矩陣

### EN

|Change Type|Required Approvers|
|---|---|
|SKU|Product, Operations, Compliance where applicable|
|NAME|Product, Brand, Commercial|
|MODEL|Product, Engineering, Compliance where applicable|
|ENG|Engineering, Product, Quality where applicable|
|CERT|Compliance, Engineering, Product|
|MFG|Manufacturing, Quality, Operations|
|PKG|Packaging, Operations, Compliance where applicable|
|AMZ|Marketplace Owner, Product, Compliance, Operations|
|REGION|Compliance, Product, Commercial|
|CONN|Engineering, Compliance, Product|
|POWER|Engineering, Compliance, Product, Quality|
|VAR|Product, Engineering, Compliance, Commercial|
|CLAIM|Product, Compliance, Legal / Brand where applicable|
|LC|Product, Operations, Support, Compliance where applicable|
|DOC|Documentation, Product, Compliance where applicable|
|PRICE|Commercial, Finance, Product|
|SUPPORT|Support, Product, Operations|

### ZH-TW

|變更類型|必要核准人|
|---|---|
|SKU|產品、運營、適用時合規|
|NAME|產品、品牌、商業|
|MODEL|產品、工程、適用時合規|
|ENG|工程、產品、適用時品質|
|CERT|合規、工程、產品|
|MFG|生產、品質、運營|
|PKG|包裝、運營、適用時合規|
|AMZ|Marketplace 負責人、產品、合規、運營|
|REGION|合規、產品、商業|
|CONN|工程、合規、產品|
|POWER|工程、合規、產品、品質|
|VAR|產品、工程、合規、商業|
|CLAIM|產品、合規、適用時法律 / 品牌|
|LC|產品、運營、支持、適用時合規|
|DOC|文件、產品、適用時合規|
|PRICE|商業、財務、產品|
|SUPPORT|支持、產品、運營|

---

## 34.15 Standard Change Log Template

## 34.15 標準變更記錄模板

### EN

|Field|Entry|
|---|---|
|Change Log ID|TBD|
|Change Type|TBD|
|Severity|LOW / MEDIUM / HIGH / CRITICAL|
|Affected SKU Code|TBD / N/A|
|Affected Customer-Facing Name|TBD / N/A|
|Affected Internal Model|TBD / N/A|
|Affected Engineering Model|TBD / N/A|
|Affected Certification Model|TBD / N/A|
|Affected Manufacturing Model|TBD / N/A|
|Affected Package Model|TBD / N/A|
|Previous Value|TBD|
|New Value|TBD|
|Change Description|TBD|
|Change Reason|TBD|
|Impact Areas|Engineering / Certification / Manufacturing / Packaging / Amazon / Sales / Support|
|New SKU Required?|Yes / No / Review Required|
|Certification Review Required?|Yes / No / TBD|
|Packaging Review Required?|Yes / No / TBD|
|Amazon Review Required?|Yes / No / TBD|
|Documentation Review Required?|Yes / No / TBD|
|Evidence Required|TBD|
|Requested By|TBD|
|Review Owners|TBD|
|Approval Owner|TBD|
|Approval Status|Draft / Submitted / Under Review / Approved / Rejected|
|Implementation Status|Not Started / In Progress / Implemented / Verified|
|Effective Date|TBD|
|Revision Date|TBD|
|Related Records|TBD|
|Notes|TBD|

### ZH-TW

|欄位|填寫|
|---|---|
|變更記錄 ID|TBD|
|變更類型|TBD|
|嚴重等級|LOW / MEDIUM / HIGH / CRITICAL|
|受影響 SKU 代碼|TBD / N/A|
|受影響面向客戶名稱|TBD / N/A|
|受影響內部型號|TBD / N/A|
|受影響工程型號|TBD / N/A|
|受影響認證型號|TBD / N/A|
|受影響生產型號|TBD / N/A|
|受影響包裝型號|TBD / N/A|
|原值|TBD|
|新值|TBD|
|變更描述|TBD|
|變更原因|TBD|
|影響領域|Engineering / Certification / Manufacturing / Packaging / Amazon / Sales / Support|
|是否需要新 SKU|Yes / No / Review Required|
|是否需要認證審查|Yes / No / TBD|
|是否需要包裝審查|Yes / No / TBD|
|是否需要 Amazon 審查|Yes / No / TBD|
|是否需要文件審查|Yes / No / TBD|
|必要證據|TBD|
|申請人|TBD|
|審查負責人|TBD|
|核准負責人|TBD|
|核准狀態|Draft / Submitted / Under Review / Approved / Rejected|
|實施狀態|Not Started / In Progress / Implemented / Verified|
|生效日期|TBD|
|修訂日期|TBD|
|相關記錄|TBD|
|備註|TBD|

---

## 34.16 Completed Example — SKU Field Correction

## 34.16 完整示例 — SKU 欄位修正

### EN

|Field|Entry|
|---|---|
|Change Log ID|CR-SKU-ACT-001|
|Change Type|SKU|
|Severity|HIGH|
|Affected SKU Code|ATB-ACT-G1-US-WF-AC-E-S|
|Affected Customer-Facing Name|Artibird Act-E|
|Affected Internal Model|ACT-G1-E|
|Affected Engineering Model|ACT-G1-E-HW1.0-FW1.2-PCB1.1-DVT|
|Affected Certification Model|ACT-G1-E|
|Affected Manufacturing Model|MFG-ACT-G1-E-BOM1.0-PCB1.1-ASM1.0-SUP01-QC1.1-PKG1.0|
|Affected Package Model|Artibird Act-E Single Pack|
|Previous Value|Variant field recorded as STD|
|New Value|Variant field corrected to E|
|Change Description|Correct SKU variant from Standard to Energy-aware version|
|Change Reason|Engineering record confirms energy monitoring hardware exists|
|Impact Areas|SKU, Engineering, Certification, Packaging, Claims|
|New SKU Required?|Review Required|
|Certification Review Required?|Yes|
|Packaging Review Required?|Yes|
|Amazon Review Required?|Yes if listed|
|Documentation Review Required?|Yes|
|Evidence Required|Engineering model, metering validation plan, compliance mapping|
|Requested By|Product Owner|
|Review Owners|Engineering / Compliance / Packaging|
|Approval Owner|Product / Compliance Owner|
|Approval Status|Under Review|
|Implementation Status|Not Started|
|Effective Date|TBD|
|Revision Date|TBD|
|Related Records|CMP-ACT-G1-E-US-001 / LC-ACT-G1-E-US-001|
|Notes|No energy savings claim allowed without measured data|

### ZH-TW

|欄位|填寫|
|---|---|
|變更記錄 ID|CR-SKU-ACT-001|
|變更類型|SKU|
|嚴重等級|HIGH|
|受影響 SKU 代碼|ATB-ACT-G1-US-WF-AC-E-S|
|受影響面向客戶名稱|Artibird Act-E|
|受影響內部型號|ACT-G1-E|
|受影響工程型號|ACT-G1-E-HW1.0-FW1.2-PCB1.1-DVT|
|受影響認證型號|ACT-G1-E|
|受影響生產型號|MFG-ACT-G1-E-BOM1.0-PCB1.1-ASM1.0-SUP01-QC1.1-PKG1.0|
|受影響包裝型號|Artibird Act-E Single Pack|
|原值|Variant 欄位記錄為 STD|
|新值|Variant 欄位修正為 E|
|變更描述|將 SKU 版本從 Standard 修正為 Energy-aware version|
|變更原因|工程記錄確認存在能源監測硬體|
|影響領域|SKU、工程、認證、包裝、宣稱|
|是否需要新 SKU|Review Required|
|是否需要認證審查|Yes|
|是否需要包裝審查|Yes|
|是否需要 Amazon 審查|若已上架則 Yes|
|是否需要文件審查|Yes|
|必要證據|工程型號、計量驗證計劃、合規映射|
|申請人|Product Owner|
|審查負責人|Engineering / Compliance / Packaging|
|核准負責人|Product / Compliance Owner|
|核准狀態|Under Review|
|實施狀態|Not Started|
|生效日期|TBD|
|修訂日期|TBD|
|相關記錄|CMP-ACT-G1-E-US-001 / LC-ACT-G1-E-US-001|
|備註|無實測數據不得宣稱節能|

---

## 34.17 Completed Example — Lifecycle Status Change

## 34.17 完整示例 — 生命週期狀態變更

### EN

|Field|Entry|
|---|---|
|Change Log ID|CR-LC-SW-001|
|Change Type|LC|
|Severity|MEDIUM|
|Affected SKU Code|ATB-SW-G1-US-BLE-BAT-SCN-S|
|Affected Customer-Facing Name|Artibird Switch Scene|
|Affected Internal Model|SW-G1-SCN|
|Affected Engineering Model|SW-G1-SCN-HW1.0-FW1.0-PCB1.0-EVT|
|Previous Value|PROTO|
|New Value|EVT|
|Change Description|Move Artibird Switch Scene from prototype to engineering validation|
|Change Reason|Prototype test completed; BLE event-only function ready for validation|
|Impact Areas|Engineering, Lifecycle, Documentation|
|New SKU Required?|No|
|Certification Review Required?|Not yet; pre-review recommended|
|Packaging Review Required?|No|
|Amazon Review Required?|No|
|Documentation Review Required?|Yes|
|Evidence Required|Prototype test notes, BLE validation plan, battery profile plan|
|Requested By|Engineering Owner|
|Review Owners|Product / Engineering|
|Approval Owner|Product Owner|
|Approval Status|Approved|
|Implementation Status|Implemented|
|Effective Date|TBD|
|Revision Date|TBD|
|Related Records|LC-SW-SCN-US-001|
|Notes|Event-only boundary must remain visible in all planning records|

### ZH-TW

|欄位|填寫|
|---|---|
|變更記錄 ID|CR-LC-SW-001|
|變更類型|LC|
|嚴重等級|MEDIUM|
|受影響 SKU 代碼|ATB-SW-G1-US-BLE-BAT-SCN-S|
|受影響面向客戶名稱|Artibird Switch Scene|
|受影響內部型號|SW-G1-SCN|
|受影響工程型號|SW-G1-SCN-HW1.0-FW1.0-PCB1.0-EVT|
|原值|PROTO|
|新值|EVT|
|變更描述|將 Artibird Switch Scene 從原型推進至工程驗證|
|變更原因|原型測試完成；BLE event-only 功能準備進入驗證|
|影響領域|工程、生命週期、文件|
|是否需要新 SKU|No|
|是否需要認證審查|暫不需要；建議預審|
|是否需要包裝審查|No|
|是否需要 Amazon 審查|No|
|是否需要文件審查|Yes|
|必要證據|原型測試備註、BLE 驗證計劃、電池功耗計劃|
|申請人|Engineering Owner|
|審查負責人|Product / Engineering|
|核准負責人|Product Owner|
|核准狀態|Approved|
|實施狀態|Implemented|
|生效日期|TBD|
|修訂日期|TBD|
|相關記錄|LC-SW-SCN-US-001|
|備註|Event-only 邊界必須在所有規劃記錄中保持可見|

---

## 34.18 Completed Example — Packaging Change for Amazon FBA

## 34.18 完整示例 — Amazon FBA 包裝變更

### EN

|Field|Entry|
|---|---|
|Change Log ID|CR-PKG-SYNC-001|
|Change Type|PKG / AMZ|
|Severity|HIGH|
|Affected SKU Code|ATB-SYNC-G1-US-IRRF-USB-STD-S|
|Affected Customer-Facing Name|Artibird Sync IR/RF|
|Affected Internal Model|SYNC-G1-IRRF|
|Affected Package Model|Artibird Sync IR/RF Single Pack|
|Previous Value|Package Code: S|
|New Value|Package Code: FBA|
|Change Description|Create Amazon FBA package version for Artibird Sync IR/RF|
|Change Reason|Amazon marketplace preparation requires FNSKU and FBA-ready packaging|
|Impact Areas|Packaging, Amazon, Barcode, Claims, Operations|
|New SKU Required?|Usually Yes|
|Certification Review Required?|Review Required|
|Packaging Review Required?|Yes|
|Amazon Review Required?|Yes|
|Documentation Review Required?|Yes|
|Evidence Required|Barcode record, FNSKU, package artwork, Amazon listing draft, compliance mapping|
|Requested By|Marketplace Owner|
|Review Owners|Product / Packaging / Compliance / Operations|
|Approval Owner|Operations / Compliance Owner|
|Approval Status|Submitted|
|Implementation Status|Not Started|
|Effective Date|TBD|
|Revision Date|TBD|
|Related Records|Package Record / Amazon Listing Record / Compliance Mapping|
|Notes|FBA-ready does not mean Amazon listing or certification is approved|

### ZH-TW

|欄位|填寫|
|---|---|
|變更記錄 ID|CR-PKG-SYNC-001|
|變更類型|PKG / AMZ|
|嚴重等級|HIGH|
|受影響 SKU 代碼|ATB-SYNC-G1-US-IRRF-USB-STD-S|
|受影響面向客戶名稱|Artibird Sync IR/RF|
|受影響內部型號|SYNC-G1-IRRF|
|受影響包裝型號|Artibird Sync IR/RF Single Pack|
|原值|Package Code: S|
|新值|Package Code: FBA|
|變更描述|為 Artibird Sync IR/RF 建立 Amazon FBA 包裝版本|
|變更原因|Amazon marketplace 準備需要 FNSKU 與 FBA-ready 包裝|
|影響領域|包裝、Amazon、條碼、宣稱、運營|
|是否需要新 SKU|通常 Yes|
|是否需要認證審查|Review Required|
|是否需要包裝審查|Yes|
|是否需要 Amazon 審查|Yes|
|是否需要文件審查|Yes|
|必要證據|條碼記錄、FNSKU、包裝 artwork、Amazon 上架草案、合規映射|
|申請人|Marketplace Owner|
|審查負責人|Product / Packaging / Compliance / Operations|
|核准負責人|Operations / Compliance Owner|
|核准狀態|Submitted|
|實施狀態|Not Started|
|生效日期|TBD|
|修訂日期|TBD|
|相關記錄|Package Record / Amazon Listing Record / Compliance Mapping|
|備註|FBA-ready 不代表 Amazon 上架或認證已核准|

---

## 34.19 Change Implementation Rules

## 34.19 變更實施規則

### EN

|Rule|Requirement|
|---|---|
|Approved before implementation|HIGH and CRITICAL changes must be approved before implementation|
|Evidence attached|Required evidence must be attached or referenced|
|Affected records updated together|SKU, engineering, certification, packaging, and commercial records must stay aligned|
|Public materials checked|Website, Amazon, catalog, package, manual, and channel documents must be reviewed where affected|
|Old values preserved|Previous values must remain visible in change log|
|New values verified|Implementation must be verified before closing|
|Effective date recorded|Every implemented change must have an effective date|
|Rollback path defined|CRITICAL changes should include rollback or mitigation plan|
|Related teams notified|Sales, support, operations, and channel teams must be notified where affected|
|Change closed only after verification|No change should be closed before verification|

### ZH-TW

|規則|要求|
|---|---|
|實施前需核准|HIGH 與 CRITICAL 變更必須先核准再實施|
|附加證據|必要證據必須附加或引用|
|受影響記錄同步更新|SKU、工程、認證、包裝與商業記錄必須保持一致|
|檢查公開材料|受影響時必須審查網站、Amazon、型錄、包裝、手冊與渠道文件|
|保留舊值|原值必須在變更記錄中保持可見|
|驗證新值|關閉變更前必須驗證實施結果|
|記錄生效日期|每項已實施變更都必須有生效日期|
|定義回退路徑|CRITICAL 變更應包含回退或緩解計劃|
|通知相關團隊|受影響時必須通知銷售、支持、運營與渠道團隊|
|驗證後才能關閉|未驗證前不得關閉變更|

---

## 34.20 Rollback and Supersession Rules

## 34.20 回退與取代規則

### EN

|Scenario|Rule|
|---|---|
|Approved change becomes invalid|Mark as SUPERSEDED or ROLLED-BACK|
|Implemented change causes issue|Create rollback record and link to original change log|
|Newer change replaces older change|Mark older record as SUPERSEDED|
|Public material already published|Correct public material and record correction evidence|
|Certification mark used incorrectly|Immediate compliance review and corrective action required|
|Wrong SKU used in package|Hold affected package and create corrective change record|
|Wrong FNSKU used|Stop shipment and correct Amazon / warehouse records|
|Wrong claim published|Remove claim and record corrective action|

### ZH-TW

|場景|規則|
|---|---|
|已核准變更失效|標記為 SUPERSEDED 或 ROLLED-BACK|
|已實施變更造成問題|建立回退記錄並連結至原變更記錄|
|新變更取代舊變更|將舊記錄標記為 SUPERSEDED|
|公開材料已發布|修正公開材料並記錄修正證據|
|認證標誌使用錯誤|需要立即合規審查與整改|
|包裝使用錯誤 SKU|暫停受影響包裝並建立整改變更記錄|
|使用錯誤 FNSKU|停止出貨並修正 Amazon / 倉儲記錄|
|發布錯誤宣稱|移除宣稱並記錄整改動作|

---

## 34.21 Audit Readiness Checklist

## 34.21 稽核準備清單

### EN

|Audit Check Item|Required?|
|---|--:|
|Change Log ID exists|Yes|
|Change type recorded|Yes|
|Severity recorded|Yes|
|Affected SKU and model records listed|Yes|
|Previous value recorded|Yes|
|New value recorded|Yes|
|Change reason recorded|Yes|
|Impact areas identified|Yes|
|New SKU decision recorded|Yes|
|Compliance review decision recorded|Yes|
|Required evidence referenced|Yes|
|Review owners recorded|Yes|
|Approval owner recorded|Yes|
|Approval status recorded|Yes|
|Implementation status recorded|Yes|
|Effective date recorded where applicable|Yes|
|Related records linked|Yes|
|Public material impact reviewed|Yes where applicable|
|Final verification recorded|Yes|
|Closed or archived status recorded|Yes|

### ZH-TW

|稽核檢查項目|是否必須？|
|---|--:|
|存在變更記錄 ID|是|
|已記錄變更類型|是|
|已記錄嚴重等級|是|
|已列出受影響 SKU 與型號記錄|是|
|已記錄原值|是|
|已記錄新值|是|
|已記錄變更原因|是|
|已識別影響領域|是|
|已記錄是否需要新 SKU|是|
|已記錄合規審查決策|是|
|已引用必要證據|是|
|已記錄審查負責人|是|
|已記錄核准負責人|是|
|已記錄核准狀態|是|
|已記錄實施狀態|是|
|適用時已記錄生效日期|是|
|已連結相關記錄|是|
|適用時已審查公開材料影響|是|
|已記錄最終驗證|是|
|已記錄關閉或歸檔狀態|是|

---

## 34.22 Change Log Master Governance Rules

## 34.22 變更記錄主表治理規則

### EN

|Rule|Requirement|
|---|---|
|No silent changes|Controlled records must not be changed without change log|
|Previous and new values must be recorded|Traceability requires before-and-after values|
|High-impact changes require approval|Engineering, certification, packaging, claims, and release changes require owner approval|
|Compliance-impacting changes require compliance review|Safety, wireless, power, label, marketplace, privacy, and claim changes require review|
|Public materials must stay aligned|Website, Amazon, package, manual, and catalog content must be updated where affected|
|New SKU decisions must be explicit|Every change must state whether a new SKU is required|
|Evidence must be referenced|Test reports, certification files, package proofs, and approval records must be linked|
|Implemented changes must be verified|No change should close without verification|
|Superseded changes must remain visible|Do not delete replaced change records|
|Archived change records must remain accessible|Audit and historical traceability must be preserved|

### ZH-TW

|規則|要求|
|---|---|
|不得靜默變更|受控記錄不得在無變更記錄情況下修改|
|必須記錄原值與新值|可追蹤性需要變更前後數值|
|高影響變更需要核准|工程、認證、包裝、宣稱與發布變更需要負責人核准|
|影響合規的變更需要合規審查|安全、無線、供電、標籤、marketplace、隱私與宣稱變更需要審查|
|公開材料必須保持一致|受影響時網站、Amazon、包裝、手冊與型錄內容必須更新|
|是否需要新 SKU 必須明確|每項變更都必須說明是否需要新 SKU|
|必須引用證據|測試報告、認證文件、包裝 proof 與核准記錄必須連結|
|已實施變更必須驗證|未驗證前不得關閉變更|
|被取代變更必須保持可見|不得刪除已被取代的變更記錄|
|已歸檔變更記錄必須可存取|必須保留稽核與歷史可追蹤性|

---

## 34.23 Spreadsheet Column Recommendation

## 34.23 表格欄位建議

### EN

For Excel, Google Sheets, Airtable, ERP staging tables, PLM change records, certification trackers, or release management systems, the following column order is recommended:

```text
Change Log ID
Change Type
Severity
Affected SKU Code
Affected Customer-Facing Name
Affected Internal Model
Affected Engineering Model
Affected Certification Model
Affected Manufacturing Model
Affected Package Model
Previous Value
New Value
Change Description
Change Reason
Impact Areas
New SKU Required
Certification Review Required
Packaging Review Required
Amazon Review Required
Documentation Review Required
Evidence Required
Requested By
Review Owners
Approval Owner
Approval Status
Implementation Status
Effective Date
Revision Date
Related Records
Notes
```

### ZH-TW

對於 Excel、Google Sheets、Airtable、ERP 暫存表、PLM 變更記錄、認證追蹤表或發布管理系統，建議使用以下欄位順序：

```text
Change Log ID
Change Type
Severity
Affected SKU Code
Affected Customer-Facing Name
Affected Internal Model
Affected Engineering Model
Affected Certification Model
Affected Manufacturing Model
Affected Package Model
Previous Value
New Value
Change Description
Change Reason
Impact Areas
New SKU Required
Certification Review Required
Packaging Review Required
Amazon Review Required
Documentation Review Required
Evidence Required
Requested By
Review Owners
Approval Owner
Approval Status
Implementation Status
Effective Date
Revision Date
Related Records
Notes
```

---

## 34.24 Chapter Conclusion

## 34.24 本章結論

### EN

The Change Log and Revision Control Table is the audit backbone of the Artibird SKU and model naming system.

It ensures that every meaningful change to SKU identity, model numbers, engineering configuration, certification scope, manufacturing setup, packaging structure, Amazon listing, public claim, lifecycle status, or support boundary is recorded, reviewed, approved, implemented, verified, and archived.

A controlled change log prevents silent changes, protects historical traceability, reduces compliance risk, keeps product records aligned, and ensures that Artibird products can move through engineering, certification, manufacturing, packaging, marketplace, channel, support, and lifecycle workflows with accountable revision control.

### ZH-TW

變更記錄與版本管控表是 Artibird SKU 與型號命名系統的稽核骨架。

它確保每一項對 SKU 身份、型號、工程配置、認證範圍、生產設置、包裝結構、Amazon 上架、公開宣稱、生命週期狀態或支持邊界的重要變更，都被記錄、審查、核准、實施、驗證與歸檔。

受控的變更記錄可防止靜默變更、保護歷史可追蹤性、降低合規風險、保持產品記錄一致，並確保 Artibird 產品能夠在工程、認證、生產、包裝、marketplace、渠道、支持與生命週期流程中，以有責任歸屬的版本管控方式推進。

---

**話題延伸｜互動建議**  
下一章可以繼續寫 **Chapter 35 — Document Relationship and Record Index｜第三十五章｜文件關聯與記錄索引**，把 SKU 主表、產品線主表、工程型號、認證型號、生產型號、包裝記錄、合規映射、生命週期記錄與變更記錄全部連成一張「文件關聯索引表」。