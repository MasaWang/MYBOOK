# Chapter 7 — Artibird Panel

# 第七章｜Artibird Panel

---

## 7.1 Product Positioning

## 7.1 產品定位

**EN**  
Artibird Panel is the **room-level interaction interface** of the Artibird product system. It provides a shared physical control surface for scene selection, device group control, room status feedback, and local system interaction.

Within the OceanAI architecture, Artibird Panel belongs primarily to the **Interaction Layer**. It allows users to interact with a space as a coordinated environment rather than controlling each device individually.

**ZH-TW**  
Artibird Panel 是 Artibird 產品系統中的**房間級互動介面**。它提供共享實體控制介面，用於場景選擇、設備群組控制、房間狀態回饋與本地系統互動。

在 OceanAI 架構中，Artibird Panel 主要屬於**互動層**。它使用戶能夠以協同空間的方式與房間互動，而不是逐一控制每個設備。

---

## 7.2 System Role

## 7.2 系統角色

**EN**  
Artibird Panel acts as a shared control point between users and the OceanAI runtime system. It can provide room-level access to scenes, device groups, selected controls, environmental status, and system feedback where implemented.

Compared with Artibird Switch, which is optimized for quick physical actions, Artibird Panel provides a broader room interface. It can make a room, classroom, meeting space, or shared area easier to operate by presenting supported controls and statuses in one location.

**ZH-TW**  
Artibird Panel 作為用戶與 OceanAI Runtime 系統之間的共享控制點。它可在已實作條件下提供房間級場景、設備群組、特定控制、環境狀態與系統回饋入口。

與偏向快速實體動作的 Artibird Switch 相比，Artibird Panel 提供更完整的房間介面。它可將受支援控制與狀態集中於一處，使房間、教室、會議空間或共享區域更容易操作。

---

## English Table

|System Layer|Panel Participation|
|---|---|
|Interaction Layer|Provides room-level shared control and scene selection|
|Local Runtime Layer|Sends user commands and scene requests to Hub / ArtiOS where configured|
|Device Access Layer|Connects through supported network paths depending on model|
|Sensing Layer|May display environmental data from Sense or supported sensing sources|
|Execution Layer|May trigger actions through Act, Sync, Switch relay variants, or supported execution nodes|
|Cloud Layer|May display or synchronize selected configuration and state through cloud-connected paths|
|Edge Intelligence Layer|May display AI-assisted alerts, recommendations, or visual context where supported|
|Device Participation Layer|Operates as a physical room interface in the coordinated system|

## 中文表

|系統層級|Panel 參與方式|
|---|---|
|互動層|提供房間級共享控制與場景選擇|
|本地 Runtime 層|在已配置條件下向 Hub / ArtiOS 發送用戶指令與場景請求|
|設備接入層|依型號透過受支援網路路徑連接|
|感知層|可顯示來自 Sense 或受支援感測來源的環境數據|
|執行層|可透過 Act、Sync、Switch 繼電器版本或受支援執行節點觸發動作|
|雲端層|可透過雲端連接路徑顯示或同步特定配置與狀態|
|邊緣智慧層|在支援條件下可顯示 AI 輔助警報、建議或視覺上下文|
|設備參與層|作為協同系統中的實體房間介面運作|

---

## 7.3 Core Functions

## 7.3 核心功能

**EN**  
Artibird Panel provides a shared interface for room-level coordination. Its functions may include scene selection, group control, device status display, environmental feedback, and selected system interaction depending on model and implementation.

The purpose of Panel is not to replace the App. Instead, Panel provides a physical, shared, always-accessible interface for spaces where multiple users need simple and immediate control.

**ZH-TW**  
Artibird Panel 提供房間級協同所需的共享介面。依型號與實作不同，其功能可包括場景選擇、群組控制、設備狀態顯示、環境回饋與特定系統互動。

Panel 的目的不是取代 App，而是為多個用戶需要簡單、即時控制的空間，提供一個實體、共享、可隨時存取的介面。

---

