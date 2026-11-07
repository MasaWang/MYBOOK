# Artibird SKU & Model Naming Specification v1.0

# Artibird SKU 與型號命名規範 v1.0

## Chapter 20 — Certification Model Numbers

## 第二十章｜認證型號

---

## 20.1 Purpose

## 20.1 目的

### EN

This chapter defines how certification model numbers are created, controlled, mapped, filed, labeled, and maintained for Artibird products and related OceanAI system-layer records.

Certification model numbers are used in regulatory filings, test reports, product rating labels, compliance documentation, safety records, wireless certification documents, and market-specific approval systems.

The purpose of certification model number control is to ensure that the model name submitted to certification bodies matches the tested product, the product label, the engineering model, the SKU master record, and the commercial release record.

### ZH-TW

本章定義 Artibird 產品與相關 OceanAI 系統層記錄中的認證型號如何建立、管控、映射、提交、標籤化與維護。

認證型號用於法規提交、測試報告、產品額定標籤、合規文件、安全記錄、無線認證文件與市場特定核准系統。

認證型號管控的目的，是確保提交給認證機構的型號名稱，與被測產品、產品標籤、工程型號、SKU 主記錄與商業發布記錄保持一致。

---

## 20.2 Certification Model Number Definition

## 20.2 認證型號定義

### EN

A certification model number is the official model identifier used in certification filings and compliance records.

It answers the following questions:

|Question|Description|
|---|---|
|What model was submitted for certification?|The exact filed model name|
|What engineering version was tested?|Hardware, firmware, PCB, validation stage|
|Which SKU uses this certified configuration?|One or more SKU mappings|
|Which product label shows this model?|Rating label and compliance label|
|Which market does this certification apply to?|US, CA, EU, UK, JP, AU, TW, CN, or other market|
|Which certification framework applies?|FCC, UL, ETL, CE, UKCA, NCC, PSE, RCM, etc.|
|Can the model name be changed after filing?|No casual renaming after filing or certification|

### ZH-TW

認證型號是用於認證提交與合規記錄中的官方型號識別碼。

它回答以下問題：

|問題|說明|
|---|---|
|提交認證的是哪一個型號？|實際提交的精確型號名稱|
|測試的是哪一個工程版本？|硬體、韌體、PCB、驗證階段|
|哪些 SKU 使用此認證配置？|一個或多個 SKU 映射|
|哪一個產品標籤顯示此型號？|額定標籤與合規標籤|
|此認證適用於哪一個市場？|US、CA、EU、UK、JP、AU、TW、CN 或其他市場|
|適用哪一套認證框架？|FCC、UL、ETL、CE、UKCA、NCC、PSE、RCM 等|
|提交後是否可以更改型號名稱？|提交或認證後不得隨意改名|

---

## 20.3 Certification Model vs Other Identifiers

## 20.3 認證型號與其他識別碼的區別

### EN

|Identifier Type|Example|Primary Use|
|---|---|---|
|Customer-Facing Name|Artibird Act-E|Public product communication|
|Internal Model Number|ACT-G1-E|Product and engineering coordination|
|SKU Code|ATB-ACT-G1-US-WF-AC-E-S|Commercial, inventory, region, package, and channel control|
|Engineering Model Number|ACT-G1-E-HW1.0-FW1.2-PCB1.1-DVT|Hardware, firmware, PCB, and validation tracking|
|Certification Model Number|Filed certification model|Regulatory filing, test report, and product label control|
|Manufacturing Model Number|Factory-controlled model|BOM, ERP, factory, supplier, and production control|

Certification model numbers are legal and compliance-facing identifiers. They must be controlled more strictly than customer-facing names or internal model numbers.

### ZH-TW

|識別類型|示例|主要用途|
|---|---|---|
|面向客戶名稱|Artibird Act-E|公開產品溝通|
|內部型號|ACT-G1-E|產品與工程協同|
|SKU 代碼|ATB-ACT-G1-US-WF-AC-E-S|商業、庫存、區域、包裝與渠道管控|
|工程型號|ACT-G1-E-HW1.0-FW1.2-PCB1.1-DVT|硬體、韌體、PCB 與驗證追蹤|
|認證型號|已提交認證型號|法規提交、測試報告與產品標籤管控|
|生產型號|工廠管控型號|BOM、ERP、工廠、供應商與生產管控|

