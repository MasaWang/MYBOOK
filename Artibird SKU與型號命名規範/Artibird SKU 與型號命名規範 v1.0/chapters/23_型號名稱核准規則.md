# Artibird SKU & Model Naming Specification v1.0

# Artibird SKU 與型號命名規範 v1.0

## Chapter 23 — Model Name Approval Rules

## 第二十三章｜型號名稱核准規則

---

## 23.1 Purpose

## 23.1 目的

### EN

This chapter defines the approval rules for new model names, model name changes, SKU changes, internal model changes, engineering model changes, certification model changes, manufacturing model changes, and package model name changes.

Model name approval ensures that all product names and identifiers are controlled before they are used in engineering records, certification filings, production records, packaging, Amazon listings, product catalogs, quotations, channel documents, or customer-facing communication.

The purpose of model name approval is to prevent naming conflict, SKU mismatch, certification inconsistency, unsupported claims, packaging errors, Amazon listing confusion, channel misalignment, and legal or compliance risk.

### ZH-TW

本章定義新型號名稱、型號名稱變更、SKU 變更、內部型號變更、工程型號變更、認證型號變更、生產型號變更與包裝型號名稱變更的核准規則。

型號名稱核准用於確保所有產品名稱與識別碼在用於工程記錄、認證提交、生產記錄、包裝、Amazon 上架、產品型錄、報價單、渠道文件或面向客戶溝通之前，均處於受控狀態。

型號名稱核准的目的，是防止命名衝突、SKU 映射錯誤、認證不一致、未支援宣稱、包裝錯誤、Amazon 上架混亂、渠道不一致，以及法律或合規風險。

---

## 23.2 Approval Scope

## 23.2 核准範圍

### EN

The approval rules in this chapter apply to all product identity names and model identifiers.

|Item|Approval Required?|Notes|
|---|--:|---|
|Customer-facing model name|Yes|Used in public and commercial communication|
|Internal model number|Yes|Used by product, engineering, firmware, testing, and operations|
|SKU code|Yes|Used for commercial, inventory, package, and channel control|
|Engineering model number|Yes|Used for technical configuration and validation tracking|
|Certification model number|Yes|Used in regulatory filing, labels, and compliance records|
|Manufacturing model number|Yes|Used in factory, BOM, QC, packaging, and production records|
|Package model name|Yes|Used for kits, bundles, demo kits, samples, FBA, channel, and projects|
|Barcode / FNSKU assignment|Yes|Used for retail, Amazon, logistics, and inventory|
|Public naming text|Yes|Used in catalog, website, Amazon, sales, and channel documents|

### ZH-TW

本章核准規則適用於所有產品身份名稱與型號識別碼。

|項目|是否需要核准？|備註|
|---|--:|---|
|面向客戶型號名稱|是|用於公開與商業溝通|
|內部型號|是|用於產品、工程、韌體、測試與運營|
|SKU 代碼|是|用於商業、庫存、包裝與渠道管控|
|工程型號|是|用於技術配置與驗證追蹤|
|認證型號|是|用於法規提交、標籤與合規記錄|
|生產型號|是|用於工廠、BOM、QC、包裝與生產記錄|
|包裝型號名稱|是|用於套組、組合包、展示包、樣品、FBA、渠道與專案|
|條碼 / FNSKU 分配|是|用於零售、Amazon、物流與庫存|
|公開命名文字|是|用於型錄、網站、Amazon、銷售與渠道文件|

---

## 23.3 Approval Principle

## 23.3 核准原則

### EN

The core principle of model name approval is:

```text
No model name should be used before its identity, mapping, claim boundary, and approval owner are defined.
```

A model name must be approved only when the following conditions are satisfied:

|Approval Condition|Requirement|
|---|---|
|Product role is clear|Product team must confirm the product identity|
|Hardware mapping is clear|Engineering team must confirm hardware relationship|
|SKU mapping is clear|Operations must confirm SKU structure and master table mapping|
|Certification impact is known|Compliance or certification owner must review where applicable|
|Package impact is known|Packaging or design team must review package use|
|Commercial use is clear|Sales or business team must confirm use case|
|Public use is safe|Marketing, e-commerce, legal, and compliance must review where needed|
|Claim boundary is recorded|Product and compliance must define what the name may imply|
|Approval owner is recorded|Every approved name must have a responsible owner|

