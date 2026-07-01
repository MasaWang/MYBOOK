# Chapter 2 — Product Architecture Map

# 第二章｜產品架構映射

---

## 2.1 Purpose

## 2.1 目的

**EN**  
This chapter defines how Artibird products map to the OceanAI system architecture. Its purpose is to clarify the relationship between product roles and system layers, so that each product can be understood not only by its hardware form, but also by its architectural responsibility.

The Product Architecture Map helps customers, channel partners, system integrators, and internal teams understand how Hub, Gate, Sync, Switch, Panel, Act, Sense, Vision, and App participate in the OceanAI coordinated intelligent environment system.

**ZH-TW**  
本章定義 Artibird 產品如何映射至 OceanAI 系統架構。其目的，是釐清產品角色與系統層級之間的關係，使每一個產品不僅能依硬體形態被理解，也能依其架構責任被理解。

產品架構映射有助於客戶、渠道合作夥伴、系統整合商與內部團隊理解 Hub、Gate、Sync、Switch、Panel、Act、Sense、Vision 與 App 如何參與 OceanAI 協同智慧空間系統。

---

## 2.2 Product-to-System Layer Mapping

## 2.2 產品—系統層級映射

**EN**  
Artibird products correspond to specific layers within the OceanAI architecture. Some products belong primarily to one layer, while others participate across multiple layers depending on their variant, configuration, and deployment context.

The following matrix provides the primary mapping between OceanAI architecture layers and Artibird product roles.

**ZH-TW**  
Artibird 產品對應 OceanAI 架構中的特定層級。有些產品主要屬於單一層級，有些產品則會依版本、配置與部署情境參與多個層級。

以下矩陣提供 OceanAI 架構層級與 Artibird 產品角色之間的主要映射。

---

## English Table

|OceanAI Architecture Layer|Artibird / OceanAI Component|Primary Role|
|---|---|---|
|Cloud Layer|OceanAI Cloud|Remote access, synchronization, account services, lifecycle, analytics, and multi-site management|
|Edge Intelligence Layer|OceanAI Edge|Local AI-assisted inference, visual understanding, sensor fusion, and optimization support|
|Local Runtime Layer|Artibird Hub / ArtiOS|Local coordination, state management, automation, scenes, and runtime services|
|Device Access Layer|Artibird Gate|Device onboarding, gateway communication, local network participation, and protocol access|
|Interaction Layer|Artibird Switch / Panel / App|User intention, scene control, room interface, setup, and system interaction|
|Sensing Layer|Artibird Sense / Vision|Environmental sensing, visual context, occupancy, and spatial awareness|
|Execution Layer|Artibird Act / Switch Relay / Sync|Electrical execution, relay behavior, plug control, load control, and appliance synchronization|
|Device Participation Layer|Artibird Devices|Physical products participating in the OceanAI runtime system|

## 中文表

|OceanAI 架構層級|Artibird / OceanAI 組件|主要角色|
|---|---|---|
|雲端層|OceanAI Cloud|遠端存取、同步、帳號服務、生命週期、分析與多站點管理|
|邊緣智慧層|OceanAI Edge|本地 AI 輔助推理、視覺理解、感測融合與優化支持|
|本地 Runtime 層|Artibird Hub / ArtiOS|本地協同、狀態管理、自動化、場景與 Runtime 服務|
|設備接入層|Artibird Gate|設備入網、網關通訊、本地網路參與與協議接入|
|互動層|Artibird Switch / Panel / App|用戶意圖、場景控制、房間介面、設定與系統互動|
|感知層|Artibird Sense / Vision|環境感知、視覺上下文、人在與空間感知|
|執行層|Artibird Act / Switch Relay / Sync|電力執行、繼電器行為、插座控制、負載控制與家電同步|
|設備參與層|Artibird Devices|參與 OceanAI Runtime 系統的實體產品|

---

## 2.3 Product Participation Model

## 2.3 產品參與模型

**EN**  
Each Artibird product participates in the OceanAI system through a defined runtime role. Product participation means that a device is not only installed in a space, but also contributes to system behavior through data, events, commands, state, interaction, sensing, execution, or synchronization.

This participation model allows Artibird products to operate as coordinated system components rather than isolated endpoint devices.

