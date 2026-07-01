# Artibird SKU & Model Naming Specification v1.0

# Artibird SKU 與型號命名規範 v1.0

## Chapter 15 — SKU Release Status

## 第十五章｜SKU 發布狀態

---

## 15.1 Purpose

## 15.1 目的

### EN

This chapter defines the official lifecycle status of Artibird SKU records from early concept planning to prototype, validation, pilot release, certification, commercial release, deprecation, discontinuation, and archival.

SKU release status is used to control whether a SKU may be used in engineering records, internal planning, certification preparation, packaging design, Amazon listing, channel communication, pricing sheets, inventory systems, production orders, or commercial sales.

The purpose of SKU release status control is to prevent unreleased, unvalidated, uncertified, deprecated, or discontinued SKUs from being incorrectly used in commercial or public-facing contexts.

### ZH-TW

本章定義 Artibird SKU 記錄從早期概念規劃、原型、驗證、試點發布、認證、商業發布、停用、退市到歸檔的官方生命週期狀態。

SKU 發布狀態用於管控某一 SKU 是否可用於工程記錄、內部規劃、認證準備、包裝設計、Amazon 上架、渠道溝通、價格表、庫存系統、生產訂單或商業銷售。

SKU 發布狀態管控的目的，是防止未發布、未驗證、未認證、已停用或已退市的 SKU 被錯誤用於商業或公開場景。

---

## 15.2 Release Status Definition

## 15.2 發布狀態定義

### EN

SKU release status defines the operational maturity and commercial permission level of a SKU.

It answers the following questions:

|Question|Description|
|---|---|
|Is this SKU only a concept?|Concept|
|Does a prototype exist?|Prototype|
|Is the SKU under engineering validation?|EVT|
|Is the SKU under design validation?|DVT|
|Is the SKU under production validation?|PVT|
|Is the SKU being tested in a limited field deployment?|Pilot|
|Has the required certification been completed?|Certified|
|Is the SKU approved for commercial release?|Released|
|Is the SKU no longer recommended for new use?|Deprecated|
|Has the SKU reached end of life?|Discontinued|
|Is the SKU retained only for historical traceability?|Archived|

### ZH-TW

SKU 發布狀態定義某一 SKU 的運營成熟度與商業允許使用層級。

它回答以下問題：

|問題|說明|
|---|---|
|此 SKU 是否僅為概念？|Concept|
|是否已有原型？|Prototype|
|是否處於工程驗證階段？|EVT|
|是否處於設計驗證階段？|DVT|
|是否處於生產驗證階段？|PVT|
|是否正在進行有限現場試點？|Pilot|
|所需認證是否已完成？|Certified|
|是否已核准商業發布？|Released|
|是否不再建議新項目使用？|Deprecated|
|是否已進入生命週期結束？|Discontinued|
|是否僅保留作歷史追蹤？|Archived|

---

## 15.3 Official SKU Release Status Table

## 15.3 官方 SKU 發布狀態表

### EN

|Status|Meaning|Commercial Use|Public Use|
|---|---|---|---|
|Concept|Idea or planning only|No|No|
|Prototype|Prototype exists|No|No|
|EVT|Engineering Validation Test|No|No|
|DVT|Design Validation Test|No|No|
|PVT|Production Validation Test|Limited / controlled|No, unless approved|
|Pilot|Limited pilot release|Limited|Controlled only|
|Certified|Required certification completed|Not automatically|Controlled until released|
|Released|Commercially released|Yes|Yes|
|Deprecated|Not recommended for new use|Limited / existing only|Controlled|
|Discontinued|End of life|No new sales|Controlled|
|Archived|Historical reference only|No|No|

### ZH-TW

|狀態|含義|商業使用|公開使用|
|---|---|---|---|
|Concept|僅概念或規劃|不可|不可|
|Prototype|已有原型|不可|不可|
|EVT|工程驗證測試|不可|不可|
|DVT|設計驗證測試|不可|不可|
|PVT|生產驗證測試|有限 / 受控|除非核准，否則不可|
|Pilot|有限試點發布|有限|僅限受控|
|Certified|所需認證已完成|不自動允許|發布前受控|
|Released|已商業發布|可以|可以|
|Deprecated|不建議新使用|僅限既有 / 有限|受控|
|Discontinued|生命週期結束|不再新增銷售|受控|
|Archived|僅供歷史參考|不可|不可|

