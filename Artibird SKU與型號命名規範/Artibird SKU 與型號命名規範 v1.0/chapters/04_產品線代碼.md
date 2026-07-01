# Artibird SKU & Model Naming Specification v1.0

# Artibird SKU 與型號命名規範 v1.0

## Chapter 4 — Product Line Codes

## 第四章｜產品線代碼

---

## 4.1 Purpose

## 4.1 目的

### EN

This chapter defines the official product line codes used across the Artibird product family and related OceanAI system layers.

Product line codes are the foundation of the SKU and model naming system. They identify the product family or system layer that a product, service, module, or platform component belongs to.

These codes must remain stable across product planning, engineering records, SKU creation, certification mapping, packaging, sales documents, Amazon listings, inventory systems, and commercial release records.

### ZH-TW

本章定義 Artibird 產品家族與相關 OceanAI 系統層所使用的官方產品線代碼。

產品線代碼是 SKU 與型號命名系統的基礎。它用於識別某一產品、服務、模組或平台組件所屬的產品家族或系統層級。

這些代碼必須在產品規劃、工程記錄、SKU 建立、認證映射、包裝、銷售文件、Amazon 上架、庫存系統與商業發布記錄中保持穩定。

---

## 4.2 Product Line Code Definition

## 4.2 產品線代碼定義

### EN

A product line code is a short controlled identifier used to represent a product family or system layer within Artibird and OceanAI documentation.

It is used in:

|Usage Area|Description|
|---|---|
|SKU Code|Identifies the product family inside the commercial SKU|
|Internal Model Name|Identifies product type in product and engineering control|
|Engineering Model Number|Identifies the product family in hardware and firmware tracking|
|Certification Mapping|Connects SKU and model identity to certification records|
|Manufacturing Record|Helps factory, BOM, ERP, and supplier records stay consistent|
|Packaging Record|Connects package data to the correct product family|
|Commercial Documents|Keeps catalog, price sheet, channel, and Amazon records aligned|

### ZH-TW

產品線代碼是一種受控的短代碼，用於在 Artibird 與 OceanAI 文件中表示產品家族或系統層。

它用於：

|使用場景|說明|
|---|---|
|SKU 代碼|在商業 SKU 中識別產品家族|
|內部型號名稱|在產品與工程管控中識別產品類型|
|工程型號|在硬體與韌體追蹤中識別產品家族|
|認證映射|將 SKU 與型號身份連接至認證記錄|
|生產記錄|保持工廠、BOM、ERP 與供應商記錄一致|
|包裝記錄|將包裝資料連接至正確產品家族|
|商業文件|保持型錄、價格表、渠道與 Amazon 記錄一致|

---

## 4.3 Official Product Line Code Table

## 4.3 官方產品線代碼表

### EN

|Product Line|Code|System Role|Primary Use|
|---|--:|---|---|
|Artibird Hub|HUB|Local runtime center|Local coordination, MQTT, state management, ArtiOS services|
|Artibird Gate|GATE|Device access gateway|Device onboarding, gateway communication, local network participation|
|Artibird Sync|SYNC|IR / RF synchronization node|Appliance synchronization, IR control, RF control|
|Artibird Switch|SW|Smart switch and event node|User input, scene trigger, relay control depending on variant|
|Artibird Panel|PNL|Room-level interaction interface|Room control, scene interface, local user interaction|
|Artibird Act|ACT|Electrical execution node|Relay execution, plug control, load control, energy-aware variants|
|Artibird Sense|SNS|Environmental sensing node|Temperature, humidity, light, occupancy, environmental sensing|
|Artibird Vision|VIS|Visual perception node|Camera, vision event, AI-assisted visual context|
|Artibird App|APP|User control and configuration interface|User control, onboarding, configuration, local and cloud access|
|OceanAI Cloud|CLD|Cloud service layer|Remote access, synchronization, account, lifecycle, analytics|
|OceanAI Edge|EDGE|Edge intelligence layer|Local AI inference, SLM / VLM assistance, sensor and vision analysis|

### ZH-TW