**ZH-TW**  
每一個 Artibird 產品都透過已定義的 Runtime 角色參與 OceanAI 系統。產品參與不只是某個設備被安裝在空間中，而是該設備透過數據、事件、指令、狀態、互動、感知、執行或同步，對系統行為產生作用。

這種參與模型使 Artibird 產品作為協同系統組件運作，而不是孤立終端設備。

---

## English Table

|Product|Runtime Participation|Description|
|---|---|---|
|Artibird Hub|Runtime hosting|Hosts local services, ArtiOS modules, state, scenes, automations, and command routing|
|Artibird Gate|Device access|Connects supported devices to local runtime through supported network paths|
|Artibird Sync|Synchronization execution|Sends supported IR / RF commands and synchronizes appliances into scenes and automations|
|Artibird Switch|User event / execution|Captures touch events, triggers scenes, and supports relay control depending on variant|
|Artibird Panel|Room interaction|Provides shared room-level control, device groups, status feedback, and scene selection|
|Artibird Act|Electrical execution|Performs relay, plug, load control, and optional energy-aware execution|
|Artibird Sense|Environmental input|Provides temperature, humidity, light, occupancy, and context data|
|Artibird Vision|Visual input|Provides visual events, security awareness, and AI-assisted visual context where supported|
|Artibird App|User interface|Supports setup, configuration, control, local access, remote access, and status viewing|

## 中文表

|產品|Runtime 參與|說明|
|---|---|---|
|Artibird Hub|Runtime 承載|承載本地服務、ArtiOS 模組、狀態、場景、自動化與指令路由|
|Artibird Gate|設備接入|透過受支援網路路徑將設備接入本地 Runtime|
|Artibird Sync|同步執行|發送受支援 IR / RF 指令，將家電納入場景與自動化|
|Artibird Switch|用戶事件 / 執行|捕捉觸控事件、觸發場景，並依版本支援繼電器控制|
|Artibird Panel|房間互動|提供共享房間級控制、設備群組、狀態回饋與場景選擇|
|Artibird Act|電力執行|執行繼電器、插座、負載控制與可選能源感知執行|
|Artibird Sense|環境輸入|提供溫度、濕度、光照、人在與上下文數據|
|Artibird Vision|視覺輸入|在支援條件下提供視覺事件、安全感知與 AI 輔助視覺上下文|
|Artibird App|用戶介面|支援設定、配置、控制、本地存取、遠端存取與狀態查看|

---

## 2.4 Product Combination Logic

## 2.4 產品組合邏輯

**EN**  
The value of Artibird increases when products are combined according to system roles. A single product may provide a specific function, but a coordinated environment requires multiple products working together across runtime, access, interaction, sensing, execution, synchronization, cloud, and Edge layers.

For example, Hub provides local runtime, Gate provides device access, Switch and Panel capture user intention, Sense and Vision provide context, Act and Sync execute physical behavior, App provides user control, Cloud extends remote services, and Edge provides AI-assisted interpretation.

**ZH-TW**  
當 Artibird 產品依系統角色組合時，其價值會被放大。單一產品可以提供特定功能，但協同智慧空間需要多個產品在 Runtime、接入、互動、感知、執行、同步、雲端與 Edge 層級共同運作。

例如，Hub 提供本地 Runtime，Gate 提供設備接入，Switch 與 Panel 捕捉用戶意圖，Sense 與 Vision 提供上下文，Act 與 Sync 執行物理行為，App 提供用戶控制，Cloud 擴展遠端服務，Edge 提供 AI 輔助解讀。

---

## English Table

|Combination|System Meaning|Typical Use|
|---|---|---|
|Hub + App|Local runtime with user interface|Basic setup, control, and local system management|
|Hub + Gate|Local runtime with device access|Device onboarding and gateway-based deployment|
|Hub + Switch + Act|Local control and electrical execution|Lighting, relay, plug, and local control scenarios|
|Hub + Sense + Act|Sensor-based automation|Temperature, light, occupancy, or environmental automation|
|Hub + Sync + Sense|Appliance coordination|Climate and appliance synchronization|
|Hub + Panel + Switch|Shared room interaction|Room-level control and scene selection|
|Hub + Vision + Edge|AI-assisted visual context|Security awareness and visual interpretation|
|Hub + Cloud|Remote management and synchronization|Remote access, lifecycle, history, and multi-site management|
|Full System Combination|Coordinated intelligent environment|Complete smart home, classroom, building, campus, or infrastructure deployment|

