# Artibird SKU & Model Naming Specification v1.0

# Artibird SKU 與型號命名規範 v1.0

## Chapter 33 — Lifecycle and Release Status Master Table

## 第三十三章｜生命週期與發布狀態主表

---

## 33.1 Purpose

## 33.1 目的

### EN

This chapter defines the Lifecycle and Release Status Master Table used by Artibird SKU records, internal model records, engineering records, certification records, manufacturing records, packaging records, Amazon listings, channel records, project deployment records, and archival records.

The lifecycle status defines where a SKU or model stands within the product development, validation, certification, production, release, retirement, and archival process.

The purpose of this chapter is to ensure that every SKU, model, package, and product record has a clear release status before it is used for engineering, certification, manufacturing, packaging, Amazon listing, sales, channel distribution, customer support, or historical reference.

### ZH-TW

本章定義 Artibird SKU 記錄、內部型號記錄、工程記錄、認證記錄、生產記錄、包裝記錄、Amazon 上架記錄、渠道記錄、專案部署記錄與歸檔記錄中使用的生命週期與發布狀態主表。

生命週期狀態用於定義某一 SKU 或型號位於產品開發、驗證、認證、生產、發布、退市與歸檔流程中的哪一階段。

本章目的，是確保每一個 SKU、型號、包裝與產品記錄，在用於工程、認證、生產、包裝、Amazon 上架、銷售、渠道分發、客戶支持或歷史引用之前，都具有清晰的發布狀態。

---

## 33.2 Lifecycle Status Definition

## 33.2 生命週期狀態定義

### EN

A lifecycle status defines the operational maturity and allowed use scope of a SKU or product record.

It answers the following questions:

|Question|Description|
|---|---|
|Is this only a concept?|Concept status|
|Has a prototype been built?|Prototype status|
|Has engineering validation started?|EVT status|
|Has design validation started?|DVT status|
|Has production validation started?|PVT status|
|Is the product in pilot deployment?|Pilot status|
|Has certification been completed?|Certified / Listed status|
|Is the product commercially released?|Released status|
|Is the product still recommended for new sales?|Active / Deprecated status|
|Has the product been discontinued?|Discontinued status|
|Is the record historical only?|Archived status|

### ZH-TW

生命週期狀態定義某一 SKU 或產品記錄的運營成熟度與允許使用範圍。

它回答以下問題：

|問題|說明|
|---|---|
|這是否僅是概念？|Concept 狀態|
|是否已製作原型？|Prototype 狀態|
|是否已開始工程驗證？|EVT 狀態|
|是否已開始設計驗證？|DVT 狀態|
|是否已開始生產驗證？|PVT 狀態|
|是否進入試點部署？|Pilot 狀態|
|是否已完成認證？|Certified / Listed 狀態|
|是否已商業發布？|Released 狀態|
|是否仍建議用於新銷售？|Active / Deprecated 狀態|
|是否已停產？|Discontinued 狀態|
|是否僅作歷史記錄？|Archived 狀態|

---

## 33.3 Lifecycle Governance Principle

## 33.3 生命週期治理原則

### EN

The core principle of lifecycle governance is:

```text
One release status = one controlled level of allowed use.
```

A lifecycle status must control what a SKU or model may be used for.

For example:

```text
DVT = Design Validation Test stage
```

It does not automatically mean:

```text
Ready for mass production
Ready for Amazon listing
Ready for public sale
Certified
Released
Safe to claim commercial availability
```

Each next stage must be supported by required engineering, certification, production, packaging, commercial, and compliance records.

### ZH-TW

生命週期治理的核心原則是：

```text
一個發布狀態 = 一個受控允許使用等級。
```

生命週期狀態必須管控某一 SKU 或型號可被用於什麼用途。

例如：

```text
DVT = 設計驗證測試階段
```

不自動代表：

```text
已可量產
已可 Amazon 上架
已可公開銷售
已完成認證
已正式發布
可宣稱商業可用
```

每一個下一階段都必須由必要的工程、認證、生產、包裝、商業與合規記錄支持。

---

## 33.4 Standard Lifecycle and Release Status Table

## 33.4 標準生命週期與發布狀態表

### EN

|Status Code|Status Name|Meaning|Typical Use|
|---|---|---|---|
|CONCEPT|Concept|Idea or planning stage|Product planning, naming proposal|
|PROTO|Prototype|Early physical or software prototype|Engineering exploration|
|EVT|Engineering Validation Test|Engineering feasibility and function validation|Hardware / firmware validation|
|DVT|Design Validation Test|Design-level validation and refinement|Design confirmation|
|PVT|Production Validation Test|Factory and production-process validation|Pilot production preparation|
|PILOT|Pilot Deployment|Controlled real-world deployment|Trial project, limited field test|
|CERT-PREP|Certification Preparation|Certification documents and samples being prepared|Lab preparation|
|CERT-TEST|Certification Testing|Lab testing or compliance testing in progress|Certification execution|
|CERTIFIED|Certified / Listed|Certification or listing completed|Controlled claim use|
|RELEASED|Released|Approved for public or commercial release|Sales, channel, Amazon, website|
|ACTIVE|Active|Current sellable or deployable status|Normal sales and support|
|HOLD|On Hold|Temporarily paused|No new release or sale|
|DEPRECATED|Deprecated|Not recommended for new sales|Existing support only|
|DISCONTINUED|Discontinued|No longer sold or produced|Support / replacement management|
|ARCHIVED|Archived|Historical reference only|Traceability and documentation|

### ZH-TW

|狀態代碼|狀態名稱|含義|典型用途|
|---|---|---|---|
|CONCEPT|Concept|想法或規劃階段|產品規劃、命名提案|
|PROTO|Prototype|早期實體或軟體原型|工程探索|
|EVT|Engineering Validation Test|工程可行性與功能驗證|硬體 / 韌體驗證|
|DVT|Design Validation Test|設計級驗證與修正|設計確認|
|PVT|Production Validation Test|工廠與生產流程驗證|試產準備|
|PILOT|Pilot Deployment|受控真實環境部署|試點專案、有限現場測試|
|CERT-PREP|Certification Preparation|認證文件與樣品準備中|實驗室準備|
|CERT-TEST|Certification Testing|實驗室測試或合規測試中|認證執行|
|CERTIFIED|Certified / Listed|認證或列名完成|受控宣稱使用|
|RELEASED|Released|已核准公開或商業發布|銷售、渠道、Amazon、網站|
|ACTIVE|Active|當前可銷售或可部署狀態|正常銷售與支持|
|HOLD|On Hold|暫停狀態|不得新增發布或銷售|
|DEPRECATED|Deprecated|不建議用於新銷售|僅既有支持|
|DISCONTINUED|Discontinued|不再銷售或生產|支持 / 替代管理|
|ARCHIVED|Archived|僅歷史參考|可追蹤與文件留存|

