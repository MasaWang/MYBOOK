# Artibird SKU & Model Naming Specification v1.0

# Artibird SKU 與型號命名規範 v1.0

## Chapter 9 — Variant Codes

## 第九章｜版本代碼

---

## 9.1 Purpose

## 9.1 目的

### EN

This chapter defines the official variant codes used in Artibird SKU codes, internal model records, product configuration records, engineering records, certification mapping, packaging records, Amazon listings, channel documents, and commercial release planning.

Variant codes identify the functional, commercial, deployment, or configuration difference of a product within the same product line, generation, region, connectivity type, and power architecture.

Variant codes must be used carefully because they may affect product capability, hardware configuration, firmware behavior, certification status, packaging claims, pricing, channel positioning, Amazon listing content, and customer expectations.

### ZH-TW

本章定義 Artibird SKU 代碼、內部型號記錄、產品配置記錄、工程記錄、認證映射、包裝記錄、Amazon 上架、渠道文件與商業發布規劃中使用的官方版本代碼。

版本代碼用於識別同一產品線、同一世代、同一區域、同一連接方式與同一供電架構下，產品在功能、商業、部署或配置上的差異。

版本代碼必須謹慎使用，因為它可能影響產品能力、硬體配置、韌體行為、認證狀態、包裝宣稱、定價、渠道定位、Amazon 上架內容與客戶預期。

---

## 9.2 Variant Code Definition

## 9.2 版本代碼定義

### EN

A variant code is a controlled identifier that describes the functional or commercial configuration of a product.

It answers the following questions:

|Question|Description|
|---|---|
|What functional version is this product?|Standard, Pro, Mini, energy-aware, outdoor, relay, scene, dimmer, camera|
|What capability is different from the base model?|Energy monitoring, relay execution, scene trigger, dimming, camera function|
|Is this a commercial tier?|STD, PRO, MINI|
|Is this a functional variant?|E, OUT, RLY, SCN, DIM, CAM|
|Is this an engineering or pre-release variant?|DEV, BETA|
|Does this variant affect certification?|Electrical load, RF, dimming, enclosure, camera, outdoor rating|
|Can this variant be listed commercially?|Only if implemented, validated, and approved|

### ZH-TW

版本代碼是一種受控識別碼，用於描述產品的功能或商業配置。

它回答以下問題：

|問題|說明|
|---|---|
|這是哪一種功能版本？|標準版、專業版、迷你版、能源感知版、戶外版、繼電器版、場景版、調光版、攝影機版|
|它與基礎型號有什麼能力差異？|電能監測、繼電器執行、場景觸發、調光、攝影機功能|
|這是否為商業層級？|STD、PRO、MINI|
|這是否為功能版本？|E、OUT、RLY、SCN、DIM、CAM|
|這是否為工程或預發布版本？|DEV、BETA|
|此版本是否影響認證？|電氣負載、RF、調光、外殼、攝影機、戶外額定|
|此版本是否可商業上架？|僅在已實作、驗證並核准後可以|

---

## 9.3 Official Variant Code Table

## 9.3 官方版本代碼表

### EN

|Code|Meaning|Primary Use|Commercial Use|
|--:|---|---|---|
|STD|Standard version|Base product configuration|Yes, after approval|
|PRO|Professional version|Enhanced capability, higher-grade deployment, or professional package|Yes, after approval|
|MINI|Mini version|Smaller form factor or reduced configuration|Yes, after approval|
|E|Energy-aware version|Energy monitoring, power metering, or energy-related capability|Yes, after validation|
|OUT|Outdoor version|Outdoor or weather-resistant deployment|Yes, after environmental validation|
|RLY|Relay version|Relay-based switching or execution capability|Yes, after electrical validation|
|SCN|Scene switch version|Scene trigger or event-node behavior|Yes, after functional validation|
|DIM|Dimmer version|Dimming capability where supported|Yes, after load and safety validation|
|CAM|Camera / vision version|Camera, vision, or visual perception capability|Yes, after privacy and compliance review|
|DEV|Development version|Development-only configuration|No|
|BETA|Beta test version|Limited beta testing before release|Limited / controlled only|
|CUSTOM|Custom project version|Project-specific configuration|Controlled project use only|
|EDU|Education version|Education or classroom-oriented configuration|Yes, after approval|
|KIT|Kit-oriented variant|Variant intended primarily for kit inclusion|Yes, when mapped to package records|

