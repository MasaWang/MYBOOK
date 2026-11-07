# Artibird SKU & Model Naming Specification v1.0

# Artibird SKU 與型號命名規範 v1.0

## Chapter 16 — SKU Retirement and Version Control

## 第十六章｜SKU 退市與版本控制

---

## 16.1 Purpose

## 16.1 目的

### EN

This chapter defines how Artibird SKUs are retired, replaced, archived, version-controlled, and maintained after they are no longer recommended for new commercial use.

SKU retirement and version control protect product traceability after a SKU has entered legacy, deprecated, discontinued, or archived status. They ensure that old product records remain connected to engineering history, certification records, packaging versions, Amazon listings, channel documents, warranty obligations, support boundaries, and inventory handling.

The purpose of this chapter is to prevent old SKUs from being silently reused, incorrectly sold, confused with replacement models, or detached from historical product records.

### ZH-TW

本章定義 Artibird SKU 在不再建議用於新的商業用途後，如何進行退市、替換、歸檔、版本管控與後續維護。

SKU 退市與版本控制用於保護 SKU 進入 legacy、deprecated、discontinued 或 archived 狀態後的產品可追蹤性。它確保舊產品記錄仍能連接至工程歷史、認證記錄、包裝版本、Amazon 上架、渠道文件、保固義務、支持邊界與庫存處理。

本章目的，是防止舊 SKU 被靜默重用、錯誤銷售、與替代型號混淆，或與歷史產品記錄脫節。

---

## 16.2 Retirement Definition

## 16.2 退市定義

### EN

SKU retirement is the controlled process of removing a SKU from normal new commercial use while preserving its historical traceability.

A SKU may be retired for the following reasons:

|Retirement Reason|Description|
|---|---|
|Product replacement|A newer SKU replaces the old SKU|
|Hardware revision|Hardware configuration changes beyond minor revision|
|Certification change|Certification model, region, label, or compliance condition changes|
|Packaging change|Package structure changes enough to require a new SKU|
|Market withdrawal|SKU is no longer sold in a specific region|
|Product strategy change|Product line or commercial positioning changes|
|Quality or reliability issue|SKU is paused, deprecated, or discontinued due to performance issue|
|Supplier or BOM change|Critical component change affects configuration or certification|
|Amazon listing restructuring|Marketplace listing requires new SKU or package identity|
|End of life|Product reaches lifecycle end|

### ZH-TW

SKU 退市是指將某一 SKU 從正常新增商業使用中移除，同時保留其歷史可追蹤性的受控流程。

SKU 可能因以下原因退市：

|退市原因|說明|
|---|---|
|產品替代|新 SKU 替代舊 SKU|
|硬體修訂|硬體配置變更超出輕微修訂範圍|
|認證變更|認證型號、區域、標籤或合規條件變更|
|包裝變更|包裝結構變化足以需要新 SKU|
|市場退出|SKU 不再於特定區域銷售|
|產品策略變更|產品線或商業定位發生變化|
|品質或可靠性問題|因性能問題暫停、停用或退市|
|供應商或 BOM 變更|關鍵元件變更影響配置或認證|
|Amazon 上架重組|Marketplace 上架需要新 SKU 或包裝身份|
|生命週期結束|產品達到生命週期終點|

---

## 16.3 Retirement Status Categories

## 16.3 退市狀態類別

### EN

|Status|Meaning|Typical Use|
|---|---|---|
|Active|SKU remains approved for normal use|Normal sales, production, listing, channel use|
|On Hold|SKU is temporarily paused|Certification issue, quality issue, supply issue, review pending|
|Legacy|SKU is old but still supported|Existing installed base, limited replacement, historical projects|
|Deprecated|SKU is not recommended for new use|Existing support only, controlled inventory sell-through|
|Discontinued|SKU is no longer sold or produced|End of life, no new commercial use|
|Archived|SKU retained for historical reference only|Audit, certification, warranty, document traceability|

### ZH-TW

