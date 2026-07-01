# Chapter 1 — Document Information

# 第一章｜文件資訊

---

## 1.1 Chapter Purpose

## 1.1 章節目的

**EN**  
This chapter defines the document identity, version information, ownership, applicable product scope, approval status, and revision control structure for the **Artibird SKU & Model Naming Specification v1.0**.

Its purpose is to ensure that this document can serve as an official naming governance reference for Artibird product identity, SKU structure, model naming, package naming, commercial tracking, certification mapping, and future product version control.

**ZH-TW**  
本章定義《**Artibird SKU 與型號命名規範 v1.0**》的文件身份、版本資訊、責任歸屬、適用產品範圍、核准狀態與版本管控結構。

其目的，是確保本文件能作為 Artibird 產品身份、SKU 結構、型號命名、包裝命名、商業追蹤、認證映射與未來產品版本控制的官方命名治理參考。

---

## 1.2 Document Identity

## 1.2 文件身份

**EN**  
The **Artibird SKU & Model Naming Specification** is an internal product identity control document. It defines how Artibird products should be named, coded, versioned, regionally separated, commercially tracked, and linked to related hardware, certification, packaging, and sales documents.

This document is not a marketing brochure, product catalog, engineering circuit specification, certification report, or Amazon listing document. It is a governance document that controls the product identity layer behind those outputs.

**ZH-TW**  
《**Artibird SKU 與型號命名規範**》是一份內部產品身份管控文件。它定義 Artibird 產品應如何命名、編碼、區分版本、劃分區域、追蹤商業狀態，並連接相關硬體、認證、包裝與銷售文件。

本文件不是行銷手冊、產品型錄、工程電路規格書、認證報告或 Amazon 上架文檔，而是用於管控這些輸出背後產品身份層的治理文件。

---

## English Table

|Item|Description|
|---|---|
|Document Name|Artibird SKU & Model Naming Specification|
|Chinese Document Name|Artibird SKU 與型號命名規範|
|Version|v1.0|
|Document Type|Naming Governance / SKU Control / Product Identity Specification|
|Brand|Artibird|
|Parent Architecture|OceanAI|
|Product Layer|Artibird Product Family|
|Related System|OceanAI Coordinated Intelligent Environment System|
|Document Status|Draft / Internal Review / Approved / Released|
|Primary Use|Product identity control, SKU governance, model naming, commercial tracking|
|Language Format|English / Traditional Chinese bilingual format|

## 中文表

|項目|說明|
|---|---|
|文件名稱|Artibird SKU & Model Naming Specification|
|中文文件名稱|Artibird SKU 與型號命名規範|
|版本|v1.0|
|文件類型|命名治理 / SKU 管控 / 產品身份規範|
|品牌|Artibird|
|上層架構|OceanAI|
|產品層|Artibird 產品家族|
|關聯系統|OceanAI 協同智慧空間系統|
|文件狀態|Draft / Internal Review / Approved / Released|
|主要用途|產品身份管控、SKU 治理、型號命名、商業追蹤|
|語言格式|英文 / 繁體中文雙語格式|

---

## 1.3 Document Role

## 1.3 文件角色

**EN**  
This document acts as the naming control layer for the Artibird commercialization system. It provides the standard rules used by product, engineering, certification, packaging, sales, channel, e-commerce, inventory, and operations teams when referring to Artibird products.

Its role is to prevent inconsistent naming across different business and engineering contexts.

**ZH-TW**  
本文件作為 Artibird 商業化系統中的命名管控層。產品、工程、認證、包裝、銷售、渠道、電商、庫存與運營團隊在引用 Artibird 產品時，應使用本文件提供的標準規則。

其角色是防止不同商業與工程場景中的命名不一致。

---

## English Table