### ZH-TW

|代碼|含義|主要用途|商業使用|
|--:|---|---|---|
|STD|標準版|基礎產品配置|核准後可以|
|PRO|專業版|增強能力、高階部署或專業套組|核准後可以|
|MINI|迷你版|更小尺寸或精簡配置|核准後可以|
|E|能源感知版本|電能監測、功率計量或能源相關能力|驗證後可以|
|OUT|戶外版本|戶外或耐候部署|環境驗證後可以|
|RLY|繼電器版本|基於繼電器的開關或執行能力|電氣驗證後可以|
|SCN|場景開關版本|場景觸發或事件節點行為|功能驗證後可以|
|DIM|調光版本|支援條件下的調光能力|負載與安全驗證後可以|
|CAM|攝影機 / 視覺版本|攝影機、視覺或視覺感知能力|隱私與合規審查後可以|
|DEV|開發版本|僅供開發使用配置|不可|
|BETA|Beta 測試版本|發布前有限 Beta 測試|僅限受控使用|
|CUSTOM|客製專案版本|專案特定配置|僅限受控專案使用|
|EDU|教育版本|教育或教室導向配置|核准後可以|
|KIT|套組導向版本|主要用於套組配置的版本|映射至包裝記錄後可以|

---

## 9.4 Variant Code Usage in SKU

## 9.4 版本代碼在 SKU 中的使用

### EN

The variant code appears as the seventh field in the official SKU format.

Recommended SKU structure:

```text
ATB-[PRODUCT]-[GEN]-[REGION]-[CONNECTIVITY]-[POWER]-[VARIANT]-[PACKAGE]
```

Example:

```text
ATB-ACT-G1-US-WF-AC-E-S
```

|SKU Field|Value|Meaning|
|---|---|---|
|Brand|ATB|Artibird|
|Product Line|ACT|Artibird Act|
|Generation|G1|First generation|
|Region|US|United States|
|Connectivity|WF|Wi-Fi|
|Power|AC|AC mains powered|
|Variant|E|Energy-aware version|
|Package|S|Single unit|

The variant code must represent the defining functional or commercial difference of the SKU.

A variant code must not be used to describe region, power type, connectivity type, package type, firmware version, certification status, or release status. These items must remain separately controlled.

### ZH-TW

版本代碼出現在官方 SKU 格式的第七個欄位。

建議 SKU 結構：

```text
ATB-[產品]-[世代]-[區域]-[連接]-[供電]-[版本]-[包裝]
```

示例：

```text
ATB-ACT-G1-US-WF-AC-E-S
```

|SKU 欄位|數值|含義|
|---|---|---|
|品牌|ATB|Artibird|
|產品線|ACT|Artibird Act|
|世代|G1|第一代|
|區域|US|美國|
|連接|WF|Wi-Fi|
|供電|AC|市電供電|
|版本|E|能源感知版本|
|包裝|S|單品|

版本代碼必須代表該 SKU 的定義性功能差異或商業配置差異。

版本代碼不得用來描述區域、供電方式、連接方式、包裝方式、韌體版本、認證狀態或發布狀態。這些項目必須分別管控。

---

## 9.5 Variant Code Usage by Product Line

## 9.5 各產品線版本代碼使用

### EN