---

## 15.4 Concept Status

## 15.4 Concept 狀態

### EN

Concept status is used when a SKU exists only as an idea, planning record, product strategy item, roadmap placeholder, or early naming proposal.

|Item|Rule|
|---|---|
|Physical product required|No|
|Engineering model required|No|
|Certification mapping required|No|
|Packaging required|No|
|Commercial sales allowed|No|
|Amazon listing allowed|No|
|Public catalog use allowed|No|
|SKU master table record required|Yes, if SKU code is reserved|

Concept SKUs must be clearly marked and must not be used in customer-facing documents.

### ZH-TW

Concept 狀態用於 SKU 僅作為想法、規劃記錄、產品策略項、路線圖佔位或早期命名提案的情況。

|項目|規則|
|---|---|
|是否需要實體產品|否|
|是否需要工程型號|否|
|是否需要認證映射|否|
|是否需要包裝|否|
|是否允許商業銷售|否|
|是否允許 Amazon 上架|否|
|是否允許公開型錄使用|否|
|是否需要 SKU 主表記錄|若已預留 SKU 代碼則需要|

Concept SKU 必須清楚標註，不得用於面向客戶文件。

---

## 15.5 Prototype Status

## 15.5 Prototype 狀態

### EN

Prototype status is used when a physical or software prototype exists but has not yet entered formal EVT, DVT, or PVT validation.

|Item|Rule|
|---|---|
|Prototype exists|Yes|
|Engineering model required|Recommended|
|Firmware version required|Recommended where applicable|
|Certification mapping required|No, unless preparing for certification|
|Packaging required|No|
|Commercial sales allowed|No|
|Demonstration allowed|Internal or controlled only|
|Public claims allowed|No|

Prototype SKUs may be used for internal engineering, early review, investor demonstration, partner exploration, or controlled lab evaluation. They must not be treated as released products.

### ZH-TW

Prototype 狀態用於已有實體或軟體原型，但尚未進入正式 EVT、DVT 或 PVT 驗證的情況。

|項目|規則|
|---|---|
|是否已有原型|是|
|是否需要工程型號|建議需要|
|是否需要韌體版本|適用時建議需要|
|是否需要認證映射|否，除非準備進入認證|
|是否需要包裝|否|
|是否允許商業銷售|否|
|是否允許展示|僅限內部或受控展示|
|是否允許公開宣稱|否|

Prototype SKU 可用於內部工程、早期審查、投資人展示、合作夥伴探索或受控實驗室評估。它不得被視為已發布產品。

---

## 15.6 EVT Status

## 15.6 EVT 狀態

### EN

EVT means Engineering Validation Test. It is used to verify whether the engineering design works as intended.

|Item|Rule|
|---|---|
|Engineering model required|Yes|
|Hardware version required|Yes|
|Firmware version required|Yes, where applicable|
|PCB version required|Yes, where applicable|
|Functional testing required|Yes|
|Certification submission allowed|Usually no, unless approved|
|Commercial sales allowed|No|
|Public listing allowed|No|

EVT SKUs are for engineering validation only. They should not be used for production, retail, Amazon, or general channel communication.

### ZH-TW

EVT 表示 Engineering Validation Test，即工程驗證測試。它用於驗證工程設計是否按預期工作。

|項目|規則|
|---|---|
|是否需要工程型號|是|
|是否需要硬體版本|是|
|是否需要韌體版本|適用時需要|
|是否需要 PCB 版本|適用時需要|
|是否需要功能測試|是|
|是否允許認證提交|通常否，除非核准|
|是否允許商業銷售|否|
|是否允許公開上架|否|

EVT SKU 僅用於工程驗證，不應用於生產、零售、Amazon 或一般渠道溝通。

---

## 15.7 DVT Status

## 15.7 DVT 狀態

### EN