認證型號是面向法律與合規的識別碼。它必須比面向客戶名稱或內部型號受到更嚴格的管控。

---

## 20.4 Required Certification Model Control Rules

## 20.4 認證型號必須管控規則

### EN

|Rule|Requirement|
|---|---|
|Exact model control|Certification model must match the product submitted for certification|
|No casual renaming|Certified model name must not be changed casually after filing|
|Variant separation|Electrical, RF, power, enclosure, and safety variants may require separate filings|
|Label alignment|Rating label must match certification model where required|
|SKU mapping|SKU must map to certification model|
|Engineering mapping|Certification model must map to tested engineering model|
|Market specificity|Certification model may differ by region or certification framework|
|Archive requirement|Filed model records must remain archived and searchable|
|Claim boundary|Certification status must not be implied beyond the approved scope|

### ZH-TW

|規則|要求|
|---|---|
|精確型號管控|認證型號必須與提交認證的產品一致|
|不得隨意改名|認證提交後，已認證型號不得隨意更改|
|版本分離|電氣、RF、供電、外殼與安全版本可能需要分別提交|
|標籤一致|適用時，額定標籤必須與認證型號一致|
|SKU 映射|SKU 必須映射至認證型號|
|工程映射|認證型號必須映射至被測工程型號|
|市場特定性|認證型號可能因區域或認證框架不同而不同|
|歸檔要求|已提交型號記錄必須保持歸檔並可搜尋|
|宣稱邊界|認證狀態不得超出已核准範圍進行暗示|

---

## 20.5 Recommended Certification Model Structure

## 20.5 建議認證型號結構

### EN

Certification model numbers should remain simple, stable, and file-friendly. They should not include excessive commercial details.

Recommended structure:

```text
[PRODUCT]-[GEN]-[CERT-VARIANT]
```

Example:

```text
ACT-G1-E
```

Where:

|Field|Meaning|
|---|---|
|PRODUCT|Product line code|
|GEN|Product generation|
|CERT-VARIANT|Certification-relevant variant|

For some products, the internal model number may also serve as the certification model number if it is stable, accurate, and suitable for regulatory filing.

### ZH-TW

認證型號應保持簡潔、穩定且適合提交文件。它不應包含過多商業細節。

建議結構：

```text
[產品]-[世代]-[認證相關版本]
```

示例：

```text
ACT-G1-E
```

其中：

|欄位|含義|
|---|---|
|PRODUCT|產品線代碼|
|GEN|產品世代|
|CERT-VARIANT|與認證相關的版本|

對某些產品而言，如果內部型號穩定、準確且適合認證提交，內部型號也可作為認證型號使用。

---

## 20.6 Certification Model Naming Examples

## 20.6 認證型號命名示例

### EN

|Product|Internal Model|Possible Certification Model|Notes|
|---|---|---|---|
|Artibird Hub G1|HUB-G1|HUB-G1|If hardware is stable and certification-ready|
|Artibird Gate Pro|GATE-G1-PRO|GATE-G1-PRO|If Pro hardware is certification-relevant|
|Artibird Sync IR/RF|SYNC-G1-IRRF|SYNC-G1-IRRF|RF portion requires region-specific review|
|Artibird Switch Scene|SW-G1-SCN|SW-G1-SCN|Battery / BLE variant may require wireless review|
|Artibird Switch Relay|SW-G1-RLY|SW-G1-RLY|Relay and mains safety may require safety review|
|Artibird Switch Dimmer|SW-G1-DIM|SW-G1-DIM|Dimming load and safety review required|
|Artibird Act-E|ACT-G1-E|ACT-G1-E|Energy monitoring and AC load review required|
|Artibird Sense Climate|SNS-G1-CLM|SNS-G1-CLM|Sensor and wireless configuration review required|
|Artibird Vision Edge|VIS-G1-EDGE|VIS-G1-EDGE|Camera, privacy, wireless, and EMC review required|
|OceanAI Edge|EDGE-G1|EDGE-G1|Edge hardware certification depends on configuration|

### ZH-TW

