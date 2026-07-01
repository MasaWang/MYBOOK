# Chapter 2 — Naming Principles

# 第二章｜命名原則

---

## 2.1 Chapter Purpose

## 2.1 章節目的

**EN**  
This chapter defines the naming principles for the **Artibird SKU & Model Naming Specification v1.0**. These principles govern how Artibird product names, SKU codes, internal model numbers, engineering model references, certification model names, package names, and commercial product identifiers should be created, reviewed, approved, and maintained.

The purpose is to ensure that Artibird product identity remains clear, stable, traceable, scalable, commercially usable, and aligned with the OceanAI system architecture.

**ZH-TW**  
本章定義《**Artibird SKU 與型號命名規範 v1.0**》的命名原則。這些原則用於治理 Artibird 產品名稱、SKU 代碼、內部型號、工程型號引用、認證型號名稱、包裝名稱與商業產品識別的建立、審查、核准與維護。

其目的，是確保 Artibird 產品身份保持清晰、穩定、可追蹤、可擴展、可商業使用，並與 OceanAI 系統架構保持一致。

---

## 2.2 Core Naming Philosophy

## 2.2 核心命名理念

**EN**  
Artibird naming should not be treated as decorative branding only. It is a product identity system. Each name, code, and model reference must help different teams understand what the product is, where it belongs, how it is configured, which market it targets, and whether it is ready for engineering, certification, packaging, sales, or commercial release.

The naming system must support both customer clarity and internal operational control.

**ZH-TW**  
Artibird 命名不應只被視為品牌裝飾，而應被視為一套產品身份系統。每一個名稱、代碼與型號引用，都應幫助不同團隊理解產品是什麼、屬於哪個產品線、如何配置、面向哪個市場，以及是否已準備好進入工程、認證、包裝、銷售或商業發布階段。

命名系統必須同時支持客戶理解與內部運營管控。

---

## English Table

|Naming Function|Purpose|
|---|---|
|Customer clarity|Helps customers understand product role and usage|
|Internal control|Helps teams manage product identity and configuration|
|Engineering traceability|Connects product names to hardware, firmware, PCB, and validation records|
|Certification mapping|Links product names to certification model names and label requirements|
|Packaging consistency|Ensures packaging names, SKU codes, and labels remain aligned|
|Sales accuracy|Prevents sales teams from using incorrect product names or configurations|
|Channel consistency|Helps distributors and partners use the correct product references|
|Lifecycle control|Tracks products from concept to release, replacement, and retirement|

## 中文表

|命名功能|目的|
|---|---|
|客戶清晰度|幫助客戶理解產品角色與用途|
|內部管控|幫助團隊管理產品身份與配置|
|工程可追蹤|將產品名稱連接至硬體、韌體、PCB 與驗證記錄|
|認證映射|將產品名稱連接至認證型號與標籤要求|
|包裝一致性|確保包裝名稱、SKU 代碼與標籤保持一致|
|銷售準確性|防止銷售團隊使用錯誤產品名稱或配置|
|渠道一致性|幫助經銷商與合作夥伴使用正確產品引用|
|生命週期管控|追蹤產品從概念、發布、替換到退市的全流程|

---

## 2.3 Principle 1 — Clarity

## 2.3 原則一｜清晰性

**EN**  
Artibird names and codes must be easy to understand by their intended users. Customer-facing names should communicate product role clearly. Internal model numbers and SKU codes should communicate product configuration precisely.

A name should not require unnecessary explanation to distinguish whether the product is a Hub, Gate, Switch, Act, Sense, Vision, App, or package.

**ZH-TW**  
Artibird 名稱與代碼必須便於目標使用者理解。面向客戶名稱應清楚傳達產品角色；內部型號與 SKU 代碼應精確傳達產品配置。

一個名稱不應需要過多解釋，才能區分該產品是 Hub、Gate、Switch、Act、Sense、Vision、App 或套組。

---

## English Table

|Naming Area|Clarity Requirement|
|---|---|
|Customer-facing name|Should be readable and easy to explain|
|SKU code|Should expose product line, generation, region, connectivity, power, variant, and package|
|Internal model|Should clearly identify product line and variant|
|Engineering model|Should clearly identify hardware, firmware, and PCB version|
|Package name|Should indicate what type of kit or package it is|
|Certification model|Should match certification filing and label identity|

## 中文表

|命名領域|清晰性要求|
|---|---|
|面向客戶名稱|應易讀、易解釋|
|SKU 代碼|應呈現產品線、世代、區域、連接、供電、版本與包裝|
|內部型號|應清楚識別產品線與版本|
|工程型號|應清楚識別硬體、韌體與 PCB 版本|
|包裝名稱|應指出套組或包裝類型|
|認證型號|應與認證提交與標籤身份一致|