### ZH-TW

型號名稱核准的核心原則是：

```text
任何型號名稱在其身份、映射、宣稱邊界與核准負責人未定義前，不得使用。
```

只有在以下條件滿足時，型號名稱才可被核准：

|核准條件|要求|
|---|---|
|產品角色清楚|產品團隊必須確認產品身份|
|硬體映射清楚|工程團隊必須確認硬體關係|
|SKU 映射清楚|運營必須確認 SKU 結構與主表映射|
|認證影響已知|適用時由合規或認證負責人審查|
|包裝影響已知|包裝或設計團隊必須審查包裝使用|
|商業用途清楚|銷售或商務團隊必須確認使用場景|
|公開使用安全|必要時由行銷、電商、法務與合規審查|
|宣稱邊界已記錄|產品與合規必須定義名稱可暗示的內容|
|核准負責人已記錄|每一個已核准名稱都必須有責任負責人|

---

## 23.4 Approval Checklist

## 23.4 核准清單

### EN

|Review Area|Required Approval|
|---|---|
|Product role|Product team|
|Hardware mapping|Engineering team|
|SKU mapping|Operations team|
|Certification impact|Compliance / certification owner|
|Commercial use|Sales / business team|
|Packaging use|Packaging / design team|
|Website / Amazon use|Marketing / e-commerce team|
|Legal risk|Legal / compliance where needed|
|Claim boundary|Product / compliance|
|Master table record|Operations owner|
|Release status|Product / operations|
|Revision control|Documentation owner|

### ZH-TW

|審查領域|必要核准|
|---|---|
|產品角色|產品團隊|
|硬體映射|工程團隊|
|SKU 映射|運營團隊|
|認證影響|合規 / 認證負責人|
|商業使用|銷售 / 商務團隊|
|包裝使用|包裝 / 設計團隊|
|網站 / Amazon 使用|行銷 / 電商團隊|
|法律風險|必要時由法務 / 合規審查|
|宣稱邊界|產品 / 合規|
|主表記錄|運營負責人|
|發布狀態|產品 / 運營|
|版本管控|文件負責人|

---

## 23.5 Customer-Facing Model Name Approval

## 23.5 面向客戶型號名稱核准

### EN

Customer-facing model names require approval before use in catalogs, websites, packaging, Amazon listings, sales documents, quotations, partner materials, or customer support documents.

|Approval Item|Requirement|
|---|---|
|Name readability|Must be understandable to customers and partners|
|Product line consistency|Must match approved product line naming|
|Variant accuracy|Must not imply unsupported features|
|SKU mapping|Must map to one or more approved SKU records|
|Certification risk|Must not imply certification unless approved|
|Compatibility claim|Must not imply unsupported compatibility|
|Region wording|Must not imply global availability unless approved|
|AI / intelligence wording|Must not imply unsupported autonomy or capability|
|Energy wording|Must not imply energy savings unless evidence exists|
|Public use approval|Must be approved before website, Amazon, catalog, or packaging use|

### ZH-TW

面向客戶型號名稱在用於型錄、網站、包裝、Amazon 上架、銷售文件、報價單、合作夥伴資料或客戶支持文件前，必須完成核准。

|核准項目|要求|
|---|---|
|名稱可讀性|必須能被客戶與合作夥伴理解|
|產品線一致性|必須匹配已核准產品線命名|
|版本準確性|不得暗示未支援功能|
|SKU 映射|必須映射至一個或多個已核准 SKU 記錄|
|認證風險|除非已核准，不得暗示認證|
|相容性宣稱|不得暗示未支援相容性|
|區域文字|除非已核准，不得暗示全球可用|
|AI / 智慧文字|不得暗示未支援自主性或能力|
|能源文字|除非有證據，不得暗示節能效果|
|公開使用核准|在網站、Amazon、型錄或包裝使用前必須核准|

---

## 23.6 Internal Model Number Approval

## 23.6 內部型號核准

### EN

Internal model numbers require approval before use in product planning, engineering records, firmware targets, test plans, certification preparation, production handoff, or SKU master table records.

|Approval Item|Requirement|
|---|---|
|Product line code|Must use approved product line code|
|Generation code|Must use approved generation code|
|Variant abbreviation|Must use approved abbreviation|
|Engineering relevance|Must be meaningful for product and engineering teams|
|SKU relationship|Must support one-to-many SKU mapping where needed|
|Firmware / app impact|Must be reviewed where applicable|
|Certification preparation impact|Must be reviewed where applicable|
|Manufacturing handoff impact|Must be reviewed where applicable|
|Duplicate check|Must not duplicate another internal model meaning|

