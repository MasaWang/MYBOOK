# Artibird SKU & Model Naming Specification v1.0

# Artibird SKU 與型號命名規範 v1.0

## Chapter 19 — Engineering Model Numbers

## 第十九章｜工程型號

---

## 19.1 Purpose

## 19.1 目的

### EN

This chapter defines the engineering model number system used for Artibird hardware, firmware, PCB, validation, testing, certification preparation, manufacturing handoff, and engineering change control.

Engineering model numbers are used to identify the technical configuration of a product during development and validation. They provide traceability for hardware revisions, firmware versions, PCB revisions, test stages, validation reports, and production readiness.

An engineering model number is not a customer-facing name, not a SKU code, and not a certification model number. It is an internal engineering traceability identifier.

### ZH-TW

本章定義 Artibird 硬體、韌體、PCB、驗證、測試、認證準備、生產交接與工程變更管控中使用的工程型號系統。

工程型號用於識別產品在開發與驗證過程中的技術配置。它為硬體版本、韌體版本、PCB 修訂、測試階段、驗證報告與生產就緒狀態提供可追蹤性。

工程型號不是面向客戶名稱，不是 SKU 代碼，也不是認證型號。它是內部工程可追蹤識別碼。

---

## 19.2 Engineering Model Number Definition

## 19.2 工程型號定義

### EN

An engineering model number is a controlled technical identifier that describes the engineering configuration of a product.

It answers the following questions:

|Question|Description|
|---|---|
|Which internal model does this engineering version belong to?|ACT-G1-E, SW-G1-SCN, GATE-G1-PRO|
|Which hardware version is used?|HW1.0, HW1.1, HW2.0|
|Which firmware version is used?|FW1.0, FW1.2, FW2.0|
|Which PCB revision is used?|PCB1.0, PCB1.1, PCB2.0|
|Which validation stage does it belong to?|EVT, DVT, PVT|
|Which test report does it map to?|Functional, safety, RF, thermal, reliability, or production test report|
|Does this engineering configuration affect SKU or certification mapping?|Must be reviewed when hardware, firmware, PCB, RF, power, or safety changes|

### ZH-TW

工程型號是一種受控技術識別碼，用於描述產品的工程配置。

它回答以下問題：

|問題|說明|
|---|---|
|此工程版本屬於哪一個內部型號？|ACT-G1-E、SW-G1-SCN、GATE-G1-PRO|
|使用哪一個硬體版本？|HW1.0、HW1.1、HW2.0|
|使用哪一個韌體版本？|FW1.0、FW1.2、FW2.0|
|使用哪一個 PCB 修訂？|PCB1.0、PCB1.1、PCB2.0|
|它屬於哪一個驗證階段？|EVT、DVT、PVT|
|它映射至哪一份測試報告？|功能、安全、RF、熱、可靠性或生產測試報告|
|此工程配置是否影響 SKU 或認證映射？|當硬體、韌體、PCB、RF、供電或安全變更時必須審查|

---

## 19.3 Engineering Model vs Other Identifiers

## 19.3 工程型號與其他識別碼的區別

### EN

|Identifier Type|Example|Primary Use|
|---|---|---|
|Customer-Facing Name|Artibird Act-E|Public product communication|
|Internal Model Number|ACT-G1-E|Product and engineering coordination|
|SKU Code|ATB-ACT-G1-US-WF-AC-E-S|Commercial, inventory, region, package, and channel control|
|Engineering Model Number|ACT-G1-E-HW1.0-FW1.2-PCB1.1-DVT|Hardware, firmware, PCB, and validation tracking|
|Certification Model Number|Filed certification model|Regulatory filing and product label control|
|Manufacturing Model Number|Factory-controlled model|BOM, ERP, factory, supplier, and production control|

Engineering model numbers are deeper than internal model numbers. They describe technical implementation, not commercial packaging or sales configuration.

### ZH-TW