---

## 33.5 Status Use in SKU Master Records

## 33.5 狀態在 SKU 主記錄中的使用

### EN

Lifecycle status must be recorded in the SKU master record and must be consistent with engineering, certification, manufacturing, packaging, commercial, and compliance records.

|Record Area|Lifecycle Status Impact|
|---|---|
|SKU Master Record|Defines whether the SKU may be planned, tested, released, sold, deprecated, or archived|
|Internal Model Record|Defines whether the model is draft, validated, released, or retired|
|Engineering Record|Defines EVT, DVT, PVT, validation stage, and technical maturity|
|Certification Record|Defines certification preparation, testing, completed, failed, or archived status|
|Manufacturing Record|Defines factory readiness, pilot production, mass production, or discontinuation|
|Packaging Record|Defines draft package, approved package, FBA-ready package, or retired package|
|Amazon Record|Defines listing preparation, compliance review, active listing, or retired listing|
|Channel Record|Defines distributor readiness, project availability, or channel retirement|
|Support Record|Defines support boundary, replacement SKU, and end-of-life handling|

### ZH-TW

生命週期狀態必須記錄於 SKU 主記錄中，並且必須與工程、認證、生產、包裝、商業與合規記錄一致。

|記錄領域|生命週期狀態影響|
|---|---|
|SKU 主記錄|定義 SKU 是否可規劃、測試、發布、銷售、停用或歸檔|
|內部型號記錄|定義型號是否為草案、已驗證、已發布或已退役|
|工程記錄|定義 EVT、DVT、PVT、驗證階段與技術成熟度|
|認證記錄|定義認證準備、測試、完成、失敗或歸檔狀態|
|生產記錄|定義工廠就緒、試產、量產或停產|
|包裝記錄|定義草案包裝、已核准包裝、FBA-ready 包裝或退役包裝|
|Amazon 記錄|定義上架準備、合規審查、有效上架或退役上架|
|渠道記錄|定義分銷商就緒、專案可用或渠道退役|
|支持記錄|定義支持邊界、替代 SKU 與生命週期結束處理|

---

## 33.6 Concept Status — CONCEPT

## 33.6 概念狀態 — CONCEPT

### EN

CONCEPT is used when a product, SKU, model, package, or system record exists only as an idea, naming proposal, early planning item, or product strategy direction.

|Field|Requirement|
|---|---|
|Status Code|CONCEPT|
|Allowed Use|Internal planning, naming exploration, product roadmap discussion|
|Not Allowed Use|Public listing, packaging, certification filing, manufacturing, customer quotation|
|Required Records|Product idea note, preliminary product line, initial owner|
|Approval Level|Product planning approval only|
|Claim Boundary|No public claim allowed|

A CONCEPT record must not be treated as an actual product.

### ZH-TW

CONCEPT 用於產品、SKU、型號、包裝或系統記錄僅作為想法、命名提案、早期規劃項或產品策略方向存在的情況。

|欄位|要求|
|---|---|
|狀態代碼|CONCEPT|
|允許用途|內部規劃、命名探索、產品路線討論|
|不允許用途|公開上架、包裝、認證提交、生產、客戶報價|
|必要記錄|產品想法備註、初步產品線、初始負責人|
|核准等級|僅產品規劃核准|
|宣稱邊界|不允許公開宣稱|

CONCEPT 記錄不得被視為實際產品。

---

## 33.7 Prototype Status — PROTO

## 33.7 原型狀態 — PROTO

### EN

PROTO is used when an early prototype has been created for functional exploration, hardware feasibility, software concept testing, UI validation, or demonstration under controlled conditions.

|Field|Requirement|
|---|---|
|Status Code|PROTO|
|Allowed Use|Internal testing, engineering exploration, controlled demo|
|Not Allowed Use|Public sale, Amazon listing, certification claim, production release|
|Required Records|Prototype version, basic BOM, firmware or software reference, test notes|
|Approval Level|Product and engineering approval|
|Claim Boundary|Prototype only; not commercial product|

A PROTO record may be demonstrated internally, but it must not be represented as a final released product.

### ZH-TW

PROTO 用於已建立早期原型，用於功能探索、硬體可行性、軟體概念測試、UI 驗證或受控展示的情況。

|欄位|要求|
|---|---|
|狀態代碼|PROTO|
|允許用途|內部測試、工程探索、受控展示|
|不允許用途|公開銷售、Amazon 上架、認證宣稱、生產發布|
|必要記錄|原型版本、基礎 BOM、韌體或軟體引用、測試備註|
|核准等級|產品與工程核准|
|宣稱邊界|僅原型；非商業產品|

PROTO 記錄可用於內部展示，但不得被表示為最終已發布產品。

---

## 33.8 Engineering Validation Test Status — EVT

## 33.8 工程驗證測試狀態 — EVT

### EN

EVT is used when engineering validation is being performed to confirm whether the core hardware, firmware, communication, power, sensing, or execution functions are technically feasible.

|Field|Requirement|
|---|---|
|Status Code|EVT|
|Allowed Use|Engineering validation, functional testing, firmware baseline testing|
|Not Allowed Use|Public commercial release, certification claim, mass production|
|Required Records|Engineering model, hardware version, firmware version, PCB version, EVT test plan|
|Approval Level|Engineering approval|
|Claim Boundary|Engineering validation only|

EVT confirms whether the design can work. It does not confirm that the product is ready for production or market release.

### ZH-TW

EVT 用於執行工程驗證，以確認核心硬體、韌體、通訊、供電、感測或執行功能在技術上是否可行的階段。

|欄位|要求|
|---|---|
|狀態代碼|EVT|
|允許用途|工程驗證、功能測試、韌體基線測試|
|不允許用途|公開商業發布、認證宣稱、量產|
|必要記錄|工程型號、硬體版本、韌體版本、PCB 版本、EVT 測試計劃|
|核准等級|工程核准|
|宣稱邊界|僅工程驗證|

EVT 確認設計是否能運作，但不確認產品已可生產或上市。

---

## 33.9 Design Validation Test Status — DVT

## 33.9 設計驗證測試狀態 — DVT

### EN

DVT is used when the product design is being validated against functional, mechanical, electrical, thermal, RF, safety, reliability, UI, and user-experience requirements.