|產品|內部型號|可能認證型號|備註|
|---|---|---|---|
|Artibird Hub G1|HUB-G1|HUB-G1|若硬體穩定且適合認證|
|Artibird Gate Pro|GATE-G1-PRO|GATE-G1-PRO|若 Pro 硬體與認證相關|
|Artibird Sync IR/RF|SYNC-G1-IRRF|SYNC-G1-IRRF|RF 部分需要區域性審查|
|Artibird Switch Scene|SW-G1-SCN|SW-G1-SCN|電池 / BLE 版本可能需要無線審查|
|Artibird Switch Relay|SW-G1-RLY|SW-G1-RLY|繼電器與市電安全可能需要安全審查|
|Artibird Switch Dimmer|SW-G1-DIM|SW-G1-DIM|需要調光負載與安全審查|
|Artibird Act-E|ACT-G1-E|ACT-G1-E|需要能源監測與 AC 負載審查|
|Artibird Sense Climate|SNS-G1-CLM|SNS-G1-CLM|需要感測器與無線配置審查|
|Artibird Vision Edge|VIS-G1-EDGE|VIS-G1-EDGE|需要攝影機、隱私、無線與 EMC 審查|
|OceanAI Edge|EDGE-G1|EDGE-G1|Edge 硬體認證取決於具體配置|

---

## 20.7 Certification Framework Mapping

## 20.7 認證框架映射

### EN

Certification model numbers must be mapped to the relevant certification framework for each market.

|Market / Region|Common Certification / Compliance Reference|Model Control Requirement|
|---|---|---|
|US|FCC, UL, ETL / NRTL-related safety evaluation|Model must match filing, test report, and label|
|CA|ISED, cUL, CSA-related requirements|Model must match Canadian filing and label requirements|
|EU|CE, RED, RoHS, REACH, applicable directives|Model must match EU declaration and technical file|
|UK|UKCA and UK-specific compliance requirements|Model must match UK declaration and label|
|TW|NCC and Taiwan-specific requirements|Model must match local certification record|
|JP|MIC / TELEC, PSE where applicable|Model must match Japan-specific filing|
|AU|RCM and applicable electrical / wireless requirements|Model must match AU / NZ compliance record|
|CN|China market certification and labeling requirements|Model must match China market filing where applicable|
|GL|Global reference only|Not a certification claim|
|INT|Project-specific review|Must be reviewed by deployment region|

### ZH-TW

認證型號必須根據每個市場映射至相關認證框架。

|市場 / 區域|常見認證 / 合規參考|型號管控要求|
|---|---|---|
|US|FCC、UL、ETL / NRTL 相關安全評估|型號必須匹配提交文件、測試報告與標籤|
|CA|ISED、cUL、CSA 相關要求|型號必須匹配加拿大提交與標籤要求|
|EU|CE、RED、RoHS、REACH、適用指令|型號必須匹配 EU 聲明與技術文件|
|UK|UKCA 與英國特定合規要求|型號必須匹配 UK 聲明與標籤|
|TW|NCC 與台灣特定要求|型號必須匹配本地認證記錄|
|JP|MIC / TELEC、適用時的 PSE|型號必須匹配日本特定提交|
|AU|RCM 與適用電氣 / 無線要求|型號必須匹配澳洲 / 紐西蘭合規記錄|
|CN|中國市場認證與標籤要求|適用時必須匹配中國市場提交|
|GL|僅全球參考|不代表認證宣稱|
|INT|專案特定審查|必須依部署區域審查|

---

## 20.8 SKU to Certification Model Mapping

## 20.8 SKU 至認證型號映射

### EN

One certification model may map to multiple SKUs when the technical certified configuration remains the same but commercial fields differ.

Example:

|SKU Code|Certification Model|Mapping Reason|
|---|---|---|
|ATB-ACT-G1-US-WF-AC-E-S|ACT-G1-E|U.S. single-unit SKU|
|ATB-ACT-G1-US-WF-AC-E-2P|ACT-G1-E|Same certified product, two-pack|
|ATB-ACT-G1-US-WF-AC-E-FBA|ACT-G1-E|Same certified product, Amazon package|
|ATB-ACT-G1-US-WF-AC-E-PRJ|ACT-G1-E|Same certified product, project package|

