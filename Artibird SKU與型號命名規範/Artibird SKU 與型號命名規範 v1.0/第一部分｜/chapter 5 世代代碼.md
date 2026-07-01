# Artibird SKU & Model Naming Specification v1.0

# Artibird SKU 與型號命名規範 v1.0

## Chapter 5 — Generation Codes

## 第五章｜世代代碼

---

## 5.1 Purpose

## 5.1 目的

### EN

This chapter defines the official generation codes used in Artibird model names, SKU codes, engineering records, validation records, manufacturing records, and commercial release planning.

Generation codes identify the product generation or development stage of an Artibird product. They help distinguish commercial generations, experimental generations, development versions, and engineering validation stages.

Generation codes must be used consistently across product planning, internal model names, SKU records, engineering model numbers, certification mapping, production readiness, and lifecycle control.

### ZH-TW

本章定義 Artibird 型號名稱、SKU 代碼、工程記錄、驗證記錄、生產記錄與商業發布規劃中使用的官方世代代碼。

世代代碼用於識別 Artibird 產品的產品世代或開發階段。它幫助區分商業世代、實驗世代、開發版本與工程驗證階段。

世代代碼必須在產品規劃、內部型號、SKU 記錄、工程型號、認證映射、生產準備與生命週期管控中保持一致。

---

## 5.2 Generation Code Definition

## 5.2 世代代碼定義

### EN

A generation code is a controlled identifier that indicates the product generation or development stage of a product.

It answers the following questions:

|Question|Description|
|---|---|
|Which product generation is this?|G1, G2, G3|
|Is this a commercial generation or internal development version?|G1 vs DEV|
|Is this an experimental version?|GX|
|Is this an engineering validation stage?|EVT, DVT, PVT|
|Can this version be used for commercial SKU release?|Depends on release approval|
|Does this generation require certification review?|Depends on hardware, RF, power, and safety changes|

### ZH-TW

世代代碼是一種受控識別碼，用於表示產品的產品世代或開發階段。

它回答以下問題：

|問題|說明|
|---|---|
|這是哪一個產品世代？|G1、G2、G3|
|這是商業世代還是內部開發版本？|G1 與 DEV 的區別|
|這是否為實驗版本？|GX|
|這是否處於工程驗證階段？|EVT、DVT、PVT|
|此版本是否可用於商業 SKU 發布？|取決於發布核准|
|此世代是否需要認證審查？|取決於硬體、RF、供電與安全變更|

---

## 5.3 Official Generation Code Table

## 5.3 官方世代代碼表

### EN

|Code|Meaning|Usage|Commercial Release Use|
|--:|---|---|---|
|G1|First generation|Initial commercial or validated product generation|Yes, after approval|
|G2|Second generation|Major hardware, platform, industrial design, or system update|Yes, after approval|
|G3|Third generation|Future major generation|Yes, after approval|
|GX|Experimental generation|Internal experiment, limited engineering exploration, or special prototype|No, unless converted to approved generation|
|DEV|Development generation|Development-only version before formal validation|No|
|EVT|Engineering Validation Test|Engineering validation stage|No, unless explicitly approved for controlled pilot|
|DVT|Design Validation Test|Design validation stage|No, unless explicitly approved for controlled pilot|
|PVT|Production Validation Test|Production validation stage|Limited use before release approval|
|PILOT|Pilot release|Limited field deployment before full release|Limited use|
|REL|Released generation|Commercially released generation|Yes|

### ZH-TW

|代碼|含義|用途|是否可作商業發布使用|
|--:|---|---|---|
|G1|第一代|初始商業或已驗證產品世代|核准後可以|
|G2|第二代|重大硬體、平台、工業設計或系統更新|核准後可以|
|G3|第三代|未來主要世代|核准後可以|
|GX|實驗世代|內部實驗、有限工程探索或特殊原型|不可，除非轉為已核准世代|
|DEV|開發世代|正式驗證前的開發專用版本|不可|
|EVT|工程驗證測試|工程驗證階段|不可，除非明確核准為受控試點|
|DVT|設計驗證測試|設計驗證階段|不可，除非明確核准為受控試點|
|PVT|生產驗證測試|生產驗證階段|發布核准前可有限使用|
|PILOT|試點發布|完整發布前的有限現場部署|有限使用|
|REL|已發布世代|已商業發布世代|可以|