|狀態|含義|典型用途|
|---|---|---|
|Active|SKU 仍核准正常使用|正常銷售、生產、上架、渠道使用|
|On Hold|SKU 暫停使用|認證問題、品質問題、供應問題、審查待定|
|Legacy|SKU 已舊，但仍保留支持|既有安裝基礎、有限替換、歷史專案|
|Deprecated|SKU 不建議新使用|僅既有支持、受控庫存清售|
|Discontinued|SKU 不再銷售或生產|生命週期結束，不再新增商業使用|
|Archived|SKU 僅保留歷史參考|審計、認證、保固、文件追蹤|

---

## 16.4 SKU Replacement Rules

## 16.4 SKU 替換規則

### EN

When a retired SKU is replaced by a new SKU, the replacement relationship must be documented.

|Field|Requirement|
|---|---|
|Retired SKU|Required|
|Replacement SKU|Required where applicable|
|Replacement reason|Required|
|Replacement effective date|Required|
|Hardware difference|Required|
|Firmware difference|Required where applicable|
|Certification impact|Required|
|Packaging impact|Required|
|Inventory handling|Required|
|Amazon listing impact|Required where applicable|
|Channel notification status|Required where applicable|
|Support boundary|Required|

Example:

|Retired SKU|Replacement SKU|Replacement Reason|
|---|---|---|
|ATB-ACT-G1-US-WF-AC-E-S|ATB-ACT-G2-US-WF-AC-E-S|New generation hardware update|
|ATB-SW-G1-US-BLE-BAT-SCN-S|ATB-SW-G1-US-BLE-BAT-SCN-2P|Package strategy changed from single unit to two-pack|
|ATB-GATE-G1-US-WF-USB-STD-S|ATB-GATE-G1-US-HYB-USB-PRO-S|Connectivity and commercial positioning upgraded|

### ZH-TW

當退市 SKU 被新 SKU 替代時，必須記錄替換關係。

|欄位|要求|
|---|---|
|退市 SKU|必填|
|替代 SKU|適用時必填|
|替換原因|必填|
|替換生效日期|必填|
|硬體差異|必填|
|韌體差異|適用時必填|
|認證影響|必填|
|包裝影響|必填|
|庫存處理|必填|
|Amazon 上架影響|適用時必填|
|渠道通知狀態|適用時必填|
|支持邊界|必填|

示例：

|退市 SKU|替代 SKU|替換原因|
|---|---|---|
|ATB-ACT-G1-US-WF-AC-E-S|ATB-ACT-G2-US-WF-AC-E-S|新世代硬體更新|
|ATB-SW-G1-US-BLE-BAT-SCN-S|ATB-SW-G1-US-BLE-BAT-SCN-2P|包裝策略由單品改為兩入裝|
|ATB-GATE-G1-US-WF-USB-STD-S|ATB-GATE-G1-US-HYB-USB-PRO-S|連接能力與商業定位升級|

---

## 16.5 Legacy Support Rules

## 16.5 Legacy 支持規則

### EN

Legacy SKUs may continue to receive limited support, but they should not be treated as normal active SKUs.

|Support Area|Legacy Rule|
|---|---|
|Firmware update|Allowed where technically and commercially supported|
|Replacement parts|Allowed if inventory exists|
|Warranty support|Follow original warranty terms|
|New sales|Usually not recommended|
|New project use|Not recommended unless approved|
|Amazon listing|Usually hidden, paused, or marked unavailable|
|Channel sales|Limited and controlled|
|Documentation|Must remain accessible|
|Certification record|Must remain archived and traceable|
|Customer support|Support boundary must be defined|

Legacy support must be documented so that sales, support, engineering, and operations do not treat obsolete SKUs as current products.

### ZH-TW

Legacy SKU 可以繼續獲得有限支持，但不應被視為正常 Active SKU。

|支持項目|Legacy 規則|
|---|---|
|韌體更新|在技術與商業支持條件下允許|
|替換零件|若庫存存在則允許|
|保固支持|依原保固條款執行|
|新銷售|通常不建議|
|新專案使用|除非核准，否則不建議|
|Amazon 上架|通常隱藏、暫停或標記不可售|
|渠道銷售|有限且受控|
|文件|必須保持可查|
|認證記錄|必須歸檔並可追蹤|
|客戶支持|必須定義支持邊界|