A new certification model may be required when the SKU changes because of hardware, RF, power, enclosure, load-control, safety, or market-specific differences.

### ZH-TW

當技術認證配置保持不變，但商業欄位不同時，一個認證型號可以映射至多個 SKU。

示例：

|SKU 代碼|認證型號|映射原因|
|---|---|---|
|ATB-ACT-G1-US-WF-AC-E-S|ACT-G1-E|美國單品 SKU|
|ATB-ACT-G1-US-WF-AC-E-2P|ACT-G1-E|同一認證產品，兩入裝|
|ATB-ACT-G1-US-WF-AC-E-FBA|ACT-G1-E|同一認證產品，Amazon 包裝|
|ATB-ACT-G1-US-WF-AC-E-PRJ|ACT-G1-E|同一認證產品，專案包|

當 SKU 因硬體、RF、供電、外殼、負載控制、安全或市場特定差異而變更時，可能需要新的認證型號。

---

## 20.9 Engineering Model to Certification Model Mapping

## 20.9 工程型號至認證型號映射

### EN

Certification model records must identify the exact engineering model used for testing.

Example:

|Certification Model|Engineering Model Tested|Notes|
|---|---|---|
|ACT-G1-E|ACT-G1-E-HW1.0-FW1.2-PCB1.1-DVT|Tested engineering configuration|
|SW-G1-RLY|SW-G1-RLY-HW1.0-FW1.2-PCB1.1-DVT|Relay and load-control configuration|
|SYNC-G1-IRRF|SYNC-G1-IRRF-HW1.0-FW1.2-PCB1.1-DVT|IR/RF configuration|
|GATE-G1-PRO|GATE-G1-PRO-HW1.0-FW1.1-PCB1.0-DVT|Gateway configuration|

If the tested engineering model changes, the certification impact must be reviewed before the same certification model is used again.

### ZH-TW

認證型號記錄必須識別實際用於測試的工程型號。

示例：

|認證型號|被測工程型號|備註|
|---|---|---|
|ACT-G1-E|ACT-G1-E-HW1.0-FW1.2-PCB1.1-DVT|被測工程配置|
|SW-G1-RLY|SW-G1-RLY-HW1.0-FW1.2-PCB1.1-DVT|繼電器與負載控制配置|
|SYNC-G1-IRRF|SYNC-G1-IRRF-HW1.0-FW1.2-PCB1.1-DVT|IR/RF 配置|
|GATE-G1-PRO|GATE-G1-PRO-HW1.0-FW1.1-PCB1.0-DVT|網關配置|

如果被測工程型號發生變更，必須在再次使用同一認證型號前審查認證影響。

---

## 20.10 Certification Model and Product Label Alignment

## 20.10 認證型號與產品標籤一致性

### EN

The model number shown on product labels must align with the certification model record where required.

|Label Item|Requirement|
|---|---|
|Model number|Must match approved certification model or approved label model reference|
|Electrical rating|Must match tested and certified configuration|
|Wireless identifier|Must match filing or module requirements where applicable|
|Certification marks|Must be used only when approved|
|Warning text|Must match applicable safety and regulatory requirements|
|Region-specific label|Must match regional certification and language requirements|
|Manufacturer / responsible party|Must match filing and legal records where required|

A label must not display a certification model number that is not mapped to the actual product configuration.

### ZH-TW

適用時，產品標籤上顯示的型號必須與認證型號記錄一致。

|標籤項目|要求|
|---|---|
|型號|必須匹配已核准認證型號或已核准標籤型號引用|
|電氣額定|必須匹配被測與認證配置|
|無線識別|適用時必須匹配提交或模組要求|
|認證標誌|僅在獲得核准後使用|
|警告文字|必須匹配適用安全與法規要求|
|區域特定標籤|必須匹配區域認證與語言要求|
|製造商 / 責任方|必要時必須匹配提交與法律記錄|

標籤不得顯示未映射至實際產品配置的認證型號。

---

## 20.11 Variant Separation Rules for Certification

## 20.11 認證版本分離規則

### EN

Certain variants may require separate certification models or separate filings.

