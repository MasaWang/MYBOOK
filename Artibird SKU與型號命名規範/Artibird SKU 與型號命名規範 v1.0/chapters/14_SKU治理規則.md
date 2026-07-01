# Artibird SKU & Model Naming Specification v1.0

# Artibird SKU 與型號命名規範 v1.0

## Chapter 14 — SKU Governance Rules

## 第十四章｜SKU 治理規則

---

## 14.1 Purpose

## 14.1 目的

### EN

This chapter defines the governance rules for creating, modifying, approving, releasing, retiring, archiving, and reusing Artibird SKU codes.

SKU governance ensures that every SKU represents one defined product configuration and remains traceable across product planning, engineering, certification, packaging, manufacturing, inventory, Amazon listing, channel sales, pricing, and commercial release.

Without SKU governance, the same product may be represented by multiple codes, or different product configurations may be incorrectly represented by one code. This can create engineering confusion, certification risk, packaging errors, inventory mismatch, sales inconsistency, and compliance problems.

### ZH-TW

本章定義 Artibird SKU 代碼在建立、修改、核准、發布、退市、歸檔與重用過程中的治理規則。

SKU 治理確保每一個 SKU 都代表一種明確產品配置，並在產品規劃、工程、認證、包裝、生產、庫存、Amazon 上架、渠道銷售、定價與商業發布中保持可追蹤。

如果缺乏 SKU 治理，同一產品可能被多個代碼表示，或不同產品配置被錯誤地使用同一代碼表示。這會造成工程混亂、認證風險、包裝錯誤、庫存不一致、銷售不一致與合規問題。

---

## 14.2 Core Governance Principle

## 14.2 核心治理原則

### EN

The core rule of Artibird SKU governance is:

```text
One SKU = One Defined Commercial Configuration
```

A SKU must represent one and only one defined configuration across the following dimensions:

|Dimension|Controlled By|
|---|---|
|Product family|Product line code|
|Product generation|Generation code|
|Target market|Region code|
|Communication method|Connectivity code|
|Power architecture|Power code|
|Functional variant|Variant code|
|Packaging unit|Package code|
|Release status|SKU master table|
|Certification status|Certification tracker|
|Claim boundary|Claim review register|

A SKU must not be reused for a different configuration once released or externally referenced.

### ZH-TW

Artibird SKU 治理的核心規則是：

```text
一個 SKU = 一種明確商業配置
```

一個 SKU 必須且只能代表一種已定義配置，並涵蓋以下維度：

|維度|管控方式|
|---|---|
|產品家族|產品線代碼|
|產品世代|世代代碼|
|目標市場|區域代碼|
|通訊方式|連接代碼|
|供電架構|供電代碼|
|功能版本|版本代碼|
|包裝單位|包裝代碼|
|發布狀態|SKU 主表|
|認證狀態|認證追蹤表|
|宣稱邊界|宣稱審查登記表|

一旦某個 SKU 已發布或被外部引用，不得將其重用於不同配置。

---

## 14.3 General SKU Governance Rules

## 14.3 SKU 一般治理規則

### EN

|Rule|Requirement|
|---|---|
|One SKU, one configuration|Each SKU must represent one defined product configuration|
|No unsupported codes|Do not use codes for unimplemented or unvalidated functions|
|No certification implication|SKU must not imply certification unless approved|
|No duplicate SKU meaning|Different SKUs should not describe the same configuration unless intentionally separated|
|Version traceability|SKU must connect to hardware, firmware, PCB, certification, package, and release status|
|Change approval|SKU changes require formal review and approval|
|Retirement control|Deprecated or discontinued SKUs must be marked inactive or archived|
|Commercial consistency|SKU must match catalog, packaging, Amazon, price sheet, channel, and sales documents|
|No silent reuse|Retired SKU codes must not be reused for new meanings|
|Master table required|Every SKU must exist in the SKU master table|

### ZH-TW