|Product Line|Common Variant Codes|Notes|
|---|---|---|
|Artibird Hub|STD, PRO, MINI, EDU, CUSTOM|Depends on local runtime capacity, deployment scale, and package positioning|
|Artibird Gate|STD, PRO, MINI, OUT, CUSTOM|Depends on connectivity, enclosure, deployment range, or outdoor use|
|Artibird Sync|STD, PRO, IRRF-related internal capability, CUSTOM|Variant should not replace connectivity code|
|Artibird Switch|SCN, RLY, DIM, STD, PRO, MINI|Depends on scene switch, relay switch, dimmer, or switch-class function|
|Artibird Panel|STD, PRO, MINI, EDU, CUSTOM|Depends on room interface size, control depth, and deployment scenario|
|Artibird Act|STD, E, RLY, PRO, OUT, CUSTOM|Depends on execution, energy monitoring, relay, or outdoor configuration|
|Artibird Sense|STD, PRO, OUT, MINI, CUSTOM|Depends on sensor type, deployment environment, and enclosure|
|Artibird Vision|CAM, PRO, OUT, STD, CUSTOM|Depends on camera, vision processing, outdoor, or edge-related role|
|Artibird App|STD, PRO, BETA, EDU|Depends on app release channel, feature access, or service tier|
|OceanAI Cloud|STD, PRO, EDU, CUSTOM|Used for service tier, subscription, or deployment package|
|OceanAI Edge|STD, PRO, CAM, CUSTOM|Used for edge AI deployment, vision analysis, or project-specific configuration|

### ZH-TW

|產品線|常用版本代碼|備註|
|---|---|---|
|Artibird Hub|STD、PRO、MINI、EDU、CUSTOM|依本地 Runtime 容量、部署規模與包裝定位而定|
|Artibird Gate|STD、PRO、MINI、OUT、CUSTOM|依連接能力、外殼、部署距離或戶外用途而定|
|Artibird Sync|STD、PRO、IRRF 相關內部能力、CUSTOM|版本代碼不得取代連接代碼|
|Artibird Switch|SCN、RLY、DIM、STD、PRO、MINI|依場景開關、繼電器開關、調光器或開關類功能而定|
|Artibird Panel|STD、PRO、MINI、EDU、CUSTOM|依房間介面尺寸、控制深度與部署場景而定|
|Artibird Act|STD、E、RLY、PRO、OUT、CUSTOM|依執行、能源監測、繼電器或戶外配置而定|
|Artibird Sense|STD、PRO、OUT、MINI、CUSTOM|依感測類型、部署環境與外殼而定|
|Artibird Vision|CAM、PRO、OUT、STD、CUSTOM|依攝影機、視覺處理、戶外或邊緣相關角色而定|
|Artibird App|STD、PRO、BETA、EDU|依 App 發布渠道、功能權限或服務層級而定|
|OceanAI Cloud|STD、PRO、EDU、CUSTOM|用於服務層級、訂閱或部署套組|
|OceanAI Edge|STD、PRO、CAM、CUSTOM|用於邊緣 AI 部署、視覺分析或專案特定配置|

---

## 9.6 Special Boundary: STD, PRO, and MINI

## 9.6 特別邊界：STD、PRO 與 MINI

### EN

STD, PRO, and MINI describe commercial or configuration tiers. They should not be used as vague marketing labels.

|Code|Meaning|Use When|
|--:|---|---|
|STD|Standard version|Base validated commercial configuration|
|PRO|Professional version|Clearly defined enhanced capability, larger capacity, stronger hardware, advanced deployment, or professional package|
|MINI|Mini version|Smaller size, reduced capability, compact enclosure, or simplified configuration|

A PRO variant must have a documented difference from STD.  
A MINI variant must have a documented difference from STD.  
STD should be used when no special functional or commercial variant is required.

### ZH-TW

STD、PRO 與 MINI 描述商業層級或配置層級，不應作為模糊的行銷標籤使用。

|代碼|含義|使用條件|
|--:|---|---|
|STD|標準版|基礎且已驗證的商業配置|
|PRO|專業版|具備明確增強能力、更大容量、更強硬體、高階部署或專業包裝|
|MINI|迷你版|更小尺寸、降低能力、緊湊外殼或精簡配置|

PRO 版本必須相對 STD 具備已記錄差異。  
MINI 版本必須相對 STD 具備已記錄差異。  
當不需要特殊功能或商業版本時，應使用 STD。

---

## 9.7 Special Boundary: E Energy-Aware Variant

## 9.7 特別邊界：E 能源感知版本

### EN

E is used for energy-aware versions, including products with energy monitoring, power metering, current sensing, voltage sensing, usage reporting, or energy-related analytics where validated.