|Field|Requirement|
|---|---|
|Status Code|DVT|
|Allowed Use|Design validation, pre-certification preparation, controlled partner review|
|Not Allowed Use|Mass production, unrestricted public sale, final certification claim|
|Required Records|DVT test plan, engineering model, test reports, design issue log|
|Approval Level|Product, engineering, and compliance review where applicable|
|Claim Boundary|Design validation only; no final market claim|

DVT indicates that the design is being validated, not that it has completed certification or release approval.

### ZH-TW

DVT 用於產品設計正在依功能、機構、電氣、熱、RF、安全、可靠性、UI 與用戶體驗要求進行驗證的階段。

|欄位|要求|
|---|---|
|狀態代碼|DVT|
|允許用途|設計驗證、認證前準備、受控合作夥伴審查|
|不允許用途|量產、不受限公開銷售、最終認證宣稱|
|必要記錄|DVT 測試計劃、工程型號、測試報告、設計問題清單|
|核准等級|產品、工程與適用時合規審查|
|宣稱邊界|僅設計驗證；不得作最終市場宣稱|

DVT 表示設計正在被驗證，不表示已完成認證或發布核准。

---

## 33.10 Production Validation Test Status — PVT

## 33.10 生產驗證測試狀態 — PVT

### EN

PVT is used when the product is being validated through factory process, assembly workflow, BOM control, QC procedure, packaging operation, and pilot production readiness.

|Field|Requirement|
|---|---|
|Status Code|PVT|
|Allowed Use|Production validation, pilot build, factory QC validation|
|Not Allowed Use|Full commercial release unless release approval is completed|
|Required Records|Manufacturing model, BOM version, assembly version, QC plan, package version|
|Approval Level|Engineering, manufacturing, operations, and quality approval|
|Claim Boundary|Production validation only|

PVT confirms whether the product can be built consistently. It does not automatically approve commercial release.

### ZH-TW

PVT 用於透過工廠流程、組裝工作流、BOM 管控、QC 流程、包裝操作與試產準備度對產品進行驗證的階段。

|欄位|要求|
|---|---|
|狀態代碼|PVT|
|允許用途|生產驗證、試產構建、工廠 QC 驗證|
|不允許用途|除非完成發布核准，否則不得作完整商業發布|
|必要記錄|生產型號、BOM 版本、組裝版本、QC 計劃、包裝版本|
|核准等級|工程、生產、運營與品質核准|
|宣稱邊界|僅生產驗證|

PVT 確認產品是否能被穩定製造，但不自動核准商業發布。

---

## 33.11 Pilot Deployment Status — PILOT

## 33.11 試點部署狀態 — PILOT

### EN

PILOT is used when the product or system is deployed in a limited, controlled real-world environment for observation, feedback, integration validation, or customer trial.

|Field|Requirement|
|---|---|
|Status Code|PILOT|
|Allowed Use|Controlled field test, project trial, partner evaluation, limited deployment|
|Not Allowed Use|General public sale, broad marketing claim, unrestricted channel release|
|Required Records|Pilot scope, customer / site boundary, support boundary, feedback plan, issue log|
|Approval Level|Product, engineering, operations, support, and compliance review where applicable|
|Claim Boundary|Pilot only; not general release|

PILOT status must define the deployment boundary clearly.

### ZH-TW

PILOT 用於產品或系統在有限且受控的真實環境中部署，以進行觀察、回饋、整合驗證或客戶試用。

|欄位|要求|
|---|---|
|狀態代碼|PILOT|
|允許用途|受控現場測試、專案試點、合作夥伴評估、有限部署|
|不允許用途|一般公開銷售、廣泛行銷宣稱、不受限渠道發布|
|必要記錄|試點範圍、客戶 / 場地邊界、支持邊界、回饋計劃、問題清單|
|核准等級|產品、工程、運營、支持與適用時合規審查|
|宣稱邊界|僅試點；非一般發布|

PILOT 狀態必須清楚定義部署邊界。

---

## 33.12 Certification Preparation Status — CERT-PREP

## 33.12 認證準備狀態 — CERT-PREP

### EN

CERT-PREP is used when samples, technical files, labels, manuals, BOM records, schematics, test plans, or lab documents are being prepared for certification or compliance testing.

|Field|Requirement|
|---|---|
|Status Code|CERT-PREP|
|Allowed Use|Certification planning, sample preparation, lab coordination|
|Not Allowed Use|Public certification claim, listed product claim, final market release|
|Required Records|Certification model, engineering model, test sample record, label draft, manual draft|
|Approval Level|Compliance and engineering approval|
|Claim Boundary|No certification claim allowed|

CERT-PREP means the certification process is being prepared, not completed.

### ZH-TW

CERT-PREP 用於樣品、技術文件、標籤、手冊、BOM 記錄、原理圖、測試計劃或實驗室文件正在為認證或合規測試準備中的階段。

|欄位|要求|
|---|---|
|狀態代碼|CERT-PREP|
|允許用途|認證規劃、樣品準備、實驗室協調|
|不允許用途|公開認證宣稱、列名產品宣稱、最終市場發布|
|必要記錄|認證型號、工程型號、測試樣品記錄、標籤草案、手冊草案|
|核准等級|合規與工程核准|
|宣稱邊界|不允許認證宣稱|

CERT-PREP 表示認證流程正在準備中，而不是已完成。

---

## 33.13 Certification Testing Status — CERT-TEST

## 33.13 認證測試狀態 — CERT-TEST

### EN

CERT-TEST is used when certification or compliance testing is actively being performed by a lab, certification body, or internal pre-compliance process.

|Field|Requirement|
|---|---|
|Status Code|CERT-TEST|
|Allowed Use|Lab testing, pre-compliance testing, corrective action tracking|
|Not Allowed Use|Public certification claim, certification mark use, commercial release claim|
|Required Records|Lab project record, sample record, test plan, issue log, report tracking|
|Approval Level|Compliance owner and engineering owner|
|Claim Boundary|Testing in progress; no completed certification claim|

CERT-TEST must not be described publicly as certified or approved.

### ZH-TW

CERT-TEST 用於實驗室、認證機構或內部預合規流程正在執行認證或合規測試的階段。

|欄位|要求|
|---|---|
|狀態代碼|CERT-TEST|
|允許用途|實驗室測試、預合規測試、整改追蹤|
|不允許用途|公開認證宣稱、認證標誌使用、商業發布宣稱|
|必要記錄|實驗室專案記錄、樣品記錄、測試計劃、問題清單、報告追蹤|
|核准等級|合規負責人與工程負責人|
|宣稱邊界|測試進行中；不得宣稱已完成認證|