|規則|要求|
|---|---|
|一個 SKU 對應一種配置|每個 SKU 必須代表一種已定義產品配置|
|不使用未支援代碼|不得為未實作或未驗證功能使用對應代碼|
|不暗示認證|除非已核准，SKU 不得暗示認證狀態|
|不重複含義|除非刻意區分，否則不同 SKU 不應描述同一配置|
|版本可追蹤|SKU 必須連接硬體、韌體、PCB、認證、包裝與發布狀態|
|變更需核准|SKU 變更必須經正式審查與核准|
|退市管控|Deprecated 或 Discontinued SKU 必須標記 inactive 或歸檔|
|商業一致性|SKU 必須與型錄、包裝、Amazon、價格表、渠道與銷售文件一致|
|不得靜默重用|已退市 SKU 不得被重用為新含義|
|必須建立主表記錄|每個 SKU 都必須存在於 SKU 主表中|

---

## 14.4 SKU Creation Rules

## 14.4 SKU 建立規則

### EN

A new SKU may be created only when there is a defined commercial, technical, regional, packaging, or release reason.

|Creation Trigger|New SKU Required?|Example|
|---|---|---|
|New product line|Yes|ACT added as new product family|
|New generation|Yes|G1 to G2|
|New target region|Yes|US to EU|
|New connectivity configuration|Yes|WF to BLE|
|New power architecture|Yes|BAT to USB|
|New functional variant|Yes|STD to E|
|New packaging unit|Yes|S to 2P|
|New certification model mapping|Usually yes|New certified model introduced|
|New channel-only price|Usually no|Use pricing / channel records|
|New warehouse location|No|Use logistics records|
|Minor firmware update|Usually no|Use firmware version tracking|

### ZH-TW

只有在存在明確商業、技術、區域、包裝或發布原因時，才可建立新 SKU。

|建立觸發條件|是否需要新 SKU？|示例|
|---|---|---|
|新產品線|是|新增 ACT 產品家族|
|新世代|是|G1 變更為 G2|
|新目標區域|是|US 變更為 EU|
|新連接配置|是|WF 變更為 BLE|
|新供電架構|是|BAT 變更為 USB|
|新功能版本|是|STD 變更為 E|
|新包裝單位|是|S 變更為 2P|
|新認證型號映射|通常是|導入新認證型號|
|僅新增渠道價格|通常否|使用價格 / 渠道記錄|
|新倉庫位置|否|使用物流記錄|
|輕微韌體更新|通常否|使用韌體版本追蹤|

---

## 14.5 SKU Modification Rules

## 14.5 SKU 修改規則

### EN

A released SKU code should normally not be edited directly. If a configuration changes, a new SKU should usually be created.

|Modification Type|Recommended Action|
|---|---|
|Typo in unreleased draft SKU|Correct draft record|
|Error in released SKU code|Create correction record and governance note|
|Product configuration changes|Create new SKU|
|Packaging changes|Create new SKU or package version update depending on impact|
|Certification model changes|Review and usually create new SKU|
|Firmware update only|Update firmware record, not SKU code|
|Price change only|Update pricing sheet|
|Channel availability change only|Update channel record|
|Status change from Released to Deprecated|Update release status|
|Status change from Deprecated to Discontinued|Update lifecycle status|

### ZH-TW

已發布 SKU 代碼通常不應直接修改。如果配置發生變化，通常應建立新 SKU。

|修改類型|建議處理方式|
|---|---|
|未發布草案 SKU 中的錯字|修正草案記錄|
|已發布 SKU 代碼錯誤|建立修正記錄與治理備註|
|產品配置變更|建立新 SKU|
|包裝變更|依影響建立新 SKU 或更新包裝版本|
|認證型號變更|審查並通常建立新 SKU|
|僅韌體更新|更新韌體記錄，不修改 SKU 代碼|
|僅價格變更|更新價格表|
|僅渠道可用性變更|更新渠道記錄|
|狀態由 Released 變為 Deprecated|更新發布狀態|
|狀態由 Deprecated 變為 Discontinued|更新生命週期狀態|

---

## 14.6 SKU Approval Rules

## 14.6 SKU 核准規則

### EN

A SKU must be approved before it is used in any public, commercial, production, or channel-facing context.