## English Table

|Core Function|Description|
|---|---|
|Room-level control|Provides control interface for a room, classroom, meeting space, or shared area|
|Scene selection|Allows users to trigger predefined scenes where configured|
|Device group control|Supports grouped control of selected devices where implemented|
|Status display|Displays supported device, room, environmental, or system status|
|Environmental feedback|May display temperature, humidity, light, occupancy, or other supported data|
|Shared user interface|Provides a physical interface accessible to multiple users|
|Local command input|Sends selected commands to Hub / ArtiOS where configured|
|Automation interaction|May enable, disable, or trigger selected automations where supported|
|Alert display|May display supported alerts, warnings, or status changes|
|Configuration access|May support selected local configuration functions depending on model|

## 中文表

|核心功能|說明|
|---|---|
|房間級控制|為房間、教室、會議空間或共享區域提供控制介面|
|場景選擇|在已配置條件下允許用戶觸發預定義場景|
|設備群組控制|在已實作條件下支援特定設備群組控制|
|狀態顯示|顯示受支援設備、房間、環境或系統狀態|
|環境回饋|可顯示溫度、濕度、光照、人在或其他受支援數據|
|共享用戶介面|提供多個用戶可存取的實體介面|
|本地指令輸入|在已配置條件下向 Hub / ArtiOS 發送特定指令|
|自動化互動|在支援條件下可啟用、停用或觸發特定自動化|
|警報顯示|可顯示受支援警報、提示或狀態變化|
|配置入口|依型號可支援特定本地配置功能|

---

## 7.4 Key Product Value

## 7.4 核心產品價值

**EN**  
Artibird Panel gives a space a visible and shared point of control. In homes, classrooms, offices, buildings, and shared facilities, not every user should depend only on a mobile App. Panel provides a direct interface that makes coordinated environments easier to understand and operate.

The value of Panel is especially strong in shared environments, where multiple users need access to common room functions such as lighting scenes, climate mode, AV control, energy mode, or room status.

**ZH-TW**  
Artibird Panel 為空間提供可見且共享的控制點。在住宅、教室、辦公室、建築與共享設施中，不應讓所有用戶都完全依賴手機 App。Panel 提供直接介面，使協同空間更容易理解與操作。

Panel 在共享環境中尤其具有價值，因為多個用戶需要存取共同房間功能，例如照明場景、空調模式、影音控制、能源模式或房間狀態。

---

## English Table

|Product Value|Description|
|---|---|
|Shared control|Provides a common control point for multiple users|
|Room-level clarity|Makes room functions easier to see and operate|
|Reduced App dependency|Allows common actions without requiring mobile App access|
|Scene accessibility|Makes predefined scenes available through a physical interface|
|Better public-space usability|Supports classrooms, meeting rooms, offices, and shared areas|
|Status visibility|Provides visible feedback for room or device state where implemented|
|Faster daily operation|Allows frequently used controls to be accessed quickly|
|System participation|Turns room interaction into structured runtime commands|

## 中文表

|產品價值|說明|
|---|---|
|共享控制|為多個用戶提供共同控制點|
|房間級清晰度|使房間功能更容易被看見與操作|
|降低 App 依賴|常用動作不必依賴手機 App 存取|
|場景可達性|透過實體介面提供預定義場景入口|
|更適合公共空間|支援教室、會議室、辦公室與共享區域|
|狀態可視化|在已實作條件下提供房間或設備狀態回饋|
|更快日常操作|使高頻控制能夠快速存取|
|系統參與|將房間互動轉化為結構化 Runtime 指令|

---

## 7.5 Panel and Switch Relationship

## 7.5 Panel 與 Switch 的關係

**EN**  
Artibird Panel and Artibird Switch both belong to the interaction layer, but they serve different interaction depths.

Artibird Switch is optimized for quick wall-based actions such as touch, scene trigger, or relay control depending on variant. Artibird Panel is optimized for broader room-level interaction, shared control, status display, and multi-function access.

They should be presented as complementary products rather than competing products.