|Variant Difference|Separate Certification Review Required?|Notes|
|---|---|---|
|RF module or antenna change|Yes|Wireless certification impact|
|Wi-Fi to BLE change|Yes|Different RF behavior|
|IR-only to IR/RF|Yes|RF portion added|
|Battery to AC mains|Yes|Safety and power architecture change|
|Single-live to zero-neutral|Yes|Installation and safety difference|
|Relay to dimmer|Yes|Load, thermal, EMC, and safety impact|
|Indoor to outdoor enclosure|Usually yes|Environmental and label impact|
|Energy monitoring added|Usually yes|Measurement and electrical review|
|Camera added|Yes|EMC, wireless, privacy, and data handling review|
|Packaging-only change|Maybe|Depends on label, manual, and claim changes|
|Region-only change|Yes|Market-specific certification review|

### ZH-TW

某些版本差異可能需要獨立認證型號或獨立提交。

|版本差異|是否需要獨立認證審查？|備註|
|---|---|---|
|RF 模組或天線變更|是|影響無線認證|
|Wi-Fi 變更為 BLE|是|無線行為不同|
|IR-only 變更為 IR/RF|是|新增 RF 部分|
|電池供電變更為 AC 市電|是|安全與供電架構變更|
|單火變更為零火|是|安裝與安全差異|
|繼電器變更為調光|是|負載、熱、EMC 與安全影響|
|室內外殼變更為戶外外殼|通常是|環境與標籤影響|
|新增能源監測|通常是|測量與電氣審查|
|新增攝影機|是|EMC、無線、隱私與數據處理審查|
|僅包裝變更|視情況|取決於標籤、手冊與宣稱變更|
|僅區域變更|是|市場特定認證審查|

---

## 20.12 Certification Status Codes

## 20.12 認證狀態代碼

### EN

Certification status must be tracked separately from SKU code and certification model number.

|Status|Meaning|Commercial Use|
|---|---|---|
|Not Required|Certification not required for this record|Controlled use|
|Not Started|Certification has not started|No certification claim|
|Preparing|Documents or samples are being prepared|No certification claim|
|Submitted|Certification filing submitted|No final claim unless allowed|
|Testing|Lab testing in progress|No final claim|
|Passed|Test passed, final documents pending|Controlled claim only|
|Certified|Certification completed and approved|Claim allowed within approved scope|
|Expired|Certification expired or no longer valid|No claim|
|Withdrawn|Certification withdrawn|No claim|
|Not Applicable|Record does not require certification|Use with explanation|

### ZH-TW

認證狀態必須與 SKU 代碼和認證型號分開追蹤。

|狀態|含義|商業使用|
|---|---|---|
|Not Required|此記錄不需要認證|受控使用|
|Not Started|尚未開始認證|不得宣稱認證|
|Preparing|文件或樣品準備中|不得宣稱認證|
|Submitted|認證提交已送出|除非允許，否則不得最終宣稱|
|Testing|實驗室測試中|不得最終宣稱|
|Passed|測試已通過，最終文件待完成|僅限受控宣稱|
|Certified|認證已完成並核准|可在核准範圍內宣稱|
|Expired|認證已過期或不再有效|不得宣稱|
|Withdrawn|認證已撤回|不得宣稱|
|Not Applicable|該記錄不適用認證|需附說明使用|

---

## 20.13 Certification Claim Boundary Rules

## 20.13 認證宣稱邊界規則

### EN

A certification model number does not automatically authorize broad marketing claims.

|Claim Type|Rule|
|---|---|
|“FCC certified”|Use only when applicable approval is complete and wording is approved|
|“UL listed”|Use only when listing is complete and mark usage is approved|
|“ETL listed”|Use only when listing is complete and mark usage is approved|
|“CE compliant”|Use only when EU technical file and declaration are complete|
|“UKCA compliant”|Use only when UK requirements are complete|
|“Certified safe”|Avoid unless legally reviewed and precisely supported|
|“Global certified”|Do not use unless every claimed market is covered|
|“Works everywhere”|Do not use without validated regional compatibility|
|“Universal compatibility”|Use only with defined and tested compatibility scope|

Certification claims must be controlled by the certification tracker and claim review register.

### ZH-TW

認證型號不會自動授權寬泛行銷宣稱。