---

## 5.4 Commercial Generation Codes

## 5.4 商業世代代碼

### EN

Commercial generation codes identify major product generations that may be used in customer-facing model names, internal model names, SKU codes, and commercial records after approval.

|Code|Commercial Meaning|Example|
|--:|---|---|
|G1|First approved product generation|Artibird Act-E G1|
|G2|Second major product generation|Artibird Act-E G2|
|G3|Third major product generation|Artibird Act-E G3|

A commercial generation code should change only when there is a major change to the product platform, hardware architecture, industrial design, power architecture, communication architecture, or system role.

A minor firmware update should not create a new commercial generation.

### ZH-TW

商業世代代碼用於識別經核准後可用於面向客戶型號、內部型號、SKU 代碼與商業記錄中的主要產品世代。

|代碼|商業含義|示例|
|--:|---|---|
|G1|第一個已核准產品世代|Artibird Act-E G1|
|G2|第二個主要產品世代|Artibird Act-E G2|
|G3|第三個主要產品世代|Artibird Act-E G3|

只有當產品平台、硬體架構、工業設計、供電架構、通訊架構或系統角色發生重大變化時，才應更改商業世代代碼。

輕微韌體更新不應建立新的商業世代。

---

## 5.5 Development and Experimental Codes

## 5.5 開發與實驗代碼

### EN

Development and experimental codes are used before a product becomes an approved commercial generation.

|Code|Meaning|Use Case|
|--:|---|---|
|DEV|Development-only version|Early internal development, firmware bring-up, early hardware test|
|GX|Experimental generation|Prototype exploration, special concept, limited engineering use|

DEV and GX should not be used in released commercial SKUs.

They may be used in:

|Usage Area|Allowed|
|---|---|
|Engineering notes|Yes|
|Prototype labels|Yes|
|Internal test reports|Yes|
|Public Amazon listing|No|
|Retail packaging|No|
|Certification label|No, unless specifically filed|
|Commercial price sheet|No|

### ZH-TW

開發與實驗代碼用於產品成為已核准商業世代之前。

|代碼|含義|使用場景|
|--:|---|---|
|DEV|僅供開發使用版本|早期內部開發、韌體啟動、早期硬體測試|
|GX|實驗世代|原型探索、特殊概念、有限工程用途|

DEV 與 GX 不應用於已發布商業 SKU。

它們可用於：

|使用場景|是否允許|
|---|---|
|工程筆記|是|
|原型標籤|是|
|內部測試報告|是|
|公開 Amazon 上架|否|
|零售包裝|否|
|認證標籤|否，除非已專門提交|
|商業價格表|否|

---

## 5.6 Engineering Validation Stage Codes

## 5.6 工程驗證階段代碼

### EN

EVT, DVT, and PVT are validation stage codes. They should be used to describe the product’s engineering maturity, not its commercial generation.

|Code|Full Name|Purpose|
|--:|---|---|
|EVT|Engineering Validation Test|Verify whether the engineering design works|
|DVT|Design Validation Test|Verify whether the design meets product, reliability, safety, and performance requirements|
|PVT|Production Validation Test|Verify whether the product can be manufactured consistently|

EVT, DVT, and PVT should not replace G1, G2, or G3 in the standard SKU structure unless the SKU is specifically created for internal validation or controlled pilot tracking.

Recommended use:

```text
ACT-G1-EVT
ACT-G1-DVT
ACT-G1-PVT
```

These are validation-stage identifiers, not final retail model names.

### ZH-TW

EVT、DVT 與 PVT 是驗證階段代碼。它們應用於描述產品的工程成熟度，而不是商業產品世代。