**ZH-TW**  
Artibird Panel 與 Artibird Switch 都屬於互動層，但它們服務於不同深度的互動需求。

Artibird Switch 側重於快速牆面動作，例如觸控、場景觸發或依版本進行繼電器控制。Artibird Panel 側重於更完整的房間級互動、共享控制、狀態顯示與多功能入口。

它們應被呈現為互補產品，而不是相互競爭的產品。

---

## English Table

|Product|Interaction Focus|Typical Role|
|---|---|---|
|Artibird Switch|Quick physical action|Touch, scene trigger, local manual control, relay behavior by variant|
|Artibird Panel|Room-level shared interface|Scene selection, group control, status display, multi-user access|
|Switch + Panel|Combined interaction layer|Quick actions plus broader shared room interface|

## 中文表

|產品|互動重點|典型角色|
|---|---|---|
|Artibird Switch|快速實體動作|觸控、場景觸發、本地手動控制、依版本支援繼電器行為|
|Artibird Panel|房間級共享介面|場景選擇、群組控制、狀態顯示、多用戶存取|
|Switch + Panel|組合互動層|快速動作加上更完整的共享房間介面|

---

## 7.6 Interaction Model

## 7.6 互動模型

**EN**  
Artibird Panel converts room-level user input into runtime events or commands. A user may select a scene, control a group of devices, view environmental state, or trigger a supported action. These interactions are processed through Hub / ArtiOS according to permission, configuration, priority, target capability, and runtime state.

Panel interactions should remain bounded by supported product model, firmware version, network path, user role, room configuration, device compatibility, and validation status.

**ZH-TW**  
Artibird Panel 將房間級用戶輸入轉換為 Runtime 事件或指令。用戶可以選擇場景、控制設備群組、查看環境狀態或觸發受支援動作。這些互動會依權限、配置、優先級、目標能力與 Runtime 狀態，透過 Hub / ArtiOS 處理。

Panel 互動必須受到受支援產品型號、韌體版本、網路路徑、用戶角色、房間配置、設備相容性與驗證狀態約束。

---

## English Table

|Flow Stage|Description|
|---|---|
|User input|User selects scene, group, device, mode, or supported action|
|Panel event|Panel generates an interaction event or command request|
|Runtime processing|Hub / ArtiOS evaluates permission, configuration, priority, and target|
|Command routing|Runtime routes supported commands to Act, Sync, Switch, Cloud, or other targets|
|State update|System updates device, scene, room, or runtime state where supported|
|Feedback display|Panel displays result, state, alert, or status where implemented|

## 中文表

|流程階段|說明|
|---|---|
|用戶輸入|用戶選擇場景、群組、設備、模式或受支援動作|
|Panel 事件|Panel 生成互動事件或指令請求|
|Runtime 處理|Hub / ArtiOS 判斷權限、配置、優先級與目標|
|指令路由|Runtime 將受支援指令路由至 Act、Sync、Switch、Cloud 或其他目標|
|狀態更新|支援條件下系統更新設備、場景、房間或 Runtime 狀態|
|回饋顯示|Panel 在已實作條件下顯示結果、狀態、警報或提示|

---

## 7.7 Typical Use Cases

## 7.7 典型應用場景

**EN**  
Artibird Panel is suitable for spaces where multiple controls should be centralized into a shared physical interface. It is especially useful in shared rooms, classrooms, meeting rooms, offices, public areas, hospitality spaces, and building environments.

**ZH-TW**  
Artibird Panel 適用於需要將多種控制集中於共享實體介面的空間。它尤其適用於共享房間、教室、會議室、辦公室、公共區域、接待空間與建築環境。

---

## English Table