|識別類型|示例|主要用途|
|---|---|---|
|面向客戶名稱|Artibird Act-E|公開產品溝通|
|內部型號|ACT-G1-E|產品與工程協同|
|SKU 代碼|ATB-ACT-G1-US-WF-AC-E-S|商業、庫存、區域、包裝與渠道管控|
|工程型號|ACT-G1-E-HW1.0-FW1.2-PCB1.1-DVT|硬體、韌體、PCB 與驗證追蹤|
|認證型號|已提交認證型號|法規提交與產品標籤管控|
|生產型號|工廠管控型號|BOM、ERP、工廠、供應商與生產管控|

工程型號比內部型號更深入。它描述技術實作，不描述商業包裝或銷售配置。

---

## 19.4 Recommended Engineering Model Structure

## 19.4 建議工程型號結構

### EN

The recommended engineering model number structure is:

```text
[INTERNAL-MODEL]-HW[HARDWARE]-FW[FIRMWARE]-PCB[PCB]-[STAGE]
```

Example:

```text
ACT-G1-E-HW1.0-FW1.2-PCB1.1-DVT
```

|Field|Value|Meaning|
|---|---|---|
|Internal Model|ACT-G1-E|Artibird Act, first generation, energy-aware version|
|Hardware Version|HW1.0|Hardware version 1.0|
|Firmware Version|FW1.2|Firmware version 1.2|
|PCB Version|PCB1.1|PCB revision 1.1|
|Stage|DVT|Design Validation Test stage|

### ZH-TW

建議工程型號結構如下：

```text
[內部型號]-HW[硬體版本]-FW[韌體版本]-PCB[PCB版本]-[階段]
```

示例：

```text
ACT-G1-E-HW1.0-FW1.2-PCB1.1-DVT
```

|欄位|數值|含義|
|---|---|---|
|內部型號|ACT-G1-E|Artibird Act，第一代，能源感知版本|
|硬體版本|HW1.0|硬體版本 1.0|
|韌體版本|FW1.2|韌體版本 1.2|
|PCB 版本|PCB1.1|PCB 修訂版本 1.1|
|階段|DVT|設計驗證測試階段|

---

## 19.5 Simplified Engineering Model Structure

## 19.5 簡化工程型號結構

### EN

For early planning or when firmware or PCB versions are not yet assigned, a simplified engineering model may be used temporarily.

Recommended temporary structure:

```text
[INTERNAL-MODEL]-[STAGE]
```

Examples:

|Simplified Engineering Model|Meaning|
|---|---|
|ACT-G1-E-EVT|Act-E, first generation, EVT stage|
|SW-G1-SCN-EVT|Switch Scene, first generation, EVT stage|
|GATE-G1-PRO-DVT|Gate Pro, first generation, DVT stage|
|VIS-G1-CAM-PVT|Vision Camera, first generation, PVT stage|

The simplified form must be replaced by a full engineering model number once hardware, firmware, and PCB versions are assigned.

### ZH-TW

在早期規劃階段，或韌體與 PCB 版本尚未分配時，可暫時使用簡化工程型號。

建議暫用結構：

```text
[內部型號]-[階段]
```

示例：

|簡化工程型號|含義|
|---|---|
|ACT-G1-E-EVT|Act-E，第一代，EVT 階段|
|SW-G1-SCN-EVT|Switch Scene，第一代，EVT 階段|
|GATE-G1-PRO-DVT|Gate Pro，第一代，DVT 階段|
|VIS-G1-CAM-PVT|Vision Camera，第一代，PVT 階段|

一旦硬體、韌體與 PCB 版本分配完成，簡化形式必須替換為完整工程型號。

---

## 19.6 Engineering Field Definitions

## 19.6 工程欄位定義

### EN