|Controlled Area|Document Role|
|---|---|
|Product names|Defines approved customer-facing product names|
|SKU codes|Defines the standard SKU structure and field logic|
|Internal models|Defines model names used by product and engineering teams|
|Engineering models|Defines hardware, firmware, and PCB-related model references|
|Certification models|Defines how model names map to certification filings|
|Package names|Defines names for kits, packs, retail packages, and project packages|
|Release status|Defines lifecycle status from concept to commercial release|
|Document linkage|Connects SKU names to hardware, certification, packaging, pricing, and claim records|

## 中文表

|受控領域|文件角色|
|---|---|
|產品名稱|定義核准的面向客戶產品名稱|
|SKU 代碼|定義標準 SKU 結構與欄位邏輯|
|內部型號|定義產品與工程團隊使用的型號名稱|
|工程型號|定義與硬體、韌體、PCB 相關的型號引用|
|認證型號|定義型號名稱如何映射至認證提交|
|包裝名稱|定義套組、包裝、零售包與專案包名稱|
|發布狀態|定義從概念到商業發布的生命週期狀態|
|文件連接|將 SKU 名稱連接至硬體、認證、包裝、價格與宣稱記錄|

---

## 1.4 Applicable Product Scope

## 1.4 適用產品範圍

**EN**  
This document applies to all current and future Artibird product lines, including physical devices, software interfaces, gateway products, runtime-related products, sensing products, execution products, synchronization products, visual perception products, and product packages.

It may also reference OceanAI Cloud, OceanAI Edge, and ArtiOS when their naming affects product SKU structure, package naming, or commercial configuration.

**ZH-TW**  
本文件適用於所有現有與未來 Artibird 產品線，包括實體設備、軟體介面、網關產品、Runtime 相關產品、感知產品、執行產品、同步產品、視覺感知產品與產品套組。

當 OceanAI Cloud、OceanAI Edge 與 ArtiOS 的命名會影響產品 SKU 結構、包裝命名或商業配置時，本文件也可對其進行引用。

---

## English Table

|Product / System|Included in Naming Governance|Notes|
|---|---|---|
|Artibird Hub|Yes|Local runtime center|
|Artibird Gate|Yes|Device access gateway|
|Artibird Sync|Yes|IR / RF synchronization node|
|Artibird Switch|Yes|Smart switch and event node|
|Artibird Panel|Yes|Room-level interaction interface|
|Artibird Act|Yes|Electrical execution node|
|Artibird Act-E|Yes|Energy-aware execution variant|
|Artibird Sense|Yes|Environmental sensing node|
|Artibird Vision|Yes|Visual perception node|
|Artibird App|Yes|User control and configuration interface|
|OceanAI Cloud|Reference only where needed|Cloud service naming and commercial configuration|
|OceanAI Edge|Reference only where needed|Edge intelligence hardware or service configuration|
|ArtiOS|Reference only where needed|Runtime platform naming and package association|

## 中文表

|產品 / 系統|是否納入命名治理|備註|
|---|---|---|
|Artibird Hub|是|本地 Runtime 中樞|
|Artibird Gate|是|設備接入網關|
|Artibird Sync|是|IR / RF 同步節點|
|Artibird Switch|是|智慧開關與事件節點|
|Artibird Panel|是|房間級互動介面|
|Artibird Act|是|電力執行節點|
|Artibird Act-E|是|能源感知執行版本|
|Artibird Sense|是|環境感知節點|
|Artibird Vision|是|視覺感知節點|
|Artibird App|是|用戶控制與配置介面|
|OceanAI Cloud|必要時引用|雲端服務命名與商業配置|
|OceanAI Edge|必要時引用|Edge 智慧硬體或服務配置|
|ArtiOS|必要時引用|Runtime 平台命名與套組關聯|

---

## 1.5 Intended Users

## 1.5 適用對象

**EN**  
This document is intended for internal teams and controlled partners who need to create, review, approve, publish, manufacture, certify, package, price, list, or sell Artibird products.

It should be used whenever a new product name, SKU code, model name, package name, or commercial product reference is created or modified.