|Use Case|Description|
|---|---|
|Smart Home Room Control|Provides shared control for living rooms, bedrooms, kitchens, or common areas|
|Smart Classroom|Allows teachers or staff to control classroom scenes, lighting, climate, or AV functions|
|Meeting Room Control|Provides one interface for lighting, display, climate, and room modes|
|Office Shared Area|Supports shared control for workspaces, lounges, or facility areas|
|Hotel / Hospitality Room|Provides guest-facing scene and room control where configured|
|Building Zone Control|Provides zone-level status and control for selected building areas|
|Energy Mode Selection|May allow users to select comfort, energy-saving, or schedule modes where supported|
|Security / Alert Display|May display supported alerts or status from Vision, Sense, Cloud, or Edge|

## 中文表

|應用場景|說明|
|---|---|
|智慧住宅房間控制|為客廳、臥室、廚房或公共區域提供共享控制|
|智慧教室|允許教師或管理人員控制教室場景、照明、空調或影音功能|
|會議室控制|為照明、顯示、空調與房間模式提供單一介面|
|辦公共享區域|支援工位區、休息區或設施區域的共享控制|
|酒店 / 接待空間房間控制|在已配置條件下提供面向住客的場景與房間控制|
|建築區域控制|為特定建築區域提供區域級狀態與控制|
|能源模式選擇|在支援條件下允許用戶選擇舒適、節能或排程模式|
|安全 / 警報顯示|可顯示來自 Vision、Sense、Cloud 或 Edge 的受支援警報或狀態|

---

## 7.8 Recommended Product Combinations

## 7.8 建議產品組合

**EN**  
Artibird Panel is most useful when connected with Hub / ArtiOS and combined with interaction, sensing, execution, and synchronization products. It can make the whole system easier to operate from a room-level interface.

**ZH-TW**  
Artibird Panel 與 Hub / ArtiOS 連接，並與互動、感知、執行與同步產品組合時最具價值。它可以讓整個系統透過房間級介面更容易操作。

---

## English Table

|Product Combination|Typical Purpose|
|---|---|
|Panel + Hub|Room-level interface connected to local runtime|
|Panel + Hub + Switch|Combines quick wall actions with broader room control|
|Panel + Hub + Act|Controls lighting, plugs, relays, or selected electrical execution nodes|
|Panel + Hub + Sync|Controls supported appliances and room scenes|
|Panel + Hub + Sense|Displays environmental status and supports sensor-related interaction|
|Panel + Hub + Vision|Displays selected security or visual event status where supported|
|Panel + Cloud|Supports remote configuration or synchronized room settings where implemented|
|Panel + Edge|May display AI-assisted alerts, recommendations, or context where deployed|
|Panel + Full Product Set|Creates a complete room-level control interface for coordinated environments|

## 中文表

|產品組合|典型用途|
|---|---|
|Panel + Hub|連接本地 Runtime 的房間級介面|
|Panel + Hub + Switch|結合快速牆面動作與更完整房間控制|
|Panel + Hub + Act|控制照明、插座、繼電器或特定電力執行節點|
|Panel + Hub + Sync|控制受支援家電與房間場景|
|Panel + Hub + Sense|顯示環境狀態並支援感測相關互動|
|Panel + Hub + Vision|在支援條件下顯示特定安全或視覺事件狀態|
|Panel + Cloud|在已實作條件下支持遠端配置或同步房間設定|
|Panel + Edge|在已部署條件下可顯示 AI 輔助警報、建議或上下文|
|Panel + 完整產品組合|為協同智慧空間建立完整房間級控制介面|

---

## 7.9 Customer-Readable Description

## 7.9 客戶可讀描述

**EN**  
Artibird Panel gives each room a clear and shared control point. Users can select scenes, control device groups, view room status, and interact with supported system functions without relying only on a phone.

For homes, classrooms, meeting rooms, and shared spaces, Artibird Panel makes intelligent environments easier to use, easier to understand, and easier to share.

**ZH-TW**  
Artibird Panel 為每個房間提供清晰且共享的控制點。用戶可以選擇場景、控制設備群組、查看房間狀態，並與受支援系統功能互動，而不必只依賴手機。

對住宅、教室、會議室與共享空間而言，Artibird Panel 讓智慧空間更容易使用、更容易理解，也更容易共享。