Legacy 支持必須形成記錄，以避免銷售、支持、工程與運營將過時 SKU 視為當前產品。

---

## 16.6 Inventory Handling Rules

## 16.6 庫存處理規則

### EN

When a SKU enters On Hold, Legacy, Deprecated, or Discontinued status, inventory must be reviewed.

|Inventory Scenario|Required Action|
|---|---|
|Existing sellable inventory|Decide sell-through, recall, rework, or channel restriction|
|Existing Amazon FBA inventory|Review listing status, FNSKU, compliance, and return plan|
|Channel inventory|Notify distributor or partner where applicable|
|Warehouse stock|Mark inventory status in ERP or inventory system|
|Demo units|Re-label or mark as demo-only where required|
|Sample units|Keep sample tracking and usage restriction|
|Certification test units|Archive as certification-related samples where required|
|Defective inventory|Quarantine or disposition according to quality process|
|Replacement inventory|Map to replacement SKU where applicable|

Inventory status must not be controlled only by informal notes. It must be reflected in operational systems.

### ZH-TW

當 SKU 進入 On Hold、Legacy、Deprecated 或 Discontinued 狀態時，必須審查庫存。

|庫存場景|必要處理|
|---|---|
|既有可售庫存|決定清售、召回、返工或渠道限制|
|既有 Amazon FBA 庫存|審查上架狀態、FNSKU、合規與退貨方案|
|渠道庫存|適用時通知分銷商或合作夥伴|
|倉庫庫存|在 ERP 或庫存系統中標記庫存狀態|
|展示單位|必要時重新標註或標記為僅展示|
|樣品單位|保持樣品追蹤與使用限制|
|認證測試樣品|必要時作為認證相關樣品歸檔|
|缺陷庫存|依品質流程隔離或處置|
|替代庫存|適用時映射至替代 SKU|

庫存狀態不得僅依靠非正式備註管控，必須反映在運營系統中。

---

## 16.7 Certification Impact Rules

## 16.7 認證影響規則

### EN

SKU retirement or replacement may affect certification status.

|Scenario|Certification Review Required?|
|---|---|
|SKU retired without hardware change|Yes, record status update|
|SKU replaced due to hardware change|Yes|
|SKU replaced due to RF change|Yes|
|SKU replaced due to power architecture change|Yes|
|SKU replaced due to enclosure change|Usually yes|
|SKU replaced due to packaging-only change|Maybe|
|SKU replaced due to region change|Yes|
|SKU deprecated but still supported|Yes, keep certification traceability|
|SKU discontinued|Yes, archive certification record|
|SKU archived|Certification reference must remain searchable|

Certification model records must never be deleted when a SKU is retired. They must remain connected to historical SKU records.

### ZH-TW

SKU 退市或替換可能影響認證狀態。

|場景|是否需要認證審查？|
|---|---|
|SKU 退市但硬體未變|是，記錄狀態更新|
|因硬體變更替換 SKU|是|
|因 RF 變更替換 SKU|是|
|因供電架構變更替換 SKU|是|
|因外殼變更替換 SKU|通常是|
|僅因包裝變更替換 SKU|視情況|
|因區域變更替換 SKU|是|
|SKU 停用但仍支持|是，保持認證可追蹤|
|SKU 停產|是，歸檔認證記錄|
|SKU 歸檔|認證引用必須保持可搜尋|

當 SKU 退市時，認證型號記錄絕不可刪除。它們必須繼續連接至歷史 SKU 記錄。

---

## 16.8 Packaging Update Rules

## 16.8 包裝更新規則

### EN

SKU retirement may require packaging updates, especially when the SKU appears on retail packaging, barcode labels, Amazon FBA labels, user manuals, installation guides, or warranty materials.