### ZH-TW

內部型號在用於產品規劃、工程記錄、韌體目標、測試計劃、認證準備、生產交接或 SKU 主表記錄前，必須完成核准。

|核准項目|要求|
|---|---|
|產品線代碼|必須使用已核准產品線代碼|
|世代代碼|必須使用已核准世代代碼|
|版本縮寫|必須使用已核准縮寫|
|工程相關性|必須對產品與工程團隊有意義|
|SKU 關係|必要時必須支援一對多 SKU 映射|
|韌體 / App 影響|適用時必須審查|
|認證準備影響|適用時必須審查|
|生產交接影響|適用時必須審查|
|重複檢查|不得與其他內部型號含義重複|

---

## 23.7 SKU Code Approval

## 23.7 SKU 代碼核准

### EN

SKU codes require approval before use in inventory, pricing, packaging, Amazon, channel, quotation, production, shipment, or commercial release records.

|Approval Item|Requirement|
|---|---|
|Format compliance|Must follow the official SKU format|
|Code library compliance|All fields must use approved codes|
|Product configuration|SKU must represent one defined commercial configuration|
|Region accuracy|Region code must match intended market|
|Connectivity accuracy|Connectivity code must match validated capability|
|Power accuracy|Power code must match actual power architecture|
|Variant accuracy|Variant code must match actual product configuration|
|Package accuracy|Package code must match packaging or sales unit|
|Certification mapping|Required where applicable|
|Commercial release status|Must be recorded before use|

### ZH-TW

SKU 代碼在用於庫存、定價、包裝、Amazon、渠道、報價、生產、出貨或商業發布記錄前，必須完成核准。

|核准項目|要求|
|---|---|
|格式合規|必須遵循官方 SKU 格式|
|代碼庫合規|所有欄位必須使用已核准代碼|
|產品配置|SKU 必須代表一種明確商業配置|
|區域準確性|區域代碼必須匹配目標市場|
|連接準確性|連接代碼必須匹配已驗證能力|
|供電準確性|供電代碼必須匹配實際供電架構|
|版本準確性|版本代碼必須匹配實際產品配置|
|包裝準確性|包裝代碼必須匹配包裝或銷售單位|
|認證映射|適用時必填|
|商業發布狀態|使用前必須記錄|

---

## 23.8 Engineering Model Number Approval

## 23.8 工程型號核准

### EN

Engineering model numbers require approval before they are used in test plans, validation reports, certification preparation, manufacturing handoff, or engineering release.

|Approval Item|Requirement|
|---|---|
|Internal model mapping|Must map to approved internal model|
|Hardware version|Must identify approved hardware version|
|Firmware version|Must identify firmware baseline where applicable|
|PCB version|Must identify PCB revision|
|Validation stage|Must identify EVT, DVT, or PVT|
|Test report mapping|Must map to required validation evidence|
|Safety impact|Must be reviewed for powered products|
|RF impact|Must be reviewed for wireless products|
|Certification impact|Must be reviewed before certification use|
|Manufacturing impact|Must be reviewed before production handoff|

### ZH-TW

工程型號在用於測試計劃、驗證報告、認證準備、生產交接或工程發布前，必須完成核准。

|核准項目|要求|
|---|---|
|內部型號映射|必須映射至已核准內部型號|
|硬體版本|必須識別已核准硬體版本|
|韌體版本|適用時必須識別韌體基線|
|PCB 版本|必須識別 PCB 修訂|
|驗證階段|必須識別 EVT、DVT 或 PVT|
|測試報告映射|必須映射至必要驗證證據|
|安全影響|帶電產品必須審查|
|RF 影響|無線產品必須審查|
|認證影響|認證使用前必須審查|
|生產影響|生產交接前必須審查|

---

## 23.9 Certification Model Number Approval

## 23.9 認證型號核准

### EN

Certification model numbers require approval before regulatory filing, product label use, packaging use, Amazon compliance entry, or market release.