|代碼|完整名稱|目的|
|--:|---|---|
|EVT|Engineering Validation Test|驗證工程設計是否可行|
|DVT|Design Validation Test|驗證設計是否滿足產品、可靠性、安全與性能要求|
|PVT|Production Validation Test|驗證產品是否能穩定量產|

EVT、DVT 與 PVT 不應取代標準 SKU 結構中的 G1、G2 或 G3，除非該 SKU 是專門為內部驗證或受控試點追蹤建立。

建議使用方式：

```text
ACT-G1-EVT
ACT-G1-DVT
ACT-G1-PVT
```

這些是驗證階段識別，不是最終零售型號名稱。

---

## 5.7 Generation Code Usage in SKU

## 5.7 世代代碼在 SKU 中的使用

### EN

The generation code appears as the third field in the official SKU format.

Recommended SKU structure:

```text
ATB-[PRODUCT]-[GEN]-[REGION]-[CONNECTIVITY]-[POWER]-[VARIANT]-[PACKAGE]
```

Example:

```text
ATB-SW-G1-US-BLE-BAT-SCN-S
```

|SKU Field|Value|Meaning|
|---|---|---|
|Brand|ATB|Artibird|
|Product Line|SW|Artibird Switch|
|Generation|G1|First generation|
|Region|US|United States|
|Connectivity|BLE|BLE / BLE Mesh|
|Power|BAT|Battery powered|
|Variant|SCN|Scene switch|
|Package|S|Single unit|

Commercial SKUs should normally use G1, G2, or G3 as generation codes.

DEV, GX, EVT, DVT, and PVT should only be used in SKU-like records when the item is not intended for normal commercial release or when internal tracking requires controlled identification.

### ZH-TW

世代代碼出現在官方 SKU 格式的第三個欄位。

建議 SKU 結構：

```text
ATB-[產品]-[世代]-[區域]-[連接]-[供電]-[版本]-[包裝]
```

示例：

```text
ATB-SW-G1-US-BLE-BAT-SCN-S
```

|SKU 欄位|數值|含義|
|---|---|---|
|品牌|ATB|Artibird|
|產品線|SW|Artibird Switch|
|世代|G1|第一代|
|區域|US|美國|
|連接|BLE|BLE / BLE Mesh|
|供電|BAT|電池供電|
|版本|SCN|場景開關|
|包裝|S|單品|

商業 SKU 通常應使用 G1、G2 或 G3 作為世代代碼。

DEV、GX、EVT、DVT 與 PVT 只有在產品不面向正常商業發布，或內部追蹤需要受控識別時，才應用於類 SKU 記錄中。

---

## 5.8 Generation Code Usage in Internal Model Names

## 5.8 世代代碼在內部型號中的使用

### EN

The generation code appears after the product line code in the internal model name.

Recommended internal model structure:

```text
[PRODUCT]-[GEN]-[VARIANT]
```

Examples:

|Customer-Facing Name|Internal Model|Generation Code|
|---|---|--:|
|Artibird Hub G1|HUB-G1|G1|
|Artibird Gate Pro|GATE-G1-PRO|G1|
|Artibird Sync IR/RF|SYNC-G1-IRRF|G1|
|Artibird Switch Scene|SW-G1-SCN|G1|
|Artibird Act-E|ACT-G1-E|G1|
|Artibird Vision Edge|VIS-G1-EDGE|G1|

For engineering-stage products, the validation stage may be appended:

|Engineering Stage|Internal Tracking Example|
|---|---|
|EVT|ACT-G1-E-EVT|
|DVT|ACT-G1-E-DVT|
|PVT|ACT-G1-E-PVT|

The base generation code should still remain visible.

### ZH-TW

世代代碼出現在內部型號名稱中的產品線代碼之後。

建議內部型號結構：

```text
[產品]-[世代]-[版本]
```

示例：

|面向客戶名稱|內部型號|世代代碼|
|---|---|--:|
|Artibird Hub G1|HUB-G1|G1|
|Artibird Gate Pro|GATE-G1-PRO|G1|
|Artibird Sync IR/RF|SYNC-G1-IRRF|G1|
|Artibird Switch Scene|SW-G1-SCN|G1|
|Artibird Act-E|ACT-G1-E|G1|
|Artibird Vision Edge|VIS-G1-EDGE|G1|