DVT means Design Validation Test. It is used to verify whether the design meets product, reliability, safety, usability, environmental, and performance requirements.

|Item|Rule|
|---|---|
|Engineering model required|Yes|
|Test plan required|Yes|
|Reliability test required|Yes, where applicable|
|Safety review required|Yes, for powered products|
|Connectivity validation required|Yes, for connected products|
|Packaging draft allowed|Yes|
|Certification preparation allowed|Yes|
|Commercial sales allowed|No|
|Public listing allowed|No|

DVT SKUs may support certification preparation, packaging draft development, manufacturing preparation, and internal product readiness review. They are not released commercial SKUs.

### ZH-TW

DVT 表示 Design Validation Test，即設計驗證測試。它用於驗證設計是否滿足產品、可靠性、安全、可用性、環境與性能要求。

|項目|規則|
|---|---|
|是否需要工程型號|是|
|是否需要測試計劃|是|
|是否需要可靠性測試|適用時需要|
|是否需要安全審查|帶電產品需要|
|是否需要連接驗證|連接產品需要|
|是否允許包裝草案|是|
|是否允許認證準備|是|
|是否允許商業銷售|否|
|是否允許公開上架|否|

DVT SKU 可支援認證準備、包裝草案開發、生產準備與內部產品就緒審查。它不是已發布商業 SKU。

---

## 15.8 PVT Status

## 15.8 PVT 狀態

### EN

PVT means Production Validation Test. It is used to verify whether the product can be manufactured consistently under defined production conditions.

|Item|Rule|
|---|---|
|Manufacturing model required|Yes|
|BOM version required|Yes|
|Factory process record required|Yes|
|QC plan required|Yes|
|Packaging version required|Yes, where applicable|
|Certification status required|Required before commercial release|
|Limited production allowed|Yes, controlled|
|Commercial sales allowed|Usually no, unless approved for controlled release|
|Public listing allowed|No, unless approved|

PVT SKUs may be used for production readiness, pilot manufacturing, quality control verification, and limited controlled inventory preparation.

### ZH-TW

PVT 表示 Production Validation Test，即生產驗證測試。它用於驗證產品是否能在明確生產條件下穩定製造。

|項目|規則|
|---|---|
|是否需要生產型號|是|
|是否需要 BOM 版本|是|
|是否需要工廠流程記錄|是|
|是否需要 QC 計劃|是|
|是否需要包裝版本|適用時需要|
|是否需要認證狀態|商業發布前必須|
|是否允許有限生產|是，受控|
|是否允許商業銷售|通常否，除非核准為受控發布|
|是否允許公開上架|除非核准，否則不可|

PVT SKU 可用於生產就緒、試產、品質控制驗證與有限受控庫存準備。

---

## 15.9 Pilot Status

## 15.9 Pilot 狀態

### EN

Pilot status is used for limited field deployment before full commercial release.

|Item|Rule|
|---|---|
|Field deployment allowed|Yes, controlled|
|Customer or partner use allowed|Limited|
|Commercial sale allowed|Limited / controlled|
|Public listing allowed|Usually no|
|Claim boundary required|Yes|
|Support plan required|Yes|
|Feedback collection required|Recommended|
|Certification status required|Depends on product and region|
|Risk review required|Yes|

Pilot SKUs must be controlled by deployment scope, customer group, geography, support plan, claim boundary, and review period.

### ZH-TW

Pilot 狀態用於完整商業發布前的有限現場部署。

|項目|規則|
|---|---|
|是否允許現場部署|是，受控|
|是否允許客戶或合作夥伴使用|有限|
|是否允許商業銷售|有限 / 受控|
|是否允許公開上架|通常否|
|是否需要宣稱邊界|是|
|是否需要支持計劃|是|
|是否需要回饋收集|建議需要|
|是否需要認證狀態|取決於產品與區域|
|是否需要風險審查|是|

Pilot SKU 必須按部署範圍、客戶群、地理區域、支持計劃、宣稱邊界與審查週期進行管控。

---

## 15.10 Certified Status

## 15.10 Certified 狀態

### EN

