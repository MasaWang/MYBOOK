# Chapter 14 — Smart Campus and Building Product Combination

# 第十四章｜智慧校園與智慧建築產品組合

---

## 14.1 Product Combination Positioning

## 14.1 產品組合定位

**EN**  
The Smart Campus and Building Product Combination defines how Artibird products can be deployed across multiple rooms, floors, buildings, zones, classrooms, offices, shared spaces, and infrastructure areas.

Within the OceanAI architecture, a smart campus or smart building is not treated as a collection of independent rooms or devices. It is treated as a coordinated spatial system where local runtime centers, device access gateways, interaction interfaces, sensing nodes, execution nodes, synchronization devices, visual perception nodes, cloud services, and Edge intelligence can work together under defined deployment and validation conditions.

**ZH-TW**  
智慧校園與智慧建築產品組合定義 Artibird 產品如何部署於多房間、多樓層、多建築、多區域、教室、辦公空間、共享空間與基礎設施區域。

在 OceanAI 架構中，智慧校園或智慧建築不被視為一組獨立房間或設備，而是被視為一個協同空間系統。本地 Runtime 中樞、設備接入網關、互動介面、感知節點、執行節點、同步設備、視覺感知節點、雲端服務與 Edge 智慧，都可在明確部署與驗證條件下共同運作。

---

## 14.2 System Role

## 14.2 系統角色

**EN**  
In a smart campus or smart building deployment, Artibird products provide distributed coordination across multiple spaces. Each room, floor, building, or zone may contain different combinations of Hub, Gate, Panel, Switch, Act, Sense, Sync, Vision, and App access.

Artibird Hub and ArtiOS provide local runtime behavior. Artibird Gate supports device access across supported network paths. Artibird Panel and Switch provide user interaction. Artibird Sense and Vision provide environmental and visual context. Artibird Act and Sync provide execution and appliance synchronization. OceanAI Cloud supports multi-site visibility, synchronization, remote management, historical data, and lifecycle services. OceanAI Edge may support local AI-assisted interpretation where deployed.

**ZH-TW**  
在智慧校園或智慧建築部署中，Artibird 產品提供跨多空間的分布式協同。每個房間、樓層、建築或區域，可依需求配置不同組合的 Hub、Gate、Panel、Switch、Act、Sense、Sync、Vision 與 App 存取。

Artibird Hub 與 ArtiOS 提供本地 Runtime 行為。Artibird Gate 支援跨受支援網路路徑的設備接入。Artibird Panel 與 Switch 提供用戶互動。Artibird Sense 與 Vision 提供環境與視覺上下文。Artibird Act 與 Sync 提供執行與家電同步。OceanAI Cloud 支援多站點可視化、同步、遠端管理、歷史數據與生命週期服務。OceanAI Edge 可在已部署條件下支援本地 AI 輔助解讀。

---

## English Table

|Building / Campus Function|Recommended Components|System Meaning|
|---|---|---|
|Local runtime coordination|Hub / ArtiOS|Maintains room, floor, building, or zone-level runtime behavior|
|Device access|Gate|Connects supported devices across defined network paths|
|Room interaction|Panel / Switch / App|Provides room-level, wall-level, and software-based control|
|Environmental sensing|Sense|Provides temperature, humidity, light, occupancy, and context input|
|Electrical execution|Act / Switch relay variants|Controls supported loads, outlets, relays, and equipment|
|Appliance synchronization|Sync|Coordinates supported IR / RF appliances and AV devices|
|Visual awareness|Vision / Edge / Cloud|Supports visual events, alerts, and AI-assisted context where deployed|
|Multi-site management|Cloud|Supports remote visibility, account, lifecycle, history, and reporting|
|Energy workflows|Act-E / Sense / Cloud / Edge|Supports energy-aware reporting and automation where validated|
|Operational visibility|App / Cloud / Panel|Provides status, alerts, configuration, and user-facing visibility|

## 中文表