|Review Area|Required Approval|
|---|---|
|Product role|Product team|
|Product line code|Product / operations|
|Generation code|Product / engineering|
|Region code|Operations / compliance|
|Connectivity code|Engineering / firmware / app|
|Power code|Engineering / compliance|
|Variant code|Product / engineering / commercial|
|Package code|Operations / packaging|
|Certification impact|Compliance / certification owner|
|Packaging impact|Packaging / design team|
|Amazon listing impact|E-commerce / operations|
|Pricing impact|Sales / commercial team|
|Legal risk|Legal / compliance where needed|

### ZH-TW

SKU 在用於任何公開、商業、生產或渠道場景前，必須完成核准。

|審查領域|必要核准|
|---|---|
|產品角色|產品團隊|
|產品線代碼|產品 / 運營|
|世代代碼|產品 / 工程|
|區域代碼|運營 / 合規|
|連接代碼|工程 / 韌體 / App|
|供電代碼|工程 / 合規|
|版本代碼|產品 / 工程 / 商務|
|包裝代碼|運營 / 包裝|
|認證影響|合規 / 認證負責人|
|包裝影響|包裝 / 設計團隊|
|Amazon 上架影響|電商 / 運營|
|定價影響|銷售 / 商務團隊|
|法律風險|必要時由法務 / 合規審查|

---

## 14.7 SKU Release Rules

## 14.7 SKU 發布規則

### EN

A SKU may be released only after all required mapping and approval records are completed.

|Release Requirement|Required|
|---|---|
|SKU master record completed|Yes|
|Customer-facing name approved|Yes|
|Internal model mapped|Yes|
|Engineering model mapped|Required where applicable|
|Certification model mapped|Required where applicable|
|Certification status recorded|Yes|
|Packaging version assigned|Yes|
|Label version assigned|Required where applicable|
|Barcode / GTIN / UPC / EAN assigned|Required where applicable|
|Amazon FNSKU assigned|Required for FBA records|
|Pricing record created|Required for commercial release|
|Channel availability defined|Required for channel sales|
|Claim boundary notes completed|Yes|
|Approval owner recorded|Yes|
|Release date recorded|Yes|

### ZH-TW

只有在所有必要映射與核准記錄完成後，SKU 才可發布。

|發布要求|是否必須|
|---|---|
|SKU 主記錄完成|是|
|面向客戶名稱已核准|是|
|內部型號已映射|是|
|工程型號已映射|適用時必須|
|認證型號已映射|適用時必須|
|認證狀態已記錄|是|
|包裝版本已分配|是|
|標籤版本已分配|適用時必須|
|條碼 / GTIN / UPC / EAN 已分配|適用時必須|
|Amazon FNSKU 已分配|FBA 記錄必須|
|定價記錄已建立|商業發布必須|
|渠道可用性已定義|渠道銷售必須|
|宣稱邊界備註已完成|是|
|核准負責人已記錄|是|
|發布日期已記錄|是|

---

## 14.8 SKU Duplication Rules

## 14.8 SKU 重複規則

### EN

Duplicate SKU meanings must be avoided.

|Duplication Case|Allowed?|Requirement|
|---|---|---|
|Two SKUs represent identical configuration|Usually no|Merge or justify separation|
|Same product, different package unit|Yes|Package code must differ|
|Same product, different region|Yes|Region code must differ|
|Same product, different channel only|Usually no|Use channel availability record|
|Same product, different Amazon FNSKU only|Maybe|Requires operations review|
|Same product, different barcode due to packaging|Yes|Package record must differ|
|Same product, different price only|No|Use pricing sheet|
|Same product, different warehouse only|No|Use logistics system|

If two SKUs intentionally represent similar configurations, the reason must be documented in the SKU master table.

### ZH-TW

應避免 SKU 含義重複。

|重複情況|是否允許？|要求|
|---|---|---|
|兩個 SKU 表示完全相同配置|通常不允許|合併或說明分離理由|
|同一產品，不同包裝單位|允許|包裝代碼必須不同|
|同一產品，不同區域|允許|區域代碼必須不同|
|同一產品，僅渠道不同|通常不允許|使用渠道可用性記錄|
|同一產品，僅 Amazon FNSKU 不同|視情況|需運營審查|
|同一產品，因包裝導致條碼不同|允許|包裝記錄必須不同|
|同一產品，僅價格不同|不允許|使用價格表|
|同一產品，僅倉庫不同|不允許|使用物流系統|