|宣稱類型|規則|
|---|---|
|“FCC certified”|僅在適用核准完成且文字已核准時使用|
|“UL listed”|僅在 Listing 完成且標誌使用已核准時使用|
|“ETL listed”|僅在 Listing 完成且標誌使用已核准時使用|
|“CE compliant”|僅在 EU 技術文件與聲明完成時使用|
|“UKCA compliant”|僅在 UK 要求完成時使用|
|“Certified safe”|除非經法律審查並有精確依據，否則避免使用|
|“Global certified”|除非每個宣稱市場均已覆蓋，否則不得使用|
|“Works everywhere”|未經區域相容性驗證不得使用|
|“Universal compatibility”|僅在具備明確且已測試相容範圍時使用|

認證宣稱必須由認證追蹤表與宣稱審查登記表共同管控。

---

## 20.14 When to Create a New Certification Model

## 20.14 何時建立新認證型號

### EN

A new certification model should be created or reviewed when certification-relevant configuration changes.

|Change Scenario|New Certification Model Required?|Notes|
|---|---|---|
|New product family|Yes|New certification identity required|
|Major hardware generation change|Usually yes|Certification impact review required|
|RF module or antenna changes|Usually yes|Wireless certification impact|
|Power architecture changes|Usually yes|Safety certification impact|
|AC load rating changes|Usually yes|Safety and label impact|
|Relay changes to dimmer|Usually yes|EMC, thermal, load, and safety impact|
|Battery type or charging circuit changes|Usually yes|Battery safety review|
|Enclosure material or safety spacing changes|Usually yes|Safety review|
|Region changes|Usually yes|Market-specific certification|
|Packaging-only change|Maybe|If label, manual, or claim changes|
|Firmware-only minor bug fix|Usually no|Unless safety, RF, or control behavior changes|

### ZH-TW

當與認證相關的配置發生變更時，應建立或審查新認證型號。

|變更場景|是否需要新認證型號？|備註|
|---|---|---|
|新產品家族|是|需要新認證身份|
|主要硬體世代變更|通常是|需認證影響審查|
|RF 模組或天線變更|通常是|影響無線認證|
|供電架構變更|通常是|影響安全認證|
|AC 負載額定變更|通常是|影響安全與標籤|
|繼電器變更為調光|通常是|影響 EMC、熱、負載與安全|
|電池類型或充電電路變更|通常是|需要電池安全審查|
|外殼材料或安全間距變更|通常是|需要安全審查|
|區域變更|通常是|市場特定認證|
|僅包裝變更|視情況|若標籤、手冊或宣稱變更|
|僅韌體小型 Bug 修復|通常否|除非安全、RF 或控制行為變更|

---

## 20.15 When Not to Create a New Certification Model

## 20.15 何時不建立新認證型號

### EN

A new certification model may not be required when changes do not affect certified configuration.

|Change Scenario|New Certification Model Required?|Required Action|
|---|---|---|
|SKU package changes only|Usually no|Update SKU and package mapping|
|Price changes|No|Update pricing record|
|Warehouse changes|No|Update logistics record|
|Channel availability changes|No|Update channel record|
|Customer-facing copy changes|No, unless claim changes|Review claim boundary|
|Manual typo correction|No|Update documentation version|
|FBA label changes only|Usually no|Update FBA record|
|Same certified model used in a kit|Usually no|Map kit SKU to certification model|
|Firmware version update with no safety / RF impact|Usually no|Update engineering record|
|Minor BOM substitution already covered|Maybe no|Maintain BOM and compliance record|

### ZH-TW

當變更不影響已認證配置時，可能不需要建立新認證型號。

|變更場景|是否需要新認證型號？|必要處理|
|---|---|---|
|僅 SKU 包裝變更|通常否|更新 SKU 與包裝映射|
|價格變更|否|更新價格記錄|
|倉庫變更|否|更新物流記錄|
|渠道可用性變更|否|更新渠道記錄|
|面向客戶文案變更|若不改變宣稱，則否|審查宣稱邊界|
|說明書錯字修正|否|更新文件版本|
|僅 FBA 標籤變更|通常否|更新 FBA 記錄|
|同一認證型號用於套組|通常否|將套組 SKU 映射至認證型號|
|韌體更新但不影響安全 / RF|通常否|更新工程記錄|
|已覆蓋的輕微 BOM 替代|可能否|維護 BOM 與合規記錄|