---

## 2.4 Principle 2 — Stability

## 2.4 原則二｜穩定性

**EN**  
Product line codes, model patterns, and SKU field structures should remain stable over time. Frequent naming changes create confusion across catalog content, packaging, certification files, Amazon listings, inventory records, and channel communication.

A name or code should only change when there is a valid product, engineering, certification, commercial, or lifecycle reason.

**ZH-TW**  
產品線代碼、型號模式與 SKU 欄位結構應長期保持穩定。頻繁命名變更會造成型錄內容、包裝、認證文件、Amazon 上架資料、庫存記錄與渠道溝通混亂。

只有在存在合理的產品、工程、認證、商業或生命週期原因時，才應更改名稱或代碼。

---

## English Table

|Change Type|Should It Change Naming?|
|---|---|
|Minor copy update|No|
|Packaging wording adjustment|Usually no|
|Major hardware generation update|Yes|
|Different power architecture|Yes|
|Different certification region|Yes|
|Different connectivity method|Yes|
|Different functional variant|Yes|
|New retail package or kit|Yes, package field may change|
|Firmware bug fix only|Usually no|
|Certification model change|Yes, controlled review required|

## 中文表

|變更類型|是否應改變命名|
|---|---|
|小幅文案更新|否|
|包裝文字調整|通常否|
|重大硬體世代更新|是|
|不同供電架構|是|
|不同認證區域|是|
|不同連接方式|是|
|不同功能版本|是|
|新零售包裝或套組|是，可能變更包裝欄位|
|僅韌體錯誤修復|通常否|
|認證型號變更|是，需要受控審查|

---

## 2.5 Principle 3 — Traceability

## 2.5 原則三｜可追蹤性

**EN**  
Every SKU and model name must be traceable to its product line, hardware version, firmware version, PCB version, certification model, package type, commercial release status, and claim boundary.

Traceability ensures that the same product can be correctly identified across engineering, certification, packaging, sales, inventory, and customer support.

**ZH-TW**  
每一個 SKU 與型號名稱都必須能追蹤至其產品線、硬體版本、韌體版本、PCB 版本、認證型號、包裝類型、商業發布狀態與宣稱邊界。

可追蹤性確保同一產品能在工程、認證、包裝、銷售、庫存與客戶支持中被正確識別。

---

## English Table

|Traceability Target|Required Mapping|
|---|---|
|Product line|SKU product code|
|Hardware version|Hardware configuration master file|
|Firmware version|Engineering model or firmware record|
|PCB version|Engineering model or production record|
|Certification model|Certification and compliance tracker|
|Package type|Packaging and labeling specification|
|Commercial release|SKU master record|
|Pricing|Commercial configuration sheet|
|Approved claims|Claim review register|
|Inventory|ERP / stock / logistics record|

## 中文表

|可追蹤目標|必要映射|
|---|---|
|產品線|SKU 產品代碼|
|硬體版本|硬體配置主檔|
|韌體版本|工程型號或韌體記錄|
|PCB 版本|工程型號或生產記錄|
|認證型號|認證與合規追蹤表|
|包裝類型|包裝與標籤規範|
|商業發布|SKU 主記錄|
|定價|商業配置表|
|已核准宣稱|宣稱審查登記表|
|庫存|ERP / 庫存 / 物流記錄|

---

## 2.6 Principle 4 — Non-Overlap

## 2.6 原則四｜不重疊性

**EN**  
Two SKU codes should not describe the same product configuration unless the difference is intentional and controlled, such as package type, sales channel, region, or certification market.

Non-overlap prevents duplicate records, wrong inventory handling, pricing confusion, and inconsistent sales or certification references.

**ZH-TW**  
兩個 SKU 代碼不應描述同一產品配置，除非差異是有意且受控的，例如包裝類型、銷售渠道、區域或認證市場。

不重疊性可以避免重複記錄、錯誤庫存處理、價格混亂，以及銷售或認證引用不一致。

---

## English Table

|Situation|Naming Rule|
|---|---|
|Same product, same package, same region|Use one SKU only|
|Same product, different package|Package code must change|
|Same product, different region|Region code must change|
|Same product, different certification model|Certification mapping must separate records|
|Same product, different sales channel only|Use channel field or package field where controlled|
|Same hardware, different firmware feature set|Variant or firmware mapping must be reviewed|
|Same product but new generation|Generation code must change|

## 中文表

