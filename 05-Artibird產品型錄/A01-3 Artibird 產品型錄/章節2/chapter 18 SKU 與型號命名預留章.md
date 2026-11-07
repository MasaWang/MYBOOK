# Chapter 18 — SKU and Model Naming Placeholder

# 第十八章｜SKU 與型號命名預留章

---

## 18.1 Purpose

## 18.1 目的

**EN**  
This chapter provides a placeholder framework for future Artibird SKU, model number, package, region, certification, and variant naming. Its purpose is to prepare the product catalog for commercial use, channel sales, manufacturing coordination, inventory management, certification tracking, and e-commerce listing.

At the catalog stage, SKU and model naming should remain structured but flexible. Exact SKU codes, certification marks, electrical ratings, and packaging configurations should only be finalized after product validation, certification planning, regional market decisions, and commercial approval.

**ZH-TW**  
本章提供未來 Artibird SKU、型號、包裝、區域、認證與版本命名的預留框架。其目的，是讓產品型錄能支援商業使用、渠道銷售、生產協同、庫存管理、認證追蹤與電商上架。

在型錄階段，SKU 與型號命名應保持結構化但具彈性。具體 SKU 代碼、認證標誌、電氣額定與包裝配置，應在產品驗證、認證規劃、區域市場決策與商業核准後再正式定稿。

---

## 18.2 SKU Naming Role

## 18.2 SKU 命名角色

**EN**  
SKU naming is not only a sales label. It is a control system for product identity, market region, hardware generation, connectivity type, power type, certification status, package type, and commercial configuration.

A clear SKU system helps prevent confusion between similar product variants. This is especially important for Artibird because many products may have different hardware versions, communication paths, power designs, installation methods, and regional certification requirements.

**ZH-TW**  
SKU 命名不只是銷售標籤。它是一套用於管理產品身份、市場區域、硬體世代、連接方式、供電方式、認證狀態、包裝類型與商業配置的控制系統。

清晰的 SKU 系統可以避免相似產品版本之間混淆。這對 Artibird 尤其重要，因為許多產品可能具備不同硬體版本、通訊路徑、供電設計、安裝方式與區域認證要求。

---

## English Table

|SKU Role|Description|
|---|---|
|Product identity|Identifies the product line and product family|
|Model control|Separates product generation, model, and variant|
|Regional control|Distinguishes US, EU, CN, Global, or other market versions|
|Connectivity control|Identifies Wi-Fi, Ethernet, BLE Mesh, RF, IR, or hybrid communication variants|
|Power control|Identifies battery, AC, DC, USB-C, PoE, or other power forms|
|Certification tracking|Helps track model-specific certification status|
|Packaging control|Separates single units, kits, pro kits, channel packs, or project packs|
|Inventory management|Supports warehouse, channel, and e-commerce listing consistency|
|Claim control|Prevents unsupported claims being applied to the wrong model|

## 中文表

|SKU 角色|說明|
|---|---|
|產品身份|識別產品線與產品家族|
|型號管控|區分產品世代、型號與版本|
|區域管控|區分 US、EU、CN、Global 或其他市場版本|
|連接管控|識別 Wi-Fi、Ethernet、BLE Mesh、RF、IR 或混合通訊版本|
|供電管控|識別電池、AC、DC、USB-C、PoE 或其他供電形態|
|認證追蹤|幫助追蹤特定型號認證狀態|
|包裝管控|區分單品、套組、Pro 套組、渠道包或專案包|
|庫存管理|支持倉儲、渠道與電商上架一致性|
|宣稱管控|避免將不受支援宣稱套用至錯誤型號|

---

## 18.3 Recommended SKU Structure

## 18.3 建議 SKU 結構

**EN**  
The recommended Artibird SKU structure should be modular. Each field should represent one controlled product attribute. This makes the SKU readable, expandable, and suitable for future product families.

Recommended structure:

**Brand – Product Line – Generation – Region – Connectivity – Power – Variant – Package**

**ZH-TW**  
建議 Artibird SKU 結構採用模組化方式。每個欄位應代表一項受控產品屬性。這能使 SKU 易讀、可擴展，並適合未來產品家族。

建議結構：

**品牌 – 產品線 – 世代 – 區域 – 連接 – 供電 – 版本 – 包裝**

---

## English Table