|產品線|代碼|系統角色|主要用途|
|---|--:|---|---|
|Artibird Hub|HUB|本地 Runtime 中樞|本地協同、MQTT、狀態管理、ArtiOS 服務|
|Artibird Gate|GATE|設備接入網關|設備入網、網關通訊、本地網路參與|
|Artibird Sync|SYNC|IR / RF 同步節點|家電同步、紅外控制、射頻控制|
|Artibird Switch|SW|智慧開關與事件節點|用戶輸入、場景觸發、依版本執行繼電器控制|
|Artibird Panel|PNL|房間級互動介面|房間控制、場景介面、本地用戶互動|
|Artibird Act|ACT|電力執行節點|繼電器執行、插座控制、負載控制、能源感知版本|
|Artibird Sense|SNS|環境感知節點|溫度、濕度、光照、人體存在與環境感知|
|Artibird Vision|VIS|視覺感知節點|攝影機、視覺事件、AI 輔助視覺上下文|
|Artibird App|APP|用戶控制與配置介面|用戶控制、設備入網、配置、本地與雲端存取|
|OceanAI Cloud|CLD|雲端服務層|遠端存取、同步、帳號、生命週期、分析|
|OceanAI Edge|EDGE|邊緣智慧層|本地 AI 推理、SLM / VLM 輔助、感測與視覺分析|

---

## 4.4 Product Line Code Usage in SKU

## 4.4 產品線代碼在 SKU 中的使用

### EN

The product line code appears as the second field in the official SKU format.

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

The product line code must represent the primary product family of the commercial unit. It should not be changed for minor packaging, firmware, sales channel, or labeling differences.

### ZH-TW

產品線代碼出現在官方 SKU 格式的第二個欄位。

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

產品線代碼必須代表該商業單位的主要產品家族。不得因為輕微包裝差異、韌體差異、銷售渠道差異或標籤差異而更改產品線代碼。

---

## 4.5 Product Line Code Usage in Internal Model Names

## 4.5 產品線代碼在內部型號中的使用

### EN

The product line code should also be used as the first field in the internal model name.

Recommended internal model structure:

```text
[PRODUCT]-[GEN]-[VARIANT]
```

Examples:

|Customer-Facing Name|Internal Model|Product Line Code|
|---|---|--:|
|Artibird Hub G1|HUB-G1|HUB|
|Artibird Gate Pro|GATE-G1-PRO|GATE|
|Artibird Sync IR/RF|SYNC-G1-IRRF|SYNC|
|Artibird Switch Scene|SW-G1-SCN|SW|
|Artibird Switch Relay|SW-G1-RLY|SW|
|Artibird Panel Room|PNL-G1-ROOM|PNL|
|Artibird Act-E|ACT-G1-E|ACT|
|Artibird Sense Climate|SNS-G1-CLM|SNS|
|Artibird Vision Edge|VIS-G1-EDGE|VIS|

Internal model names may be shorter than SKU codes, but they must remain traceable to the official product line code.

### ZH-TW

產品線代碼也應作為內部型號名稱的第一個欄位。

建議內部型號結構：

```text
[產品]-[世代]-[版本]
```

示例：

|面向客戶名稱|內部型號|產品線代碼|
|---|---|--:|
|Artibird Hub G1|HUB-G1|HUB|
|Artibird Gate Pro|GATE-G1-PRO|GATE|
|Artibird Sync IR/RF|SYNC-G1-IRRF|SYNC|
|Artibird Switch Scene|SW-G1-SCN|SW|
|Artibird Switch Relay|SW-G1-RLY|SW|
|Artibird Panel Room|PNL-G1-ROOM|PNL|
|Artibird Act-E|ACT-G1-E|ACT|
|Artibird Sense Climate|SNS-G1-CLM|SNS|
|Artibird Vision Edge|VIS-G1-EDGE|VIS|

內部型號名稱可以比 SKU 代碼更短，但必須能追蹤至官方產品線代碼。

---

## 4.6 Product Line Role Boundaries

## 4.6 產品線角色邊界

### EN