**ZH-TW**  
本文件適用於需要建立、審查、核准、發布、生產、認證、包裝、定價、上架或銷售 Artibird 產品的內部團隊與受控合作夥伴。

當建立或修改任何新產品名稱、SKU 代碼、型號名稱、包裝名稱或商業產品引用時，均應使用本文件。

---

## English Table

|User Group|Use of This Document|
|---|---|
|Product team|Defines product names, variants, and product identity|
|Engineering team|Maps SKU and model names to hardware, firmware, and PCB versions|
|Operations team|Maintains SKU records and product lifecycle status|
|Certification team|Maps model names to certification filings and labels|
|Packaging team|Uses product names, SKU codes, and package names on packaging|
|Sales team|Uses approved names and SKU references for sales communication|
|Channel team|Uses SKU structure for distributor and partner communication|
|E-commerce team|Uses approved SKU and product names for marketplace listings|
|Inventory / logistics team|Uses SKU codes for stock, warehouse, and shipment control|
|Leadership / approval team|Approves product identity and commercial release naming|

## 中文表

|使用群體|本文件用途|
|---|---|
|產品團隊|定義產品名稱、版本與產品身份|
|工程團隊|將 SKU 與型號映射至硬體、韌體與 PCB 版本|
|運營團隊|維護 SKU 記錄與產品生命週期狀態|
|認證團隊|將型號名稱映射至認證提交與標籤|
|包裝團隊|在包裝上使用產品名稱、SKU 代碼與包裝名稱|
|銷售團隊|使用已核准名稱與 SKU 引用進行銷售溝通|
|渠道團隊|使用 SKU 結構進行經銷商與合作夥伴溝通|
|電商團隊|使用已核准 SKU 與產品名稱進行平台上架|
|庫存 / 物流團隊|使用 SKU 代碼進行庫存、倉儲與出貨管控|
|管理 / 核准團隊|核准產品身份與商業發布命名|

---

## 1.6 Document Ownership

## 1.6 文件責任歸屬

**EN**  
The ownership of this document should be shared between product management, operations, engineering, certification, and commercial leadership. No single team should modify SKU or model naming rules without cross-functional review.

The document owner is responsible for maintaining the master version, approving revisions, and ensuring that all related documents use consistent product naming.

**ZH-TW**  
本文件的責任歸屬應由產品管理、運營、工程、認證與商務管理共同承擔。任何單一團隊不應在未經跨部門審查的情況下修改 SKU 或型號命名規則。

文件負責人應負責維護母版、核准修訂，並確保所有關聯文件使用一致產品命名。

---

## English Table

|Role|Responsibility|
|---|---|
|Document Owner|Maintains the master document and controls revisions|
|Product Lead|Approves product naming and variant logic|
|Engineering Lead|Approves hardware, firmware, and PCB mapping|
|Certification / Compliance Owner|Reviews certification model and label implications|
|Operations Lead|Maintains SKU master records and lifecycle status|
|Commercial Lead|Approves commercial naming, package naming, and sales use|
|Packaging Lead|Confirms package code and label application|
|E-commerce Lead|Confirms Amazon / marketplace naming consistency|

## 中文表

|角色|責任|
|---|---|
|文件負責人|維護母版文件並控制修訂|
|產品負責人|核准產品命名與版本邏輯|
|工程負責人|核准硬體、韌體與 PCB 映射|
|認證 / 合規負責人|審查認證型號與標籤影響|
|運營負責人|維護 SKU 主記錄與生命週期狀態|
|商務負責人|核准商業命名、包裝命名與銷售使用|
|包裝負責人|確認包裝代碼與標籤應用|
|電商負責人|確認 Amazon / 平台命名一致性|

---

## 1.7 Approval Status

## 1.7 核准狀態

**EN**  
This document should use a controlled approval status system. A document or naming rule should not be considered ready for commercial use until it is marked as **Approved** or **Released**.

Draft naming examples may be used for planning, but they must not be printed on packaging, submitted for certification, listed on Amazon, or distributed to channel partners unless formally approved.