|Field|Code Example|Meaning|
|---|---|---|
|Brand|ATB|Artibird|
|Product Line|HUB / GATE / SYNC / SW / PNL / ACT / SNS / VIS / APP|Product family|
|Generation|G1 / G2 / G3|Hardware or product generation|
|Region|US / EU / CN / GL|Market or regional version|
|Connectivity|WF / ETH / BLE / RF / IR / HYB|Communication type|
|Power|BAT / AC / DC / USB / POE|Power type|
|Variant|STD / PRO / E / OUT / MINI|Product configuration|
|Package|S / KIT / PROKIT / CH / PRJ|Sales or packaging type|

## 中文表

|欄位|代碼示例|含義|
|---|---|---|
|品牌|ATB|Artibird|
|產品線|HUB / GATE / SYNC / SW / PNL / ACT / SNS / VIS / APP|產品家族|
|世代|G1 / G2 / G3|硬體或產品世代|
|區域|US / EU / CN / GL|市場或區域版本|
|連接|WF / ETH / BLE / RF / IR / HYB|通訊類型|
|供電|BAT / AC / DC / USB / POE|供電方式|
|版本|STD / PRO / E / OUT / MINI|產品配置|
|包裝|S / KIT / PROKIT / CH / PRJ|銷售或包裝類型|

---

## 18.4 Example SKU Format

## 18.4 SKU 格式示例

**EN**  
The following examples are placeholders only. They should not be used as final commercial SKU codes until product validation, certification status, market region, and commercial packaging are confirmed.

**ZH-TW**  
以下示例僅為預留示例。在產品驗證、認證狀態、市場區域與商業包裝確認前，不應作為正式商業 SKU 代碼使用。

---

## English Table

|Example SKU|Possible Meaning|
|---|---|
|ATB-HUB-G1-US-ETH-DC-STD-S|Artibird Hub, Generation 1, US version, Ethernet, DC powered, standard, single unit|
|ATB-GATE-G1-US-HYB-USB-PRO-S|Artibird Gate, Generation 1, US version, hybrid connectivity, USB powered, Pro, single unit|
|ATB-SYNC-G1-GL-IRRF-USB-STD-S|Artibird Sync, Generation 1, Global version, IR / RF, USB powered, standard, single unit|
|ATB-SW-G1-US-BLE-BAT-SCN-S|Artibird Switch, Generation 1, US version, BLE, battery powered, scene switch, single unit|
|ATB-SW-G1-US-WF-AC-RLY-S|Artibird Switch, Generation 1, US version, Wi-Fi, AC powered, relay version, single unit|
|ATB-PNL-G1-US-WF-DC-STD-S|Artibird Panel, Generation 1, US version, Wi-Fi, DC powered, standard, single unit|
|ATB-ACT-G1-US-WF-AC-E-S|Artibird Act, Generation 1, US version, Wi-Fi, AC powered, energy variant, single unit|
|ATB-SNS-G1-GL-BLE-BAT-STD-S|Artibird Sense, Generation 1, Global version, BLE, battery powered, standard, single unit|
|ATB-VIS-G1-US-WF-DC-STD-S|Artibird Vision, Generation 1, US version, Wi-Fi, DC powered, standard, single unit|

## 中文表

|SKU 示例|可能含義|
|---|---|
|ATB-HUB-G1-US-ETH-DC-STD-S|Artibird Hub，第一代，美國版本，Ethernet，DC 供電，標準版，單品|
|ATB-GATE-G1-US-HYB-USB-PRO-S|Artibird Gate，第一代，美國版本，混合連接，USB 供電，Pro 版，單品|
|ATB-SYNC-G1-GL-IRRF-USB-STD-S|Artibird Sync，第一代，全球版本，IR / RF，USB 供電，標準版，單品|
|ATB-SW-G1-US-BLE-BAT-SCN-S|Artibird Switch，第一代，美國版本，BLE，電池供電，場景開關，單品|
|ATB-SW-G1-US-WF-AC-RLY-S|Artibird Switch，第一代，美國版本，Wi-Fi，AC 供電，繼電器版本，單品|
|ATB-PNL-G1-US-WF-DC-STD-S|Artibird Panel，第一代，美國版本，Wi-Fi，DC 供電，標準版，單品|
|ATB-ACT-G1-US-WF-AC-E-S|Artibird Act，第一代，美國版本，Wi-Fi，AC 供電，能源版本，單品|
|ATB-SNS-G1-GL-BLE-BAT-STD-S|Artibird Sense，第一代，全球版本，BLE，電池供電，標準版，單品|
|ATB-VIS-G1-US-WF-DC-STD-S|Artibird Vision，第一代，美國版本，Wi-Fi，DC 供電，標準版，單品|