CERT-TEST 不得在公開場合描述為已認證或已核准。

---

## 33.14 Certified / Listed Status — CERTIFIED

## 33.14 已認證 / 已列名狀態 — CERTIFIED

### EN

CERTIFIED is used when the required certification, listing, authorization, or compliance report has been completed and approved for use.

|Field|Requirement|
|---|---|
|Status Code|CERTIFIED|
|Allowed Use|Controlled certification claim, label use where authorized, release preparation|
|Not Allowed Use|Broad claims beyond exact certification scope|
|Required Records|Certificate, test report, listing file, authorized mark use, approved claim wording|
|Approval Level|Compliance owner approval|
|Claim Boundary|Only exact approved certification wording may be used|

CERTIFIED does not automatically mean the product is commercially released. Commercial release must be controlled separately.

### ZH-TW

CERTIFIED 用於必要認證、列名、授權或合規報告已完成並核准使用的情況。

|欄位|要求|
|---|---|
|狀態代碼|CERTIFIED|
|允許用途|受控認證宣稱、授權標籤使用、發布準備|
|不允許用途|超出精確認證範圍的寬泛宣稱|
|必要記錄|證書、測試報告、列名文件、授權標誌使用、已核准宣稱文字|
|核准等級|合規負責人核准|
|宣稱邊界|僅可使用精確已核准認證文字|

CERTIFIED 不自動代表產品已商業發布。商業發布必須另行管控。

---

## 33.15 Released Status — RELEASED

## 33.15 已發布狀態 — RELEASED

### EN

RELEASED is used when the SKU or product record has been approved for public, commercial, channel, Amazon, project, or customer-facing use according to its approved release scope.

|Field|Requirement|
|---|---|
|Status Code|RELEASED|
|Allowed Use|Public sale, website, catalog, Amazon, channel, project, quotation, support|
|Not Allowed Use|Claims outside approved scope|
|Required Records|SKU master, compliance mapping, packaging record, label, manual, release approval|
|Approval Level|Product, operations, compliance, commercial, and documentation approval|
|Claim Boundary|Public claims must match approved records|

RELEASED must specify release scope. A product may be released for projects but not for Amazon, or released for U.S. market but not EU market.

### ZH-TW

RELEASED 用於 SKU 或產品記錄已依其核准發布範圍，允許公開、商業、渠道、Amazon、專案或面向客戶使用的情況。

|欄位|要求|
|---|---|
|狀態代碼|RELEASED|
|允許用途|公開銷售、網站、型錄、Amazon、渠道、專案、報價、支持|
|不允許用途|超出核准範圍的宣稱|
|必要記錄|SKU 主表、合規映射、包裝記錄、標籤、手冊、發布核准|
|核准等級|產品、運營、合規、商業與文件核准|
|宣稱邊界|公開宣稱必須匹配已核准記錄|

RELEASED 必須指定發布範圍。某產品可被核准用於專案，但未必可用於 Amazon；可被核准用於美國市場，但未必可用於歐盟市場。

---

## 33.16 Active Status — ACTIVE

## 33.16 有效狀態 — ACTIVE

### EN

ACTIVE is used when a released SKU remains currently sellable, deployable, supportable, and recommended for use.

|Field|Requirement|
|---|---|
|Status Code|ACTIVE|
|Allowed Use|Normal sales, channel use, project deployment, customer support|
|Not Allowed Use|Use outside approved market, package, or claim scope|
|Required Records|Current SKU record, support record, active package and commercial records|
|Approval Level|Operations and product owner maintenance|
|Claim Boundary|Must remain within approved released scope|

ACTIVE status should be reviewed periodically to ensure records remain current.

### ZH-TW

ACTIVE 用於已發布 SKU 仍處於當前可銷售、可部署、可支持且建議使用的狀態。

|欄位|要求|
|---|---|
|狀態代碼|ACTIVE|
|允許用途|正常銷售、渠道使用、專案部署、客戶支持|
|不允許用途|超出已核准市場、包裝或宣稱範圍的使用|
|必要記錄|當前 SKU 記錄、支持記錄、有效包裝與商業記錄|
|核准等級|運營與產品負責人維護|
|宣稱邊界|必須保持在已核准發布範圍內|

ACTIVE 狀態應定期審查，以確保記錄仍然有效。

---

## 33.17 On Hold Status — HOLD

## 33.17 暫停狀態 — HOLD

### EN

HOLD is used when a SKU, product, package, certification, or release record is temporarily paused due to engineering, compliance, supply, packaging, commercial, legal, or quality concerns.

|Field|Requirement|
|---|---|
|Status Code|HOLD|
|Allowed Use|Internal investigation, corrective action, controlled review|
|Not Allowed Use|New public release, new sales, new production, new claims|
|Required Records|Hold reason, responsible owner, corrective action plan, review date|
|Approval Level|Owner of affected domain plus product / operations approval|
|Claim Boundary|No new claim or release until resolved|

HOLD status must identify the reason and next decision point.

### ZH-TW

HOLD 用於 SKU、產品、包裝、認證或發布記錄因工程、合規、供應、包裝、商業、法律或品質問題而暫停的情況。

|欄位|要求|
|---|---|
|狀態代碼|HOLD|
|允許用途|內部調查、整改、受控審查|
|不允許用途|新公開發布、新銷售、新生產、新宣稱|
|必要記錄|暫停原因、責任負責人、整改計劃、審查日期|
|核准等級|受影響領域負責人，加產品 / 運營核准|
|宣稱邊界|問題解決前不得新增宣稱或發布|

HOLD 狀態必須識別原因與下一個決策點。

---

## 33.18 Deprecated Status — DEPRECATED

## 33.18 不建議使用狀態 — DEPRECATED

### EN

DEPRECATED is used when a SKU or product is still traceable and may still exist in support, inventory, or customer installations, but is no longer recommended for new sale, new design-in, or new deployment.

|Field|Requirement|
|---|---|
|Status Code|DEPRECATED|
|Allowed Use|Existing support, replacement planning, inventory transition|
|Not Allowed Use|New promotion, new listing, new project proposal unless approved|
|Required Records|Deprecation reason, replacement SKU, support boundary, last order date where applicable|
|Approval Level|Product, operations, sales, and support approval|
|Claim Boundary|Existing reference only; avoid new promotional claims|

DEPRECATED records must remain visible for traceability.

### ZH-TW

DEPRECATED 用於 SKU 或產品仍需追蹤，可能仍存在於支持、庫存或客戶安裝中，但不再建議用於新銷售、新設計導入或新部署的情況。