|Approval Item|Requirement|
|---|---|
|Certification model format|Must be suitable for filing|
|Engineering model mapping|Must map to tested engineering configuration|
|SKU mapping|Must map to applicable SKU records|
|Target region|Must identify certification market|
|Certification framework|Must identify FCC, UL / ETL, CE, UKCA, NCC, PSE, RCM, or other framework|
|Product label alignment|Must match label model reference where required|
|Test report mapping|Must map to lab or certification report|
|Claim boundary|Must define allowed certification claims|
|Archive location|Must be recorded|
|Post-filing change control|Must be established|

### ZH-TW

認證型號在用於法規提交、產品標籤、包裝、Amazon 合規欄位或市場發布前，必須完成核准。

|核准項目|要求|
|---|---|
|認證型號格式|必須適合提交|
|工程型號映射|必須映射至被測工程配置|
|SKU 映射|必須映射至適用 SKU 記錄|
|目標區域|必須識別認證市場|
|認證框架|必須識別 FCC、UL / ETL、CE、UKCA、NCC、PSE、RCM 或其他框架|
|產品標籤一致性|必要時必須匹配標籤型號引用|
|測試報告映射|必須映射至實驗室或認證報告|
|宣稱邊界|必須定義允許使用的認證宣稱|
|歸檔位置|必須記錄|
|提交後變更管控|必須建立|

---

## 23.10 Manufacturing Model Number Approval

## 23.10 生產型號核准

### EN

Manufacturing model numbers require approval before factory build, pilot production, mass production, QC release, inventory receiving, or shipment.

|Approval Item|Requirement|
|---|---|
|Internal model mapping|Must map to approved internal model|
|Engineering model mapping|Must map to approved engineering model|
|SKU mapping|Required where applicable|
|Certification model mapping|Required where applicable|
|BOM version|Must be approved|
|PCB version|Must be approved|
|Assembly version|Must be approved|
|Supplier code|Must be approved and controlled|
|QC version|Must be approved|
|Packaging version|Must be approved|
|Lot rule|Must be defined|
|Factory test process|Must be approved|

### ZH-TW

生產型號在用於工廠構建、試產、量產、QC 放行、庫存入庫或出貨前，必須完成核准。

|核准項目|要求|
|---|---|
|內部型號映射|必須映射至已核准內部型號|
|工程型號映射|必須映射至已核准工程型號|
|SKU 映射|適用時必填|
|認證型號映射|適用時必填|
|BOM 版本|必須核准|
|PCB 版本|必須核准|
|組裝版本|必須核准|
|供應商代碼|必須核准且受控|
|QC 版本|必須核准|
|包裝版本|必須核准|
|Lot 規則|必須定義|
|工廠測試流程|必須核准|

---

## 23.11 Package Model Name Approval

## 23.11 包裝型號名稱核准

### EN

Package model names require approval before use in retail packaging, Amazon, channel documents, quotations, project proposals, education deployments, demo kits, or sample kits.

|Approval Item|Requirement|
|---|---|
|Package use case|Must be defined|
|Package code|Must match package type|
|Included product SKUs|Must be listed|
|Included quantities|Must be listed|
|Included accessories|Must be listed where applicable|
|Included service records|Must be listed where applicable|
|Packaging version|Must be assigned|
|Barcode / GTIN / UPC / EAN|Required where applicable|
|Amazon FNSKU|Required for FBA package|
|Claim boundary|Must be recorded|
|Commercial release status|Must be approved before public use|

### ZH-TW

包裝型號名稱在用於零售包裝、Amazon、渠道文件、報價單、專案方案、教育部署、展示套組或樣品包前，必須完成核准。

|核准項目|要求|
|---|---|
|包裝使用場景|必須定義|
|包裝代碼|必須匹配包裝類型|
|內含產品 SKU|必須列出|
|內含數量|必須列出|
|內含配件|適用時必須列出|
|內含服務記錄|適用時必須列出|
|包裝版本|必須分配|
|條碼 / GTIN / UPC / EAN|適用時必填|
|Amazon FNSKU|FBA 包裝必填|
|宣稱邊界|必須記錄|
|商業發布狀態|公開使用前必須核准|

---

## 23.12 Name Change Approval Rules

## 23.12 名稱變更核准規則

### EN

A name change requires approval when an existing identifier or public name is replaced, revised, renamed, shortened, expanded, or repositioned.