---

## 18.5 Product Line Codes

## 18.5 產品線代碼

**EN**  
Product line codes should remain short, readable, and stable. They should represent the product family rather than temporary internal project names.

**ZH-TW**  
產品線代碼應保持簡短、易讀且穩定。它們應代表產品家族，而不是臨時內部專案名稱。

---

## English Table

|Product Line|Recommended Code|Description|
|---|---|---|
|Artibird Hub|HUB|Local runtime center|
|Artibird Gate|GATE|Device access gateway|
|Artibird Sync|SYNC|IR / RF synchronization node|
|Artibird Switch|SW|Smart switch and event node|
|Artibird Panel|PNL|Room-level interaction interface|
|Artibird Act|ACT|Electrical execution node|
|Artibird Sense|SNS|Environmental sensing node|
|Artibird Vision|VIS|Visual perception node|
|Artibird App|APP|User control and configuration interface|

## 中文表

|產品線|建議代碼|說明|
|---|---|---|
|Artibird Hub|HUB|本地 Runtime 中樞|
|Artibird Gate|GATE|設備接入網關|
|Artibird Sync|SYNC|IR / RF 同步節點|
|Artibird Switch|SW|智慧開關與事件節點|
|Artibird Panel|PNL|房間級互動介面|
|Artibird Act|ACT|電力執行節點|
|Artibird Sense|SNS|環境感知節點|
|Artibird Vision|VIS|視覺感知節點|
|Artibird App|APP|用戶控制與配置介面|

---

## 18.6 Region Codes

## 18.6 區域代碼

**EN**  
Region codes should identify the intended market or regional configuration. Region codes are important because electrical standards, plug types, radio requirements, privacy requirements, labeling requirements, and certification expectations may differ by market.

**ZH-TW**  
區域代碼應識別目標市場或區域配置。區域代碼很重要，因為不同市場的電氣標準、插頭形式、無線要求、隱私要求、標籤要求與認證預期可能不同。

---

## English Table

|Region Code|Meaning|
|---|---|
|US|United States market|
|EU|European Union market|
|UK|United Kingdom market|
|CN|Mainland China market|
|TW|Taiwan market|
|JP|Japan market|
|CA|Canada market|
|AU|Australia market|
|GL|Global or general reference version|
|INT|International project version|

## 中文表

|區域代碼|含義|
|---|---|
|US|美國市場|
|EU|歐盟市場|
|UK|英國市場|
|CN|中國大陸市場|
|TW|台灣市場|
|JP|日本市場|
|CA|加拿大市場|
|AU|澳洲市場|
|GL|全球或通用參考版本|
|INT|國際專案版本|

---

## 18.7 Connectivity Codes

## 18.7 連接代碼

**EN**  
Connectivity codes identify the primary communication path of a product. Hybrid products may include more than one communication method.

Connectivity codes should be used carefully. A code should only appear in a final SKU when the corresponding communication function is implemented, validated, and commercially approved for that model.

**ZH-TW**  
連接代碼識別產品的主要通訊路徑。混合型產品可包含多種通訊方式。

連接代碼應謹慎使用。只有當對應通訊功能已在該型號中實作、驗證並商業核准後，該代碼才應出現在正式 SKU 中。

---

## English Table

|Connectivity Code|Meaning|
|---|---|
|WF|Wi-Fi|
|ETH|Ethernet|
|BLE|BLE / BLE Mesh|
|RF|RF|
|IR|Infrared|
|IRRF|IR + RF|
|HYB|Hybrid communication|
|LTE|Cellular / LTE where supported|
|LORA|LoRa / long-range communication where supported|
|LAN|Local network connection|
|CLD|Cloud-connected service path|

## 中文表