|建築 / 校園功能|建議組件|系統意義|
|---|---|---|
|本地 Runtime 協同|Hub / ArtiOS|維持房間、樓層、建築或區域級 Runtime 行為|
|設備接入|Gate|透過已定義網路路徑連接受支援設備|
|房間互動|Panel / Switch / App|提供房間級、牆面級與軟體控制|
|環境感知|Sense|提供溫度、濕度、光照、人在與上下文輸入|
|電力執行|Act / Switch 繼電器版本|控制受支援負載、插座、繼電器與設備|
|家電同步|Sync|協同受支援 IR / RF 家電與影音設備|
|視覺感知|Vision / Edge / Cloud|在部署條件下支援視覺事件、警報與 AI 輔助上下文|
|多站點管理|Cloud|支援遠端可視化、帳號、生命週期、歷史與報告|
|能源工作流|Act-E / Sense / Cloud / Edge|在已驗證條件下支援能源感知報告與自動化|
|運行可視化|App / Cloud / Panel|提供狀態、警報、配置與面向用戶的可視化|

---

## 14.3 Core Campus and Building Functions

## 14.3 核心校園與建築功能

**EN**  
The smart campus and building product combination should support multi-space operation. It should help facility teams manage lighting, climate, power loads, room status, environmental conditions, shared areas, alerts, energy workflows, and device lifecycle across defined spaces.

The core value is coordinated operation at scale. Instead of managing every room, device, or system separately, the deployment can organize spaces into rooms, zones, floors, buildings, campuses, or sites under a consistent runtime and cloud-supported structure.

**ZH-TW**  
智慧校園與智慧建築產品組合應支援多空間運行。它應幫助設施團隊在已定義空間內管理照明、空調、電力負載、房間狀態、環境條件、共享區域、警報、能源工作流與設備生命週期。

其核心價值是規模化協同運行。部署不再需要逐一管理每個房間、設備或系統，而是可以在一致的 Runtime 與雲端支持結構下，將空間組織為房間、區域、樓層、建築、校園或站點。

---

## English Table

|Core Function|Description|
|---|---|
|Multi-room coordination|Coordinates devices and scenes across multiple rooms or spaces|
|Multi-zone control|Supports defined zones, floors, areas, or buildings under configured structure|
|Lighting and load control|Controls supported lighting, plugs, relays, and equipment loads|
|Climate coordination|Coordinates supported air conditioners or climate-related devices through Sense, Sync, Act, and runtime logic|
|Environmental visibility|Displays temperature, humidity, light, occupancy, or other supported data|
|Shared-space interaction|Provides Panel, Switch, and App access for common areas|
|Energy-aware operation|Supports reporting, schedules, alerts, and energy-related workflows where validated|
|Visual awareness|Supports Vision-based alerts or visual context where configured|
|Remote visibility|Uses Cloud for multi-site status, reports, and management where implemented|
|Local continuity|Supports defined local functions when required local components are present|

## 中文表

|核心功能|說明|
|---|---|
|多房間協同|協同多個房間或空間中的設備與場景|
|多區域控制|在已配置結構下支援特定區域、樓層、空間或建築|
|照明與負載控制|控制受支援照明、插座、繼電器與設備負載|
|空調協同|透過 Sense、Sync、Act 與 Runtime 邏輯協同受支援空調或氣候相關設備|
|環境可視化|顯示溫度、濕度、光照、人在或其他受支援數據|
|共享空間互動|為公共區域提供 Panel、Switch 與 App 存取|
|能源感知運行|在已驗證條件下支援報告、排程、警報與能源相關工作流|
|視覺感知|在已配置條件下支援基於 Vision 的警報或視覺上下文|
|遠端可視化|在已實作條件下透過 Cloud 提供多站點狀態、報告與管理|
|本地延續|當所需本地組件具備時，支援已定義本地功能|

---

## 14.4 Recommended Product Packages

## 14.4 建議產品套組

**EN**  
Smart campus and building deployments can be organized into reference packages according to site size, infrastructure complexity, number of rooms, energy requirements, visual awareness requirements, and management scope.

These packages should be treated as planning references. Final deployment should be based on site survey, wiring condition, network topology, room structure, safety requirement, privacy requirement, validation status, and budget.

**ZH-TW**  
智慧校園與智慧建築部署可依站點規模、基礎設施複雜度、房間數量、能源需求、視覺感知需求與管理範圍，組織為參考套組。