Each product line code must represent a defined system role. The same product should not be assigned to different product line codes unless its primary system role changes.

|Product Line Code|Role Boundary|
|--:|---|
|HUB|Used only for the local runtime center or system hub hardware|
|GATE|Used only for gateway, access, network participation, and protocol bridging products|
|SYNC|Used only for IR / RF synchronization and appliance command products|
|SW|Used for wall switches, scene switches, relay switches, and switch-class event nodes|
|PNL|Used for room-level panels or interactive control surfaces|
|ACT|Used for electrical execution products, plug-class products, relay-class execution nodes, and energy-aware execution variants|
|SNS|Used for environmental or physical sensing nodes|
|VIS|Used for camera, vision, or visual perception nodes|
|APP|Used for user application software and control interface releases|
|CLD|Used for cloud service layer records, service SKUs, or cloud subscription references|
|EDGE|Used for edge intelligence hardware, software, or AI inference layer records|

### ZH-TW

每一個產品線代碼都必須代表明確的系統角色。除非產品的主要系統角色發生變化，否則同一產品不應被分配至不同產品線代碼。

|產品線代碼|角色邊界|
|--:|---|
|HUB|僅用於本地 Runtime 中樞或系統中樞硬體|
|GATE|僅用於網關、設備接入、網路參與與協議轉換類產品|
|SYNC|僅用於 IR / RF 同步與家電指令類產品|
|SW|用於牆壁開關、場景開關、繼電器開關與開關類事件節點|
|PNL|用於房間級面板或互動控制介面|
|ACT|用於電力執行產品、插座類產品、繼電器類執行節點與能源感知執行版本|
|SNS|用於環境或物理感知節點|
|VIS|用於攝影機、視覺或視覺感知節點|
|APP|用於用戶應用軟體與控制介面版本|
|CLD|用於雲端服務層記錄、服務 SKU 或雲端訂閱引用|
|EDGE|用於邊緣智慧硬體、軟體或 AI 推理層記錄|

---

## 4.7 Special Boundary: Switch vs Panel vs Act

## 4.7 特別邊界：Switch、Panel 與 Act

### EN

Switch, Panel, and Act must be separated carefully because they may appear similar in customer scenarios but serve different product roles.

|Product Line|Code|Primary Identity|Should Be Used When|
|---|--:|---|---|
|Artibird Switch|SW|Switch-class event or relay device|The product is installed or used as a switch, scene switch, or switch-class relay controller|
|Artibird Panel|PNL|Room-level interaction interface|The product is a control panel, touch interface, display interface, or room command surface|
|Artibird Act|ACT|Electrical execution node|The product primarily executes electrical control, plug control, load control, relay execution, or energy-aware execution|

A device with touch input is not automatically a Panel.  
A device with relay output is not automatically an Act.  
The product line code must follow the product’s primary system role.

### ZH-TW

Switch、Panel 與 Act 必須謹慎區分，因為它們在客戶場景中可能看起來相似，但產品角色不同。

|產品線|代碼|主要身份|適用條件|
|---|--:|---|---|
|Artibird Switch|SW|開關類事件或繼電器設備|產品作為開關、場景開關或開關類繼電器控制器使用|
|Artibird Panel|PNL|房間級互動介面|產品是控制面板、觸控介面、顯示介面或房間指令介面|
|Artibird Act|ACT|電力執行節點|產品主要負責電力控制、插座控制、負載控制、繼電器執行或能源感知執行|

具備觸控輸入的設備不自動等於 Panel。  
具備繼電器輸出的設備不自動等於 Act。  
產品線代碼必須依據產品的主要系統角色決定。

---

## 4.8 Special Boundary: Gate vs Hub

## 4.8 特別邊界：Gate 與 Hub

### EN

Gate and Hub must be separated because they represent different system functions.

|Product Line|Code|Primary Function|Typical Responsibilities|
|---|--:|---|---|
|Artibird Hub|HUB|Local runtime center|Local services, state management, MQTT, automation, ArtiOS modules|
|Artibird Gate|GATE|Device access gateway|Device onboarding, communication access, protocol participation, gateway communication|