|Packaging Item|Required Review|
|---|---|
|Retail box|SKU, model name, barcode, claim text|
|Product label|Model number, rating, certification marks|
|Amazon FBA label|FNSKU, barcode, marketplace requirements|
|User manual|SKU or model references, safety text|
|Installation guide|Wiring, power, region, safety instructions|
|Warranty card|SKU or model coverage|
|Outer carton|Carton label, quantity, SKU, channel code|
|Demo kit label|Demo-only or not-for-resale status|
|Sample label|Sample / evaluation status|

A retired SKU must not continue to appear on new packaging unless the packaging is intentionally used for existing inventory under an approved sell-through plan.

### ZH-TW

SKU 退市可能需要更新包裝，尤其當 SKU 出現在零售包裝、條碼標籤、Amazon FBA 標籤、用戶手冊、安裝指南或保固材料上時。

|包裝項目|必要審查|
|---|---|
|零售盒|SKU、型號名稱、條碼、宣稱文字|
|產品標籤|型號、額定資訊、認證標誌|
|Amazon FBA 標籤|FNSKU、條碼、Marketplace 要求|
|用戶手冊|SKU 或型號引用、安全文字|
|安裝指南|接線、供電、區域、安全說明|
|保固卡|SKU 或型號覆蓋範圍|
|外箱|外箱標籤、數量、SKU、渠道代碼|
|展示套組標籤|僅展示或不可銷售狀態|
|樣品標籤|樣品 / 評估狀態|

除非依核准的庫存清售方案刻意使用既有包裝，否則已退市 SKU 不得繼續出現在新包裝上。

---

## 16.9 Amazon and E-Commerce Update Rules

## 16.9 Amazon 與電商更新規則

### EN

If a SKU is used in Amazon or e-commerce records, retirement or replacement must be reflected in marketplace records.

|E-Commerce Item|Required Action|
|---|---|
|Amazon SKU|Pause, update, replace, or close where applicable|
|FNSKU|Review inventory and fulfillment mapping|
|ASIN|Review whether listing remains active or is replaced|
|Product title|Remove retired SKU where applicable|
|Bullet points|Update unsupported claims|
|A+ content|Remove outdated model references|
|Images|Update packaging, model, or label images|
|Compliance attributes|Update certification and regional claims|
|Inventory|Decide sell-through, return, or removal|
|Customer questions|Update support response if product is deprecated|

A retired SKU must not remain publicly presented as a current product unless an approved sell-through or legacy-support strategy exists.

### ZH-TW

如果 SKU 用於 Amazon 或電商記錄，退市或替換必須反映到 marketplace 記錄中。

|電商項目|必要處理|
|---|---|
|Amazon SKU|適用時暫停、更新、替換或關閉|
|FNSKU|審查庫存與履約映射|
|ASIN|審查上架是否保留或替換|
|產品標題|適用時移除已退市 SKU|
|五點描述|更新不再支援的宣稱|
|A+ 內容|移除過時型號引用|
|圖片|更新包裝、型號或標籤圖片|
|合規屬性|更新認證與區域宣稱|
|庫存|決定清售、退回或移除|
|客戶問答|若產品已停用，更新支持回應|

除非存在已核准的清售或 legacy 支持策略，否則已退市 SKU 不得在公開頁面中繼續呈現為當前產品。

---

## 16.10 Channel Notification Rules

## 16.10 渠道通知規則

### EN

When a SKU is retired, replaced, deprecated, or discontinued, channel partners may need to be notified.

|Channel Area|Notification Requirement|
|---|---|
|Distributor|Notify if inventory, pricing, replacement, or ordering changes|
|Reseller|Notify if listing or sales status changes|
|System integrator|Notify if project use, compatibility, or support changes|
|Amazon / marketplace operator|Update listing and fulfillment records|
|Education / institutional customer|Notify if classroom or project SKU is affected|
|B2B project customer|Notify if deployment, replacement, or support boundary changes|
|Support team|Provide customer-facing support guidance|
|Sales team|Provide replacement SKU and claim boundary|