|情況|命名規則|
|---|---|
|同一產品、同一包裝、同一區域|只能使用一個 SKU|
|同一產品、不同包裝|包裝代碼必須變更|
|同一產品、不同區域|區域代碼必須變更|
|同一產品、不同認證型號|認證映射必須分開記錄|
|同一產品、僅銷售渠道不同|在受控條件下使用渠道或包裝欄位|
|同一硬體、不同韌體功能集|必須審查版本或韌體映射|
|同一產品但新世代|世代代碼必須變更|

---

## 2.7 Principle 5 — Region Awareness

## 2.7 原則五｜區域感知

**EN**  
Artibird products may differ by region because of electrical ratings, plug types, wireless requirements, privacy expectations, certification requirements, labeling rules, language requirements, and packaging regulations.

The naming system must make market or regional differences visible when those differences affect product configuration, certification, packaging, or commercial release.

**ZH-TW**  
Artibird 產品可能因區域不同而產生差異，包括電氣額定、插頭形式、無線要求、隱私要求、認證要求、標籤規則、語言要求與包裝法規。

當區域差異會影響產品配置、認證、包裝或商業發布時，命名系統必須讓市場或區域差異可見。

---

## English Table

|Region-Related Difference|Naming Impact|
|---|---|
|Electrical rating differs|Region code required|
|Plug or socket type differs|Region code and variant may be required|
|RF certification differs|Region code required|
|Privacy / data requirement differs|Region or service configuration may be required|
|Packaging language differs|Package or region record must reflect difference|
|Labeling rule differs|Certification and region mapping required|
|Product availability differs|Commercial release status must be region-specific|

## 中文表

|區域相關差異|命名影響|
|---|---|
|電氣額定不同|需要區域代碼|
|插頭或插座形式不同|可能需要區域代碼與版本代碼|
|RF 認證不同|需要區域代碼|
|隱私 / 數據要求不同|可能需要區域或服務配置|
|包裝語言不同|包裝或區域記錄必須反映差異|
|標籤規則不同|需要認證與區域映射|
|產品可用性不同|商業發布狀態必須按區域區分|

---

## 2.8 Principle 6 — Certification Awareness

## 2.8 原則六｜認證感知

**EN**  
SKU codes and model names must not imply certification unless certification has been completed and approved for the exact model, hardware version, configuration, and market.

Certification planning, component certification, or test preparation must not be treated as final product certification.

**ZH-TW**  
除非特定型號、硬體版本、配置與市場已完成並核准認證，否則 SKU 代碼與型號名稱不得暗示已完成認證。

認證規劃、元件認證或測試準備不得被視為最終產品認證。

---

## English Table

|Certification Situation|Naming Rule|
|---|---|
|Certification not started|Do not use certification wording|
|Testing in progress|Mark status as testing only|
|Test report available|Do not claim listed or certified unless listing is complete|
|Component certified|Do not imply finished product certification|
|Product listed / certified|Certification model and label must match exact record|
|Same product in different market|Certification must be tracked per region|
|Certification model changed|SKU and label mapping must be reviewed|

## 中文表

|認證情況|命名規則|
|---|---|
|認證未開始|不使用認證措辭|
|測試進行中|僅標記為 testing 狀態|
|已有測試報告|除非列名完成，不得宣稱已列名或已認證|
|元件已認證|不得暗示成品已認證|
|產品已列名 / 認證|認證型號與標籤必須匹配精確記錄|
|同一產品進入不同市場|認證必須按區域追蹤|
|認證型號變更|必須審查 SKU 與標籤映射|

---

## 2.9 Principle 7 — Commercial Usability

## 2.9 原則七｜商業可用性

**EN**  
The naming system must be usable across catalog, website, packaging, sales sheets, channel materials, Amazon listings, price sheets, logistics, and customer support.

Names should be professional, readable, and not overly long in customer-facing contexts. SKU codes may be precise and structured, but customer-facing names should remain understandable.

**ZH-TW**  
命名系統必須可用於型錄、網站、包裝、銷售單頁、渠道材料、Amazon 上架、價格表、物流與客戶支持。

面向客戶名稱應專業、易讀，且不應過長。SKU 代碼可以精確且結構化，但面向客戶名稱必須保持可理解。

---

## English Table

|Use Case|Naming Requirement|
|---|---|
|Product catalog|Use customer-facing names and approved model references|
|Website|Use readable product names and concise variants|
|Packaging|Use approved product name, model, SKU, rating, and label identity|
|Amazon|Use approved product name and marketplace-safe description|
|Sales sheet|Use product family name, model name, and scenario grouping|
|Price sheet|Use SKU as pricing unit|
|Logistics|Use SKU and package code|
|Customer support|Use customer-facing name plus SKU / model when needed|