|連接代碼|含義|
|---|---|
|WF|Wi-Fi|
|ETH|Ethernet|
|BLE|BLE / BLE Mesh|
|RF|RF|
|IR|紅外線|
|IRRF|IR + RF|
|HYB|混合通訊|
|LTE|在支援條件下的蜂窩 / LTE|
|LORA|在支援條件下的 LoRa / 長距離通訊|
|LAN|本地網路連接|
|CLD|雲端連接服務路徑|

---

## 18.8 Power Codes

## 18.8 供電代碼

**EN**  
Power codes identify how a product is powered. This field is especially important for switches, sensors, gateways, panels, execution nodes, and outdoor products.

**ZH-TW**  
供電代碼識別產品的供電方式。此欄位對開關、感測器、網關、面板、執行節點與戶外產品尤其重要。

---

## English Table

|Power Code|Meaning|
|---|---|
|BAT|Battery powered|
|AC|AC mains powered|
|DC|DC powered|
|USB|USB / USB-C powered|
|POE|Power over Ethernet|
|SOL|Solar-assisted power|
|LV|Low-voltage powered|
|SL|Single-live configuration|
|ZN|Zero-neutral configuration|
|ADP|External power adapter|

## 中文表

|供電代碼|含義|
|---|---|
|BAT|電池供電|
|AC|市電供電|
|DC|DC 供電|
|USB|USB / USB-C 供電|
|POE|乙太網供電|
|SOL|太陽能輔助供電|
|LV|低壓供電|
|SL|單火配置|
|ZN|零火配置|
|ADP|外置電源適配器|

---

## 18.9 Variant Codes

## 18.9 版本代碼

**EN**  
Variant codes identify product configuration. They should be used to distinguish standard, professional, energy-aware, outdoor, mini, relay, scene, or other functional variants.

**ZH-TW**  
版本代碼識別產品配置。它們應用於區分標準版、專業版、能源版、戶外版、迷你版、繼電器版、場景版或其他功能版本。

---

## English Table

|Variant Code|Meaning|
|---|---|
|STD|Standard version|
|PRO|Professional version|
|MINI|Mini version|
|E|Energy-aware version|
|OUT|Outdoor version|
|RLY|Relay version|
|SCN|Scene switch version|
|DIM|Dimmer version where supported|
|CAM|Camera / vision version|
|KIT|Kit-based configuration|
|DEV|Development or evaluation version|
|BETA|Beta or limited test version|

## 中文表

|版本代碼|含義|
|---|---|
|STD|標準版|
|PRO|專業版|
|MINI|迷你版|
|E|能源感知版本|
|OUT|戶外版|
|RLY|繼電器版本|
|SCN|場景開關版本|
|DIM|在支援條件下的調光版本|
|CAM|攝影機 / 視覺版本|
|KIT|套組配置|
|DEV|開發或評估版本|
|BETA|Beta 或有限測試版本|

---

## 18.10 Package Codes

## 18.10 包裝代碼

**EN**  
Package codes identify the sales or shipping package. They are useful for retail, Amazon, channel sales, distributor bundles, project kits, and system integrator packages.

**ZH-TW**  
包裝代碼識別銷售或出貨包裝。它們可用於零售、Amazon、渠道銷售、經銷商套裝、專案套組與系統整合商包裝。

---

## English Table

|Package Code|Meaning|
|---|---|
|S|Single unit|
|2P|Two-pack|
|4P|Four-pack|
|KIT|Standard kit|
|PROKIT|Professional kit|
|CH|Channel pack|
|EDU|Education package|
|PRJ|Project package|
|BULK|Bulk shipment package|
|FBA|Amazon FBA package|
|DEMO|Demonstration kit|
|SAMPLE|Sample package|

## 中文表

|包裝代碼|含義|
|---|---|
|S|單品|
|2P|兩入裝|
|4P|四入裝|
|KIT|標準套組|
|PROKIT|專業套組|
|CH|渠道包|
|EDU|教育套組|
|PRJ|專案包|
|BULK|批量出貨包|
|FBA|Amazon FBA 包裝|
|DEMO|展示套組|
|SAMPLE|樣品包|

---

## 18.11 Certification and Compliance Fields

## 18.11 認證與合規欄位

**EN**  
Certification status should not be embedded casually into SKU names unless it is verified and legally appropriate for the specific product model and market. In many cases, certification status should be managed as a separate controlled field rather than a decorative SKU element.

The catalog may reserve certification fields, but final certification claims should only be used after certification completion and approval.