|Field|Format|Description|
|---|---|---|
|Internal Model|`[PRODUCT]-[GEN]-[VARIANT]`|Base product identity|
|Hardware Version|`HWx.y`|Hardware architecture or hardware revision|
|Firmware Version|`FWx.y`|Firmware release or firmware baseline|
|PCB Version|`PCBx.y`|PCB layout or board revision|
|Validation Stage|`EVT / DVT / PVT`|Engineering validation maturity|
|Test Report ID|`TR-[TYPE]-[NUMBER]`|Optional mapping to test reports|
|Manufacturing Build|`BUILDx`|Optional manufacturing build reference|

### ZH-TW

|欄位|格式|說明|
|---|---|---|
|內部型號|`[產品]-[世代]-[版本]`|基礎產品身份|
|硬體版本|`HWx.y`|硬體架構或硬體修訂|
|韌體版本|`FWx.y`|韌體發布或韌體基線|
|PCB 版本|`PCBx.y`|PCB Layout 或板卡修訂|
|驗證階段|`EVT / DVT / PVT`|工程驗證成熟度|
|測試報告 ID|`TR-[類型]-[編號]`|可選，用於映射測試報告|
|生產批次|`BUILDx`|可選，用於生產構建引用|

---

## 19.7 Hardware Version Rules

## 19.7 硬體版本規則

### EN

Hardware version codes identify hardware architecture or hardware revision level.

Recommended format:

```text
HWx.y
```

|Version Type|Example|Meaning|
|---|---|---|
|Major hardware version|HW1.0|First stable hardware architecture|
|Minor hardware revision|HW1.1|Minor component or layout-related hardware update|
|Major hardware redesign|HW2.0|Major architecture or platform change|

### When to Change Hardware Version

|Change Scenario|Change HW Version?|Notes|
|---|---|---|
|MCU changes|Yes|May require certification and SKU review|
|RF architecture changes|Yes|Certification review required|
|Power supply architecture changes|Yes|Safety review required|
|Relay or load-control architecture changes|Yes|Safety and load review required|
|Sensor IC changes|Usually yes|Validation required|
|Connector location changes|Usually yes|Mechanical and assembly review|
|Minor passive component substitution|Maybe|Depends on functional and certification impact|
|Firmware-only change|No|Update firmware version|
|Packaging-only change|No|Update package version|

### ZH-TW

硬體版本代碼用於識別硬體架構或硬體修訂層級。

建議格式：

```text
HWx.y
```

|版本類型|示例|含義|
|---|---|---|
|主要硬體版本|HW1.0|第一個穩定硬體架構|
|輕微硬體修訂|HW1.1|輕微元件或 Layout 相關硬體更新|
|重大硬體重設計|HW2.0|重大架構或平台變更|

### 何時變更硬體版本

|變更場景|是否變更 HW 版本？|備註|
|---|---|---|
|MCU 變更|是|可能需要認證與 SKU 審查|
|RF 架構變更|是|需要認證審查|
|電源架構變更|是|需要安全審查|
|繼電器或負載控制架構變更|是|需要安全與負載審查|
|感測 IC 變更|通常是|需要驗證|
|連接器位置變更|通常是|需要機構與組裝審查|
|輕微被動元件替代|視情況|取決於功能與認證影響|
|僅韌體變更|否|更新韌體版本|
|僅包裝變更|否|更新包裝版本|

---

## 19.8 Firmware Version Rules

## 19.8 韌體版本規則

### EN

Firmware version codes identify the firmware baseline used in an engineering configuration.

Recommended format:

```text
FWx.y
```

|Version Type|Example|Meaning|
|---|---|---|
|Initial firmware baseline|FW1.0|First testable firmware baseline|
|Minor feature or bug update|FW1.1|Minor firmware update|
|Major firmware change|FW2.0|Major firmware architecture or behavior change|

### When to Change Firmware Version