## 中文表

|使用場景|命名要求|
|---|---|
|產品型錄|使用面向客戶名稱與已核准型號引用|
|網站|使用可讀產品名稱與簡潔版本名|
|包裝|使用已核准產品名稱、型號、SKU、額定與標籤身份|
|Amazon|使用已核准產品名稱與符合平台規則的描述|
|銷售單頁|使用產品家族名稱、型號名稱與場景分組|
|價格表|使用 SKU 作為定價單位|
|物流|使用 SKU 與包裝代碼|
|客戶支持|使用面向客戶名稱，必要時附 SKU / 型號|

---

## 2.10 Principle 8 — Scalability

## 2.10 原則八｜可擴展性

**EN**  
The naming system must support future product generations, new variants, new regions, new package types, new channel structures, and new product families without requiring a complete redesign.

Scalability is especially important because Artibird may expand from smart home products into classrooms, campuses, buildings, energy systems, agriculture, infrastructure, and enterprise deployments.

**ZH-TW**  
命名系統必須能支持未來產品世代、新版本、新區域、新包裝類型、新渠道結構與新產品家族，而不需要整體重構。

可擴展性尤其重要，因為 Artibird 可能從智慧住宅產品擴展至教室、校園、建築、能源系統、農業、基礎設施與企業部署。

---

## English Table

|Future Expansion|Naming Support|
|---|---|
|New hardware generation|Use generation code|
|New market region|Add controlled region code|
|New connectivity method|Add approved connectivity code|
|New power architecture|Add approved power code|
|New product variant|Add approved variant code|
|New kit or bundle|Add package code or package model name|
|New vertical scenario|Use package or commercial configuration, not uncontrolled naming|
|New product family|Add product line code only after review|

## 中文表

|未來擴展|命名支持|
|---|---|
|新硬體世代|使用世代代碼|
|新市場區域|新增受控區域代碼|
|新連接方式|新增已核准連接代碼|
|新供電架構|新增已核准供電代碼|
|新產品版本|新增已核准版本代碼|
|新套組或組合|使用包裝代碼或包裝型號名稱|
|新垂直場景|使用包裝或商業配置，不使用失控命名|
|新產品家族|僅在審查後新增產品線代碼|

---

## 2.11 Principle 9 — System Alignment

## 2.11 原則九｜系統一致性

**EN**  
Artibird product names should remain aligned with the OceanAI system architecture. A product name should not imply a role that conflicts with the defined system role of the product.

For example, Hub should remain the local runtime center; Gate should remain the device access gateway; Sync should remain the IR / RF synchronization node; Act should remain the electrical execution node; Sense should remain the environmental sensing node; Vision should remain the visual perception node.

**ZH-TW**  
Artibird 產品名稱應與 OceanAI 系統架構保持一致。產品名稱不應暗示與該產品已定義系統角色相衝突的功能。

例如，Hub 應保持本地 Runtime 中樞角色；Gate 應保持設備接入網關角色；Sync 應保持 IR / RF 同步節點角色；Act 應保持電力執行節點角色；Sense 應保持環境感知節點角色；Vision 應保持視覺感知節點角色。

---

## English Table

|Product|Naming Must Not Imply|
|---|---|
|Hub|Universal cloud replacement or unlimited offline system|
|Gate|Universal support for every protocol or every third-party device|
|Sync|Compatibility with all IR / RF appliances|
|Switch|All variants include relay control|
|Panel|Replacement for all App or system management functions|
|Act|Certified safe load control unless certification is complete|
|Sense|Perfect environmental accuracy|
|Vision|Unlimited AI surveillance or guaranteed detection|
|App|Replacement for all physical controls or all runtime functions|
|Edge|Fully autonomous physical control without runtime governance|

## 中文表

|產品|命名不得暗示|
|---|---|
|Hub|通用雲端替代或無限制離線系統|
|Gate|支援所有協議或所有第三方設備|
|Sync|相容所有 IR / RF 家電|
|Switch|所有版本都包含繼電器控制|
|Panel|取代所有 App 或系統管理功能|
|Act|未完成認證前宣稱安全負載控制|
|Sense|完美環境量測準確性|
|Vision|無限制 AI 監控或保證偵測|
|App|取代所有實體控制或所有 Runtime 功能|
|Edge|不經 Runtime 治理的完全自主物理控制|

---

## 2.12 Principle 10 — Claim Boundary Awareness

## 2.12 原則十｜宣稱邊界意識