Certified status means that the required certification for the SKU or mapped certification model has been completed.

Certified does not automatically mean commercially released.

|Item|Rule|
|---|---|
|Certification completed|Yes|
|Certification model mapped|Yes|
|Product label aligned|Required|
|Packaging aligned|Required before release|
|Commercial sales allowed|Only after release approval|
|Amazon listing allowed|Only after listing approval|
|Claim boundary required|Yes|
|Region-specific review required|Yes|

A Certified SKU still requires commercial, packaging, inventory, pricing, and release approval before it becomes Released.

### ZH-TW

Certified 狀態表示該 SKU 或其映射認證型號所需認證已完成。

Certified 不自動等於已商業發布。

|項目|規則|
|---|---|
|是否完成認證|是|
|是否映射認證型號|是|
|產品標籤是否一致|必須|
|包裝是否一致|發布前必須|
|是否允許商業銷售|僅在發布核准後|
|是否允許 Amazon 上架|僅在上架核准後|
|是否需要宣稱邊界|是|
|是否需要區域審查|是|

Certified SKU 仍需完成商業、包裝、庫存、定價與發布核准後，才能成為 Released。

---

## 15.11 Released Status

## 15.11 Released 狀態

### EN

Released status means that the SKU is approved for commercial use.

|Item|Rule|
|---|---|
|Commercial sales allowed|Yes|
|Public catalog use allowed|Yes|
|Amazon listing allowed|Yes, if marketplace record approved|
|Channel communication allowed|Yes|
|Production order allowed|Yes|
|Inventory stocking allowed|Yes|
|Pricing sheet use allowed|Yes|
|Claim boundary required|Yes|
|SKU master table completion required|Yes|

Released SKUs must remain aligned with product configuration, certification status, packaging version, barcode records, pricing records, and channel availability.

### ZH-TW

Released 狀態表示該 SKU 已獲准商業使用。

|項目|規則|
|---|---|
|是否允許商業銷售|是|
|是否允許公開型錄使用|是|
|是否允許 Amazon 上架|若站點記錄已核准，則可以|
|是否允許渠道溝通|是|
|是否允許生產訂單|是|
|是否允許庫存備貨|是|
|是否允許價格表使用|是|
|是否需要宣稱邊界|是|
|是否需要 SKU 主表完成|是|

Released SKU 必須持續與產品配置、認證狀態、包裝版本、條碼記錄、定價記錄與渠道可用性保持一致。

---

## 15.12 Deprecated Status

## 15.12 Deprecated 狀態

### EN

Deprecated status means that the SKU is no longer recommended for new use but may continue to receive limited support.

|Item|Rule|
|---|---|
|New sales allowed|Usually no|
|Existing customer support|Yes|
|Replacement SKU required|Recommended|
|Inventory sell-through allowed|Controlled|
|Amazon listing allowed|Usually no new listing|
|Channel use allowed|Limited|
|Production allowed|Usually no|
|Historical record retained|Yes|

Deprecated SKUs must include a reason, replacement SKU where applicable, inventory handling plan, and support boundary.

### ZH-TW

Deprecated 狀態表示該 SKU 不再建議新使用，但可繼續提供有限支持。

|項目|規則|
|---|---|
|是否允許新銷售|通常否|
|是否支持既有客戶|是|
|是否需要替代 SKU|建議需要|
|是否允許庫存清售|受控|
|是否允許 Amazon 上新頁面|通常不允許|
|是否允許渠道使用|有限|
|是否允許生產|通常否|
|是否保留歷史記錄|是|

Deprecated SKU 必須包含停用原因、適用時的替代 SKU、庫存處理方案與支持邊界。

---

## 15.13 Discontinued Status

## 15.13 Discontinued 狀態

### EN

Discontinued status means that the SKU has reached end of life and is no longer sold, produced, listed, or recommended for use.

|Item|Rule|
|---|---|
|New sales allowed|No|
|New production allowed|No|
|Amazon listing allowed|No new listing|
|Channel order allowed|No|
|Support allowed|Limited according to support policy|
|Replacement SKU required|Recommended|
|Historical record retained|Yes|
|SKU reuse allowed|No|