如果兩個 SKU 被刻意用於相近配置，必須在 SKU 主表中記錄原因。

---

## 14.9 SKU Retirement Rules

## 14.9 SKU 退市規則

### EN

A SKU may be retired when it is no longer recommended for new sales, production, listing, or channel use.

|Retirement Status|Meaning|Allowed Use|
|---|---|---|
|Active|SKU is approved and available|Normal use|
|On Hold|SKU temporarily paused|Limited internal control|
|Deprecated|SKU is not recommended for new use|Existing support only|
|Discontinued|SKU is no longer sold or produced|No new commercial use|
|Archived|SKU is retained only for historical traceability|Reference only|

A retired SKU must remain traceable. It should not be deleted from the master table.

### ZH-TW

當某個 SKU 不再建議用於新銷售、生產、上架或渠道使用時，可進入退市流程。

|退市狀態|含義|允許用途|
|---|---|---|
|Active|SKU 已核准且可用|正常使用|
|On Hold|SKU 暫停使用|有限內部管控|
|Deprecated|不建議新使用|僅保留既有支持|
|Discontinued|不再銷售或生產|不再新增商業使用|
|Archived|僅保留歷史追蹤|僅供參考|

已退市 SKU 必須保持可追蹤，不應從主表中刪除。

---

## 14.10 SKU Reuse Rules

## 14.10 SKU 重用規則

### EN

Released SKU codes must not be reused for new meanings.

|SKU Status|Reuse Allowed?|Notes|
|---|---|---|
|Draft|Yes, before external use|Must update draft record|
|Reserved|Maybe|Requires approval|
|Prototype|No, if used in reports or labels|Maintain traceability|
|Released|No|Must never be reused for another configuration|
|Deprecated|No|Historical traceability required|
|Discontinued|No|Historical traceability required|
|Archived|No|Reference-only record|

If a SKU has appeared in any external document, packaging, certification record, sales document, Amazon listing, invoice, shipment record, or channel document, it must not be reused.

### ZH-TW

已發布 SKU 代碼不得被重用為新含義。

|SKU 狀態|是否允許重用？|備註|
|---|---|---|
|Draft|可以，在外部使用前|必須更新草案記錄|
|Reserved|視情況|需要核准|
|Prototype|若已用於報告或標籤，則不可|必須保持可追蹤|
|Released|不可|絕不可重用於另一配置|
|Deprecated|不可|需要歷史追蹤|
|Discontinued|不可|需要歷史追蹤|
|Archived|不可|僅供參考記錄|

如果某個 SKU 已出現在任何外部文件、包裝、認證記錄、銷售文件、Amazon 上架、發票、出貨記錄或渠道文件中，則不得重用。

---

## 14.11 SKU Claim Boundary Rules

## 14.11 SKU 宣稱邊界規則

### EN

Each SKU must have defined claim boundaries. A SKU may only be described according to validated and approved capabilities.

|Claim Area|Requirement|
|---|---|
|Connectivity|Must match validated connectivity code|
|Power|Must match power architecture and label|
|Region|Must match approved market configuration|
|Certification|Must match certification tracker|
|Compatibility|Must match tested compatibility scope|
|Energy|Must match validated energy monitoring or savings evidence|
|AI / Vision|Must match validated AI or camera capability|
|Outdoor|Must match environmental validation|
|Local / Cloud|Must match actual local and cloud behavior|
|Capacity|Must match validated performance report|

A SKU code itself must not be used as evidence of certification, performance, compatibility, or energy savings.

### ZH-TW

每個 SKU 都必須具備明確宣稱邊界。SKU 只能依據已驗證與已核准能力進行描述。

|宣稱領域|要求|
|---|---|
|連接能力|必須匹配已驗證連接代碼|
|供電|必須匹配供電架構與標籤|
|區域|必須匹配已核准市場配置|
|認證|必須匹配認證追蹤表|
|相容性|必須匹配已測試相容範圍|
|能源|必須匹配已驗證能源監測或節能證據|
|AI / 視覺|必須匹配已驗證 AI 或攝影機能力|
|戶外|必須匹配環境驗證|
|本地 / 雲端|必須匹配實際本地與雲端行為|
|容量|必須匹配已驗證性能報告|