---

## 20.16 Certification Change Control Rules

## 20.16 認證變更管控規則

### EN

|Rule|Requirement|
|---|---|
|Certification model numbers must be controlled|No informal certification model names|
|Filed model names must not be casually changed|Filing consistency must be protected|
|Certification model must map to tested engineering model|Hardware / firmware / PCB traceability required|
|Certification model must map to SKU records|Commercial use must be controlled|
|Certification model must map to product labels|Label and filing must align|
|Certification status must be tracked separately|SKU code alone is not certification evidence|
|Certification claims must be reviewed|No unsupported compliance claim|
|Region-specific approvals must remain separate|Do not treat one market approval as global approval|
|Expired or withdrawn certifications must be marked|No outdated claim use|
|Certification records must be archived|Historical traceability required|

### ZH-TW

|規則|要求|
|---|---|
|認證型號必須受控|不得使用非正式認證型號|
|已提交型號不得隨意更改|必須保護提交一致性|
|認證型號必須映射至被測工程型號|需要硬體 / 韌體 / PCB 可追蹤性|
|認證型號必須映射至 SKU 記錄|必須管控商業使用|
|認證型號必須映射至產品標籤|標籤與提交必須一致|
|認證狀態必須分開追蹤|SKU 代碼本身不是認證證據|
|認證宣稱必須審查|不得使用未支援合規宣稱|
|區域特定核准必須分離|不得將單一市場核准視為全球核准|
|過期或撤回認證必須標記|不得使用過時宣稱|
|認證記錄必須歸檔|需要歷史可追蹤性|

---

## 20.17 Certification Model Change Request Template

## 20.17 認證型號變更申請模板

### EN

|Field|Entry|
|---|---|
|Change Request ID|TBD|
|Existing Certification Model|TBD|
|Proposed Certification Model|TBD|
|Related SKU Code(s)|TBD|
|Related Internal Model|TBD|
|Related Engineering Model|TBD|
|Certification Framework|FCC / UL / ETL / CE / UKCA / NCC / PSE / RCM / Other|
|Target Region|TBD|
|Change Reason|TBD|
|Hardware Impact|Yes / No|
|Firmware Impact|Yes / No|
|RF Impact|Yes / No|
|Power / Safety Impact|Yes / No|
|Label Impact|Yes / No|
|Packaging Impact|Yes / No|
|Claim Impact|Yes / No|
|Approval Owner|TBD|
|Effective Date|TBD|
|Notes|TBD|

### ZH-TW

|欄位|填寫|
|---|---|
|變更申請 ID|TBD|
|既有認證型號|TBD|
|建議認證型號|TBD|
|相關 SKU 代碼|TBD|
|相關內部型號|TBD|
|相關工程型號|TBD|
|認證框架|FCC / UL / ETL / CE / UKCA / NCC / PSE / RCM / Other|
|目標區域|TBD|
|變更原因|TBD|
|硬體影響|Yes / No|
|韌體影響|Yes / No|
|RF 影響|Yes / No|
|供電 / 安全影響|Yes / No|
|標籤影響|Yes / No|
|包裝影響|Yes / No|
|宣稱影響|Yes / No|
|核准負責人|TBD|
|生效日期|TBD|
|備註|TBD|

---

## 20.18 Certification Review Checklist

## 20.18 認證審查清單

### EN

Before a certification model is approved or used, the following items must be reviewed:

|Review Item|Required|
|---|---|
|Certification model number is defined|Yes|
|Related internal model is mapped|Yes|
|Related engineering model is mapped|Yes|
|Hardware version is identified|Yes|
|Firmware version is identified where applicable|Yes|
|PCB version is identified|Yes|
|SKU mapping is complete|Yes|
|Target region is defined|Yes|
|Certification framework is defined|Yes|
|Product label alignment is reviewed|Yes|
|Packaging and manual impact is reviewed|Yes|
|Claim boundary is recorded|Yes|
|Certification status is recorded|Yes|
|Approval owner is recorded|Yes|
|Archive location is defined|Yes|