|Name Change Type|Approval Required?|Notes|
|---|--:|---|
|Customer-facing model name change|Yes|Website, catalog, packaging, Amazon, support impact|
|Internal model number change|Yes|Engineering, firmware, app, testing, and SKU mapping impact|
|SKU code change|Yes|Inventory, pricing, packaging, channel, and commercial impact|
|Engineering model change|Yes|Validation, certification, and manufacturing impact|
|Certification model change|Yes|Filing, label, and compliance impact|
|Manufacturing model change|Yes|BOM, factory, QC, package, and lot impact|
|Package model name change|Yes|Included product, package, barcode, and claim impact|
|Minor wording correction in public copy|Maybe|Claim boundary review required|
|Typography or formatting correction|Usually no|Documentation version update may be enough|
|Translation-only wording change|Maybe|Legal and claim review may be needed|

### ZH-TW

當既有識別碼或公開名稱被替換、修訂、改名、縮短、擴展或重新定位時，必須進行名稱變更核准。

|名稱變更類型|是否需要核准？|備註|
|---|--:|---|
|面向客戶型號名稱變更|是|影響網站、型錄、包裝、Amazon 與支持|
|內部型號變更|是|影響工程、韌體、App、測試與 SKU 映射|
|SKU 代碼變更|是|影響庫存、定價、包裝、渠道與商業|
|工程型號變更|是|影響驗證、認證與生產|
|認證型號變更|是|影響提交、標籤與合規|
|生產型號變更|是|影響 BOM、工廠、QC、包裝與 Lot|
|包裝型號名稱變更|是|影響內含產品、包裝、條碼與宣稱|
|公開文案輕微文字修正|視情況|需要宣稱邊界審查|
|字體或格式修正|通常否|更新文件版本可能已足夠|
|僅翻譯文字變更|視情況|可能需要法律與宣稱審查|

---

## 23.13 Website and Amazon Use Approval

## 23.13 網站與 Amazon 使用核准

### EN

Model names must be approved before use on websites, Amazon listings, online stores, product images, A+ pages, comparison tables, or downloadable documents.

|Use Area|Required Review|
|---|---|
|Product title|Customer-facing name, claim boundary, region|
|Bullet points|Feature claims, compatibility, certification wording|
|A+ content|Package name, system explanation, image claims|
|Product images|Label accuracy, package accuracy, model visibility|
|Specification table|SKU, power, connectivity, certification, region|
|Comparison chart|Accurate variant and capability comparison|
|Downloadable manual|Model references, safety text, region|
|FAQ|Support language and claim boundary|
|Storefront|Product family consistency|
|Search keywords|Trademark, legal, and claim risk|

### ZH-TW

型號名稱在用於網站、Amazon 上架、線上商店、產品圖片、A+ 頁面、比較表或可下載文件前，必須完成核准。

|使用區域|必要審查|
|---|---|
|產品標題|面向客戶名稱、宣稱邊界、區域|
|五點描述|功能宣稱、相容性、認證文字|
|A+ 內容|包裝名稱、系統說明、圖片宣稱|
|產品圖片|標籤準確性、包裝準確性、型號可見性|
|規格表|SKU、供電、連接、認證、區域|
|比較表|版本與能力比較準確性|
|可下載手冊|型號引用、安全文字、區域|
|FAQ|支持語言與宣稱邊界|
|Storefront|產品家族一致性|
|搜尋關鍵字|商標、法律與宣稱風險|

---

## 23.14 Legal and Compliance Review Rules

## 23.14 法律與合規審查規則

### EN

Legal or compliance review is required when a name may create regulatory, trademark, certification, safety, privacy, compatibility, or performance risk.

|Risk Area|Review Required When|
|---|---|
|Trademark|New public-facing name, brand-like term, slogan, kit name|
|Certification|FCC, UL, ETL, CE, UKCA, or similar claim appears|
|Safety|Product name implies safety, protection, emergency, fail-safe, or certified status|
|Energy|Name implies energy savings, metering accuracy, or efficiency benefit|
|AI|Name implies autonomy, intelligence, prediction, or security decision-making|
|Vision / Camera|Name implies surveillance, recognition, privacy-sensitive behavior|
|Outdoor|Name implies weatherproof, waterproof, dustproof, or outdoor durability|
|Compatibility|Name implies universal or broad compatibility|
|Region|Name implies global or multi-market availability|
|Education / Institutional|Name implies classroom, school, institutional, or procurement-specific readiness|