|Change Scenario|Change FW Version?|Notes|
|---|---|---|
|Device communication stack changes|Yes|May affect connectivity validation|
|Safety logic changes|Yes|Compliance review may be required|
|Relay control logic changes|Yes|Load and safety validation required|
|BLE Mesh behavior changes|Yes|Network and battery validation required|
|IR / RF protocol handling changes|Yes|Sync validation required|
|Energy measurement algorithm changes|Yes|Accuracy validation required|
|UI-only wording change in app|No|App version record, not device firmware|
|Hardware-only change|No|Update hardware version|
|PCB-only change|No|Update PCB version|

### ZH-TW

韌體版本代碼用於識別工程配置中使用的韌體基線。

建議格式：

```text
FWx.y
```

|版本類型|示例|含義|
|---|---|---|
|初始韌體基線|FW1.0|第一個可測試韌體基線|
|輕微功能或 Bug 更新|FW1.1|輕微韌體更新|
|重大韌體變更|FW2.0|重大韌體架構或行為變更|

### 何時變更韌體版本

|變更場景|是否變更 FW 版本？|備註|
|---|---|---|
|設備通訊協議棧變更|是|可能影響連接驗證|
|安全邏輯變更|是|可能需要合規審查|
|繼電器控制邏輯變更|是|需要負載與安全驗證|
|BLE Mesh 行為變更|是|需要網路與電池驗證|
|IR / RF 協議處理變更|是|需要 Sync 驗證|
|電能測量算法變更|是|需要準確性驗證|
|App 文字介面變更|否|屬於 App 版本記錄，不屬於設備韌體|
|僅硬體變更|否|更新硬體版本|
|僅 PCB 變更|否|更新 PCB 版本|

---

## 19.9 PCB Version Rules

## 19.9 PCB 版本規則

### EN

PCB version codes identify PCB layout or board revision level.

Recommended format:

```text
PCBx.y
```

|Version Type|Example|Meaning|
|---|---|---|
|Initial PCB layout|PCB1.0|First PCB version|
|Minor PCB revision|PCB1.1|Minor routing, footprint, silkscreen, or assembly revision|
|Major PCB redesign|PCB2.0|Major layout, power, RF, safety, or mechanical redesign|

### When to Change PCB Version

|Change Scenario|Change PCB Version?|Notes|
|---|---|---|
|PCB layout changes|Yes|Always update PCB version|
|RF antenna layout changes|Yes|RF certification review may be required|
|Creepage / clearance changes|Yes|Safety review required|
|Power trace width changes|Yes|Thermal and safety review required|
|Connector footprint changes|Yes|Mechanical and assembly review|
|Silkscreen correction only|Usually yes|May be minor revision|
|BOM substitution without layout change|Maybe|May be BOM version only|
|Firmware-only change|No|Update firmware version|
|Packaging-only change|No|Update package version|

### ZH-TW

PCB 版本代碼用於識別 PCB Layout 或板卡修訂層級。

建議格式：

```text
PCBx.y
```

|版本類型|示例|含義|
|---|---|---|
|初始 PCB Layout|PCB1.0|第一個 PCB 版本|
|輕微 PCB 修訂|PCB1.1|輕微走線、封裝、絲印或組裝修訂|
|重大 PCB 重設計|PCB2.0|重大 Layout、供電、RF、安全或機構重設計|

### 何時變更 PCB 版本

|變更場景|是否變更 PCB 版本？|備註|
|---|---|---|
|PCB Layout 變更|是|必須更新 PCB 版本|
|RF 天線 Layout 變更|是|可能需要 RF 認證審查|
|爬電距離 / 電氣間隙變更|是|需要安全審查|
|電源走線寬度變更|是|需要熱與安全審查|
|連接器封裝變更|是|需要機構與組裝審查|
|僅絲印修正|通常是|可作為輕微修訂|
|BOM 替代但 Layout 不變|視情況|可能僅更新 BOM 版本|
|僅韌體變更|否|更新韌體版本|
|僅包裝變更|否|更新包裝版本|

---

## 19.10 Validation Stage Rules

## 19.10 驗證階段規則

### EN