這些套組應被視為規劃參考。最終部署應基於站點勘察、接線條件、網路拓撲、房間結構、安全要求、隱私要求、驗證狀態與預算。

---

## English Table

|Package|Recommended Components|Typical Purpose|
|---|---|---|
|Building Basic Control Package|Hub, Gate, Switch, Act, App|Basic room and load control across selected spaces|
|Building Room Interface Package|Hub, Gate, Panel, Switch, Act, App|Room-level shared control and scene operation|
|Building Sensing Package|Hub, Gate, Sense, Panel, App|Environmental visibility and sensor-based automation|
|Building Energy Package|Hub, Act-E, Sense, Cloud, App|Energy data, reporting, alerts, and energy-aware workflows|
|Building Vision Package|Hub, Vision, Cloud, Edge, App|Visual events, alerts, and AI-assisted visual context where supported|
|Campus Distributed Package|Multiple Hub, Gate, Sense, Act, Panel, Cloud|Distributed building or multi-zone deployment|
|Full Smart Campus Package|Hub, Gate, Panel, Switch, Act, Sense, Sync, Vision, App, Cloud, Edge|Full coordinated campus or building deployment|

## 中文表

|套組|建議組件|典型用途|
|---|---|---|
|建築基礎控制套組|Hub、Gate、Switch、Act、App|特定空間的基礎房間與負載控制|
|建築房間介面套組|Hub、Gate、Panel、Switch、Act、App|房間級共享控制與場景運行|
|建築感知套組|Hub、Gate、Sense、Panel、App|環境可視化與基於感測的自動化|
|建築能源套組|Hub、Act-E、Sense、Cloud、App|能源數據、報告、警報與能源感知工作流|
|建築視覺套組|Hub、Vision、Cloud、Edge、App|在支援條件下提供視覺事件、警報與 AI 輔助視覺上下文|
|校園分布式套組|多個 Hub、Gate、Sense、Act、Panel、Cloud|分布式建築或多區域部署|
|完整智慧校園套組|Hub、Gate、Panel、Switch、Act、Sense、Sync、Vision、App、Cloud、Edge|完整協同校園或建築部署|

---

## 14.5 Building and Campus Scene Examples

## 14.5 建築與校園場景示例

**EN**  
Building and campus scenes can combine lighting, HVAC-related devices, room status, public-area control, schedules, access-related workflows, energy modes, and alerts. Scene behavior should be configured according to site policy, space type, user role, safety requirements, and validation status.

**ZH-TW**  
建築與校園場景可結合照明、空調相關設備、房間狀態、公共區域控制、排程、存取相關工作流、能源模式與警報。場景行為應依站點政策、空間類型、用戶角色、安全要求與驗證狀態配置。

---

## English Table

|Scene|Possible Behavior|
|---|---|
|Workday Start Mode|Turns on selected common-area lighting, prepares rooms, updates status, and starts schedules|
|After-Hours Mode|Reduces lighting, powers down selected loads, adjusts climate behavior, and logs space status|
|Meeting Mode|Prepares meeting rooms with lighting, display, climate, and supported device settings|
|Classroom Day Mode|Prepares teaching spaces according to schedules and supported device conditions|
|Energy Saving Mode|Reduces non-essential loads, adjusts temperature ranges, and enables occupancy-based workflows|
|Public Area Mode|Controls hallway, lobby, lounge, or shared-area lighting and equipment|
|Maintenance Mode|Enables selected service access, lighting, and equipment states for facility staff|
|Alert Mode|Displays or routes supported alerts according to validated safety and response policy|

## 中文表

|場景|可能行為|
|---|---|
|工作日開始模式|開啟特定公共區域照明、準備房間、更新狀態並啟動排程|
|下班後模式|降低照明、關閉特定負載、調整空調行為並記錄空間狀態|
|會議模式|為會議室準備照明、顯示設備、空調與受支援設備設定|
|教學日模式|依排程與受支援設備條件準備教學空間|
|節能模式|降低非必要負載、調整溫度範圍並啟用基於人在的工作流|
|公共區域模式|控制走廊、大廳、休息區或共享區域照明與設備|
|維護模式|為設施人員啟用特定服務存取、照明與設備狀態|
|警報模式|依已驗證安全與響應政策顯示或路由受支援警報|