### ZH-TW

當名稱可能產生法規、商標、認證、安全、隱私、相容性或性能風險時，需要法律或合規審查。

|風險領域|何時需要審查|
|---|---|
|商標|新公開名稱、類品牌用語、口號、套組名稱|
|認證|出現 FCC、UL、ETL、CE、UKCA 或類似宣稱|
|安全|名稱暗示安全、防護、緊急、故障安全或已認證狀態|
|能源|名稱暗示節能、計量準確性或效率收益|
|AI|名稱暗示自主性、智慧、預測或安全決策|
|視覺 / 攝影機|名稱暗示監控、識別、隱私敏感行為|
|戶外|名稱暗示耐候、防水、防塵或戶外耐用性|
|相容性|名稱暗示 universal 或廣泛相容性|
|區域|名稱暗示全球或多市場可用性|
|教育 / 機構|名稱暗示教室、學校、機構或採購特定就緒狀態|

---

## 23.15 Duplicate and Conflict Check

## 23.15 重複與衝突檢查

### EN

Before a model name is approved, it must be checked against existing names and identifiers.

|Check Area|Requirement|
|---|---|
|Customer-facing names|No confusing duplicate names|
|Internal model numbers|No duplicate internal identifier|
|SKU codes|No duplicate SKU code or duplicate meaning|
|Engineering model numbers|No duplicate technical configuration identifier|
|Certification model numbers|No conflict with filed or planned certification models|
|Manufacturing model numbers|No conflict with factory-controlled identifiers|
|Package model names|No duplicate kit or package identity|
|Barcode / FNSKU|No duplicate retail or Amazon identifier|
|Trademark records|Check where the name may function as brand or product mark|
|Channel documents|Check whether old names remain in partner materials|

### ZH-TW

型號名稱在核准前，必須與既有名稱與識別碼進行重複與衝突檢查。

|檢查領域|要求|
|---|---|
|面向客戶名稱|不得產生易混淆重複名稱|
|內部型號|不得重複內部識別碼|
|SKU 代碼|不得重複 SKU 代碼或重複含義|
|工程型號|不得重複技術配置識別碼|
|認證型號|不得與已提交或計劃認證型號衝突|
|生產型號|不得與工廠管控識別碼衝突|
|包裝型號名稱|不得重複套組或包裝身份|
|條碼 / FNSKU|不得重複零售或 Amazon 識別碼|
|商標記錄|當名稱可能作為品牌或產品標誌時需檢查|
|渠道文件|檢查舊名稱是否仍存在於合作夥伴材料中|

---

## 23.16 Approval Status Definitions

## 23.16 核准狀態定義

### EN

|Status|Meaning|Allowed Use|
|---|---|---|
|Draft|Name is being proposed|Internal planning only|
|Pending Review|Submitted for approval|Internal review only|
|Conditionally Approved|Approved with limitations|Controlled use only|
|Approved Internal|Approved for internal use|Internal records only|
|Approved Public|Approved for public and commercial use|Website, catalog, packaging, Amazon where applicable|
|On Hold|Temporarily paused|No new use until resolved|
|Rejected|Not approved|Do not use|
|Deprecated|No longer recommended|Existing references only|
|Archived|Historical reference only|Do not reuse|

### ZH-TW

|狀態|含義|允許使用|
|---|---|---|
|Draft|名稱正在提案|僅內部規劃|
|Pending Review|已提交審查|僅內部審查|
|Conditionally Approved|有條件核准|僅限受控使用|
|Approved Internal|已核准內部使用|僅限內部記錄|
|Approved Public|已核准公開與商業使用|適用時可用於網站、型錄、包裝、Amazon|
|On Hold|暫停使用|問題解決前不得新增使用|
|Rejected|未核准|不得使用|
|Deprecated|不再建議|僅限既有引用|
|Archived|僅歷史參考|不得重用|

---

## 23.17 Model Name Change Request Template

## 23.17 型號名稱變更申請模板

### EN