|Allowed Use|Not Allowed Use|
|---|---|
|Energy monitoring plug|General AC plug without energy measurement|
|Act-E with power metering|Relay-only Act|
|Load usage reporting|Unvalidated energy-saving claim|
|Current / voltage sensing|Software-only energy estimate without validation|
|Energy dashboard data source|General automation device|

E must not be used unless the product includes validated energy-aware hardware, firmware, data reporting, or system capability.

Energy savings must not be implied by the E code unless validated by test data or approved claim review.

### ZH-TW

E 用於能源感知版本，包括已驗證具備電能監測、功率計量、電流感測、電壓感測、用電報告或能源相關分析能力的產品。

|允許使用|不允許使用|
|---|---|
|電能監測插座|不具備電能測量的一般 AC 插座|
|具備功率計量的 Act-E|僅繼電器型 Act|
|負載用電報告|未驗證節能宣稱|
|電流 / 電壓感測|未經驗證的純軟體能源估算|
|能源儀表板數據來源|一般自動化設備|

除非產品具備已驗證的能源感知硬體、韌體、數據上報或系統能力，否則不得使用 E。

E 代碼不得暗示節能效果，除非具備測試數據或已通過宣稱審查。

---

## 9.8 Special Boundary: RLY, SCN, and DIM

## 9.8 特別邊界：RLY、SCN 與 DIM

### EN

RLY, SCN, and DIM must be separated because they describe different switch or execution behaviors.

|Code|Meaning|Use When|
|--:|---|---|
|RLY|Relay version|Product physically controls a circuit through relay execution|
|SCN|Scene switch version|Product acts primarily as an event trigger or scene input|
|DIM|Dimmer version|Product supports dimming control where validated|

Examples:

|Product Scenario|Recommended Variant Code|
|---|--:|
|Battery-powered event-only switch|SCN|
|Zero-neutral relay switch|RLY|
|Single-live event transmitter without load control|SCN|
|AC relay module|RLY|
|Validated dimmer switch|DIM|
|Relay switch with no dimming|RLY|

A device should not use RLY if it does not physically control a relay or equivalent switching output.  
A device should not use DIM unless dimming has been validated with defined load types.

### ZH-TW

RLY、SCN 與 DIM 必須區分，因為它們描述不同的開關或執行行為。

|代碼|含義|使用條件|
|--:|---|---|
|RLY|繼電器版本|產品透過繼電器執行實際電路控制|
|SCN|場景開關版本|產品主要作為事件觸發或場景輸入|
|DIM|調光版本|產品在已驗證條件下支援調光控制|

示例：

|產品場景|建議版本代碼|
|---|--:|
|電池供電 event-only 開關|SCN|
|零火繼電器開關|RLY|
|單火事件發射器，不控制負載|SCN|
|AC 繼電器模組|RLY|
|已驗證調光開關|DIM|
|不支援調光的繼電器開關|RLY|

如果設備不實際控制繼電器或等效開關輸出，不應使用 RLY。  
除非已針對明確負載類型完成調光驗證，否則不應使用 DIM。

---

## 9.9 Special Boundary: OUT Outdoor Variant

## 9.9 特別邊界：OUT 戶外版本

### EN

OUT is used for outdoor or weather-resistant versions only when the product has a defined and validated outdoor design.

OUT may require review of:

|Review Area|Requirement|
|---|---|
|Enclosure|Outdoor-rated enclosure or defined environmental protection|
|Temperature range|Validated operating temperature|
|Humidity|Validated humidity or condensation tolerance|
|UV exposure|Material review where applicable|
|Water / dust protection|IP rating or defined environmental protection claim|
|Power safety|Outdoor installation or adapter review|
|Wireless performance|Outdoor deployment range and antenna behavior|
|Labeling|Outdoor use wording and limitations|

OUT must not be used only because a product can be physically placed outdoors. It must be supported by design, validation, and approved product claims.

### ZH-TW

OUT 僅在產品具備已定義並驗證的戶外或耐候設計時使用。

OUT 可能需要審查：