---

## 14.6 Building and Campus Runtime Flow

## 14.6 建築與校園 Runtime 流程

**EN**  
In a smart campus or building deployment, runtime flow should support distributed operation while maintaining consistent governance. Events may originate from rooms, zones, buildings, shared areas, sensors, panels, switches, App, Cloud, or Edge.

Hub / ArtiOS should evaluate supported events and commands according to permission, priority, safety, device capability, space hierarchy, and validation conditions before physical execution.

**ZH-TW**  
在智慧校園或智慧建築部署中，Runtime 流程應支持分布式運行，同時保持一致治理。事件可來自房間、區域、建築、共享空間、感測器、面板、開關、App、Cloud 或 Edge。

Hub / ArtiOS 應在物理執行前，依權限、優先級、安全、設備能力、空間層級與驗證條件，判斷受支援事件與指令。

---

## English Table

|Flow Stage|Description|
|---|---|
|Input source|Panel, Switch, App, schedule, Sense, Vision, Cloud, Edge, or facility workflow|
|Space identification|Runtime identifies room, zone, floor, building, campus, or site context|
|Runtime evaluation|Hub / ArtiOS evaluates permission, priority, target capability, safety, and state|
|Command routing|Commands are routed to Act, Sync, Switch relay variants, Panel, App, Cloud, or supported targets|
|Physical execution|Supported devices execute lighting, load, climate, AV, plug, relay, or appliance actions|
|State synchronization|Room, zone, building, device, scene, and automation states are updated where supported|
|Feedback|Panel, App, Cloud dashboard, or local interface displays supported result or status|
|Reporting|Logs, alerts, energy data, device health, or lifecycle data may synchronize where configured|

## 中文表

|流程階段|說明|
|---|---|
|輸入來源|Panel、Switch、App、排程、Sense、Vision、Cloud、Edge 或設施工作流|
|空間識別|Runtime 識別房間、區域、樓層、建築、校園或站點上下文|
|Runtime 判斷|Hub / ArtiOS 判斷權限、優先級、目標能力、安全與狀態|
|指令路由|指令路由至 Act、Sync、Switch 繼電器版本、Panel、App、Cloud 或受支援目標|
|物理執行|受支援設備執行照明、負載、空調、影音、插座、繼電器或家電動作|
|狀態同步|在支援條件下更新房間、區域、建築、設備、場景與自動化狀態|
|回饋|Panel、App、Cloud 儀表板或本地介面顯示受支援結果或狀態|
|報告|在已配置條件下，同步日誌、警報、能源數據、設備健康或生命週期數據|

---

## 14.7 Multi-Space Organization Model

## 14.7 多空間組織模型

**EN**  
Smart campus and building deployments require a clear spatial organization model. Devices should be assigned to defined spaces such as rooms, zones, floors, buildings, campuses, or sites. This structure supports clearer control, reporting, permissions, schedules, and maintenance.

Spatial organization also prevents confusion between local room control and broader facility-level control.

**ZH-TW**  
智慧校園與智慧建築部署需要清楚的空間組織模型。設備應被分配至已定義空間，例如房間、區域、樓層、建築、校園或站點。這種結構支持更清楚的控制、報告、權限、排程與維護。

空間組織也可避免本地房間控制與更大設施級控制之間產生混淆。

---

## English Table

|Space Level|Description|
|---|---|
|Room|Classroom, office, meeting room, lab, dorm room, or shared room|
|Zone|Group of rooms, hallway area, wing, floor section, or functional area|
|Floor|Floor-level organization across rooms and zones|
|Building|Building-level structure containing floors, rooms, and zones|
|Campus|Multi-building environment with shared services and centralized visibility|
|Site|Larger deployment unit for account, management, reports, and lifecycle functions|

## 中文表