**ZH-TW**  
本文件應使用受控核准狀態系統。文件或命名規則在被標記為 **Approved** 或 **Released** 前，不應被視為可商業使用。

草案命名示例可用於規劃，但除非已正式核准，否則不得印刷於包裝、提交認證、上架 Amazon 或分發給渠道合作夥伴。

---

## English Table

|Status|Meaning|Commercial Use|
|---|---|---|
|Draft|Working version for internal discussion|Not allowed|
|Internal Review|Under cross-functional review|Not allowed|
|Approved|Approved for controlled internal and commercial preparation|Conditional|
|Released|Approved for commercial use and external reference|Allowed|
|Deprecated|No longer recommended for new use|Limited|
|Archived|Historical record only|Not allowed|

## 中文表

|狀態|含義|商業使用|
|---|---|---|
|Draft|供內部討論的工作版本|不允許|
|Internal Review|跨部門審查中|不允許|
|Approved|已核准用於受控內部與商業準備|條件允許|
|Released|已核准用於商業使用與外部引用|允許|
|Deprecated|不再建議新項目使用|有限|
|Archived|僅作歷史記錄|不允許|

---

## 1.8 Revision Control

## 1.8 版本管控

**EN**  
All changes to this document must be recorded in a revision history. Changes that affect SKU structure, product line codes, region codes, certification model names, or commercial package names should be treated as high-impact revisions.

A naming change may affect multiple downstream documents, including product catalog, hardware master file, certification tracker, packaging specification, Amazon listing, pricing sheet, and inventory records.

**ZH-TW**  
本文件的所有變更都必須記錄於版本歷史中。凡影響 SKU 結構、產品線代碼、區域代碼、認證型號名稱或商業包裝名稱的變更，都應視為高影響修訂。

命名變更可能影響多個下游文件，包括產品型錄、硬體主檔、認證追蹤表、包裝規範、Amazon 上架文檔、價格表與庫存記錄。

---

## English Table

|Revision Type|Impact Level|Review Required|
|---|---|---|
|Typo correction|Low|Document owner|
|Clarification without code change|Low|Document owner|
|New product line code|High|Product, engineering, operations, commercial|
|SKU structure change|High|Product, operations, engineering, certification, commercial|
|Region code change|Medium / High|Product, certification, commercial|
|Certification model naming change|High|Certification, engineering, legal / compliance|
|Package code change|Medium|Packaging, operations, commercial|
|Commercial naming change|High|Product, commercial, marketing, legal where needed|
|Retirement of SKU or code|Medium / High|Product, operations, sales, channel|

## 中文表

|修訂類型|影響等級|必要審查|
|---|---|---|
|錯字修正|低|文件負責人|
|不改變代碼的說明補充|低|文件負責人|
|新增產品線代碼|高|產品、工程、運營、商務|
|SKU 結構變更|高|產品、運營、工程、認證、商務|
|區域代碼變更|中 / 高|產品、認證、商務|
|認證型號命名變更|高|認證、工程、法務 / 合規|
|包裝代碼變更|中|包裝、運營、商務|
|商業命名變更|高|產品、商務、行銷，必要時法務|
|SKU 或代碼退市|中 / 高|產品、運營、銷售、渠道|

---

## 1.9 Related Documents

## 1.9 關聯文件

**EN**  
This document connects to the broader Artibird product commercialization documentation system. It should be referenced by all documents that use product names, SKU codes, model names, package names, certification model references, or commercial release status.

**ZH-TW**  
本文件連接至更完整的 Artibird 產品商業化文件系統。凡使用產品名稱、SKU 代碼、型號名稱、包裝名稱、認證型號引用或商業發布狀態的文件，均應引用本文件。

---

## English Table