Discontinued SKUs must remain in the master table for historical traceability.

### ZH-TW

Discontinued 狀態表示該 SKU 已達生命週期結束，不再銷售、生產、上架或建議使用。

|項目|規則|
|---|---|
|是否允許新銷售|否|
|是否允許新生產|否|
|是否允許 Amazon 上新頁面|否|
|是否允許渠道下單|否|
|是否允許支持|依支持政策有限支持|
|是否需要替代 SKU|建議需要|
|是否保留歷史記錄|是|
|是否允許 SKU 重用|否|

Discontinued SKU 必須保留於主表中，以維持歷史可追蹤。

---

## 15.14 Archived Status

## 15.14 Archived 狀態

### EN

Archived status means that the SKU is retained only for historical reference, audit, certification traceability, warranty history, or document control.

|Item|Rule|
|---|---|
|Commercial use allowed|No|
|Production allowed|No|
|Public listing allowed|No|
|Historical reference allowed|Yes|
|Audit reference allowed|Yes|
|Certification traceability allowed|Yes|
|SKU reuse allowed|No|

Archived records should not be deleted. They protect traceability across past shipments, certification files, sales records, warranty support, and historical product documentation.

### ZH-TW

Archived 狀態表示 SKU 僅保留作歷史參考、審計、認證追蹤、保固歷史或文件管控用途。

|項目|規則|
|---|---|
|是否允許商業使用|否|
|是否允許生產|否|
|是否允許公開上架|否|
|是否允許歷史參考|是|
|是否允許審計參考|是|
|是否允許認證追蹤|是|
|是否允許 SKU 重用|否|

Archived 記錄不應刪除。它們用於保護過往出貨、認證文件、銷售記錄、保固支持與歷史產品文件的可追蹤性。

---

## 15.15 Status Transition Rules

## 15.15 狀態轉換規則

### EN

|From|To|Requirement|
|---|---|---|
|Concept|Prototype|Prototype or development record created|
|Prototype|EVT|Engineering validation plan approved|
|EVT|DVT|EVT test results reviewed|
|DVT|PVT|DVT requirements passed or conditionally accepted|
|PVT|Pilot|Production validation and limited deployment plan approved|
|PVT|Certified|Certification completed where required|
|Certified|Released|Commercial, packaging, inventory, and claim review completed|
|Pilot|Released|Pilot results reviewed and release approved|
|Released|Deprecated|Replacement, issue, strategy, or lifecycle reason recorded|
|Deprecated|Discontinued|End-of-life decision approved|
|Discontinued|Archived|Historical record finalized|
|Any Status|On Hold|Risk, compliance, certification, supply, or commercial reason recorded|

### ZH-TW

|從|到|要求|
|---|---|---|
|Concept|Prototype|已建立原型或開發記錄|
|Prototype|EVT|工程驗證計劃已核准|
|EVT|DVT|EVT 測試結果已審查|
|DVT|PVT|DVT 要求通過或有條件接受|
|PVT|Pilot|生產驗證與有限部署計劃已核准|
|PVT|Certified|適用時已完成認證|
|Certified|Released|商業、包裝、庫存與宣稱審查完成|
|Pilot|Released|試點結果已審查並核准發布|
|Released|Deprecated|已記錄替代、問題、策略或生命週期原因|
|Deprecated|Discontinued|生命週期結束決策已核准|
|Discontinued|Archived|歷史記錄已完成|
|任意狀態|On Hold|已記錄風險、合規、認證、供應或商業原因|

---

## 15.16 Status and Allowed Usage Matrix

## 15.16 狀態與允許使用矩陣

### EN