A Hub may communicate with devices, but its primary role is local runtime coordination.  
A Gate may support network coordination, but its primary role is device access and communication participation.

If one hardware product combines Hub and Gate functions, the product owner must define its primary commercial identity and document the secondary function in the SKU master record.

### ZH-TW

Gate 與 Hub 必須區分，因為它們代表不同的系統功能。

|產品線|代碼|主要功能|典型職責|
|---|--:|---|---|
|Artibird Hub|HUB|本地 Runtime 中樞|本地服務、狀態管理、MQTT、自動化、ArtiOS 模組|
|Artibird Gate|GATE|設備接入網關|設備入網、通訊接入、協議參與、網關通訊|

Hub 可以與設備通訊，但其主要角色是本地 Runtime 協同。  
Gate 可以支援網路協同，但其主要角色是設備接入與通訊參與。

如果某一硬體產品同時具備 Hub 與 Gate 功能，產品負責人必須定義其主要商業身份，並在 SKU 主記錄中標註次要功能。

---

## 4.9 Special Boundary: OceanAI Cloud and OceanAI Edge

## 4.9 特別邊界：OceanAI Cloud 與 OceanAI Edge

### EN

OceanAI Cloud and OceanAI Edge are not standard Artibird device products, but they may require controlled codes for service plans, system records, deployment packages, integration documents, and commercial configuration sheets.

|System Layer|Code|Use Case|
|---|--:|---|
|OceanAI Cloud|CLD|Cloud subscription, remote service, account service, lifecycle management, analytics|
|OceanAI Edge|EDGE|Edge hardware, AI inference node, Jetson deployment, local SLM / VLM processing|

When these codes appear in SKU or commercial records, they must be used only for system-layer service or deployment references. They should not be confused with Artibird physical device product lines unless a specific packaged product is created.

### ZH-TW

OceanAI Cloud 與 OceanAI Edge 並不是標準 Artibird 設備產品，但在服務方案、系統記錄、部署套組、整合文件與商業配置表中，可能需要受控代碼。

|系統層|代碼|使用場景|
|---|--:|---|
|OceanAI Cloud|CLD|雲端訂閱、遠端服務、帳號服務、生命週期管理、分析|
|OceanAI Edge|EDGE|邊緣硬體、AI 推理節點、Jetson 部署、本地 SLM / VLM 處理|

當這些代碼出現在 SKU 或商業記錄中時，只能用於系統層服務或部署引用。除非建立明確的套裝產品，否則不應與 Artibird 實體設備產品線混淆。

---

## 4.10 Product Line Code Change Rules

## 4.10 產品線代碼變更規則

### EN

|Change Scenario|Should Product Line Code Change?|Requirement|
|---|---|---|
|Minor firmware update|No|Update firmware version only|
|PCB revision without product role change|No|Update engineering model only|
|Package change only|No|Update package code or package SKU|
|Region change only|No|Update region code|
|Connectivity change only|No|Update connectivity code|
|Power architecture change only|No, unless product role changes|Update power code and engineering model|
|Product changes from sensing to execution|Yes|Product line must be reviewed|
|Product changes from gateway to runtime center|Yes|Product line must be reviewed|
|Product combines multiple functions|Case-by-case|Primary system role must be documented|
|New product family created|Yes|New product line code must be approved|

### ZH-TW

|變更場景|是否應更改產品線代碼？|要求|
|---|---|---|
|輕微韌體更新|否|僅更新韌體版本|
|PCB 修訂但產品角色不變|否|僅更新工程型號|
|僅包裝變更|否|更新包裝代碼或包裝 SKU|
|僅區域變更|否|更新區域代碼|
|僅連接方式變更|否|更新連接代碼|
|僅供電架構變更|通常否，除非產品角色改變|更新供電代碼與工程型號|
|產品從感知變成執行|是|必須審查產品線|
|產品從網關變成本地 Runtime 中樞|是|必須審查產品線|
|產品同時具備多種功能|視情況|必須記錄主要系統角色|
|建立新產品家族|是|必須核准新的產品線代碼|