Notification records should include effective date, replacement SKU, support boundary, inventory handling, and claim restrictions.

### ZH-TW

當 SKU 退市、替換、停用或停產時，可能需要通知渠道合作夥伴。

|渠道領域|通知要求|
|---|---|
|分銷商|若庫存、價格、替代或訂購發生變化，需通知|
|經銷商|若上架或銷售狀態變更，需通知|
|系統整合商|若專案使用、相容性或支持變更，需通知|
|Amazon / marketplace 運營方|更新上架與履約記錄|
|教育 / 機構客戶|若教室或專案 SKU 受影響，需通知|
|B2B 專案客戶|若部署、替代或支持邊界變更，需通知|
|支持團隊|提供面向客戶的支持指引|
|銷售團隊|提供替代 SKU 與宣稱邊界|

通知記錄應包含生效日期、替代 SKU、支持邊界、庫存處理與宣稱限制。

---

## 16.11 Version Control Rules

## 16.11 版本控制規則

### EN

SKU version control ensures that product changes are recorded in the correct layer without unnecessarily creating new SKUs.

|Change Type|Controlled By|
|---|---|
|Hardware version change|Engineering model|
|Firmware version change|Firmware record|
|PCB revision change|Engineering model|
|BOM change|Manufacturing / BOM record|
|Certification model change|Certification tracker|
|Packaging artwork change|Package version|
|User manual change|Documentation version|
|Installation guide change|Documentation version|
|Barcode change|Package / inventory record|
|Price change|Pricing sheet|
|Sales channel change|Channel availability record|
|SKU configuration change|SKU code / SKU master table|

Not every version change creates a new SKU. A new SKU is required only when the commercial configuration, certification mapping, package unit, product identity, or controlled SKU field changes.

### ZH-TW

SKU 版本控制確保產品變更被記錄在正確層級，而不會不必要地建立新 SKU。

|變更類型|管控方式|
|---|---|
|硬體版本變更|工程型號|
|韌體版本變更|韌體記錄|
|PCB 修訂變更|工程型號|
|BOM 變更|生產 / BOM 記錄|
|認證型號變更|認證追蹤表|
|包裝 artwork 變更|包裝版本|
|用戶手冊變更|文件版本|
|安裝指南變更|文件版本|
|條碼變更|包裝 / 庫存記錄|
|價格變更|價格表|
|銷售渠道變更|渠道可用性記錄|
|SKU 配置變更|SKU 代碼 / SKU 主表|

並非所有版本變更都需要建立新 SKU。只有當商業配置、認證映射、包裝單位、產品身份或受控 SKU 欄位變更時，才需要建立新 SKU。

---

## 16.12 Engineering Version vs SKU Version

## 16.12 工程版本與 SKU 版本的區別

### EN

Engineering versions must remain separate from SKU codes.

|Item|Example|Purpose|
|---|---|---|
|SKU Code|ATB-ACT-G1-US-WF-AC-E-S|Commercial and inventory control|
|Engineering Model|ACT-G1-HW1.0-FW1.2-PCB1.1|Hardware, firmware, PCB tracking|
|Firmware Version|FW1.2|Software release tracking|
|PCB Version|PCB1.1|Board revision tracking|
|BOM Version|BOM1.0|Manufacturing configuration|
|Package Version|PKG1.0|Packaging artwork and content tracking|

A firmware update from FW1.2 to FW1.3 does not automatically create a new SKU.  
A PCB revision from PCB1.1 to PCB1.2 does not automatically create a new SKU.  
A new SKU is required only if the change affects the controlled commercial configuration.

### ZH-TW

工程版本必須與 SKU 代碼保持分離。

|項目|示例|目的|
|---|---|---|
|SKU 代碼|ATB-ACT-G1-US-WF-AC-E-S|商業與庫存管控|
|工程型號|ACT-G1-HW1.0-FW1.2-PCB1.1|硬體、韌體、PCB 追蹤|
|韌體版本|FW1.2|軟體發布追蹤|
|PCB 版本|PCB1.1|板卡修訂追蹤|
|BOM 版本|BOM1.0|生產配置|
|包裝版本|PKG1.0|包裝 artwork 與內容追蹤|