|Field|Entry|
|---|---|
|Change Request ID|TBD|
|Request Type|New Name / Name Change / SKU Change / Package Name Change|
|Existing Name / Identifier|TBD|
|Proposed Name / Identifier|TBD|
|Related Product Line|TBD|
|Related Internal Model|TBD|
|Related SKU Code(s)|TBD|
|Related Engineering Model|TBD|
|Related Certification Model|TBD|
|Related Manufacturing Model|TBD|
|Related Package Model Name|TBD|
|Reason for Change|TBD|
|Public Use Intended?|Yes / No|
|Website / Amazon Impact|Yes / No|
|Packaging Impact|Yes / No|
|Certification Impact|Yes / No|
|Legal / Trademark Impact|Yes / No|
|Claim Boundary Notes|TBD|
|Approval Status|Draft / Pending / Approved / Rejected|
|Approval Owner|TBD|
|Effective Date|TBD|
|Revision Date|TBD|

### ZH-TW

|欄位|填寫|
|---|---|
|變更申請 ID|TBD|
|申請類型|新名稱 / 名稱變更 / SKU 變更 / 包裝名稱變更|
|既有名稱 / 識別碼|TBD|
|建議名稱 / 識別碼|TBD|
|相關產品線|TBD|
|相關內部型號|TBD|
|相關 SKU 代碼|TBD|
|相關工程型號|TBD|
|相關認證型號|TBD|
|相關生產型號|TBD|
|相關包裝型號名稱|TBD|
|變更原因|TBD|
|是否預計公開使用|Yes / No|
|網站 / Amazon 影響|Yes / No|
|包裝影響|Yes / No|
|認證影響|Yes / No|
|法律 / 商標影響|Yes / No|
|宣稱邊界備註|TBD|
|核准狀態|Draft / Pending / Approved / Rejected|
|核准負責人|TBD|
|生效日期|TBD|
|修訂日期|TBD|

---

## 23.18 Approval Workflow

## 23.18 核准流程

### EN

|Step|Action|Owner|
|--:|---|---|
|1|Submit name or identifier proposal|Requesting team|
|2|Check naming format and code library|Operations|
|3|Review product role and naming logic|Product team|
|4|Review hardware and engineering mapping|Engineering team|
|5|Review SKU and master table impact|Operations|
|6|Review certification and compliance impact|Compliance / certification owner|
|7|Review packaging and label impact|Packaging / design team|
|8|Review website, Amazon, and catalog impact|Marketing / e-commerce|
|9|Review legal, trademark, and claim risk where needed|Legal / compliance|
|10|Approve, reject, or place on hold|Approval owner|
|11|Update master table and change log|Operations / documentation|
|12|Notify affected teams|Approval owner / operations|

### ZH-TW

|步驟|動作|負責方|
|--:|---|---|
|1|提交名稱或識別碼提案|申請團隊|
|2|檢查命名格式與代碼庫|運營|
|3|審查產品角色與命名邏輯|產品團隊|
|4|審查硬體與工程映射|工程團隊|
|5|審查 SKU 與主表影響|運營|
|6|審查認證與合規影響|合規 / 認證負責人|
|7|審查包裝與標籤影響|包裝 / 設計團隊|
|8|審查網站、Amazon 與型錄影響|行銷 / 電商|
|9|必要時審查法律、商標與宣稱風險|法務 / 合規|
|10|核准、拒絕或暫停|核准負責人|
|11|更新主表與變更記錄|運營 / 文件|
|12|通知受影響團隊|核准負責人 / 運營|

---

## 23.19 Prohibited Approval Practices

## 23.19 禁止的核准做法

### EN

|Prohibited Practice|Reason|
|---|---|
|Using a name before approval|Breaks traceability and creates commercial risk|
|Approving public name without SKU mapping|Creates inventory and sales confusion|
|Approving SKU without hardware mapping|Creates engineering and production risk|
|Approving certification model without engineering mapping|Creates compliance risk|
|Approving package name without included SKU list|Creates package and inventory confusion|
|Using “certified” wording before certification is complete|Creates legal and compliance risk|
|Using “universal” without validated compatibility|Creates unsupported compatibility claim|
|Changing an approved name without change request|Breaks historical traceability|
|Reusing rejected or archived names without review|Creates conflict and confusion|
|Approving based only on marketing preference|May ignore engineering, certification, and operations risk|

### ZH-TW