Validation stage codes identify the engineering maturity level of the product.

|Stage|Meaning|Purpose|
|---|---|---|
|EVT|Engineering Validation Test|Verify whether engineering design works|
|DVT|Design Validation Test|Verify whether design meets product, safety, reliability, and performance requirements|
|PVT|Production Validation Test|Verify whether the product can be manufactured consistently|

### Recommended Use

|Stage|Typical Records|
|---|---|
|EVT|Bring-up test, basic function test, early firmware test, hardware debug|
|DVT|Reliability test, safety review, RF test, thermal test, load test, usability test|
|PVT|Factory process validation, production QC, packaging validation, pilot build|

Validation stage must be visible in engineering model records, test reports, and validation logs.

### ZH-TW

驗證階段代碼用於識別產品的工程成熟度。

|階段|含義|目的|
|---|---|---|
|EVT|工程驗證測試|驗證工程設計是否可行|
|DVT|設計驗證測試|驗證設計是否滿足產品、安全、可靠性與性能要求|
|PVT|生產驗證測試|驗證產品是否能穩定製造|

### 建議用途

|階段|典型記錄|
|---|---|
|EVT|啟動測試、基本功能測試、早期韌體測試、硬體除錯|
|DVT|可靠性測試、安全審查、RF 測試、熱測試、負載測試、可用性測試|
|PVT|工廠流程驗證、生產品質控制、包裝驗證、試產批次|

驗證階段必須出現在工程型號記錄、測試報告與驗證日誌中。

---

## 19.11 Engineering Model Examples by Product Line

## 19.11 各產品線工程型號示例

### EN

|Product Line|Internal Model|Engineering Model Example|
|---|---|---|
|Hub|HUB-G1|HUB-G1-HW1.0-FW1.0-PCB1.0-DVT|
|Gate|GATE-G1-PRO|GATE-G1-PRO-HW1.0-FW1.1-PCB1.0-DVT|
|Sync|SYNC-G1-IRRF|SYNC-G1-IRRF-HW1.0-FW1.2-PCB1.1-DVT|
|Switch Scene|SW-G1-SCN|SW-G1-SCN-HW1.0-FW1.0-PCB1.0-EVT|
|Switch Relay|SW-G1-RLY|SW-G1-RLY-HW1.0-FW1.2-PCB1.1-DVT|
|Panel|PNL-G1-ROOM|PNL-G1-ROOM-HW1.0-FW1.0-PCB1.0-DVT|
|Act-E|ACT-G1-E|ACT-G1-E-HW1.0-FW1.2-PCB1.1-DVT|
|Sense Climate|SNS-G1-CLM|SNS-G1-CLM-HW1.0-FW1.0-PCB1.0-EVT|
|Vision Edge|VIS-G1-EDGE|VIS-G1-EDGE-HW1.0-FW1.1-PCB1.0-DVT|
|Edge|EDGE-G1|EDGE-G1-HW1.0-FW1.0-PCB1.0-PVT|

### ZH-TW

|產品線|內部型號|工程型號示例|
|---|---|---|
|Hub|HUB-G1|HUB-G1-HW1.0-FW1.0-PCB1.0-DVT|
|Gate|GATE-G1-PRO|GATE-G1-PRO-HW1.0-FW1.1-PCB1.0-DVT|
|Sync|SYNC-G1-IRRF|SYNC-G1-IRRF-HW1.0-FW1.2-PCB1.1-DVT|
|Switch Scene|SW-G1-SCN|SW-G1-SCN-HW1.0-FW1.0-PCB1.0-EVT|
|Switch Relay|SW-G1-RLY|SW-G1-RLY-HW1.0-FW1.2-PCB1.1-DVT|
|Panel|PNL-G1-ROOM|PNL-G1-ROOM-HW1.0-FW1.0-PCB1.0-DVT|
|Act-E|ACT-G1-E|ACT-G1-E-HW1.0-FW1.2-PCB1.1-DVT|
|Sense Climate|SNS-G1-CLM|SNS-G1-CLM-HW1.0-FW1.0-PCB1.0-EVT|
|Vision Edge|VIS-G1-EDGE|VIS-G1-EDGE-HW1.0-FW1.1-PCB1.0-DVT|
|Edge|EDGE-G1|EDGE-G1-HW1.0-FW1.0-PCB1.0-PVT|