韌體從 FW1.2 更新到 FW1.3，不自動建立新 SKU。  
PCB 從 PCB1.1 修訂到 PCB1.2，不自動建立新 SKU。  
只有當變更影響受控商業配置時，才需要建立新 SKU。

---

## 16.13 Reuse Prohibition Rules

## 16.13 禁止重用規則

### EN

Retired, released, discontinued, or archived SKU codes must not be reused for new configurations.

|SKU Status|Reuse Allowed?|
|---|---|
|Draft|May be corrected before release|
|Reserved|May be revised with approval|
|Prototype|Usually no if used in records|
|Released|No|
|Deprecated|No|
|Discontinued|No|
|Archived|No|

A SKU that has appeared in packaging, certification, Amazon, invoice, shipment, sales document, partner document, or customer communication must never be reused.

### ZH-TW

已退市、已發布、已停產或已歸檔的 SKU 代碼不得被重用於新配置。

|SKU 狀態|是否允許重用？|
|---|---|
|Draft|發布前可修正|
|Reserved|核准後可修訂|
|Prototype|若已用於記錄，通常不可|
|Released|不可|
|Deprecated|不可|
|Discontinued|不可|
|Archived|不可|

任何已出現在包裝、認證、Amazon、發票、出貨、銷售文件、合作夥伴文件或客戶溝通中的 SKU，都不得再次重用。

---

## 16.14 Retirement Change Request Template

## 16.14 退市變更申請模板

### EN

|Field|Entry|
|---|---|
|Change Request ID|TBD|
|Existing SKU|TBD|
|Current Status|Active / On Hold / Legacy / Deprecated / Discontinued|
|Proposed Status|Legacy / Deprecated / Discontinued / Archived|
|Replacement SKU|TBD|
|Retirement Reason|TBD|
|Hardware Impact|Yes / No|
|Firmware Impact|Yes / No|
|Certification Impact|Yes / No|
|Packaging Impact|Yes / No|
|Amazon / Website Impact|Yes / No|
|Inventory Impact|Yes / No|
|Channel Impact|Yes / No|
|Customer Support Impact|Yes / No|
|Effective Date|TBD|
|Approval Owner|TBD|
|Notes|TBD|

### ZH-TW

|欄位|填寫|
|---|---|
|變更申請 ID|TBD|
|既有 SKU|TBD|
|當前狀態|Active / On Hold / Legacy / Deprecated / Discontinued|
|建議狀態|Legacy / Deprecated / Discontinued / Archived|
|替代 SKU|TBD|
|退市原因|TBD|
|硬體影響|Yes / No|
|韌體影響|Yes / No|
|認證影響|Yes / No|
|包裝影響|Yes / No|
|Amazon / 網站影響|Yes / No|
|庫存影響|Yes / No|
|渠道影響|Yes / No|
|客戶支持影響|Yes / No|
|生效日期|TBD|
|核准負責人|TBD|
|備註|TBD|

---

## 16.15 Retirement Review Checklist

## 16.15 退市審查清單

### EN

Before a SKU is retired, the following must be reviewed:

|Review Item|Required|
|---|---|
|Retirement reason documented|Yes|
|Replacement SKU identified where applicable|Yes|
|Existing inventory reviewed|Yes|
|Amazon / e-commerce records reviewed|Yes, where applicable|
|Channel inventory reviewed|Yes, where applicable|
|Certification status archived|Yes|
|Packaging references reviewed|Yes|
|Product label references reviewed|Yes|
|User manual references reviewed|Yes|
|Support boundary defined|Yes|
|Warranty obligation reviewed|Yes|
|Claim boundary updated|Yes|
|Internal teams notified|Yes|
|External partners notified where applicable|Yes|
|Master table status updated|Yes|

### ZH-TW

在 SKU 退市前，必須審查以下項目：