**ZH-TW**  
除非已針對特定產品型號與市場完成確認，且在法律與標示上適當，否則不應隨意將認證狀態嵌入 SKU 名稱中。許多情況下，認證狀態應作為獨立受控欄位管理，而不是作為裝飾性 SKU 元素。

型錄可預留認證欄位，但正式認證宣稱只能在完成認證與核准後使用。

---

## English Table

|Certification Field|Description|
|---|---|
|FCC status|For radio / electronic products in the U.S. where applicable|
|UL / ETL status|For electrical safety listing where applicable|
|CE status|For applicable European market requirements|
|RoHS status|Material restriction compliance where applicable|
|Energy certification|Only where specific program or regulation applies|
|Model-specific listing|Certification should be tied to exact model and configuration|
|Market-specific label|Label requirements may differ by region|
|Certification evidence|Test report, listing file, certificate, or approval record|
|Claim approval|Internal approval before catalog or packaging use|

## 中文表

|認證欄位|說明|
|---|---|
|FCC 狀態|適用於美國市場的無線 / 電子產品|
|UL / ETL 狀態|適用時的電氣安全列名|
|CE 狀態|適用於歐洲市場要求|
|RoHS 狀態|適用時的材料限制合規|
|能源認證|僅在特定計劃或法規適用時使用|
|特定型號列名|認證應綁定精確型號與配置|
|市場特定標籤|標籤要求可能依區域不同|
|認證證據|測試報告、列名文件、證書或核准記錄|
|宣稱核准|在型錄或包裝使用前完成內部核准|

---

## 18.12 SKU Governance Rules

## 18.12 SKU 治理規則

**EN**  
A SKU system must be governed. Without governance, product names, Amazon listings, packaging, certification files, channel materials, and inventory records may become inconsistent.

SKU creation should follow approval rules and should be tied to product readiness, certification status, and commercial release status.

**ZH-TW**  
SKU 系統必須被治理。如果缺乏治理，產品名稱、Amazon 上架資料、包裝、認證文件、渠道材料與庫存記錄可能出現不一致。

SKU 建立應遵循核准規則，並與產品就緒度、認證狀態與商業發布狀態綁定。

---

## English Table

|Governance Rule|Requirement|
|---|---|
|One SKU, one configuration|Each SKU should represent one defined product configuration|
|No duplicate meaning|Two SKUs should not describe the same configuration unless intentionally separated by package or channel|
|No unsupported code|A code should not appear unless the function is implemented or approved for that model|
|Certification-bound language|Certification-related codes or claims must be evidence-supported|
|Region-bound language|Region codes must reflect actual market configuration|
|Version tracking|Hardware, firmware, and packaging revisions should be traceable|
|Channel consistency|Website, catalog, Amazon, distributor, and packaging references should match|
|Change approval|SKU changes should require review before commercial use|
|Retirement control|Discontinued SKUs should be marked inactive or deprecated|
|Claim boundary alignment|SKU descriptions must match approved claim boundaries|

## 中文表

|治理規則|要求|
|---|---|
|一個 SKU 對應一種配置|每個 SKU 應代表一種已定義產品配置|
|不重複含義|兩個 SKU 不應描述同一配置，除非因包裝或渠道刻意區分|
|不使用未支援代碼|功能未實作或未核准時，不應出現對應代碼|
|認證語言綁定證據|認證相關代碼或宣稱必須由證據支持|
|區域語言綁定市場|區域代碼必須反映實際市場配置|
|版本可追蹤|硬體、韌體與包裝修訂應可追蹤|
|渠道一致性|網站、型錄、Amazon、經銷商與包裝引用應保持一致|
|變更需核准|SKU 變更在商業使用前應經審查|
|退市管控|停產 SKU 應標記為 inactive 或 deprecated|
|宣稱邊界對齊|SKU 描述必須與已核准宣稱邊界一致|

---

## 18.13 SKU Record Template

## 18.13 SKU 記錄模板

**EN**  
The following template may be used for future SKU records. It can be adapted into a spreadsheet, product database, inventory system, certification tracker, or internal product master file.

**ZH-TW**  
以下模板可用於未來 SKU 記錄。它可轉化為試算表、產品資料庫、庫存系統、認證追蹤表或內部產品主檔。

---

## English Table