---

## 19.12 Engineering Model to SKU Mapping

## 19.12 工程型號至 SKU 映射

### EN

One engineering model may map to one or more SKUs depending on region, package, and commercial configuration.

Example:

|Engineering Model|SKU Code|Mapping Reason|
|---|---|---|
|ACT-G1-E-HW1.0-FW1.2-PCB1.1-DVT|ATB-ACT-G1-US-WF-AC-E-S|U.S. single-unit SKU|
|ACT-G1-E-HW1.0-FW1.2-PCB1.1-DVT|ATB-ACT-G1-US-WF-AC-E-2P|U.S. two-pack SKU|
|ACT-G1-E-HW1.0-FW1.2-PCB1.1-DVT|ATB-ACT-G1-US-WF-AC-E-FBA|U.S. Amazon FBA package|
|ACT-G1-E-HW1.0-FW1.2-PCB1.1-DVT|ATB-ACT-G1-US-WF-AC-E-PRJ|U.S. project package|

If region, package, or channel changes without engineering changes, the engineering model may remain the same while the SKU changes.

### ZH-TW

一個工程型號可以依據區域、包裝與商業配置映射至一個或多個 SKU。

示例：

|工程型號|SKU 代碼|映射原因|
|---|---|---|
|ACT-G1-E-HW1.0-FW1.2-PCB1.1-DVT|ATB-ACT-G1-US-WF-AC-E-S|美國單品 SKU|
|ACT-G1-E-HW1.0-FW1.2-PCB1.1-DVT|ATB-ACT-G1-US-WF-AC-E-2P|美國兩入裝 SKU|
|ACT-G1-E-HW1.0-FW1.2-PCB1.1-DVT|ATB-ACT-G1-US-WF-AC-E-FBA|美國 Amazon FBA 包裝|
|ACT-G1-E-HW1.0-FW1.2-PCB1.1-DVT|ATB-ACT-G1-US-WF-AC-E-PRJ|美國專案包|

如果區域、包裝或渠道變更，但工程配置未變，工程型號可以保持不變，而 SKU 變更。

---

## 19.13 Engineering Model to Certification Mapping

## 19.13 工程型號至認證映射

### EN

Engineering model numbers must be mapped to certification model records whenever certification or compliance testing is involved.

|Mapping Item|Requirement|
|---|---|
|Engineering model used for certification test|Required|
|Hardware version under test|Required|
|Firmware version under test|Required where applicable|
|PCB version under test|Required|
|Certification model submitted|Required|
|Certification standard or regulation|Required|
|Test lab report number|Required where applicable|
|Product label model reference|Required|
|Certification status|Required|

The engineering model used in certification testing must remain archived and traceable even if the commercial SKU is later retired.

### ZH-TW

當涉及認證或合規測試時，工程型號必須映射至認證型號記錄。

|映射項目|要求|
|---|---|
|用於認證測試的工程型號|必填|
|被測硬體版本|必填|
|被測韌體版本|適用時必填|
|被測 PCB 版本|必填|
|提交認證型號|必填|
|認證標準或法規|必填|
|測試實驗室報告編號|適用時必填|
|產品標籤型號引用|必填|
|認證狀態|必填|

用於認證測試的工程型號必須保持歸檔與可追蹤，即使後續商業 SKU 已退市。

---

## 19.14 When to Create a New Engineering Model

## 19.14 何時建立新工程型號

### EN

A new engineering model should be created when the technical configuration changes.