**EN**  
Naming should support claim control. A SKU, model name, or product name should not create an unsupported commercial claim by itself.

For example, a variant name such as “Pro,” “Energy,” “Outdoor,” “Vision,” or “Edge” must be backed by product capability, validation records, and approved claim language.

**ZH-TW**  
命名應支持宣稱管控。SKU、型號名稱或產品名稱本身不應造成不受支持的商業宣稱。

例如，「Pro」、「Energy」、「Outdoor」、「Vision」或「Edge」等版本名稱，必須由產品能力、驗證記錄與已核准宣稱語言支持。

---

## English Table

|Name / Code Element|Required Support|
|---|---|
|Pro|Clear professional feature difference|
|Energy / E|Energy measurement or energy-aware function must be defined|
|Outdoor / OUT|Environmental rating and enclosure validation required|
|Vision / CAM|Camera or visual perception capability must be defined|
|Edge|Edge AI-assisted function or Edge hardware/service must be defined|
|Certified|Only allowed when certification is complete|
|Secure|Security features must be implemented and validated|
|AI|AI-assisted capability must be defined and bounded|
|Universal|Avoid unless universally validated, which is rarely appropriate|

## 中文表

|名稱 / 代碼元素|必要支持|
|---|---|
|Pro|必須有明確專業版功能差異|
|Energy / E|必須定義能源量測或能源感知功能|
|Outdoor / OUT|需要環境等級與外殼驗證|
|Vision / CAM|必須定義攝影機或視覺感知能力|
|Edge|必須定義 Edge AI 輔助功能或 Edge 硬體 / 服務|
|Certified|僅在認證完成後使用|
|Secure|必須已實作並驗證安全功能|
|AI|必須定義並限定 AI 輔助能力|
|Universal|避免使用，除非已完成通用驗證，通常不建議|

---

## 2.13 Naming Review Checklist

## 2.13 命名審查清單

**EN**  
Before a new name, model, SKU, or package code is approved, the following checklist should be reviewed.

**ZH-TW**  
在核准新的名稱、型號、SKU 或包裝代碼前，應使用以下清單進行審查。

---

## English Table

|Review Question|Pass Criteria|
|---|---|
|Is the name clear?|Intended users can understand the product role|
|Is the code stable?|It does not require frequent future change|
|Is it traceable?|It maps to hardware, firmware, region, package, and release status|
|Is it non-overlapping?|It does not duplicate another SKU or model|
|Is it region-aware?|Regional differences are reflected where needed|
|Is it certification-aware?|It does not imply certification without evidence|
|Is it commercially usable?|It can be used in catalog, website, packaging, sales, and inventory|
|Is it scalable?|It can support future variants and generations|
|Is it system-aligned?|It does not conflict with OceanAI / Artibird architecture|
|Is it claim-safe?|It does not create unsupported feature, AI, safety, energy, or outdoor claims|

## 中文表

|審查問題|通過標準|
|---|---|
|名稱是否清楚？|目標使用者能理解產品角色|
|代碼是否穩定？|不需要頻繁未來變更|
|是否可追蹤？|可映射至硬體、韌體、區域、包裝與發布狀態|
|是否不重疊？|不重複另一個 SKU 或型號|
|是否具區域感知？|必要時反映區域差異|
|是否具認證感知？|未有證據時不暗示認證|
|是否可商業使用？|可用於型錄、網站、包裝、銷售與庫存|
|是否可擴展？|可支援未來版本與世代|
|是否與系統一致？|不與 OceanAI / Artibird 架構衝突|
|是否宣稱安全？|不產生未支持功能、AI、安全、能源或戶外宣稱|

---

## 2.14 Chapter Conclusion

## 2.14 章節結論

**EN**  
The Artibird naming system must serve both brand clarity and operational control. A good name should help customers understand the product, while a good SKU should help internal teams control configuration, version, region, certification, package, price, and release status.

These principles establish the foundation for the rest of this specification. All following chapters — including product line codes, generation codes, region codes, connectivity codes, power codes, variant codes, package codes, SKU format, and model naming — should follow the principles defined in this chapter.

**ZH-TW**  
Artibird 命名系統必須同時服務品牌清晰度與運營管控。一個好的名稱應幫助客戶理解產品；一個好的 SKU 應幫助內部團隊管控配置、版本、區域、認證、包裝、價格與發布狀態。

本章原則構成本規範後續內容的基礎。後續所有章節，包括產品線代碼、世代代碼、區域代碼、連接代碼、供電代碼、版本代碼、包裝代碼、SKU 格式與型號命名，都應遵循本章所定義的原則。