|欄位|要求|
|---|---|
|狀態代碼|DEPRECATED|
|允許用途|既有支持、替代規劃、庫存過渡|
|不允許用途|新推廣、新上架、新專案提案，除非特別核准|
|必要記錄|停用原因、替代 SKU、支持邊界、適用時最後下單日期|
|核准等級|產品、運營、銷售與支持核准|
|宣稱邊界|僅既有引用；避免新宣傳宣稱|

DEPRECATED 記錄必須保持可見，以保留可追蹤性。

---

## 33.19 Discontinued Status — DISCONTINUED

## 33.19 停產狀態 — DISCONTINUED

### EN

DISCONTINUED is used when a SKU or product is no longer sold, manufactured, replenished, or offered for new projects.

|Field|Requirement|
|---|---|
|Status Code|DISCONTINUED|
|Allowed Use|Historical reference, support handling, warranty transition, replacement guidance|
|Not Allowed Use|New sale, new production, new listing, new deployment|
|Required Records|Discontinuation date, replacement SKU, support end date, inventory disposition|
|Approval Level|Product, operations, sales, support, and finance where applicable|
|Claim Boundary|No new market claim|

DISCONTINUED does not mean deleted. The record must remain accessible for support and historical traceability.

### ZH-TW

DISCONTINUED 用於 SKU 或產品不再銷售、生產、補貨或提供給新專案的情況。

|欄位|要求|
|---|---|
|狀態代碼|DISCONTINUED|
|允許用途|歷史參考、支持處理、保固過渡、替代指引|
|不允許用途|新銷售、新生產、新上架、新部署|
|必要記錄|停產日期、替代 SKU、支持結束日期、庫存處置|
|核准等級|產品、運營、銷售、支持與適用時財務核准|
|宣稱邊界|不得新增市場宣稱|

DISCONTINUED 不代表刪除。該記錄必須保持可存取，以便支持與歷史追蹤。

---

## 33.20 Archived Status — ARCHIVED

## 33.20 歸檔狀態 — ARCHIVED

### EN

ARCHIVED is used when a SKU, model, package, certification, or product record is retained only for historical, legal, support, audit, or traceability purposes.

|Field|Requirement|
|---|---|
|Status Code|ARCHIVED|
|Allowed Use|Historical reference, audit, legal, traceability, support lookup|
|Not Allowed Use|Reuse, public sale, new listing, production, claim|
|Required Records|Archive reason, archive date, final record snapshot, related replacement record|
|Approval Level|Documentation, operations, and product owner approval|
|Claim Boundary|Historical reference only|

Archived identifiers must not be reused without formal review.

### ZH-TW

ARCHIVED 用於 SKU、型號、包裝、認證或產品記錄僅為歷史、法律、支持、審計或可追蹤目的而保留的情況。

|欄位|要求|
|---|---|
|狀態代碼|ARCHIVED|
|允許用途|歷史參考、審計、法律、可追蹤、支持查詢|
|不允許用途|重用、公開銷售、新上架、生產、宣稱|
|必要記錄|歸檔原因、歸檔日期、最終記錄快照、相關替代記錄|
|核准等級|文件、運營與產品負責人核准|
|宣稱邊界|僅歷史參考|

已歸檔識別碼不得在未經正式審查前重用。

---

## 33.21 Status-to-Allowed-Use Matrix

## 33.21 狀態至允許用途矩陣

### EN

|Status|Internal Planning|Engineering Test|Certification|Production|Public Sale|Amazon|Channel|Support|
|---|--:|--:|--:|--:|--:|--:|--:|--:|
|CONCEPT|Yes|No|No|No|No|No|No|No|
|PROTO|Yes|Yes|No|No|No|No|No|No|
|EVT|Yes|Yes|No|No|No|No|No|Limited|
|DVT|Yes|Yes|Prep only|No|No|No|No|Limited|
|PVT|Yes|Yes|Prep / Test|Pilot only|No|No|No|Limited|
|PILOT|Yes|Yes|Where applicable|Limited|No|No|Limited|Yes|
|CERT-PREP|Yes|Yes|Prep|No|No|No|No|Limited|
|CERT-TEST|Yes|Yes|Testing|No|No|No|No|Limited|
|CERTIFIED|Yes|Yes|Yes|Maybe|Not automatically|Not automatically|Not automatically|Yes|
|RELEASED|Yes|Yes|Yes|Yes|Yes within scope|Yes if approved|Yes if approved|Yes|
|ACTIVE|Yes|Yes|Yes|Yes|Yes within scope|Yes if approved|Yes if approved|Yes|
|HOLD|Yes|Limited|Limited|No new|No new|No new|No new|Existing only|
|DEPRECATED|Yes|Limited|Existing only|Limited|Existing only|No new|Existing only|Yes|
|DISCONTINUED|Yes|No new|Archive only|No|No|No|No|Yes|
|ARCHIVED|Reference only|No|Archive only|No|No|No|No|Reference only|

### ZH-TW

|狀態|內部規劃|工程測試|認證|生產|公開銷售|Amazon|渠道|支持|
|---|--:|--:|--:|--:|--:|--:|--:|--:|
|CONCEPT|是|否|否|否|否|否|否|否|
|PROTO|是|是|否|否|否|否|否|否|
|EVT|是|是|否|否|否|否|否|有限|
|DVT|是|是|僅準備|否|否|否|否|有限|
|PVT|是|是|準備 / 測試|僅試產|否|否|否|有限|
|PILOT|是|是|適用時|有限|否|否|有限|是|
|CERT-PREP|是|是|準備|否|否|否|否|有限|
|CERT-TEST|是|是|測試|否|否|否|否|有限|
|CERTIFIED|是|是|是|視情況|不自動|不自動|不自動|是|
|RELEASED|是|是|是|是|核准範圍內是|核准時是|核准時是|是|
|ACTIVE|是|是|是|是|核准範圍內是|核准時是|核准時是|是|
|HOLD|是|有限|有限|不得新增|不得新增|不得新增|不得新增|僅既有|
|DEPRECATED|是|有限|僅既有|有限|僅既有|不得新增|僅既有|是|
|DISCONTINUED|是|不得新增|僅歸檔|否|否|否|否|是|
|ARCHIVED|僅參考|否|僅歸檔|否|否|否|否|僅參考|

---

## 33.22 Required Records by Lifecycle Status

## 33.22 依生命週期狀態定義必要記錄

### EN