|Field|Entry|
|---|---|
|SKU Code|TBD|
|Product Name|TBD|
|Product Line|TBD|
|Product Category|TBD|
|Model Number|TBD|
|Generation|TBD|
|Region|TBD|
|Connectivity|TBD|
|Power Type|TBD|
|Variant|TBD|
|Package Type|TBD|
|Hardware Version|TBD|
|Firmware Version|TBD|
|Electrical Rating|TBD|
|Supported Functions|TBD|
|Certification Status|TBD|
|Validation Status|TBD|
|Commercial Release Status|TBD|
|Channel Availability|TBD|
|Claim Boundary Notes|TBD|
|Packaging Notes|TBD|
|Revision Date|TBD|
|Approval Owner|TBD|

## 中文表

|欄位|填寫|
|---|---|
|SKU 代碼|TBD|
|產品名稱|TBD|
|產品線|TBD|
|產品類別|TBD|
|型號|TBD|
|世代|TBD|
|區域|TBD|
|連接方式|TBD|
|供電方式|TBD|
|版本|TBD|
|包裝類型|TBD|
|硬體版本|TBD|
|韌體版本|TBD|
|電氣額定|TBD|
|受支援功能|TBD|
|認證狀態|TBD|
|驗證狀態|TBD|
|商業發布狀態|TBD|
|渠道可用性|TBD|
|宣稱邊界備註|TBD|
|包裝備註|TBD|
|修訂日期|TBD|
|核准負責人|TBD|

---

## 18.14 Model Naming Examples by Product Line

## 18.14 各產品線型號命名示例

**EN**  
In addition to SKU codes, product model names may be created for customer-facing use. These names should be simpler than SKU codes and easier for customers to recognize.

The following names are placeholders and should be refined after product strategy, trademark review, and market positioning review.

**ZH-TW**  
除了 SKU 代碼外，也可以為面向客戶的產品建立型號名稱。這些名稱應比 SKU 代碼更簡潔，並更容易被客戶識別。

以下名稱僅為預留示例，應在產品策略、商標審查與市場定位審查後再進一步完善。

---

## English Table

|Product Line|Possible Model Naming Pattern|Example|
|---|---|---|
|Hub|Artibird Hub + Generation / Variant|Artibird Hub G1|
|Gate|Artibird Gate + Connectivity / Variant|Artibird Gate Pro|
|Sync|Artibird Sync + Capability|Artibird Sync IR/RF|
|Switch|Artibird Switch + Type|Artibird Switch Scene / Artibird Switch Relay|
|Panel|Artibird Panel + Size / Variant|Artibird Panel Room|
|Act|Artibird Act + Function|Artibird Act-E|
|Sense|Artibird Sense + Sensor Type|Artibird Sense Climate|
|Vision|Artibird Vision + Camera / AI Variant|Artibird Vision Edge|
|App|Artibird App + Platform|Artibird App|

## 中文表

|產品線|可能型號命名模式|示例|
|---|---|---|
|Hub|Artibird Hub + 世代 / 版本|Artibird Hub G1|
|Gate|Artibird Gate + 連接 / 版本|Artibird Gate Pro|
|Sync|Artibird Sync + 能力|Artibird Sync IR/RF|
|Switch|Artibird Switch + 類型|Artibird Switch Scene / Artibird Switch Relay|
|Panel|Artibird Panel + 尺寸 / 版本|Artibird Panel Room|
|Act|Artibird Act + 功能|Artibird Act-E|
|Sense|Artibird Sense + 感測類型|Artibird Sense Climate|
|Vision|Artibird Vision + 攝影機 / AI 版本|Artibird Vision Edge|
|App|Artibird App + 平台|Artibird App|

---

## 18.15 Customer-Facing Naming vs Internal SKU

## 18.15 面向客戶名稱與內部 SKU 的區別

**EN**  
Customer-facing names and internal SKU codes should serve different purposes.

Customer-facing names should be clear, simple, and easy to understand. Internal SKU codes should be precise, structured, and useful for operations, certification, and inventory control.

**ZH-TW**  
面向客戶名稱與內部 SKU 代碼應服務於不同目的。

面向客戶名稱應清楚、簡潔、易於理解。內部 SKU 代碼應精確、結構化，並有助於運營、認證與庫存管控。

---

## English Table