SKU 代碼本身不得作為認證、性能、相容性或節能效果的證據。

---

## 14.12 SKU Master Table Governance

## 14.12 SKU 主表治理

### EN

The SKU master table is the official source of truth for SKU records.

Each SKU master table record must include:

|Field|Required|
|---|---|
|SKU Code|Yes|
|Customer-Facing Name|Yes|
|Internal Model|Yes|
|Product Line|Yes|
|Generation|Yes|
|Region|Yes|
|Connectivity|Yes|
|Power|Yes|
|Variant|Yes|
|Package|Yes|
|Engineering Model|Where applicable|
|Certification Model|Where applicable|
|Manufacturing Model|Where applicable|
|Package Version|Yes|
|Certification Status|Yes|
|Release Status|Yes|
|Commercial Channel|Yes|
|Claim Boundary Notes|Yes|
|Approval Owner|Yes|
|Revision Date|Yes|

No SKU should be used operationally unless it exists in the SKU master table.

### ZH-TW

SKU 主表是 SKU 記錄的官方唯一可信來源。

每一筆 SKU 主表記錄都必須包含：

|欄位|是否必須|
|---|---|
|SKU 代碼|是|
|面向客戶名稱|是|
|內部型號|是|
|產品線|是|
|世代|是|
|區域|是|
|連接|是|
|供電|是|
|版本|是|
|包裝|是|
|工程型號|適用時|
|認證型號|適用時|
|生產型號|適用時|
|包裝版本|是|
|認證狀態|是|
|發布狀態|是|
|商業渠道|是|
|宣稱邊界備註|是|
|核准負責人|是|
|修訂日期|是|

除非某個 SKU 已存在於 SKU 主表中，否則不得在運營中使用。

---

## 14.13 SKU Change Request Governance

## 14.13 SKU 變更申請治理

### EN

Any request to create, modify, retire, replace, or reactivate a SKU must be submitted through a SKU change request record.

Required fields:

|Field|Requirement|
|---|---|
|Change Request ID|Required|
|Existing SKU|Required where applicable|
|Proposed SKU|Required where applicable|
|Change Type|New / Modify / Retire / Replace / Reactivate|
|Reason for Change|Required|
|Hardware Impact|Yes / No|
|Firmware Impact|Yes / No|
|Certification Impact|Yes / No|
|Packaging Impact|Yes / No|
|Amazon / Website Impact|Yes / No|
|Inventory Impact|Yes / No|
|Pricing Impact|Yes / No|
|Channel Impact|Yes / No|
|Approval Status|Draft / Pending / Approved / Rejected|
|Effective Date|Required|

### ZH-TW

任何建立、修改、退市、替換或重新啟用 SKU 的請求，都必須透過 SKU 變更申請記錄提交。

必備欄位：

|欄位|要求|
|---|---|
|變更申請 ID|必填|
|既有 SKU|適用時必填|
|建議 SKU|適用時必填|
|變更類型|新增 / 修改 / 退市 / 替換 / 重新啟用|
|變更原因|必填|
|硬體影響|Yes / No|
|韌體影響|Yes / No|
|認證影響|Yes / No|
|包裝影響|Yes / No|
|Amazon / 網站影響|Yes / No|
|庫存影響|Yes / No|
|定價影響|Yes / No|
|渠道影響|Yes / No|
|核准狀態|Draft / Pending / Approved / Rejected|
|生效日期|必填|

---

## 14.14 Prohibited SKU Practices

## 14.14 禁止的 SKU 做法

### EN

|Prohibited Practice|Reason|
|---|---|
|Creating SKU without master table record|Breaks traceability|
|Reusing released SKU for new configuration|Creates historical confusion|
|Using unsupported connectivity code|Creates false product claim|
|Using region code as certification proof|Region is not certification|
|Using package code as product variant|Packaging and function must remain separate|
|Using one SKU for multiple configurations|Breaks inventory and certification mapping|
|Using SKU to encode price|Pricing must remain separate|
|Using SKU to encode warehouse|Logistics must remain separate|
|Using SKU to imply “certified safe”|Certification must be separately approved|
|Publishing placeholder SKU externally|May create commercial and compliance confusion|