|Status|Required Records|
|---|---|
|CONCEPT|Product idea note, product line proposal, preliminary owner|
|PROTO|Prototype version, early BOM, firmware / software reference, prototype test notes|
|EVT|Engineering model, HW / FW / PCB version, EVT test plan, issue log|
|DVT|DVT test plan, design validation report, updated engineering model, compliance pre-review|
|PVT|Manufacturing model, BOM version, QC plan, assembly version, package version|
|PILOT|Pilot scope, site record, deployment record, support plan, feedback log|
|CERT-PREP|Certification model, label draft, manual draft, test sample record, lab plan|
|CERT-TEST|Lab project record, test status, issue log, corrective action record|
|CERTIFIED|Certificate, test report, listing file, approved mark use, approved claim wording|
|RELEASED|SKU master, compliance mapping, package approval, commercial approval, support record|
|ACTIVE|Current SKU record, support boundary, active channel and inventory records|
|HOLD|Hold reason, owner, corrective action, review date|
|DEPRECATED|Deprecation reason, replacement SKU, last order date, support boundary|
|DISCONTINUED|Discontinuation date, support end date, replacement record, inventory disposition|
|ARCHIVED|Archive snapshot, archive reason, related records, final status log|

### ZH-TW

|狀態|必要記錄|
|---|---|
|CONCEPT|產品想法備註、產品線提案、初步負責人|
|PROTO|原型版本、早期 BOM、韌體 / 軟體引用、原型測試備註|
|EVT|工程型號、HW / FW / PCB 版本、EVT 測試計劃、問題清單|
|DVT|DVT 測試計劃、設計驗證報告、更新後工程型號、合規預審|
|PVT|生產型號、BOM 版本、QC 計劃、組裝版本、包裝版本|
|PILOT|試點範圍、場地記錄、部署記錄、支持計劃、回饋記錄|
|CERT-PREP|認證型號、標籤草案、手冊草案、測試樣品記錄、實驗室計劃|
|CERT-TEST|實驗室專案記錄、測試狀態、問題清單、整改記錄|
|CERTIFIED|證書、測試報告、列名文件、授權標誌使用、已核准宣稱文字|
|RELEASED|SKU 主表、合規映射、包裝核准、商業核准、支持記錄|
|ACTIVE|當前 SKU 記錄、支持邊界、有效渠道與庫存記錄|
|HOLD|暫停原因、負責人、整改措施、審查日期|
|DEPRECATED|停用原因、替代 SKU、最後下單日期、支持邊界|
|DISCONTINUED|停產日期、支持結束日期、替代記錄、庫存處置|
|ARCHIVED|歸檔快照、歸檔原因、相關記錄、最終狀態記錄|

---

## 33.23 Release Gate Checklist

## 33.23 發布關卡清單

### EN

A SKU may move to RELEASED only when the required release gate conditions are satisfied.

|Release Gate Item|Required Before RELEASED?|
|---|--:|
|SKU master record completed|Yes|
|Product line approved|Yes|
|Region approved|Yes|
|Connectivity code approved|Yes|
|Power code approved|Yes|
|Variant code approved|Yes|
|Package code approved|Yes|
|Engineering model approved|Yes|
|Required validation completed|Yes|
|Certification mapping completed|Yes|
|Certification status recorded|Yes|
|Safety review completed where required|Yes|
|Wireless review completed where required|Yes|
|Manufacturing model approved where applicable|Yes|
|BOM and QC records approved where applicable|Yes|
|Package model and package version approved|Yes|
|Barcode / FNSKU completed where required|Yes|
|Label approved|Yes|
|Manual / installation guide approved|Yes|
|Amazon / marketplace approval completed where required|Yes|
|Commercial channel approved|Yes|
|Claim boundary approved|Yes|
|Support boundary approved|Yes|
|Release owner recorded|Yes|

### ZH-TW

只有在必要發布關卡條件滿足時，SKU 才可進入 RELEASED 狀態。

|發布關卡項目|RELEASED 前是否必須？|
|---|--:|
|SKU 主記錄完成|是|
|產品線已核准|是|
|區域已核准|是|
|連接代碼已核准|是|
|供電代碼已核准|是|
|版本代碼已核准|是|
|包裝代碼已核准|是|
|工程型號已核准|是|
|必要驗證已完成|是|
|認證映射已完成|是|
|認證狀態已記錄|是|
|必要時安全審查已完成|是|
|必要時無線審查已完成|是|
|適用時生產型號已核准|是|
|適用時 BOM 與 QC 記錄已核准|是|
|包裝型號與包裝版本已核准|是|
|必要時條碼 / FNSKU 已完成|是|
|標籤已核准|是|
|手冊 / 安裝指南已核准|是|
|必要時 Amazon / marketplace 核准已完成|是|
|商業渠道已核准|是|
|宣稱邊界已核准|是|
|支持邊界已核准|是|
|發布負責人已記錄|是|

---

## 33.24 Lifecycle Status Change Rules

## 33.24 生命週期狀態變更規則

### EN

Changing lifecycle status is a controlled action. Status movement must be supported by evidence and recorded in the change log.

|Status Change|Required Review|
|---|---|
|CONCEPT → PROTO|Product and engineering review|
|PROTO → EVT|Engineering plan and prototype evidence|
|EVT → DVT|EVT report and issue closure review|
|DVT → PVT|DVT report, design freeze, compliance pre-review|
|PVT → PILOT|Production validation and pilot plan approval|
|PVT → CERT-PREP|Certification sample and documentation readiness|
|CERT-PREP → CERT-TEST|Lab submission readiness|
|CERT-TEST → CERTIFIED|Certificate / report / listing review|
|CERTIFIED → RELEASED|Commercial, packaging, label, claim, and channel approval|
|RELEASED → ACTIVE|Operational launch and support readiness|
|ACTIVE → HOLD|Issue reason and corrective action owner|
|ACTIVE → DEPRECATED|Replacement plan and support boundary|
|DEPRECATED → DISCONTINUED|Last sale / production decision and support plan|
|DISCONTINUED → ARCHIVED|Final record snapshot and archive approval|

### ZH-TW

生命週期狀態變更是一項受控動作。狀態推進必須由證據支持，並記錄於變更記錄中。