|空間層級|說明|
|---|---|
|房間|教室、辦公室、會議室、實驗室、宿舍房間或共享房間|
|區域|房間群、走廊區、翼樓、樓層分區或功能區|
|樓層|跨房間與區域的樓層級組織|
|建築|包含樓層、房間與區域的建築級結構|
|校園|具備共享服務與集中可視化的多建築環境|
|站點|用於帳號、管理、報告與生命週期功能的更大部署單位|

---

## 14.8 Facility Roles and Access Control

## 14.8 設施角色與存取控制

**EN**  
Campus and building deployments require role-based access control. Different users should have different levels of access depending on their responsibility, building area, and system policy.

A teacher, office user, facility staff member, installer, administrator, and security staff member should not necessarily have the same permissions.

**ZH-TW**  
校園與建築部署需要基於角色的存取控制。不同用戶應依其責任、建築區域與系統政策，擁有不同層級的存取權。

教師、辦公用戶、設施人員、安裝人員、管理員與安保人員，不一定應具備相同權限。

---

## English Table

|User Role|Typical Access Scope|Recommended Interface|
|---|---|---|
|Room User|Assigned room or shared area control|Panel, Switch, App|
|Teacher / Staff|Classroom or assigned space scenes and controls|Panel, App|
|Facility Staff|Building-level equipment, schedules, energy, and maintenance|App, Cloud dashboard|
|Installer|Device onboarding, configuration, gateway setup, and testing|App, Hub, Gate tools where implemented|
|Administrator|Site, account, user roles, policies, reports, and lifecycle|Cloud, App, account tools|
|Security Staff|Supported alerts, Vision events, and response workflows|Vision, App, Cloud, Edge where deployed|
|Guest|Limited temporary access where configured|App or restricted interface|

## 中文表

|用戶角色|典型存取範圍|建議介面|
|---|---|---|
|房間用戶|指定房間或共享區域控制|Panel、Switch、App|
|教師 / 工作人員|教室或指定空間場景與控制|Panel、App|
|設施人員|建築級設備、排程、能源與維護|App、Cloud 儀表板|
|安裝人員|設備入網、配置、網關設定與測試|App、Hub、Gate 工具，在已實作條件下|
|管理員|站點、帳號、用戶角色、政策、報告與生命週期|Cloud、App、帳號工具|
|安保人員|受支援警報、Vision 事件與響應工作流|Vision、App、Cloud、Edge，在已部署條件下|
|訪客|在已配置條件下的有限臨時存取|App 或受限介面|

---

## 14.9 Customer-Readable Description

## 14.9 客戶可讀描述

**EN**  
Artibird smart campus and building combinations help schools, offices, facilities, and multi-room environments operate with better coordination. Instead of managing lights, air conditioners, plugs, sensors, cameras, and room interfaces separately, the system organizes them through local runtime, cloud visibility, and defined product roles.

A building can be managed by room, zone, floor, or site. A campus can connect multiple buildings into one coordinated structure. Facility teams can see status, manage schedules, control selected loads, monitor energy behavior, and respond to supported alerts under defined deployment conditions.

**ZH-TW**  
Artibird 智慧校園與智慧建築產品組合，幫助學校、辦公、設施與多房間環境實現更好的協同運行。系統不再逐一管理照明、空調、插座、感測器、攝影機與房間介面，而是透過本地 Runtime、雲端可視化與已定義產品角色進行組織。

建築可以依房間、區域、樓層或站點管理。校園可以將多棟建築連接為一個協同結構。設施團隊可在明確部署條件下查看狀態、管理排程、控制特定負載、監測能源行為並回應受支援警報。

---

## 14.10 Product Combination Summary

## 14.10 產品組合摘要

## EN

**Smart Campus and Building Product Combination**  
Multi-Space Coordination, Facility Visibility, Energy Awareness, and Distributed Runtime

The Artibird smart campus and building combination connects Hub, Gate, Panel, Switch, Act, Sense, Sync, Vision, App, Cloud, and Edge into a coordinated multi-space system. It supports defined room-level control, zone-level coordination, building-level visibility, campus-level management, energy-aware workflows, visual awareness, local runtime behavior, and cloud-enhanced management under supported deployment and validation conditions.

## ZH-TW