對於工程階段產品，可在後方附加驗證階段：

|工程階段|內部追蹤示例|
|---|---|
|EVT|ACT-G1-E-EVT|
|DVT|ACT-G1-E-DVT|
|PVT|ACT-G1-E-PVT|

基礎世代代碼仍應保持可見。

---

## 5.9 When to Change Generation Code

## 5.9 何時需要更改世代代碼

### EN

|Change Scenario|Change Generation Code?|Notes|
|---|---|---|
|Minor firmware update|No|Update firmware version only|
|Bug fix|No|Do not create a new generation|
|Minor PCB revision|Usually no|Update PCB revision in engineering model|
|Packaging update|No|Update package code or packaging version|
|Color or cosmetic packaging change|No|Update package or commercial record|
|New RF architecture|Usually yes|Requires engineering and certification review|
|New power architecture|Usually yes|Requires safety and certification review|
|New MCU or core hardware platform|Usually yes|Requires engineering review|
|Major industrial design change|Usually yes|May create G2 or later generation|
|New system role|Yes|Product line and generation must be reviewed|
|Certification-impacting hardware change|Usually yes|Certification mapping must be reviewed|
|New market region only|No|Update region code, not generation code|

### ZH-TW

|變更場景|是否更改世代代碼？|備註|
|---|---|---|
|輕微韌體更新|否|僅更新韌體版本|
|Bug 修復|否|不建立新世代|
|輕微 PCB 修訂|通常否|在工程型號中更新 PCB 版本|
|包裝更新|否|更新包裝代碼或包裝版本|
|顏色或包裝外觀變更|否|更新包裝或商業記錄|
|新 RF 架構|通常是|需工程與認證審查|
|新供電架構|通常是|需安全與認證審查|
|新 MCU 或核心硬體平台|通常是|需工程審查|
|重大工業設計變更|通常是|可能建立 G2 或後續世代|
|新系統角色|是|必須審查產品線與世代|
|影響認證的硬體變更|通常是|必須審查認證映射|
|僅新增市場區域|否|更新區域代碼，不更新世代代碼|

---

## 5.10 Generation and Certification Impact

## 5.10 世代與認證影響

### EN

Generation changes may affect certification status. A new generation does not automatically inherit certification from a previous generation.

|Generation Change Type|Certification Review Required?|
|---|---|
|Firmware-only update|May be required depending on function|
|PCB layout change|Often required|
|RF component change|Required|
|Antenna design change|Required|
|Power supply change|Required|
|Relay / load control change|Required|
|Enclosure material change|May be required|
|Safety spacing change|Required|
|Cosmetic packaging change|Usually not required|
|Region-only SKU change|Region-specific review required|

Any generation change that affects electrical safety, RF behavior, thermal behavior, enclosure structure, firmware safety logic, power control, or labeling must be reviewed by the compliance owner.

### ZH-TW

世代變更可能影響認證狀態。新世代不會自動繼承上一世代的認證。

|世代變更類型|是否需要認證審查？|
|---|---|
|僅韌體更新|視功能影響而定|
|PCB Layout 變更|通常需要|
|RF 元件變更|需要|
|天線設計變更|需要|
|電源供應變更|需要|
|繼電器 / 負載控制變更|需要|
|外殼材料變更|可能需要|
|安全間距變更|需要|
|包裝外觀變更|通常不需要|
|僅區域 SKU 變更|需要區域性審查|

任何影響電氣安全、RF 行為、熱行為、外殼結構、韌體安全邏輯、電力控制或標籤的世代變更，都必須由合規負責人審查。

---

## 5.11 Generation Code Governance Rules

## 5.11 世代代碼治理規則

### EN