|審查項目|要求|
|---|---|
|外殼|戶外額定外殼或明確環境防護設計|
|溫度範圍|已驗證工作溫度|
|濕度|已驗證濕度或冷凝耐受|
|紫外線暴露|適用時進行材料審查|
|防水 / 防塵|IP 等級或明確環境防護宣稱|
|供電安全|戶外安裝或適配器審查|
|無線性能|戶外部署距離與天線行為|
|標籤|戶外使用文字與限制|

不得僅因為產品可被物理放置在戶外，就使用 OUT。它必須由設計、驗證與已核准產品宣稱支持。

---

## 9.10 Special Boundary: CAM Camera / Vision Variant

## 9.10 特別邊界：CAM 攝影機 / 視覺版本

### EN

CAM is used for camera, video, vision, or visual perception products.

CAM may apply to:

|Product Type|CAM Use Case|
|---|---|
|Artibird Vision|Camera or visual perception node|
|OceanAI Edge|Vision-enabled edge intelligence configuration|
|Security-oriented kit|Vision-related product bundle|
|Classroom or campus deployment|Visual event or occupancy-related configuration where validated|

CAM must be reviewed for privacy, security, data retention, cloud upload behavior, edge processing behavior, and user notification requirements.

CAM should not be used for non-camera sensors or generic presence sensing unless visual perception is part of the validated product configuration.

### ZH-TW

CAM 用於攝影機、視頻、視覺或視覺感知產品。

CAM 可適用於：

|產品類型|CAM 使用場景|
|---|---|
|Artibird Vision|攝影機或視覺感知節點|
|OceanAI Edge|支援視覺的邊緣智慧配置|
|安防導向套組|視覺相關產品組合|
|教室或校園部署|已驗證的視覺事件或人體存在相關配置|

CAM 必須審查隱私、安全、數據保留、雲端上傳行為、邊緣處理行為與用戶提示要求。

除非視覺感知是已驗證產品配置的一部分，否則 CAM 不應用於非攝影機感測器或一般人體存在感測。

---

## 9.11 Special Boundary: DEV and BETA

## 9.11 特別邊界：DEV 與 BETA

### EN

DEV and BETA are not normal commercial variants.

|Code|Meaning|Allowed Use|
|--:|---|---|
|DEV|Development version|Internal engineering, prototype, lab test|
|BETA|Beta test version|Limited external or internal beta testing under control|

DEV and BETA must not be used in normal retail SKUs, Amazon listings, or general channel sales.

They may be used in controlled records such as:

|Usage Area|DEV|BETA|
|---|---|---|
|Internal engineering record|Yes|Yes|
|Prototype label|Yes|Yes|
|Controlled pilot|No, unless approved|Yes|
|Amazon retail listing|No|No|
|General channel sales|No|No|
|Certification filing|Only if specifically filed|Only if specifically filed|
|Production release|No|No|

### ZH-TW

DEV 與 BETA 不是正常商業版本。

|代碼|含義|允許用途|
|--:|---|---|
|DEV|開發版本|內部工程、原型、實驗室測試|
|BETA|Beta 測試版本|受控的有限外部或內部 Beta 測試|

DEV 與 BETA 不得用於正常零售 SKU、Amazon 上架或一般渠道銷售。

它們可用於以下受控記錄：

|使用場景|DEV|BETA|
|---|---|---|
|內部工程記錄|是|是|
|原型標籤|是|是|
|受控試點|除非核准，否|是|
|Amazon 零售上架|否|否|
|一般渠道銷售|否|否|
|認證提交|僅在專門提交時|僅在專門提交時|
|生產發布|否|否|

---

## 9.12 Variant Code and Certification Impact

## 9.12 版本代碼與認證影響

### EN

Variant codes may affect certification and compliance status.

|Variant Code|Possible Certification / Compliance Impact|
|--:|---|
|STD|Baseline certification mapping|
|PRO|May require review if hardware, RF, power, enclosure, or capacity changes|
|MINI|May require thermal, RF, enclosure, and safety review|
|E|May require energy metering accuracy, safety, and electrical review|
|OUT|May require environmental, enclosure, ingress, temperature, and label review|
|RLY|Requires electrical load, relay, thermal, and safety review|
|SCN|Usually lower electrical impact unless mains-powered|
|DIM|Requires dimming load, thermal, EMC, flicker, compatibility, and safety review|
|CAM|Requires privacy, data, camera, wireless, and security review|
|DEV|Internal only unless specifically filed|
|BETA|Controlled testing only; claim boundary must be defined|