**智慧校園與智慧建築產品組合**  
多空間協同、設施可視化、能源感知與分布式 Runtime

Artibird 智慧校園與智慧建築產品組合將 Hub、Gate、Panel、Switch、Act、Sense、Sync、Vision、App、Cloud 與 Edge 連接為協同多空間系統。它在受支援部署與驗證條件下，支援已定義房間級控制、區域級協同、建築級可視化、校園級管理、能源感知工作流、視覺感知、本地 Runtime 行為與雲端增強管理。

---

## 14.11 Catalog Claim Boundary

## 14.11 型錄宣稱邊界

**EN**  
Smart campus and building capabilities depend on selected components, site survey, wiring condition, network topology, room structure, building size, user roles, device models, firmware versions, cloud availability, Edge deployment, privacy settings, installation quality, validation status, and certification status where applicable.

The smart campus and building product combination should not be described as supporting every building, replacing all facility systems, guaranteeing energy savings, controlling all equipment, supporting unlimited devices, providing perfect security, or ensuring compliance unless separately validated, certified, and approved.

**ZH-TW**  
智慧校園與智慧建築能力取決於所選組件、站點勘察、接線條件、網路拓撲、房間結構、建築規模、用戶角色、設備型號、韌體版本、雲端可用性、Edge 部署、隱私設定、安裝品質、驗證狀態，以及適用時的認證狀態。

除非另行完成驗證、認證與核准，智慧校園與智慧建築產品組合不應被描述為支援每一種建築、取代所有設施系統、保證節能、控制所有設備、支援無限制設備、提供完美安全或確保合規。

---

## English Table

|Avoid Saying|Preferred Catalog Language|
|---|---|
|Works in every building|Supports defined building deployments under validated site conditions|
|Replaces all facility systems|Supports selected facility coordination and may integrate with broader systems where implemented|
|Guarantees energy savings|Supports energy-aware workflows where measured and validated|
|Controls all campus equipment|Controls supported devices, loads, and equipment under defined conditions|
|Supports unlimited rooms or devices|Supports validated capacity under defined topology and deployment conditions|
|Provides perfect security|Supports implemented security and access-control mechanisms where validated|
|Ensures compliance|Compliance language should be used only after applicable review and certification|
|Works without any site planning|Deployment requires site survey, network planning, capacity review, and validation|

## 中文表

|避免使用|建議型錄語言|
|---|---|
|適用每一種建築|在已驗證站點條件下支援已定義建築部署|
|取代所有設施系統|支援特定設施協同，並可在已實作條件下與更大系統整合|
|保證節能|在已量測與驗證條件下支援能源感知工作流|
|控制所有校園設備|在明確條件下控制受支援設備、負載與設備|
|支援無限制房間或設備|在已定義拓撲與部署條件下支援已驗證容量|
|提供完美安全|在已驗證條件下支援已實作安全與存取控制機制|
|確保合規|合規語言僅應在完成適用審查與認證後使用|
|不需要任何站點規劃即可運作|部署需要站點勘察、網路規劃、容量審查與驗證|

---

## 14.12 Chapter Conclusion

## 14.12 章節結論

**EN**  
The Smart Campus and Building Product Combination shows how Artibird products can scale from room-level control to multi-space coordination. It combines local runtime, device access, shared interaction, sensing, execution, synchronization, visual awareness, cloud services, and Edge intelligence into a structured building or campus deployment.

In the Artibird catalog, smart campus and building deployments should be presented as system-level product combinations. Their value is not limited to device control; it is reflected in coordinated operation, spatial organization, facility visibility, role-based access, energy-aware workflows, and scalable deployment under defined conditions.

**ZH-TW**  
智慧校園與智慧建築產品組合展示 Artibird 產品如何從房間級控制擴展至多空間協同。它將本地 Runtime、設備接入、共享互動、感知、執行、同步、視覺感知、雲端服務與 Edge 智慧整合為結構化建築或校園部署。

在 Artibird 型錄中，智慧校園與智慧建築部署應被呈現為系統級產品組合。其價值不只在於設備控制，更體現在協同運行、空間組織、設施可視化、角色權限、能源感知工作流，以及在明確條件下可擴展部署。