### ZH-TW

|禁止做法|原因|
|---|---|
|未建立主表記錄就建立 SKU|破壞可追蹤性|
|將已發布 SKU 重用於新配置|造成歷史混淆|
|使用未支援連接代碼|造成錯誤產品宣稱|
|將區域代碼作為認證證據|區域不等於認證|
|將包裝代碼作為產品版本|包裝與功能必須分離|
|用一個 SKU 表示多種配置|破壞庫存與認證映射|
|用 SKU 編入價格|定價必須獨立管控|
|用 SKU 編入倉庫位置|物流必須獨立管控|
|用 SKU 暗示「已認證安全」|認證必須另行核准|
|將佔位 SKU 對外發布|可能造成商業與合規混亂|

---

## 14.15 Governance Review Checklist

## 14.15 治理審查清單

### EN

Before a SKU is approved, the reviewer must confirm:

|Review Item|Required|
|---|---|
|SKU follows official format|Yes|
|All code fields are approved|Yes|
|SKU represents one defined configuration|Yes|
|SKU does not duplicate another SKU meaning|Yes|
|Product line is correct|Yes|
|Generation is correct|Yes|
|Region is correct|Yes|
|Connectivity is validated|Yes|
|Power architecture is validated|Yes|
|Variant is justified|Yes|
|Package code is justified|Yes|
|Engineering model is mapped|Where applicable|
|Certification impact is reviewed|Yes|
|Packaging impact is reviewed|Yes|
|Amazon / website impact is reviewed|Where applicable|
|Inventory impact is reviewed|Yes|
|Claim boundary is recorded|Yes|
|Approval owner is recorded|Yes|

### ZH-TW

在 SKU 被核准前，審查人必須確認：

|審查項目|是否必須|
|---|---|
|SKU 遵循官方格式|是|
|所有代碼欄位均已核准|是|
|SKU 代表一種明確配置|是|
|SKU 不與其他 SKU 含義重複|是|
|產品線正確|是|
|世代正確|是|
|區域正確|是|
|連接能力已驗證|是|
|供電架構已驗證|是|
|版本具備合理依據|是|
|包裝代碼具備合理依據|是|
|工程型號已映射|適用時|
|認證影響已審查|是|
|包裝影響已審查|是|
|Amazon / 網站影響已審查|適用時|
|庫存影響已審查|是|
|宣稱邊界已記錄|是|
|核准負責人已記錄|是|

---

## 14.16 Chapter Conclusion

## 14.16 本章結論

### EN

SKU governance protects the integrity of the Artibird product identity system.

Every SKU must represent one defined configuration, use approved code fields, map to the SKU master table, and remain traceable across engineering, certification, packaging, manufacturing, inventory, sales, channel, Amazon, and commercial release records.

A SKU should not be created, modified, released, retired, or reused casually. All SKU actions must follow formal governance rules, approval procedures, and master table control.

### ZH-TW

SKU 治理保護 Artibird 產品身份系統的完整性。

每一個 SKU 都必須代表一種明確配置，使用已核准代碼欄位，映射至 SKU 主表，並在工程、認證、包裝、生產、庫存、銷售、渠道、Amazon 與商業發布記錄中保持可追蹤。

SKU 不應被隨意建立、修改、發布、退市或重用。所有 SKU 動作都必須遵循正式治理規則、核准流程與主表管控。

---

本章依據《Artibird SKU & Model Naming Specification v1.0》的既定撰寫計劃展開；原始規劃已將 Chapter 14 設為 SKU Governance Rules，並明確要求定義 SKU 建立、修改、核准、退市、重用與商業一致性規則。

**話題延伸｜互動建議**  
下一章可以繼續寫 **Chapter 15 — SKU Release Status｜第十五章｜SKU 發布狀態**，正式定義 Concept、Prototype、EVT、DVT、PVT、Pilot、Certified、Released、Deprecated、Discontinued 的生命週期狀態。