---

## 4.11 Product Line Code Governance Rules

## 4.11 產品線代碼治理規則

### EN

|Rule|Requirement|
|---|---|
|One product line code must represent one product family or system layer|Do not use one code for unrelated product roles|
|Product line codes must remain stable|Do not change codes for marketing preference|
|Product line codes must be approved before use|New codes require product and operations approval|
|Product line codes must match SKU master records|No unofficial codes in SKU tables|
|Product line codes must not imply certification|Certification status must be tracked separately|
|Product line codes must not replace variant codes|Product family and product variant must remain separate|
|Product line codes must not replace package codes|Product identity and package identity must remain separate|
|Deprecated codes must be archived|Do not silently reuse old codes for new meanings|

### ZH-TW

|規則|要求|
|---|---|
|一個產品線代碼必須代表一個產品家族或系統層|不得用同一代碼表示無關產品角色|
|產品線代碼必須保持穩定|不得因行銷偏好任意更改|
|產品線代碼使用前必須核准|新代碼需經產品與運營核准|
|產品線代碼必須與 SKU 主記錄一致|SKU 表中不得出現非官方代碼|
|產品線代碼不得暗示認證狀態|認證狀態必須另行追蹤|
|產品線代碼不得取代版本代碼|產品家族與產品版本必須分離|
|產品線代碼不得取代包裝代碼|產品身份與包裝身份必須分離|
|停用代碼必須歸檔|不得將舊代碼靜默重用為新含義|

---

## 4.12 Required Master Table Fields

## 4.12 必備主表欄位

### EN

Each SKU master record must include the product line code and related product line information.

|Field|Requirement|
|---|---|
|Product Line Code|Required|
|Product Line Name|Required|
|System Role|Required|
|Customer-Facing Name|Required|
|Internal Model Name|Required|
|SKU Code|Required|
|Product Line Owner|Required|
|Code Approval Status|Required|
|Code Revision Date|Required|
|Notes on Role Boundary|Required where applicable|

### ZH-TW

每一筆 SKU 主記錄都必須包含產品線代碼與相關產品線資訊。

|欄位|要求|
|---|---|
|產品線代碼|必填|
|產品線名稱|必填|
|系統角色|必填|
|面向客戶名稱|必填|
|內部型號名稱|必填|
|SKU 代碼|必填|
|產品線負責人|必填|
|代碼核准狀態|必填|
|代碼修訂日期|必填|
|角色邊界備註|適用時必填|

---

## 4.13 Chapter Conclusion

## 4.13 本章結論

### EN

Product line codes are the structural foundation of the Artibird SKU and model naming system.

They identify the product family or system layer to which a product, module, service, or deployment record belongs. A stable product line code system allows Artibird products and OceanAI system layers to remain traceable across engineering, certification, packaging, inventory, sales, deployment, and commercial release.

Product line codes must be clear, controlled, stable, and role-based. They should not be changed for minor technical, packaging, regional, or sales-channel differences.

### ZH-TW

產品線代碼是 Artibird SKU 與型號命名系統的結構基礎。

它用於識別產品、模組、服務或部署記錄所屬的產品家族或系統層。穩定的產品線代碼系統，可使 Artibird 產品與 OceanAI 系統層在工程、認證、包裝、庫存、銷售、部署與商業發布中保持可追蹤。

產品線代碼必須清晰、受控、穩定，並以系統角色為依據。不得因輕微技術差異、包裝差異、區域差異或銷售渠道差異而更改。

---

本章依據已建立的《Artibird SKU & Model Naming Specification v1.0》撰寫計劃展開；原始規劃中已將 Product Line Codes 設為 Chapter 4，並列出 HUB、GATE、SYNC、SW、PNL、ACT、SNS、VIS、APP、CLD、EDGE 作為產品線與系統層代碼。

**話題延伸｜互動建議**  
下一章可以繼續寫 **Chapter 5 — Generation Codes｜第五章｜世代代碼**，用來正式定義 G1、G2、G3、GX、DEV、EVT、DVT、PVT 的使用邊界。