## 中文表

|組合|系統意義|典型用途|
|---|---|---|
|Hub + App|本地 Runtime 與用戶介面|基礎設定、控制與本地系統管理|
|Hub + Gate|本地 Runtime 與設備接入|設備入網與基於網關的部署|
|Hub + Switch + Act|本地控制與電力執行|照明、繼電器、插座與本地控制場景|
|Hub + Sense + Act|基於感測的自動化|溫度、光照、人在或環境自動化|
|Hub + Sync + Sense|家電協同|空調與家電同步|
|Hub + Panel + Switch|共享房間互動|房間級控制與場景選擇|
|Hub + Vision + Edge|AI 輔助視覺上下文|安全感知與視覺解讀|
|Hub + Cloud|遠端管理與同步|遠端存取、生命週期、歷史與多站點管理|
|完整系統組合|協同智慧空間|完整智慧住宅、教室、建築、校園或基礎設施部署|

---

## 2.5 System Role of Each Product Category

## 2.5 各產品類別的系統角色

**EN**  
Each Artibird product category contributes to a specific system function. The catalog should therefore describe every product through its architectural role, customer-facing function, and deployment value.

This prevents product overlap and helps customers understand why multiple products may be required to form a complete system.

**ZH-TW**  
每一類 Artibird 產品都對應特定系統功能。因此，本型錄應透過架構角色、面向客戶的功能與部署價值來描述每一個產品。

這可以避免產品定位重疊，也能幫助客戶理解為什麼完整系統需要多個產品共同組成。

---

## English Table

|Product Category|Architecture Role|Customer-Facing Meaning|
|---|---|---|
|Hub|Local Runtime|The center that keeps local coordination running|
|Gate|Device Access|The gateway that connects supported devices into the system|
|Sync|Appliance Synchronization|The node that brings IR / RF appliances into smart scenes|
|Switch|Interaction / Execution|The wall control and event trigger for daily use|
|Panel|Shared Room Interface|The room-level control point for shared spaces|
|Act|Electrical Execution|The product that turns system commands into electrical actions|
|Sense|Environmental Context|The sensor layer that helps the system understand space conditions|
|Vision|Visual Context|The visual awareness layer for security and AI-assisted context|
|App|User Control|The interface for setup, control, viewing, and configuration|

## 中文表

|產品類別|架構角色|客戶可理解含義|
|---|---|---|
|Hub|本地 Runtime|讓本地協同持續運作的中樞|
|Gate|設備接入|將受支援設備接入系統的網關|
|Sync|家電同步|將 IR / RF 家電納入智慧場景的節點|
|Switch|互動 / 執行|日常使用的牆面控制與事件觸發設備|
|Panel|共享房間介面|共享空間中的房間級控制點|
|Act|電力執行|將系統指令轉化為電力動作的產品|
|Sense|環境上下文|幫助系統理解空間條件的感測層|
|Vision|視覺上下文|用於安全與 AI 輔助上下文的視覺感知層|
|App|用戶控制|用於設定、控制、查看與配置的介面|

---

## 2.6 Product Architecture Diagram — Text Reference

## 2.6 產品架構圖 — 文字參考

**EN**  
The following text reference can be used as the basis for a future visual architecture diagram in the PDF catalog, website, or sales presentation.

```text
OceanAI System Architecture
│
├── OceanAI Cloud
│   └── Remote access, synchronization, lifecycle, analytics, multi-site management
│
├── OceanAI Edge
│   └── AI-assisted inference, visual understanding, sensor fusion, optimization support
│
├── ArtiOS / Artibird Hub
│   └── Local runtime, state management, automation, scenes, command routing
│
├── Artibird Gate
│   └── Device access, onboarding, gateway communication, local network participation
│
├── Interaction Products
│   ├── Artibird Switch
│   ├── Artibird Panel
│   └── Artibird App
│
├── Sensing Products
│   ├── Artibird Sense
│   └── Artibird Vision
│
├── Execution Products
│   ├── Artibird Act
│   ├── Artibird Switch Relay variants
│   └── Artibird Sync
│
└── Coordinated Intelligent Environment
    └── Homes, classrooms, buildings, campuses, energy systems, agriculture, infrastructure
```