---

## 7.10 Product Page Summary

## 7.10 產品頁摘要

## EN

**Artibird Panel**  
Room-Level Interaction Interface for Coordinated Intelligent Environments

Artibird Panel provides a shared physical interface for room control, scene selection, device group control, status display, and selected system interaction. It helps users operate a coordinated space through one visible control point connected to Hub / ArtiOS and supported Artibird products.

## ZH-TW

**Artibird Panel**  
面向協同智慧空間的房間級互動介面

Artibird Panel 提供共享實體介面，用於房間控制、場景選擇、設備群組控制、狀態顯示與特定系統互動。它幫助用戶透過一個可見控制點操作協同空間，並與 Hub / ArtiOS 及受支援 Artibird 產品連接。

---

## 7.11 Catalog Claim Boundary

## 7.11 型錄宣稱邊界

**EN**  
Artibird Panel capabilities depend on product model, firmware version, display or interface design, supported control functions, network path, room configuration, user permission, connected devices, runtime configuration, cloud availability, Edge availability, and validation status.

Artibird Panel should not be described as controlling all devices, replacing all App functions, supporting all room configurations, guaranteeing every automation, or displaying all system data unless separately implemented, validated, and approved.

**ZH-TW**  
Artibird Panel 能力取決於產品型號、韌體版本、顯示或介面設計、受支援控制功能、網路路徑、房間配置、用戶權限、已連接設備、Runtime 配置、雲端可用性、Edge 可用性與驗證狀態。

除非另行實作、驗證與核准，Artibird Panel 不應被描述為控制所有設備、取代所有 App 功能、支援所有房間配置、保證每一項自動化，或顯示所有系統數據。

---

## English Table

|Avoid Saying|Preferred Catalog Language|
|---|---|
|Panel controls everything|Panel controls supported devices, groups, scenes, and functions under defined configuration|
|Panel replaces the App|Panel provides shared room-level interaction; App remains used for setup, configuration, and supported control|
|Panel supports all rooms|Panel supports defined room configurations under supported deployment conditions|
|Panel displays all system data|Panel displays supported status and data where implemented|
|Panel guarantees automation|Panel may trigger or interact with defined automation under supported runtime conditions|
|Panel works in all network conditions|Panel operates under supported network, power, and runtime conditions|
|Panel supports every user role|Panel access depends on user role, permission, and configuration where implemented|

## 中文表

|避免使用|建議型錄語言|
|---|---|
|Panel 控制一切|Panel 在明確配置下控制受支援設備、群組、場景與功能|
|Panel 取代 App|Panel 提供共享房間級互動；App 仍用於設定、配置與受支援控制|
|Panel 支援所有房間|Panel 在受支援部署條件下支援已定義房間配置|
|Panel 顯示所有系統數據|Panel 在已實作條件下顯示受支援狀態與數據|
|Panel 保證自動化|Panel 可在受支援 Runtime 條件下觸發或互動已定義自動化|
|Panel 在所有網路條件下運作|Panel 在受支援網路、供電與 Runtime 條件下運作|
|Panel 支援每一種用戶角色|Panel 存取取決於已實作用戶角色、權限與配置|

---

## 7.12 Chapter Conclusion

## 7.12 章節結論

**EN**  
Artibird Panel is the room-level interaction interface of the Artibird product family. It provides a shared physical interface for scenes, room control, device groups, status feedback, and selected system interaction.

In the Artibird catalog, Panel should be presented as the product that makes coordinated intelligent environments visible and operable at the room level. It complements Switch and App by providing a shared control point for spaces where immediate and collective interaction is required.

**ZH-TW**  
Artibird Panel 是 Artibird 產品家族中的房間級互動介面。它為場景、房間控制、設備群組、狀態回饋與特定系統互動提供共享實體介面。

在 Artibird 型錄中，Panel 應被呈現為使協同智慧空間在房間層級可見且可操作的產品。它與 Switch 和 App 互補，為需要即時且共享互動的空間提供共同控制點。