|狀態變更|必要審查|
|---|---|
|CONCEPT → PROTO|產品與工程審查|
|PROTO → EVT|工程計劃與原型證據|
|EVT → DVT|EVT 報告與問題關閉審查|
|DVT → PVT|DVT 報告、設計凍結、合規預審|
|PVT → PILOT|生產驗證與試點計劃核准|
|PVT → CERT-PREP|認證樣品與文件準備度|
|CERT-PREP → CERT-TEST|實驗室提交準備度|
|CERT-TEST → CERTIFIED|證書 / 報告 / 列名審查|
|CERTIFIED → RELEASED|商業、包裝、標籤、宣稱與渠道核准|
|RELEASED → ACTIVE|運營上市與支持準備|
|ACTIVE → HOLD|問題原因與整改責任人|
|ACTIVE → DEPRECATED|替代計劃與支持邊界|
|DEPRECATED → DISCONTINUED|最後銷售 / 生產決策與支持計劃|
|DISCONTINUED → ARCHIVED|最終記錄快照與歸檔核准|

---

## 33.25 Lifecycle Master Table Template

## 33.25 生命週期主表模板

### EN

|Field|Entry|
|---|---|
|Lifecycle Record ID|TBD|
|SKU Code|TBD|
|Customer-Facing Name|TBD|
|Internal Model|TBD|
|Engineering Model|TBD|
|Certification Model|TBD|
|Manufacturing Model|TBD|
|Package Model Name|TBD|
|Current Lifecycle Status|TBD|
|Previous Lifecycle Status|TBD|
|Status Change Reason|TBD|
|Required Evidence|TBD|
|Release Scope|Internal / Pilot / Project / Website / Amazon / Channel / Public|
|Region Scope|TBD|
|Channel Scope|TBD|
|Certification Status|TBD|
|Packaging Status|TBD|
|Manufacturing Status|TBD|
|Support Boundary|TBD|
|Replacement SKU|TBD / N/A|
|Approval Owner|TBD|
|Approval Date|TBD|
|Next Review Date|TBD|
|Revision Date|TBD|
|Change Log Reference|TBD|

### ZH-TW

|欄位|填寫|
|---|---|
|生命週期記錄 ID|TBD|
|SKU 代碼|TBD|
|面向客戶名稱|TBD|
|內部型號|TBD|
|工程型號|TBD|
|認證型號|TBD|
|生產型號|TBD|
|包裝型號名稱|TBD|
|當前生命週期狀態|TBD|
|前一生命週期狀態|TBD|
|狀態變更原因|TBD|
|必要證據|TBD|
|發布範圍|Internal / Pilot / Project / Website / Amazon / Channel / Public|
|區域範圍|TBD|
|渠道範圍|TBD|
|認證狀態|TBD|
|包裝狀態|TBD|
|生產狀態|TBD|
|支持邊界|TBD|
|替代 SKU|TBD / N/A|
|核准負責人|TBD|
|核准日期|TBD|
|下一次審查日期|TBD|
|修訂日期|TBD|
|變更記錄引用|TBD|

---

## 33.26 Completed Example — Artibird Act-E Lifecycle Record

## 33.26 完整示例 — Artibird Act-E 生命週期記錄

### EN

|Field|Entry|
|---|---|
|Lifecycle Record ID|LC-ACT-G1-E-US-001|
|SKU Code|ATB-ACT-G1-US-WF-AC-E-S|
|Customer-Facing Name|Artibird Act-E|
|Internal Model|ACT-G1-E|
|Engineering Model|ACT-G1-E-HW1.0-FW1.2-PCB1.1-DVT|
|Certification Model|ACT-G1-E|
|Manufacturing Model|MFG-ACT-G1-E-BOM1.0-PCB1.1-ASM1.0-SUP01-QC1.1-PKG1.0|
|Package Model Name|Artibird Act-E Single Pack|
|Current Lifecycle Status|DVT / CERT-PREP|
|Previous Lifecycle Status|EVT|
|Status Change Reason|Engineering validation completed; design validation and certification preparation started|
|Required Evidence|EVT report, DVT test plan, compliance mapping, certification sample plan|
|Release Scope|Internal / Certification Preparation|
|Region Scope|US|
|Channel Scope|Not released|
|Certification Status|Preparing|
|Packaging Status|Draft / Pending Review|
|Manufacturing Status|Not released|
|Support Boundary|Internal engineering and compliance only|
|Replacement SKU|N/A|
|Approval Owner|Product / Engineering / Compliance|
|Approval Date|TBD|
|Next Review Date|TBD|
|Revision Date|TBD|
|Change Log Reference|CR-LC-ACT-001|

### ZH-TW

|欄位|填寫|
|---|---|
|生命週期記錄 ID|LC-ACT-G1-E-US-001|
|SKU 代碼|ATB-ACT-G1-US-WF-AC-E-S|
|面向客戶名稱|Artibird Act-E|
|內部型號|ACT-G1-E|
|工程型號|ACT-G1-E-HW1.0-FW1.2-PCB1.1-DVT|
|認證型號|ACT-G1-E|
|生產型號|MFG-ACT-G1-E-BOM1.0-PCB1.1-ASM1.0-SUP01-QC1.1-PKG1.0|
|包裝型號名稱|Artibird Act-E Single Pack|
|當前生命週期狀態|DVT / CERT-PREP|
|前一生命週期狀態|EVT|
|狀態變更原因|工程驗證完成；設計驗證與認證準備開始|
|必要證據|EVT 報告、DVT 測試計劃、合規映射、認證樣品計劃|
|發布範圍|Internal / Certification Preparation|
|區域範圍|US|
|渠道範圍|未發布|
|認證狀態|Preparing|
|包裝狀態|Draft / Pending Review|
|生產狀態|未發布|
|支持邊界|僅內部工程與合規|
|替代 SKU|N/A|
|核准負責人|Product / Engineering / Compliance|
|核准日期|TBD|
|下一次審查日期|TBD|
|修訂日期|TBD|
|變更記錄引用|CR-LC-ACT-001|

---

## 33.27 Completed Example — Artibird Switch Scene Lifecycle Record

## 33.27 完整示例 — Artibird Switch Scene 生命週期記錄

### EN

|Field|Entry|
|---|---|
|Lifecycle Record ID|LC-SW-SCN-US-001|
|SKU Code|ATB-SW-G1-US-BLE-BAT-SCN-S|
|Customer-Facing Name|Artibird Switch Scene|
|Internal Model|SW-G1-SCN|
|Engineering Model|SW-G1-SCN-HW1.0-FW1.0-PCB1.0-EVT|
|Certification Model|SW-G1-SCN|
|Manufacturing Model|TBD|
|Package Model Name|Artibird Switch Scene Single Pack|
|Current Lifecycle Status|EVT|
|Previous Lifecycle Status|PROTO|
|Status Change Reason|Prototype completed; BLE event-only behavior entering engineering validation|
|Required Evidence|Prototype test notes, battery profile plan, BLE / BLE Mesh validation plan|
|Release Scope|Internal engineering validation|
|Region Scope|US|
|Channel Scope|Not released|
|Certification Status|Not Started|
|Packaging Status|Draft|
|Manufacturing Status|Not started|
|Support Boundary|Internal test only|
|Replacement SKU|N/A|
|Approval Owner|Product / Engineering|
|Approval Date|TBD|
|Next Review Date|TBD|
|Revision Date|TBD|
|Change Log Reference|CR-LC-SW-SCN-001|