|Type|Purpose|Example|
|---|---|---|
|Customer-facing name|Used in catalog, website, packaging, sales, and product pages|Artibird Act-E|
|Internal SKU|Used in inventory, certification, logistics, e-commerce, and ERP|ATB-ACT-G1-US-WF-AC-E-S|
|Engineering model|Used in hardware, firmware, validation, and test records|ACT-G1-HW1.0-FW1.2|
|Certification model|Used in certification documents and labels|Exact model name depends on certification filing|
|Package name|Used for retail or channel package|Artibird Energy Starter Kit|

## 中文表

|類型|目的|示例|
|---|---|---|
|面向客戶名稱|用於型錄、網站、包裝、銷售與產品頁|Artibird Act-E|
|內部 SKU|用於庫存、認證、物流、電商與 ERP|ATB-ACT-G1-US-WF-AC-E-S|
|工程型號|用於硬體、韌體、驗證與測試記錄|ACT-G1-HW1.0-FW1.2|
|認證型號|用於認證文件與標籤|取決於認證提交的精確型號|
|包裝名稱|用於零售或渠道包裝|Artibird Energy Starter Kit|

---

## 18.16 Catalog Claim Boundary

## 18.16 型錄宣稱邊界

**EN**  
The SKU and model naming framework in this chapter is a placeholder and planning structure. It should not be interpreted as confirmation that any listed SKU is commercially released, certified, validated, available in a region, or approved for packaging and sales.

Final SKU codes, model names, region codes, certification references, electrical ratings, and package names must be confirmed through product validation, certification review, commercial approval, inventory setup, and legal or compliance review where applicable.

**ZH-TW**  
本章中的 SKU 與型號命名框架屬於預留與規劃結構。不應被解讀為任何列出的 SKU 已商業發布、已認證、已驗證、已在某區域上市，或已核准用於包裝與銷售。

最終 SKU 代碼、型號名稱、區域代碼、認證引用、電氣額定與包裝名稱，必須透過產品驗證、認證審查、商業核准、庫存建檔，以及適用時的法律或合規審查確認。

---

## English Table

|Avoid Saying|Preferred Catalog Language|
|---|---|
|These SKUs are final|These SKU examples are placeholders for future product records|
|SKU code means certification is complete|Certification status must be verified separately per model and market|
|Region code means product is available|Region code indicates intended market configuration, not release status|
|Connectivity code proves compatibility|Connectivity code must be tied to implemented and validated function|
|Package code means ready for sale|Package readiness requires commercial and logistics approval|
|SKU examples can be printed on packaging now|Packaging SKU use requires final product approval and compliance review|
|All variants will launch|Variants are subject to product roadmap, validation, and commercial approval|

## 中文表

|避免使用|建議型錄語言|
|---|---|
|這些 SKU 已最終定稿|這些 SKU 示例是未來產品記錄的預留示例|
|SKU 代碼代表認證已完成|認證狀態必須按型號與市場另行確認|
|區域代碼代表產品已上市|區域代碼表示目標市場配置，不代表發布狀態|
|連接代碼證明相容性|連接代碼必須與已實作並驗證功能綁定|
|包裝代碼代表可銷售|包裝就緒需要商業與物流核准|
|SKU 示例現在可印在包裝上|包裝 SKU 使用需要最終產品核准與合規審查|
|所有版本都會上市|版本取決於產品路線圖、驗證與商業核准|

---

## 18.17 Chapter Conclusion

## 18.17 章節結論

**EN**  
This chapter establishes a structured placeholder for Artibird SKU and model naming. It prepares the product catalog for future commercial use while keeping final SKU decisions controlled by validation, certification, packaging, region, and commercial approval.

In the Artibird catalog, SKU and model naming should be treated as a governance tool. A clear naming system helps prevent product confusion, supports channel communication, protects claim boundaries, and creates a foundation for manufacturing, inventory, certification, Amazon listings, and future product expansion.

**ZH-TW**  
本章建立了 Artibird SKU 與型號命名的結構化預留框架。它使產品型錄能為未來商業使用做好準備，同時讓最終 SKU 決策受到驗證、認證、包裝、區域與商業核准控制。

在 Artibird 型錄中，SKU 與型號命名應被視為治理工具。清晰的命名系統可以避免產品混淆，支持渠道溝通，保護宣稱邊界，並為生產、庫存、認證、Amazon 上架與未來產品擴展建立基礎。