|Status|Engineering|Certification|Packaging|Production|Sales|Amazon|Channel|
|---|--:|--:|--:|--:|--:|--:|--:|
|Concept|Yes|No|No|No|No|No|No|
|Prototype|Yes|No / Prep|No|No|No|No|No|
|EVT|Yes|Prep only|No|No|No|No|No|
|DVT|Yes|Prep / Possible|Draft|No|No|No|No|
|PVT|Yes|Yes / Required|Yes|Controlled|No / Limited|No|No / Limited|
|Pilot|Yes|Required where applicable|Yes|Limited|Limited|Usually No|Limited|
|Certified|Yes|Yes|Yes|Possible|Not automatic|Not automatic|Not automatic|
|Released|Yes|Yes|Yes|Yes|Yes|Yes where approved|Yes|
|Deprecated|Support only|Reference|Reference|Usually No|Limited|Usually No|Limited|
|Discontinued|Reference|Reference|Reference|No|No|No|No|
|Archived|Reference|Reference|Reference|No|No|No|No|

### ZH-TW

|狀態|工程|認證|包裝|生產|銷售|Amazon|渠道|
|---|--:|--:|--:|--:|--:|--:|--:|
|Concept|是|否|否|否|否|否|否|
|Prototype|是|否 / 準備|否|否|否|否|否|
|EVT|是|僅準備|否|否|否|否|否|
|DVT|是|準備 / 可能|草案|否|否|否|否|
|PVT|是|是 / 必要|是|受控|否 / 有限|否|否 / 有限|
|Pilot|是|適用時必須|是|有限|有限|通常否|有限|
|Certified|是|是|是|可能|不自動|不自動|不自動|
|Released|是|是|是|是|是|核准時可以|是|
|Deprecated|僅支持|參考|參考|通常否|有限|通常否|有限|
|Discontinued|參考|參考|參考|否|否|否|否|
|Archived|參考|參考|參考|否|否|否|否|

---

## 15.17 Status Change Approval Rules

## 15.17 狀態變更核准規則

### EN

|Status Change|Required Review|
|---|---|
|Concept to Prototype|Product / engineering|
|Prototype to EVT|Engineering|
|EVT to DVT|Engineering / QA|
|DVT to PVT|Engineering / QA / manufacturing|
|PVT to Pilot|Product / operations / support / compliance|
|PVT to Certified|Compliance / certification owner|
|Certified to Released|Product / commercial / operations / packaging / compliance|
|Released to Deprecated|Product / operations / sales / support|
|Deprecated to Discontinued|Product / commercial / operations|
|Discontinued to Archived|Operations / documentation owner|
|Any status to On Hold|Responsible owner and risk reviewer|

### ZH-TW

|狀態變更|必要審查|
|---|---|
|Concept 到 Prototype|產品 / 工程|
|Prototype 到 EVT|工程|
|EVT 到 DVT|工程 / 品質|
|DVT 到 PVT|工程 / 品質 / 生產|
|PVT 到 Pilot|產品 / 運營 / 支持 / 合規|
|PVT 到 Certified|合規 / 認證負責人|
|Certified 到 Released|產品 / 商務 / 運營 / 包裝 / 合規|
|Released 到 Deprecated|產品 / 運營 / 銷售 / 支持|
|Deprecated 到 Discontinued|產品 / 商務 / 運營|
|Discontinued 到 Archived|運營 / 文件負責人|
|任意狀態到 On Hold|責任負責人與風險審查人|

---

## 15.18 Release Status Governance Rules

## 15.18 發布狀態治理規則

### EN

|Rule|Requirement|
|---|---|
|Release status must be recorded for every SKU|No SKU may exist without status|
|Concept and Prototype SKUs must not be publicly used|They are planning or engineering records only|
|EVT and DVT SKUs must not be commercially sold|They are validation records|
|PVT SKUs may be used only under controlled production validation|Not normal commercial release|
|Certified does not equal Released|Commercial approval is still required|
|Released SKUs must have complete master records|No incomplete SKU should be released|
|Deprecated SKUs must identify replacement or support boundary|Existing users and inventory must be controlled|
|Discontinued SKUs must not be reused|Historical traceability must be protected|
|Archived SKUs must remain searchable|Do not delete historical records|
|Status changes require approval|No silent status change is allowed|

### ZH-TW