|Rule|Requirement|
|---|---|
|One generation code must represent one defined product generation or validation stage|Do not use generation codes loosely|
|G1, G2, and G3 are commercial generation codes|Use only after product approval|
|DEV and GX are not commercial release codes|Do not use in normal retail or Amazon SKUs|
|EVT, DVT, and PVT are validation stages|Do not use as customer-facing generation names|
|Generation changes must be reviewed|Product, engineering, operations, and compliance review may be required|
|Certification status must be checked when generation changes|New generation may require new certification|
|Generation codes must map to engineering records|Hardware, firmware, and PCB versions must remain traceable|
|Generation codes must not replace firmware versioning|Firmware version must be tracked separately|
|Generation codes must not replace release status|Release status must be tracked separately|

### ZH-TW

|規則|要求|
|---|---|
|一個世代代碼必須代表一個明確產品世代或驗證階段|不得鬆散使用世代代碼|
|G1、G2、G3 是商業世代代碼|僅在產品核准後使用|
|DEV 與 GX 不是商業發布代碼|不得用於正常零售或 Amazon SKU|
|EVT、DVT 與 PVT 是驗證階段|不得作為面向客戶世代名稱|
|世代變更必須審查|可能需要產品、工程、運營與合規審查|
|世代變更時必須檢查認證狀態|新世代可能需要重新認證|
|世代代碼必須映射至工程記錄|硬體、韌體與 PCB 版本必須可追蹤|
|世代代碼不得取代韌體版本|韌體版本必須單獨追蹤|
|世代代碼不得取代發布狀態|發布狀態必須單獨追蹤|

---

## 5.12 Required Master Table Fields

## 5.12 必備主表欄位

### EN

Each SKU master record must include generation-related fields.

|Field|Requirement|
|---|---|
|Generation Code|Required|
|Generation Description|Required|
|Development Stage|Required where applicable|
|Validation Stage|Required where applicable|
|Hardware Version|Required|
|Firmware Version|Required|
|PCB Version|Required where applicable|
|Certification Impact|Required|
|Release Status|Required|
|Generation Approval Owner|Required|
|Revision Date|Required|

### ZH-TW

每一筆 SKU 主記錄都必須包含與世代相關的欄位。

|欄位|要求|
|---|---|
|世代代碼|必填|
|世代描述|必填|
|開發階段|適用時必填|
|驗證階段|適用時必填|
|硬體版本|必填|
|韌體版本|必填|
|PCB 版本|適用時必填|
|認證影響|必填|
|發布狀態|必填|
|世代核准負責人|必填|
|修訂日期|必填|

---

## 5.13 Chapter Conclusion

## 5.13 本章結論

### EN

Generation codes provide controlled identification for Artibird product generations and engineering validation stages.

G1, G2, and G3 should be used for approved commercial generations. DEV and GX should be used only for development or experimental work. EVT, DVT, and PVT should be used to identify validation maturity and should not replace commercial generation codes.

A generation code change may affect hardware records, firmware records, PCB tracking, certification mapping, packaging, production readiness, SKU control, and commercial release status. Therefore, generation codes must be managed through formal review and master table control.

### ZH-TW

世代代碼為 Artibird 產品世代與工程驗證階段提供受控識別。

G1、G2 與 G3 應用於已核准商業世代。DEV 與 GX 僅應用於開發或實驗工作。EVT、DVT 與 PVT 應用於識別驗證成熟度，不應取代商業世代代碼。

世代代碼變更可能影響硬體記錄、韌體記錄、PCB 追蹤、認證映射、包裝、生產準備、SKU 管控與商業發布狀態。因此，世代代碼必須透過正式審查與主表管控進行管理。

---

本章依據《Artibird SKU & Model Naming Specification v1.0》的既定撰寫計劃展開；原始規劃已將 Generation Codes 設為 Chapter 5，並定義 G1、G2、G3、GX、DEV、EVT、DVT、PVT 等世代與驗證階段代碼。

**話題延伸｜互動建議**  
下一章建議繼續寫 **Chapter 6 — Region Codes｜第六章｜區域代碼**，這一章會把 US、CA、EU、UK、CN、TW、JP、AU、GL、INT 的市場、電氣、認證與包裝差異正式納入 SKU 管控。