|Change Scenario|New Engineering Model Required?|Notes|
|---|---|---|
|Hardware version changes|Yes|Update HW field|
|Firmware version changes|Yes|Update FW field|
|PCB version changes|Yes|Update PCB field|
|Validation stage changes|Yes|EVT to DVT or DVT to PVT|
|RF circuit changes|Yes|Certification review required|
|Power architecture changes|Yes|Safety review required|
|Safety logic changes|Yes|Compliance review may be required|
|Energy measurement algorithm changes|Yes|Accuracy validation required|
|Packaging changes only|No|Update package record|
|Region changes only|No|Update SKU and certification mapping where needed|
|Price or channel changes|No|Update commercial records only|

### ZH-TW

當技術配置發生變更時，應建立新工程型號。

|變更場景|是否需要新工程型號？|備註|
|---|---|---|
|硬體版本變更|是|更新 HW 欄位|
|韌體版本變更|是|更新 FW 欄位|
|PCB 版本變更|是|更新 PCB 欄位|
|驗證階段變更|是|EVT 到 DVT 或 DVT 到 PVT|
|RF 電路變更|是|需要認證審查|
|供電架構變更|是|需要安全審查|
|安全邏輯變更|是|可能需要合規審查|
|電能測量算法變更|是|需要準確性驗證|
|僅包裝變更|否|更新包裝記錄|
|僅區域變更|否|必要時更新 SKU 與認證映射|
|價格或渠道變更|否|僅更新商業記錄|

---

## 19.15 When Not to Create a New Engineering Model

## 19.15 何時不建立新工程型號

### EN

A new engineering model should not be created for changes that do not affect technical configuration.

|Change Scenario|New Engineering Model Required?|Required Action|
|---|---|---|
|Retail package changes|No|Update package version|
|Amazon FBA label changes|No|Update FBA record|
|Product price changes|No|Update pricing sheet|
|Warehouse transfer|No|Update logistics record|
|Channel availability change|No|Update channel record|
|Customer-facing copy update|No|Update marketing or documentation record|
|Manual wording correction|No|Update documentation version|
|Warranty text change|No|Update warranty document version|
|Same hardware and firmware mapped to new region|Usually no|Update SKU / certification review|
|Same engineering version used in another kit|No|Update package mapping|

### ZH-TW

不應因不影響技術配置的變更而建立新工程型號。

|變更場景|是否需要新工程型號？|必要處理|
|---|---|---|
|零售包裝變更|否|更新包裝版本|
|Amazon FBA 標籤變更|否|更新 FBA 記錄|
|產品價格變更|否|更新價格表|
|倉庫轉移|否|更新物流記錄|
|渠道可用性變更|否|更新渠道記錄|
|面向客戶文案更新|否|更新行銷或文件記錄|
|說明書文字修正|否|更新文件版本|
|保固文字變更|否|更新保固文件版本|
|同一硬體與韌體映射至新區域|通常否|更新 SKU / 認證審查|
|同一工程版本用於另一套組|否|更新包裝映射|

---

## 19.16 Engineering Change Control Rules

## 19.16 工程變更管控規則

### EN

|Rule|Requirement|
|---|---|
|Engineering model numbers must be controlled|No informal engineering model names|
|Hardware, firmware, and PCB versions must be visible|Engineering configuration must be traceable|
|Validation stage must be visible|EVT, DVT, or PVT must be recorded|
|Engineering changes must map to test reports|No engineering release without validation evidence|
|Certification-impacting changes must be reviewed|RF, power, safety, enclosure, and label changes require review|
|Engineering model must not replace SKU|Commercial control remains in SKU system|
|Engineering model must not replace certification model|Filed model must remain separately controlled|
|Engineering model must remain archived|Historical test and certification records must be preserved|
|Major engineering changes may trigger SKU review|Product, generation, region, power, or variant may be affected|
|Minor engineering changes must still be traceable|Even minor revisions require engineering records|

### ZH-TW