|Related Document|Relationship|
|---|---|
|Artibird Product Catalog v1.0|Uses customer-facing names and approved SKU references|
|Artibird Hardware Configuration Master File v1.0|Maps each SKU to real hardware configuration|
|Artibird Engineering Specification Series|Uses engineering model numbers and product identity|
|Artibird Certification & Compliance Tracker|Maps certification model names to SKU and market|
|Artibird Packaging & Labeling Specification|Uses SKU, package code, product name, and label identity|
|Artibird Amazon / E-commerce Listing Package|Uses approved product names and SKU references|
|Artibird Sales Sheet & Channel Deck|Uses approved customer-facing names and commercial product grouping|
|Artibird Pricing & Commercial Configuration Sheet|Uses SKU as pricing and margin control unit|
|Artibird Claim Review Register|Controls approved language for each product and SKU|

## 中文表

|關聯文件|關係|
|---|---|
|Artibird 產品型錄 v1.0|使用面向客戶名稱與已核准 SKU 引用|
|Artibird 硬體配置主檔 v1.0|將每個 SKU 映射至實際硬體配置|
|Artibird 工程規格書系列|使用工程型號與產品身份|
|Artibird 認證與合規追蹤表|將認證型號映射至 SKU 與市場|
|Artibird 包裝與標籤規範|使用 SKU、包裝代碼、產品名稱與標籤身份|
|Artibird Amazon / 電商上架文檔|使用已核准產品名稱與 SKU 引用|
|Artibird 銷售單頁 / 渠道簡報|使用已核准面向客戶名稱與商業產品分組|
|Artibird 價格與商業配置表|使用 SKU 作為定價與毛利管控單位|
|Artibird 宣稱審查登記表|管控每個產品與 SKU 的已核准對外語言|

---

## 1.10 Document Boundary

## 1.10 文件邊界

**EN**  
This document defines naming and identity control. It does not define detailed electrical design, PCB layout, firmware architecture, certification test procedures, packaging artwork, Amazon sales copy, pricing strategy, or product marketing language.

Those topics should be defined in their own dedicated documents and referenced through SKU, model, or product identity mappings.

**ZH-TW**  
本文件定義命名與身份管控。它不定義詳細電氣設計、PCB 佈局、韌體架構、認證測試流程、包裝視覺設計、Amazon 銷售文案、定價策略或產品行銷語言。

這些內容應在各自專門文件中定義，並透過 SKU、型號或產品身份映射與本文件連接。

---

## English Table

|Included in This Document|Not Included in This Document|
|---|---|
|Product name rules|Circuit design|
|SKU format|PCB layout|
|Model naming logic|Firmware architecture|
|Region codes|Certification test methods|
|Connectivity codes|Packaging artwork|
|Power codes|Amazon copywriting|
|Variant codes|Pricing strategy|
|Package codes|Marketing campaign language|
|Release status definitions|Detailed BOM|

## 中文表

|本文件包含|本文件不包含|
|---|---|
|產品名稱規則|電路設計|
|SKU 格式|PCB 佈局|
|型號命名邏輯|韌體架構|
|區域代碼|認證測試方法|
|連接代碼|包裝視覺設計|
|供電代碼|Amazon 文案|
|版本代碼|定價策略|
|包裝代碼|行銷活動語言|
|發布狀態定義|詳細 BOM|

---

## 1.11 Chapter Conclusion

## 1.11 章節結論

**EN**  
This chapter establishes the identity, scope, ownership, approval system, revision control, and document boundaries of the **Artibird SKU & Model Naming Specification v1.0**.

From this point forward, all Artibird product names, SKU codes, internal model numbers, engineering model references, certification model references, package names, and commercial product identifiers should be created and managed according to this document.

**ZH-TW**  
本章建立了《**Artibird SKU 與型號命名規範 v1.0**》的文件身份、範圍、責任歸屬、核准系統、版本管控與文件邊界。

從本文件開始，所有 Artibird 產品名稱、SKU 代碼、內部型號、工程型號引用、認證型號引用、包裝名稱與商業產品識別，都應依本文件建立與管理。