Variant changes must be reviewed before the SKU is released commercially.

### ZH-TW

版本代碼可能影響認證與合規狀態。

|版本代碼|可能的認證 / 合規影響|
|--:|---|
|STD|基礎認證映射|
|PRO|若硬體、RF、供電、外殼或容量變化，可能需要審查|
|MINI|可能需要熱、RF、外殼與安全審查|
|E|可能需要電能計量準確性、安全與電氣審查|
|OUT|可能需要環境、外殼、防護、溫度與標籤審查|
|RLY|需要電氣負載、繼電器、熱與安全審查|
|SCN|通常電氣影響較低，除非市電供電|
|DIM|需要調光負載、熱、EMC、閃爍、相容性與安全審查|
|CAM|需要隱私、數據、攝影機、無線與安全審查|
|DEV|僅內部使用，除非專門提交|
|BETA|僅限受控測試；必須定義宣稱邊界|

版本變更必須在 SKU 商業發布前完成審查。

---

## 9.13 When to Change Variant Code

## 9.13 何時需要更改版本代碼

### EN

|Change Scenario|Change Variant Code?|Notes|
|---|---|---|
|Standard model adds energy monitoring|Yes|STD may change to E|
|Relay output added to scene-only switch|Yes|SCN may change to RLY|
|Dimming support added and validated|Yes|RLY or STD may change to DIM|
|Product becomes smaller but same capability|Maybe|MINI may be used if commercial identity changes|
|Product gains outdoor-rated enclosure|Yes|OUT may be used after validation|
|Camera added to sensor product|Yes|CAM may be required|
|Firmware feature added without configuration difference|Usually no|Update firmware record, not variant|
|Packaging bundle changes only|No|Update package code|
|Region changes only|No|Update region code|
|Power architecture changes only|No|Update power code|
|Product enters beta testing|Yes, for beta records only|Use BETA only in controlled beta records|
|Product exits beta and becomes released|Yes|Replace BETA with approved commercial variant|

### ZH-TW

|變更場景|是否更改版本代碼？|備註|
|---|---|---|
|標準型號增加電能監測|是|STD 可變更為 E|
|場景-only 開關增加繼電器輸出|是|SCN 可變更為 RLY|
|增加並驗證調光支援|是|RLY 或 STD 可變更為 DIM|
|產品變小但能力不變|視情況|若商業身份改變，可使用 MINI|
|產品獲得戶外額定外殼|是|驗證後可使用 OUT|
|感測器產品增加攝影機|是|可能需要 CAM|
|只新增韌體功能，配置無差異|通常否|更新韌體記錄，而非版本代碼|
|僅包裝套組變更|否|更新包裝代碼|
|僅區域變更|否|更新區域代碼|
|僅供電架構變更|否|更新供電代碼|
|產品進入 Beta 測試|僅對 Beta 記錄是|BETA 僅用於受控 Beta 記錄|
|產品退出 Beta 並正式發布|是|將 BETA 替換為已核准商業版本|

---

## 9.14 Variant Code Governance Rules

## 9.14 版本代碼治理規則

### EN

|Rule|Requirement|
|---|---|
|One variant code must represent one defined functional or commercial difference|Do not use vague variant labels|
|Variant code must not replace product line code|Product family and variant must remain separate|
|Variant code must not replace power, connectivity, region, or package code|Each field must remain separately controlled|
|PRO must have documented capability difference|Do not use PRO only for marketing preference|
|E must include validated energy-aware capability|Do not imply energy savings without evidence|
|RLY must include actual relay or equivalent execution capability|Event-only devices should not use RLY|
|SCN must be used for scene or event-node behavior|Do not use SCN for load-control products unless scene is the defining role|
|DIM must be validated with defined load types|Do not claim dimming without test support|
|OUT must be supported by environmental validation|Outdoor placement alone is not enough|
|CAM must be reviewed for privacy and data handling|Vision products require additional governance|
|DEV and BETA must not be used for general retail release|Use only under controlled records|