|審查項目|是否必須|
|---|---|
|已記錄退市原因|是|
|已識別適用替代 SKU|是|
|已審查既有庫存|是|
|已審查 Amazon / 電商記錄|適用時必須|
|已審查渠道庫存|適用時必須|
|已歸檔認證狀態|是|
|已審查包裝引用|是|
|已審查產品標籤引用|是|
|已審查用戶手冊引用|是|
|已定義支持邊界|是|
|已審查保固義務|是|
|已更新宣稱邊界|是|
|已通知內部團隊|是|
|適用時已通知外部合作夥伴|是|
|已更新主表狀態|是|

---

## 16.16 Required Master Table Fields

## 16.16 必備主表欄位

### EN

Each retired, replaced, deprecated, discontinued, or archived SKU must include retirement-related fields.

|Field|Requirement|
|---|---|
|SKU Code|Required|
|Current Status|Required|
|Previous Status|Required|
|Retirement Reason|Required|
|Replacement SKU|Required where applicable|
|Effective Date|Required|
|Last Production Date|Required where applicable|
|Last Sales Date|Required where applicable|
|Inventory Handling Plan|Required|
|Certification Archive Reference|Required|
|Packaging Archive Reference|Required|
|Amazon / E-Commerce Status|Required where applicable|
|Channel Notification Status|Required where applicable|
|Support Boundary|Required|
|Warranty Boundary|Required|
|Approval Owner|Required|
|Revision Date|Required|

### ZH-TW

每一個已退市、已替換、已停用、已停產或已歸檔 SKU，都必須包含與退市相關的欄位。

|欄位|要求|
|---|---|
|SKU 代碼|必填|
|當前狀態|必填|
|前一狀態|必填|
|退市原因|必填|
|替代 SKU|適用時必填|
|生效日期|必填|
|最後生產日期|適用時必填|
|最後銷售日期|適用時必填|
|庫存處理方案|必填|
|認證歸檔引用|必填|
|包裝歸檔引用|必填|
|Amazon / 電商狀態|適用時必填|
|渠道通知狀態|適用時必填|
|支持邊界|必填|
|保固邊界|必填|
|核准負責人|必填|
|修訂日期|必填|

---

## 16.17 Chapter Conclusion

## 16.17 本章結論

### EN

SKU retirement and version control ensure that old SKU records remain traceable, controlled, and connected to historical product identity.

A retired SKU must not be deleted, silently reused, or treated as a current product. It must remain linked to replacement SKU records, engineering versions, certification records, packaging files, Amazon and channel status, inventory handling plans, warranty obligations, and support boundaries.

A clear retirement and version control system allows Artibird to protect product integrity across the full lifecycle, from active release to legacy support, deprecation, discontinuation, and archival.

### ZH-TW

SKU 退市與版本控制確保舊 SKU 記錄仍保持可追蹤、受控，並連接至歷史產品身份。

已退市 SKU 不得被刪除、靜默重用或視為當前產品。它必須繼續連接至替代 SKU 記錄、工程版本、認證記錄、包裝文件、Amazon 與渠道狀態、庫存處理方案、保固義務與支持邊界。

清晰的退市與版本控制系統，可使 Artibird 在從 Active 發布到 Legacy 支持、Deprecated、Discontinued 與 Archived 的完整生命週期中，保護產品身份完整性。

---

本章依據《Artibird SKU & Model Naming Specification v1.0》的既定撰寫計劃展開；原始規劃已將 Chapter 16 設為 SKU Retirement and Version Control，並要求覆蓋 SKU replacement、legacy support、inventory handling、certification impact、packaging update、Amazon listing update 與 channel notification 等主題。

**話題延伸｜互動建議**  
下一章可以進入 **Part III — Model Naming System｜第三部分｜型號命名系統**，開始寫 **Chapter 17 — Customer-Facing Model Names｜第十七章｜面向客戶型號名稱**，正式定義 Artibird Hub G1、Gate Pro、Sync IR/RF、Switch Scene、Act-E、Sense Climate、Vision Edge 等對外可讀名稱規則。