|禁止做法|原因|
|---|---|
|未核准前使用名稱|破壞可追蹤性並造成商業風險|
|未映射 SKU 即核准公開名稱|造成庫存與銷售混亂|
|未映射硬體即核准 SKU|造成工程與生產風險|
|未映射工程型號即核准認證型號|造成合規風險|
|未列出內含 SKU 即核准包裝名稱|造成包裝與庫存混亂|
|認證未完成前使用 “certified” 文字|造成法律與合規風險|
|未驗證相容性即使用 “universal”|造成未支援相容性宣稱|
|未提交變更申請即更改已核准名稱|破壞歷史可追蹤性|
|未經審查重用已拒絕或已歸檔名稱|造成衝突與混淆|
|僅依行銷偏好核准|可能忽略工程、認證與運營風險|

---

## 23.20 Required Master Table Fields

## 23.20 必備主表欄位

### EN

Each approved model name or identifier must be recorded in the appropriate master table.

|Field|Requirement|
|---|---|
|Name / Identifier|Required|
|Identifier Type|Customer-facing / Internal / SKU / Engineering / Certification / Manufacturing / Package|
|Related Product Line|Required|
|Related Internal Model|Required where applicable|
|Related SKU Code(s)|Required where applicable|
|Related Engineering Model|Required where applicable|
|Related Certification Model|Required where applicable|
|Related Manufacturing Model|Required where applicable|
|Related Package Model|Required where applicable|
|Approval Status|Required|
|Approved Use Scope|Internal / Public / Packaging / Amazon / Certification / Manufacturing|
|Claim Boundary Notes|Required|
|Legal / Compliance Review Status|Required where applicable|
|Approval Owner|Required|
|Approval Date|Required|
|Effective Date|Required where applicable|
|Revision Date|Required|
|Change Log Reference|Required|

### ZH-TW

每一個已核准型號名稱或識別碼都必須記錄於適用主表中。

|欄位|要求|
|---|---|
|名稱 / 識別碼|必填|
|識別碼類型|面向客戶 / 內部 / SKU / 工程 / 認證 / 生產 / 包裝|
|相關產品線|必填|
|相關內部型號|適用時必填|
|相關 SKU 代碼|適用時必填|
|相關工程型號|適用時必填|
|相關認證型號|適用時必填|
|相關生產型號|適用時必填|
|相關包裝型號|適用時必填|
|核准狀態|必填|
|核准使用範圍|內部 / 公開 / 包裝 / Amazon / 認證 / 生產|
|宣稱邊界備註|必填|
|法律 / 合規審查狀態|適用時必填|
|核准負責人|必填|
|核准日期|必填|
|生效日期|適用時必填|
|修訂日期|必填|
|變更記錄引用|必填|

---

## 23.21 Chapter Conclusion

## 23.21 本章結論

### EN

Model name approval protects the integrity of the Artibird product identity system.

Every customer-facing name, internal model number, SKU code, engineering model number, certification model number, manufacturing model number, and package model name must be reviewed before use. Each name must map to the correct product role, hardware configuration, SKU record, certification status, package record, commercial use scope, and claim boundary.

No model name should enter public, commercial, engineering, certification, manufacturing, packaging, Amazon, or channel use without approval and master table registration.

### ZH-TW

型號名稱核准保護 Artibird 產品身份系統的完整性。

每一個面向客戶名稱、內部型號、SKU 代碼、工程型號、認證型號、生產型號與包裝型號名稱，在使用前都必須審查。每一個名稱都必須映射至正確的產品角色、硬體配置、SKU 記錄、認證狀態、包裝記錄、商業使用範圍與宣稱邊界。

任何型號名稱在未完成核准與主表登記前，不得進入公開、商業、工程、認證、生產、包裝、Amazon 或渠道使用。

---

本章依據《Artibird SKU & Model Naming Specification v1.0》的既定撰寫計劃展開；原始規劃將 Chapter 23 設為 **Model Name Approval Rules｜型號名稱核准規則**，並要求定義新型號名稱、名稱變更、SKU 變更與包裝名稱變更的核准規則；核准清單包括產品角色、硬體映射、認證影響、商業使用、包裝使用、網站 / Amazon 使用與法律風險審查。

**話題延伸｜互動建議**  
下一章可以進入 **Part IV — SKU Master Table Templates｜第四部分｜SKU 主表模板**，開始寫 **Chapter 24 — SKU Master Record Template｜第二十四章｜SKU 主記錄模板**，把 SKU Code、Customer-Facing Name、Internal Model、Hardware Version、Firmware Version、Certification Model、Packaging Version、Release Status、Commercial Channel、Claim Boundary Notes 等欄位整理成正式主表模板。