**ZH-TW**  
以下文字參考可作為未來 PDF 型錄、網站或銷售簡報中視覺架構圖的基礎。

```text
OceanAI 系統架構
│
├── OceanAI Cloud
│   └── 遠端存取、同步、生命週期、分析、多站點管理
│
├── OceanAI Edge
│   └── AI 輔助推理、視覺理解、感測融合、優化支持
│
├── ArtiOS / Artibird Hub
│   └── 本地 Runtime、狀態管理、自動化、場景、指令路由
│
├── Artibird Gate
│   └── 設備接入、入網、網關通訊、本地網路參與
│
├── 互動產品
│   ├── Artibird Switch
│   ├── Artibird Panel
│   └── Artibird App
│
├── 感知產品
│   ├── Artibird Sense
│   └── Artibird Vision
│
├── 執行產品
│   ├── Artibird Act
│   ├── Artibird Switch 繼電器版本
│   └── Artibird Sync
│
└── 協同智慧空間
    └── 住宅、教室、建築、校園、能源系統、農業、基礎設施
```

---

## 2.7 Catalog Claim Boundary

## 2.7 型錄宣稱邊界

**EN**  
The product architecture map explains how Artibird products are intended to participate in the OceanAI system. It does not automatically confirm that every function is implemented, validated, certified, or available in every model, region, or deployment.

Product capabilities depend on model, firmware version, hardware version, supported network path, installation condition, cloud availability, Edge availability, validation status, and certification status where applicable.

**ZH-TW**  
產品架構映射說明 Artibird 產品預期如何參與 OceanAI 系統。它不自動確認每一項功能已在每個型號、區域或部署中實作、驗證、認證或可用。

產品能力取決於型號、韌體版本、硬體版本、受支援網路路徑、安裝條件、雲端可用性、Edge 可用性、驗證狀態，以及適用時的認證狀態。

---

## English Table

|Avoid Saying|Preferred Catalog Language|
|---|---|
|All products work together in every condition|Products participate according to supported models, versions, configurations, and validation status|
|Artibird controls everything|Artibird controls supported devices and appliances under defined conditions|
|OceanAI Edge makes all products intelligent|OceanAI Edge provides AI-assisted support where deployed and validated|
|The system works fully offline|Supported local functions operate when required local components are present|
|All devices are compatible|Supported devices participate according to identity, capability, version, and validation status|

## 中文表

|避免使用|建議型錄語言|
|---|---|
|所有產品在任何條件下都可一起運作|產品依受支援型號、版本、配置與驗證狀態參與系統|
|Artibird 控制一切|Artibird 在明確條件下控制受支援設備與家電|
|OceanAI Edge 讓所有產品都具備智慧|OceanAI Edge 在已部署且已驗證條件下提供 AI 輔助支持|
|系統完全離線可用|當所需本地組件具備時，受支援本地功能可運作|
|所有設備都相容|受支援設備依身份、能力、版本與驗證狀態參與|

---

## 2.8 Chapter Conclusion

## 2.8 章節結論

**EN**  
Chapter 2 establishes the architecture map for the Artibird product family. It clarifies how each product maps to the OceanAI system layers and how each product participates in runtime behavior, device access, interaction, sensing, execution, synchronization, cloud services, and Edge intelligence.

This chapter provides the structural foundation for the product pages that follow. Each product page should continue to describe the product not only as a device, but as a defined participant within the OceanAI coordinated intelligent environment system.

**ZH-TW**  
第二章建立了 Artibird 產品家族的架構映射。它釐清每一個產品如何對應 OceanAI 系統層級，以及每一個產品如何參與 Runtime 行為、設備接入、互動、感知、執行、同步、雲端服務與 Edge 智慧。

本章為後續產品頁提供結構基礎。接下來每一個產品頁都應繼續將產品描述為 OceanAI 協同智慧空間系統中的已定義參與者，而不只是單一設備。