### ZH-TW

|規則|要求|
|---|---|
|一個版本代碼必須代表一種已定義功能或商業差異|不得使用模糊版本標籤|
|版本代碼不得取代產品線代碼|產品家族與版本必須分離|
|版本代碼不得取代供電、連接、區域或包裝代碼|每個欄位必須分別管控|
|PRO 必須具備已記錄能力差異|不得僅因行銷偏好使用 PRO|
|E 必須包含已驗證能源感知能力|不得在無證據下暗示節能|
|RLY 必須包含實際繼電器或等效執行能力|Event-only 設備不應使用 RLY|
|SCN 必須用於場景或事件節點行為|除非場景是定義性角色，否則負載控制產品不應使用 SCN|
|DIM 必須針對明確負載類型完成驗證|不得在無測試支撐下宣稱調光|
|OUT 必須由環境驗證支持|僅能放置戶外並不足夠|
|CAM 必須審查隱私與數據處理|視覺產品需要額外治理|
|DEV 與 BETA 不得用於一般零售發布|僅在受控記錄中使用|

---

## 9.15 Required Master Table Fields

## 9.15 必備主表欄位

### EN

Each SKU master record must include variant-related fields.

|Field|Requirement|
|---|---|
|Variant Code|Required|
|Variant Name|Required|
|Variant Description|Required|
|Functional Difference from STD|Required where applicable|
|Hardware Impact|Required|
|Firmware Impact|Required|
|Certification Impact|Required|
|Packaging Claim Impact|Required|
|Amazon Listing Impact|Required|
|Pricing Impact|Required where applicable|
|Channel Impact|Required where applicable|
|Validation Status|Required|
|Claim Boundary Notes|Required|
|Approval Owner|Required|
|Revision Date|Required|

### ZH-TW

每一筆 SKU 主記錄都必須包含與版本相關的欄位。

|欄位|要求|
|---|---|
|版本代碼|必填|
|版本名稱|必填|
|版本描述|必填|
|相對 STD 的功能差異|適用時必填|
|硬體影響|必填|
|韌體影響|必填|
|認證影響|必填|
|包裝宣稱影響|必填|
|Amazon 上架影響|必填|
|定價影響|適用時必填|
|渠道影響|適用時必填|
|驗證狀態|必填|
|宣稱邊界備註|必填|
|核准負責人|必填|
|修訂日期|必填|

---

## 9.16 Chapter Conclusion

## 9.16 本章結論

### EN

Variant codes define the functional, commercial, deployment, or configuration difference of an Artibird product within a controlled SKU structure.

They must represent real, documented, validated differences. They must not be used as vague marketing labels, certification claims, package identifiers, region markers, power codes, or connectivity codes.

A clear variant code system allows Artibird products to remain traceable across product planning, engineering configuration, certification review, packaging, pricing, Amazon listing, channel release, and commercial deployment.

### ZH-TW

版本代碼定義 Artibird 產品在受控 SKU 結構中的功能、商業、部署或配置差異。

它們必須代表真實、已記錄、已驗證的差異。不得將版本代碼作為模糊行銷標籤、認證宣稱、包裝識別、區域標記、供電代碼或連接代碼使用。

清晰的版本代碼系統，可使 Artibird 產品在產品規劃、工程配置、認證審查、包裝、定價、Amazon 上架、渠道發布與商業部署中保持可追蹤。

---

本章依據《Artibird SKU & Model Naming Specification v1.0》的既定撰寫計劃展開；原始規劃已將 Variant Codes 設為 Chapter 9，並列出 STD、PRO、MINI、E、OUT、RLY、SCN、DIM、CAM、DEV、BETA 作為標準版本代碼。

**話題延伸｜互動建議**  
下一章可以繼續寫 **Chapter 10 — Package Codes｜第十章｜包裝代碼**，正式定義 S、2P、4P、KIT、PROKIT、EDU、PRJ、CH、FBA、BULK、DEMO、SAMPLE 在零售、渠道、Amazon、專案與樣品管理中的使用邊界。