|規則|要求|
|---|---|
|每個 SKU 都必須記錄發布狀態|不得存在無狀態 SKU|
|Concept 與 Prototype SKU 不得公開使用|它們僅為規劃或工程記錄|
|EVT 與 DVT SKU 不得商業銷售|它們是驗證記錄|
|PVT SKU 僅可在受控生產驗證中使用|不是正常商業發布|
|Certified 不等於 Released|仍需商業核准|
|Released SKU 必須具備完整主表記錄|不得發布不完整 SKU|
|Deprecated SKU 必須識別替代項或支持邊界|既有用戶與庫存必須受控|
|Discontinued SKU 不得重用|必須保護歷史可追蹤性|
|Archived SKU 必須可搜尋|不得刪除歷史記錄|
|狀態變更需要核准|不允許靜默變更狀態|

---

## 15.19 Required Master Table Fields

## 15.19 必備主表欄位

### EN

Each SKU master record must include release-status-related fields.

|Field|Requirement|
|---|---|
|SKU Code|Required|
|Current Release Status|Required|
|Previous Release Status|Required where applicable|
|Status Change Date|Required|
|Status Change Reason|Required|
|Status Approval Owner|Required|
|Engineering Readiness|Required where applicable|
|Certification Status|Required|
|Packaging Readiness|Required|
|Production Readiness|Required where applicable|
|Commercial Release Approval|Required for Released|
|Replacement SKU|Required for Deprecated / Discontinued where applicable|
|Support Boundary|Required for Deprecated / Discontinued|
|Archive Reference|Required for Archived|
|Revision Date|Required|

### ZH-TW

每一筆 SKU 主記錄都必須包含與發布狀態相關的欄位。

|欄位|要求|
|---|---|
|SKU 代碼|必填|
|當前發布狀態|必填|
|前一發布狀態|適用時必填|
|狀態變更日期|必填|
|狀態變更原因|必填|
|狀態核准負責人|必填|
|工程就緒狀態|適用時必填|
|認證狀態|必填|
|包裝就緒狀態|必填|
|生產就緒狀態|適用時必填|
|商業發布核准|Released 必填|
|替代 SKU|Deprecated / Discontinued 適用時必填|
|支持邊界|Deprecated / Discontinued 必填|
|歸檔引用|Archived 必填|
|修訂日期|必填|

---

## 15.20 Chapter Conclusion

## 15.20 本章結論

### EN

SKU release status defines where a SKU stands in the product lifecycle and what it may be used for.

A Concept SKU is not a product. A Prototype SKU is not a released product. EVT, DVT, and PVT SKUs are validation-stage records. Certified means certification has been completed, but it does not automatically mean commercial release. Released means the SKU is approved for commercial use. Deprecated, Discontinued, and Archived statuses protect lifecycle control and historical traceability.

A clear release status system prevents unfinished, uncertified, deprecated, or discontinued SKUs from being used incorrectly in packaging, Amazon listings, production, sales, channel communication, and commercial deployment.

### ZH-TW

SKU 發布狀態定義某一 SKU 在產品生命週期中的位置，以及它可以被用於哪些場景。

Concept SKU 不是產品；Prototype SKU 不是已發布產品；EVT、DVT 與 PVT SKU 是驗證階段記錄。Certified 表示認證已完成，但不自動等於商業發布。Released 表示 SKU 已核准商業使用。Deprecated、Discontinued 與 Archived 狀態則用於保護生命週期管控與歷史可追蹤性。

清晰的發布狀態系統，可以防止未完成、未認證、已停用或已退市 SKU 被錯誤用於包裝、Amazon 上架、生產、銷售、渠道溝通與商業部署。

---

本章依據《Artibird SKU & Model Naming Specification v1.0》的既定撰寫計劃展開；原始規劃已將 Chapter 15 設為 SKU Release Status，並列出 Concept、Prototype、EVT、DVT、PVT、Pilot、Certified、Released、Deprecated、Discontinued 作為 SKU 生命週期狀態。

**話題延伸｜互動建議**  
下一章可以繼續寫 **Chapter 16 — SKU Retirement and Version Control｜第十六章｜SKU 退市與版本控制**，正式定義 SKU 替換、Legacy 支持、庫存處理、認證影響、包裝更新、Amazon 更新與渠道通知規則。