|規則|要求|
|---|---|
|工程型號必須受控|不得使用非正式工程型號|
|硬體、韌體與 PCB 版本必須可見|工程配置必須可追蹤|
|驗證階段必須可見|必須記錄 EVT、DVT 或 PVT|
|工程變更必須映射至測試報告|沒有驗證證據不得工程發布|
|影響認證的變更必須審查|RF、供電、安全、外殼與標籤變更需要審查|
|工程型號不得取代 SKU|商業管控仍由 SKU 系統承擔|
|工程型號不得取代認證型號|提交型號必須獨立管控|
|工程型號必須歸檔|必須保留歷史測試與認證記錄|
|重大工程變更可能觸發 SKU 審查|產品、世代、區域、供電或版本可能受影響|
|輕微工程變更仍必須可追蹤|即使是輕微修訂，也需要工程記錄|

---

## 19.17 Required Master Table Fields

## 19.17 必備主表欄位

### EN

Every engineering model number must be recorded in the engineering master record and mapped where applicable to SKU records.

|Field|Requirement|
|---|---|
|Engineering Model Number|Required|
|Internal Model Number|Required|
|Product Line|Required|
|Generation|Required|
|Variant|Required where applicable|
|Hardware Version|Required|
|Firmware Version|Required where applicable|
|PCB Version|Required where applicable|
|Validation Stage|Required|
|Test Report References|Required where applicable|
|Certification Impact|Required|
|Certification Model Mapping|Required where applicable|
|Manufacturing Model Mapping|Required where applicable|
|SKU Mapping|Required where applicable|
|Engineering Owner|Required|
|QA / Validation Owner|Required|
|Approval Status|Required|
|Revision Date|Required|
|Notes|Required where applicable|

### ZH-TW

每一個工程型號都必須記錄於工程主記錄中，並在適用時映射至 SKU 記錄。

|欄位|要求|
|---|---|
|工程型號|必填|
|內部型號|必填|
|產品線|必填|
|世代|必填|
|版本|適用時必填|
|硬體版本|必填|
|韌體版本|適用時必填|
|PCB 版本|適用時必填|
|驗證階段|必填|
|測試報告引用|適用時必填|
|認證影響|必填|
|認證型號映射|適用時必填|
|生產型號映射|適用時必填|
|SKU 映射|適用時必填|
|工程負責人|必填|
|QA / 驗證負責人|必填|
|核准狀態|必填|
|修訂日期|必填|
|備註|適用時必填|

---

## 19.18 Chapter Conclusion

## 19.18 本章結論

### EN

Engineering model numbers provide the technical traceability layer of the Artibird product identity system.

They identify the hardware version, firmware version, PCB revision, validation stage, and engineering configuration used during development, testing, certification preparation, and production readiness.

Engineering model numbers must remain separate from customer-facing model names, SKU codes, certification model numbers, and manufacturing model numbers. They support engineering control, not public communication or commercial inventory control.

### ZH-TW

工程型號為 Artibird 產品身份系統提供技術可追蹤層。

它識別產品在開發、測試、認證準備與生產就緒過程中使用的硬體版本、韌體版本、PCB 修訂、驗證階段與工程配置。

工程型號必須與面向客戶型號名稱、SKU 代碼、認證型號與生產型號保持分離。它支援工程管控，而不是公開溝通或商業庫存管控。

---

本章依據《Artibird SKU & Model Naming Specification v1.0》的既定撰寫計劃展開；原始規劃已將 Chapter 19 設為 Engineering Model Numbers，並要求定義 HW、FW、PCB、EVT、DVT、PVT 在硬體、韌體、測試與驗證追蹤中的型號格式。

**話題延伸｜互動建議**  
下一章可以繼續寫 **Chapter 20 — Certification Model Numbers｜第二十章｜認證型號**，正式定義 FCC、UL / ETL、CE、UKCA、NCC、PSE 等提交型號與 SKU、工程型號、產品標籤之間的映射規則。