### ZH-TW

在認證型號被核准或使用前，必須審查以下項目：

|審查項目|是否必須|
|---|---|
|認證型號已定義|是|
|相關內部型號已映射|是|
|相關工程型號已映射|是|
|硬體版本已識別|是|
|適用時韌體版本已識別|是|
|PCB 版本已識別|是|
|SKU 映射已完成|是|
|目標區域已定義|是|
|認證框架已定義|是|
|產品標籤一致性已審查|是|
|包裝與手冊影響已審查|是|
|宣稱邊界已記錄|是|
|認證狀態已記錄|是|
|核准負責人已記錄|是|
|歸檔位置已定義|是|

---

## 20.19 Required Master Table Fields

## 20.19 必備主表欄位

### EN

Each certification model record must include the following fields:

|Field|Requirement|
|---|---|
|Certification Model Number|Required|
|Customer-Facing Name|Required where applicable|
|Internal Model Number|Required|
|Engineering Model Number Tested|Required|
|Related SKU Code(s)|Required|
|Product Line|Required|
|Generation|Required|
|Region / Market|Required|
|Certification Framework|Required|
|Certification Status|Required|
|Test Lab / Certification Body|Required where applicable|
|Test Report Number|Required where applicable|
|Filing Date|Required where applicable|
|Approval Date|Required where applicable|
|Expiration Date|Required where applicable|
|Product Label Model Reference|Required|
|Rating Label Version|Required where applicable|
|Packaging / Manual Impact|Required|
|Claim Boundary Notes|Required|
|Archive Location|Required|
|Approval Owner|Required|
|Revision Date|Required|

### ZH-TW

每一筆認證型號記錄都必須包含以下欄位：

|欄位|要求|
|---|---|
|認證型號|必填|
|面向客戶名稱|適用時必填|
|內部型號|必填|
|被測工程型號|必填|
|相關 SKU 代碼|必填|
|產品線|必填|
|世代|必填|
|區域 / 市場|必填|
|認證框架|必填|
|認證狀態|必填|
|測試實驗室 / 認證機構|適用時必填|
|測試報告編號|適用時必填|
|提交日期|適用時必填|
|核准日期|適用時必填|
|到期日期|適用時必填|
|產品標籤型號引用|必填|
|額定標籤版本|適用時必填|
|包裝 / 手冊影響|必填|
|宣稱邊界備註|必填|
|歸檔位置|必填|
|核准負責人|必填|
|修訂日期|必填|

---

## 20.20 Chapter Conclusion

## 20.20 本章結論

### EN

Certification model numbers provide the compliance-facing identity of Artibird products.

They must match the tested product configuration, the submitted certification documents, the engineering model records, the SKU master table, and the product label. They must not be changed casually after filing, and they must not be used to imply certification beyond the approved scope.

A controlled certification model number system allows Artibird products to remain traceable across engineering validation, regulatory filing, test reports, product labels, packaging records, Amazon listings, market release, and long-term compliance archives.

### ZH-TW

認證型號為 Artibird 產品提供面向合規的身份。

它必須匹配被測產品配置、提交認證文件、工程型號記錄、SKU 主表與產品標籤。提交後不得隨意更改，也不得用於暗示超出核准範圍的認證。

受控的認證型號系統，可使 Artibird 產品在工程驗證、法規提交、測試報告、產品標籤、包裝記錄、Amazon 上架、市場發布與長期合規歸檔中保持可追蹤。

---

本章依據《Artibird SKU & Model Naming Specification v1.0》的既定撰寫計劃展開；原始規劃已將 Chapter 20 設為 Certification Model Numbers，並要求認證型號必須與提交產品一致、不得隨意改名、電氣 / RF / 供電版本可能需要分別提交、標籤必須一致、SKU 必須映射至認證型號，且認證型號可能因區域不同而不同。

**話題延伸｜互動建議**  
下一章可以繼續寫 **Chapter 21 — Manufacturing Model Numbers｜第二十一章｜生產型號**，正式定義工廠型號、BOM 版本、PCB 版本、組裝版本、供應商代碼、批次 / Lot、QC 版本與包裝版本的生產管控規則。