### ZH-TW

|欄位|填寫|
|---|---|
|生命週期記錄 ID|LC-SW-SCN-US-001|
|SKU 代碼|ATB-SW-G1-US-BLE-BAT-SCN-S|
|面向客戶名稱|Artibird Switch Scene|
|內部型號|SW-G1-SCN|
|工程型號|SW-G1-SCN-HW1.0-FW1.0-PCB1.0-EVT|
|認證型號|SW-G1-SCN|
|生產型號|TBD|
|包裝型號名稱|Artibird Switch Scene Single Pack|
|當前生命週期狀態|EVT|
|前一生命週期狀態|PROTO|
|狀態變更原因|原型完成；BLE event-only 行為進入工程驗證|
|必要證據|原型測試備註、電池功耗計劃、BLE / BLE Mesh 驗證計劃|
|發布範圍|內部工程驗證|
|區域範圍|US|
|渠道範圍|未發布|
|認證狀態|Not Started|
|包裝狀態|Draft|
|生產狀態|未開始|
|支持邊界|僅內部測試|
|替代 SKU|N/A|
|核准負責人|Product / Engineering|
|核准日期|TBD|
|下一次審查日期|TBD|
|修訂日期|TBD|
|變更記錄引用|CR-LC-SW-SCN-001|

---

## 33.28 Lifecycle Master Governance Rules

## 33.28 生命週期主表治理規則

### EN

|Rule|Requirement|
|---|---|
|Every SKU must have lifecycle status|No SKU should exist without release status|
|Status must match actual evidence|Do not advance status without records|
|Certification status is separate from release status|Certified does not automatically mean released|
|Release status must define scope|Website, Amazon, project, and channel may have different release scopes|
|Hold status must include reason|No unresolved hold without owner|
|Deprecated records must remain visible|Do not delete historical SKU records|
|Discontinued records require support boundary|Customers and support teams need transition guidance|
|Archived records must not be reused|Historical identifiers must remain protected|
|Status changes require change log|No silent lifecycle movement|
|Public claims must match status|No claim beyond approved lifecycle stage|

### ZH-TW

|規則|要求|
|---|---|
|每個 SKU 都必須有生命週期狀態|不得存在無發布狀態 SKU|
|狀態必須匹配實際證據|無記錄不得推進狀態|
|認證狀態與發布狀態分開|已認證不自動代表已發布|
|發布狀態必須定義範圍|官網、Amazon、專案與渠道可有不同發布範圍|
|HOLD 狀態必須包含原因|不得存在無負責人的未解決 HOLD|
|DEPRECATED 記錄必須保持可見|不得刪除歷史 SKU 記錄|
|DISCONTINUED 記錄需要支持邊界|客戶與支持團隊需要過渡指引|
|ARCHIVED 記錄不得重用|歷史識別碼必須被保護|
|狀態變更需要變更記錄|不得靜默推進生命週期|
|公開宣稱必須匹配狀態|不得超出已核准生命週期階段進行宣稱|

---

## 33.29 Spreadsheet Column Recommendation

## 33.29 表格欄位建議

### EN

For Excel, Google Sheets, Airtable, ERP staging tables, PLM records, release trackers, or product lifecycle management systems, the following column order is recommended:

```text
Lifecycle Record ID
SKU Code
Customer-Facing Name
Internal Model
Engineering Model
Certification Model
Manufacturing Model
Package Model Name
Current Lifecycle Status
Previous Lifecycle Status
Status Change Reason
Required Evidence
Release Scope
Region Scope
Channel Scope
Certification Status
Packaging Status
Manufacturing Status
Support Boundary
Replacement SKU
Approval Owner
Approval Date
Next Review Date
Revision Date
Change Log Reference
```

### ZH-TW

對於 Excel、Google Sheets、Airtable、ERP 暫存表、PLM 記錄、發布追蹤表或產品生命週期管理系統，建議使用以下欄位順序：

```text
Lifecycle Record ID
SKU Code
Customer-Facing Name
Internal Model
Engineering Model
Certification Model
Manufacturing Model
Package Model Name
Current Lifecycle Status
Previous Lifecycle Status
Status Change Reason
Required Evidence
Release Scope
Region Scope
Channel Scope
Certification Status
Packaging Status
Manufacturing Status
Support Boundary
Replacement SKU
Approval Owner
Approval Date
Next Review Date
Revision Date
Change Log Reference
```

---

## 33.30 Chapter Conclusion

## 33.30 本章結論

### EN

The Lifecycle and Release Status Master Table controls how Artibird SKUs and model records move from concept to prototype, engineering validation, design validation, production validation, pilot deployment, certification, release, active sale, hold, deprecation, discontinuation, and archival.

Lifecycle status is not only a project-management label. It is a release-control mechanism that determines what a SKU may be used for, what claims may be made, what records are required, and whether the product may enter engineering, certification, production, packaging, Amazon listing, channel release, commercial sale, support, or archival workflows.

A controlled lifecycle table ensures that Artibird products do not move faster than their evidence, validation, certification, packaging, manufacturing, compliance, and commercial readiness.

### ZH-TW

生命週期與發布狀態主表管控 Artibird SKU 與型號記錄如何從概念、原型、工程驗證、設計驗證、生產驗證、試點部署、認證、發布、有效銷售、暫停、停用、停產到歸檔逐步推進。

生命週期狀態不只是專案管理標籤。它是一種發布管控機制，決定 SKU 可被用於什麼、可宣稱什麼、需要哪些記錄，以及產品是否可進入工程、認證、生產、包裝、Amazon 上架、渠道發布、商業銷售、支持或歸檔流程。

受控的生命週期表，可確保 Artibird 產品不會跑在其證據、驗證、認證、包裝、生產、合規與商業準備度之前。

---

**話題延伸｜互動建議**  
下一章可以繼續寫 **Chapter 34 — Change Log and Revision Control Table｜第三十四章｜變更記錄與版本管控表**，把 SKU 變更、型號變更、工程變更、認證變更、包裝變更、Amazon 變更、發布狀態變更與責任人追蹤統一成一張可審計表。