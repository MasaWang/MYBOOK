# Chapter 13 — Smart Classroom Product Combination

# 第十三章｜智慧教室產品組合

---

## 13.1 Product Combination Positioning

## 13.1 產品組合定位

**EN**  
The Smart Classroom Product Combination defines how Artibird products can be combined to support classroom control, lighting coordination, climate coordination, energy management, audiovisual synchronization, teacher interaction, environmental sensing, visual awareness, and local runtime behavior.

Within the OceanAI architecture, the smart classroom is not treated as a group of isolated devices. It is treated as a coordinated learning environment where classroom equipment, environmental conditions, user actions, energy behavior, and system status can be organized through Hub / ArtiOS, supported Artibird devices, Cloud services, and Edge intelligence where deployed.

**ZH-TW**  
智慧教室產品組合定義 Artibird 產品如何組合，以支援教室控制、照明協同、空調協同、能源管理、影音同步、教師互動、環境感知、視覺感知與本地 Runtime 行為。

在 OceanAI 架構中，智慧教室不被視為一組孤立設備，而是被視為一個協同學習環境。教室設備、環境條件、用戶動作、能源行為與系統狀態，都可透過 Hub / ArtiOS、受支援 Artibird 設備、Cloud 服務，以及在部署條件下的 Edge 智慧被組織起來。

---

## 13.2 System Role

## 13.2 系統角色

**EN**  
In a smart classroom deployment, Artibird products work together to provide local control, shared teacher interaction, sensor-based automation, electrical execution, appliance synchronization, energy visibility, and system-level coordination.

Artibird Hub provides local runtime behavior. Artibird Gate supports device access. Artibird Panel provides the teacher-facing or room-facing interface. Artibird Switch provides quick wall interaction. Artibird Sense provides classroom environmental context. Artibird Act provides electrical execution. Artibird Sync supports IR / RF appliance and AV coordination. Artibird Vision provides visual awareness where supported. Artibird App provides setup, configuration, status viewing, and supported control.

**ZH-TW**  
在智慧教室部署中，Artibird 產品共同提供本地控制、教師共享互動、基於感測的自動化、電力執行、家電同步、能源可視化與系統級協同。

Artibird Hub 提供本地 Runtime 行為。Artibird Gate 支援設備接入。Artibird Panel 提供面向教師或房間的介面。Artibird Switch 提供快速牆面互動。Artibird Sense 提供教室環境上下文。Artibird Act 提供電力執行。Artibird Sync 支援 IR / RF 家電與影音協同。Artibird Vision 在支援條件下提供視覺感知。Artibird App 提供設定、配置、狀態查看與受支援控制。

---

## English Table

|Classroom Function|Recommended Components|System Meaning|
|---|---|---|
|Local runtime|Artibird Hub / ArtiOS|Maintains classroom coordination, state, scenes, and automation|
|Device access|Artibird Gate|Connects supported classroom devices to local runtime|
|Teacher interface|Artibird Panel / App|Provides shared room control and configuration interface|
|Quick physical control|Artibird Switch|Enables wall-based scene trigger and local control|
|Lighting execution|Artibird Act / Switch relay variants|Controls supported lighting or electrical loads|
|Climate coordination|Artibird Sync / Sense / Act|Coordinates air conditioner or climate-related workflows|
|Environmental sensing|Artibird Sense|Provides temperature, humidity, light, and occupancy context|
|AV synchronization|Artibird Sync / Panel / App|Supports projector, display, audio, or supported IR-controlled devices|
|Energy management|Act-E / Sense / Cloud|Supports energy data, reporting, and energy-aware workflows|
|Visual awareness|Artibird Vision / Edge / Cloud|Supports visual events, alerts, and AI-assisted context where deployed|

## 中文表

| 教室功能       | 建議組件                           | 系統意義                      |
| ---------- | ------------------------------ | ------------------------- |
| 本地 Runtime | Artibird Hub / ArtiOS          | 維持教室協同、狀態、場景與自動化          |
| 設備接入       | Artibird Gate                  | 將受支援教室設備接入本地 Runtime      |
| 教師介面       | Artibird Panel / App           | 提供共享房間控制與配置介面             |
| 快速實體控制     | Artibird Switch                | 支援牆面場景觸發與本地控制             |
| 照明執行       | Artibird Act / Switch 繼電器版本    | 控制受支援照明或電力負載              |
| 空調協同       | Artibird Sync / Sense / Act    | 協同空調或空調相關工作流              |
| 環境感知       | Artibird Sense                 | 提供溫度、濕度、光照與人在上下文          |
| 影音同步       | Artibird Sync / Panel / App    | 支援投影機、顯示設備、音響或受支援 IR 控制設備 |
| 能源管理       | Act-E / Sense / Cloud          | 支援能源數據、報告與能源感知工作流         |
| 視覺感知       | Artibird Vision / Edge / Cloud | 在部署條件下支援視覺事件、警報與 AI 輔助上下文 |

---

## 13.3 Core Classroom Functions

## 13.3 核心教室功能

**EN**  
The smart classroom product combination should support everyday classroom operation. The system should help teachers and facility teams control lighting, climate, AV devices, power loads, and environmental conditions with less manual repetition and better system visibility.

The core value is not only remote control. The value is coordinated classroom behavior: one room interface, one local runtime system, one controlled device layer, and one consistent way to organize classroom actions.

**ZH-TW**  
智慧教室產品組合應支援日常教室運行。系統應幫助教師與設施團隊控制照明、空調、影音設備、電力負載與環境條件，減少重複手動操作，並提升系統可視化。

其核心價值不只是遠端控制，而是協同教室行為：一個房間介面、一個本地 Runtime 系統、一個受控設備層，以及一種一致的教室動作組織方式。

---

## English Table

|Core Function|Description|
|---|---|
|Classroom scene control|Supports predefined modes such as class, presentation, break, exam, cleaning, or after-hours|
|Lighting control|Controls supported lighting loads or lighting scenes|
|Climate coordination|Coordinates air conditioner or climate device behavior using Sense, Sync, Act, and runtime rules|
|AV control|Supports selected projector, display, audio, or IR-controlled classroom equipment|
|Energy-aware operation|Supports energy monitoring, scheduled shutdown, or unused-room workflows where validated|
|Teacher panel control|Provides classroom-level interface through Panel|
|App-based configuration|Provides setup, scene configuration, and status viewing through App|
|Sensor-based automation|Uses temperature, humidity, light, or occupancy input for supported automation|
|Visual event awareness|Uses Vision for supported classroom safety, monitoring, or event awareness|
|Local-first behavior|Supports defined local classroom functions when required local components are present|

## 中文表

|核心功能|說明|
|---|---|
|教室場景控制|支援上課、演示、課間、考試、清潔或課後等預定義模式|
|照明控制|控制受支援照明負載或照明場景|
|空調協同|使用 Sense、Sync、Act 與 Runtime 規則協同空調或氣候設備行為|
|影音控制|支援特定投影機、顯示設備、音響或 IR 控制教室設備|
|能源感知運行|在已驗證條件下支援能源監測、排程關閉或空置教室工作流|
|教師面板控制|透過 Panel 提供教室級介面|
|App 配置|透過 App 提供設定、場景配置與狀態查看|
|基於感測的自動化|使用溫度、濕度、光照或人在輸入支援自動化|
|視覺事件感知|使用 Vision 支援教室安全、監測或事件感知|
|本地優先行為|當所需本地組件具備時，支援已定義本地教室功能|

---

## 13.4 Recommended Product Packages

## 13.4 建議產品套組

**EN**  
Smart classroom deployment can be organized into different product packages according to budget, complexity, and required system capability. The catalog should present packages as reference combinations rather than mandatory fixed bundles.

**ZH-TW**  
智慧教室部署可依預算、複雜度與所需系統能力，組織為不同產品套組。型錄應將套組呈現為參考組合，而不是強制固定組合。

---

## English Table

|Package|Recommended Components|Typical Purpose|
|---|---|---|
|Basic Classroom Control Package|Hub, Panel, Switch, Act, App|Basic room control, lighting, scene trigger, and user interface|
|Classroom Climate Package|Hub, Sense, Sync, App|Temperature-aware climate coordination and appliance control|
|Classroom Energy Package|Hub, Act-E, Sense, Cloud, App|Energy monitoring, reporting, and energy-aware workflows|
|Classroom AV Package|Hub, Panel, Sync, App|Projector, display, audio, or selected IR appliance control|
|Vision-Aware Classroom Package|Hub, Vision, Cloud, Edge, App|Visual events, alerts, and AI-assisted context where supported|
|Full Smart Classroom Package|Hub, Gate, Panel, Switch, Act, Sense, Sync, Vision, App, Cloud, Edge|Full coordinated classroom deployment|

## 中文表

|套組|建議組件|典型用途|
|---|---|---|
|基礎教室控制套組|Hub、Panel、Switch、Act、App|基礎房間控制、照明、場景觸發與用戶介面|
|教室空調套組|Hub、Sense、Sync、App|基於溫度的空調協同與家電控制|
|教室能源套組|Hub、Act-E、Sense、Cloud、App|能源監測、報告與能源感知工作流|
|教室影音套組|Hub、Panel、Sync、App|投影機、顯示設備、音響或特定 IR 家電控制|
|視覺感知教室套組|Hub、Vision、Cloud、Edge、App|在支援條件下提供視覺事件、警報與 AI 輔助上下文|
|完整智慧教室套組|Hub、Gate、Panel、Switch、Act、Sense、Sync、Vision、App、Cloud、Edge|完整協同教室部署|

---

## 13.5 Classroom Scene Examples

## 13.5 教室場景示例

**EN**  
Classroom scenes can combine lighting, climate, AV devices, power control, Panel interaction, App control, sensing input, and scheduled behavior. Scene names and actions should remain configurable according to school policy, classroom type, and deployment design.

**ZH-TW**  
教室場景可結合照明、空調、影音設備、電力控制、Panel 互動、App 控制、感測輸入與排程行為。場景名稱與動作應依學校政策、教室類型與部署設計保持可配置。

---

## English Table

|Scene|Possible Behavior|
|---|---|
|Class Mode|Lights on, classroom devices ready, climate set to comfort range, Panel shows room status|
|Presentation Mode|Front lights dimmed, projector or display powered, audio ready, curtains adjusted where supported|
|Break Mode|Lighting adjusted, AV paused or powered down, climate maintained within defined range|
|Exam Mode|Stable lighting, selected devices disabled, notification behavior adjusted where supported|
|After-Class Mode|Lights off or reduced, unused loads powered down, climate adjusted, room state logged|
|Cleaning Mode|Lighting on, selected equipment off, ventilation or climate mode adjusted where supported|
|Energy Saving Mode|Non-essential loads off, temperature range adjusted, occupancy-based automation enabled|
|Emergency / Alert Mode|Supported alerts displayed, selected actions triggered according to validated safety policy|

## 中文表

|場景|可能行為|
|---|---|
|上課模式|照明開啟、教室設備就緒、空調設定至舒適範圍、Panel 顯示房間狀態|
|演示模式|前區照明調暗、投影或顯示設備上電、音響就緒、支援條件下調整窗簾|
|課間模式|調整照明、暫停或關閉影音設備、空調保持在已定義範圍|
|考試模式|保持穩定照明、停用特定設備、在支援條件下調整通知行為|
|課後模式|關閉或降低照明、關閉未使用負載、調整空調、記錄房間狀態|
|清潔模式|照明開啟、特定設備關閉、在支援條件下調整通風或空調模式|
|節能模式|關閉非必要負載、調整溫度範圍、啟用基於人在的自動化|
|緊急 / 警報模式|顯示受支援警報，並依已驗證安全政策觸發特定動作|

---

## 13.6 Classroom Runtime Flow

## 13.6 教室 Runtime 流程

**EN**  
In a classroom deployment, runtime flow should remain structured. User input, sensor data, schedule events, cloud requests, and Edge-assisted inputs should be evaluated by Hub / ArtiOS before physical execution.

This ensures that classroom behavior remains governed by permission, priority, safety, device capability, and validated configuration.

**ZH-TW**  
在教室部署中，Runtime 流程應保持結構化。用戶輸入、感測數據、排程事件、雲端請求與 Edge 輔助輸入，應在物理執行前由 Hub / ArtiOS 進行判斷。

這確保教室行為受到權限、優先級、安全、設備能力與已驗證配置治理。

---

## English Table

|Flow Stage|Description|
|---|---|
|Input source|Teacher Panel, Switch, App, schedule, Sense, Vision, Cloud, or Edge|
|Runtime evaluation|Hub / ArtiOS evaluates permission, priority, target, device capability, and safety rules|
|Scene or automation decision|Runtime selects supported scene, automation, or command behavior|
|Command routing|Commands are routed to Act, Sync, Switch relay variants, Panel, App, Cloud, or other supported targets|
|Physical execution|Supported devices perform lighting, climate, AV, plug, relay, or appliance actions|
|State update|Classroom state, device state, scene state, and automation state are updated where supported|
|Feedback|Panel, App, Cloud dashboard, or local interface displays supported result or status|
|Logging / reporting|Logs, energy data, or events may be stored locally or synchronized where configured|

## 中文表

|流程階段|說明|
|---|---|
|輸入來源|教師 Panel、Switch、App、排程、Sense、Vision、Cloud 或 Edge|
|Runtime 判斷|Hub / ArtiOS 判斷權限、優先級、目標、設備能力與安全規則|
|場景或自動化決策|Runtime 選擇受支援場景、自動化或指令行為|
|指令路由|指令路由至 Act、Sync、Switch 繼電器版本、Panel、App、Cloud 或其他受支援目標|
|物理執行|受支援設備執行照明、空調、影音、插座、繼電器或家電動作|
|狀態更新|在支援條件下更新教室狀態、設備狀態、場景狀態與自動化狀態|
|回饋|Panel、App、Cloud 儀表板或本地介面顯示受支援結果或狀態|
|日誌 / 報告|日誌、能源數據或事件可在已配置條件下本地儲存或同步|

---

## 13.7 Energy and Equipment Coordination

## 13.7 能源與設備協同

**EN**  
One of the strongest smart classroom values is reducing unnecessary equipment use. Many classrooms waste energy because lighting, air conditioning, AV devices, and plug loads remain active after use. Artibird products can support defined workflows that make energy behavior more visible and more controllable.

Energy-related claims must remain evidence-aware. The catalog should describe energy-aware workflows, reporting, and automation support, but should not guarantee energy savings unless measured and validated under defined comparison conditions.

**ZH-TW**  
智慧教室最重要的價值之一，是減少不必要的設備使用。許多教室因照明、空調、影音設備與插座負載在使用後仍保持開啟而造成能源浪費。Artibird 產品可支持已定義工作流，使能源行為更可見、更可控。

能源相關宣稱必須保持證據意識。型錄可描述能源感知工作流、報告與自動化支持，但除非在明確比較條件下完成量測與驗證，不應保證節能。

---

## English Table

|Energy Workflow|Recommended Components|Description|
|---|---|---|
|After-class shutdown|Hub, Act, Sync, Sense, App|Turns off or reduces selected loads after class according to configured rules|
|Occupancy-based control|Hub, Sense, Act, Sync|Adjusts lighting or climate behavior based on occupancy where supported|
|Scheduled equipment control|Hub, Act, Sync, Cloud|Controls selected equipment according to timetable or facility schedule|
|Energy reporting|Act-E, Cloud, App|Displays energy data where implemented and configured|
|Abnormal usage alert|Act-E, Cloud, App, Panel|Alerts users or facility team when supported load behavior exceeds defined thresholds|
|Comfort-energy balance|Sense, Act, Sync, Edge|Supports comfort and energy-aware recommendations where deployed and validated|

## 中文表

|能源工作流|建議組件|說明|
|---|---|---|
|課後關閉|Hub、Act、Sync、Sense、App|依配置規則在課後關閉或降低特定負載|
|基於人在控制|Hub、Sense、Act、Sync|在支援條件下依人在狀態調整照明或空調行為|
|排程設備控制|Hub、Act、Sync、Cloud|依課表或設施排程控制特定設備|
|能源報告|Act-E、Cloud、App|在已實作並配置條件下顯示能源數據|
|異常使用警報|Act-E、Cloud、App、Panel|當受支援負載行為超出已定義閾值時提醒用戶或設施團隊|
|舒適度—能源平衡|Sense、Act、Sync、Edge|在已部署並驗證條件下支持舒適度與能源感知建議|

---

## 13.8 Teacher and Facility Interaction

## 13.8 教師與設施互動

**EN**  
A smart classroom must serve both daily teaching and facility management. Teachers need simple, immediate control. Facility teams need visibility, status, schedules, and energy-related information. The Artibird product combination should support both needs without making classroom operation overly complex.

**ZH-TW**  
智慧教室必須同時服務日常教學與設施管理。教師需要簡單、即時的控制。設施團隊需要可視化、狀態、排程與能源相關資訊。Artibird 產品組合應同時支持這兩類需求，而不使教室操作變得過度複雜。

---

## English Table

|User Role|Typical Need|Recommended Interface|
|---|---|---|
|Teacher|Start class, presentation, break, or after-class scenes|Panel, Switch, App|
|Student|Limited or no control depending on school policy|Panel or restricted interface where configured|
|Facility Staff|Manage schedules, equipment, energy, and room status|App, Cloud dashboard, Panel|
|Installer|Configure devices, rooms, gateways, scenes, and access|App, Hub, Gate tools where implemented|
|Administrator|Manage sites, permissions, policies, and reports|Cloud, App, account management tools|
|Security Staff|View supported alerts or visual events|Vision, App, Cloud, Edge where deployed|

## 中文表

|用戶角色|典型需求|建議介面|
|---|---|---|
|教師|啟動上課、演示、課間或課後場景|Panel、Switch、App|
|學生|依學校政策限制或不提供控制權|已配置條件下的 Panel 或受限介面|
|設施人員|管理排程、設備、能源與房間狀態|App、Cloud 儀表板、Panel|
|安裝人員|配置設備、房間、網關、場景與存取|App、Hub、Gate 工具，在已實作條件下|
|管理員|管理站點、權限、政策與報告|Cloud、App、帳號管理工具|
|安保人員|查看受支援警報或視覺事件|Vision、App、Cloud、Edge，在已部署條件下|

---

## 13.9 Customer-Readable Description

## 13.9 客戶可讀描述

**EN**  
Artibird smart classroom combinations help classrooms become easier to control, easier to monitor, and easier to manage. Teachers can use a panel, switch, or App to start classroom scenes. Sensors can help the system understand temperature, light, or occupancy. Execution nodes can control selected loads. Sync can coordinate air conditioners or AV devices. Cloud and Edge can provide remote visibility and AI-assisted context where deployed.

Instead of managing each device separately, a classroom can operate as one coordinated environment.

**ZH-TW**  
Artibird 智慧教室產品組合幫助教室變得更容易控制、更容易監測，也更容易管理。教師可以使用 Panel、Switch 或 App 啟動教室場景。感測器可以幫助系統理解溫度、光照或人在狀態。執行節點可以控制特定負載。Sync 可以協同空調或影音設備。Cloud 與 Edge 可在部署條件下提供遠端可視化與 AI 輔助上下文。

教室不再需要逐一管理每個設備，而是可以作為一個協同環境運作。

---

## 13.10 Product Combination Summary

## 13.10 產品組合摘要

## EN

**Smart Classroom Product Combination**  
Classroom Control, Climate Coordination, Energy Awareness, and Shared Interaction

The Artibird smart classroom combination connects Hub, Gate, Panel, Switch, Act, Sense, Sync, Vision, App, Cloud, and Edge into a coordinated classroom system. It supports defined classroom scenes, local control, environmental sensing, equipment execution, appliance synchronization, energy-aware workflows, visual awareness, and system visibility under supported deployment and validation conditions.

## ZH-TW

**智慧教室產品組合**  
教室控制、空調協同、能源感知與共享互動

Artibird 智慧教室產品組合將 Hub、Gate、Panel、Switch、Act、Sense、Sync、Vision、App、Cloud 與 Edge 連接為協同教室系統。它在受支援部署與驗證條件下，支援已定義教室場景、本地控制、環境感知、設備執行、家電同步、能源感知工作流、視覺感知與系統可視化。

---

## 13.11 Catalog Claim Boundary

## 13.11 型錄宣稱邊界

**EN**  
Smart classroom capabilities depend on selected components, classroom wiring, network conditions, device models, firmware versions, cloud availability, Edge deployment, sensing configuration, installation quality, school policy, user roles, validation status, and certification status where applicable.

The smart classroom product combination should not be described as guaranteeing energy savings, controlling all classroom equipment, replacing facility management systems, supporting every AV device, providing perfect occupancy detection, or ensuring safety compliance unless separately validated, certified, and approved.

**ZH-TW**  
智慧教室能力取決於所選組件、教室接線、網路條件、設備型號、韌體版本、雲端可用性、Edge 部署、感測配置、安裝品質、學校政策、用戶角色、驗證狀態，以及適用時的認證狀態。

除非另行完成驗證、認證與核准，智慧教室產品組合不應被描述為保證節能、控制所有教室設備、取代設施管理系統、支援每一種影音設備、提供完美人在偵測，或確保安全合規。

---

## English Table

|Avoid Saying|Preferred Catalog Language|
|---|---|
|Guarantees classroom energy savings|Supports energy-aware workflows where measured and validated|
|Controls every classroom device|Controls supported classroom devices and loads under defined conditions|
|Replaces facility management systems|Supports classroom-level coordination and may integrate with broader systems where implemented|
|Supports all projectors and AV equipment|Supports selected IR / RF or connected AV devices where compatible and validated|
|Always detects classroom occupancy|Occupancy detection is supported only where implemented and validated|
|Works in every school environment|Deployment depends on wiring, network, site conditions, policy, and validation|
|Makes classrooms fully autonomous|Provides runtime-governed coordination and AI-assisted support where deployed|

## 中文表

|避免使用|建議型錄語言|
|---|---|
|保證教室節能|在已量測與驗證條件下支援能源感知工作流|
|控制所有教室設備|在明確條件下控制受支援教室設備與負載|
|取代設施管理系統|支援教室級協同，並在已實作條件下可與更大系統整合|
|支援所有投影機與影音設備|在相容並已驗證條件下支援特定 IR / RF 或連接式影音設備|
|永遠偵測教室人在|人在偵測僅在已實作並驗證條件下支援|
|適用每一所學校環境|部署取決於接線、網路、站點條件、政策與驗證|
|讓教室完全自主|在部署條件下提供受 Runtime 治理的協同與 AI 輔助支持|

---

## 13.12 Chapter Conclusion

## 13.12 章節結論

**EN**  
The Smart Classroom Product Combination shows how Artibird products can work together to support coordinated teaching spaces. It combines local runtime, device access, teacher interaction, sensing, execution, synchronization, visual awareness, cloud services, and Edge intelligence into a classroom-oriented system.

In the Artibird catalog, the smart classroom should be presented as a practical scenario where the full value of the product family becomes visible: less isolated control, more coordinated operation, better status visibility, and stronger support for energy-aware and classroom-aware workflows.

**ZH-TW**  
智慧教室產品組合展示 Artibird 產品如何共同支援協同教學空間。它將本地 Runtime、設備接入、教師互動、感知、執行、同步、視覺感知、雲端服務與 Edge 智慧組合為面向教室的系統。

在 Artibird 型錄中，智慧教室應被呈現為產品家族整體價值能夠被清楚看見的實際場景：減少孤立控制、提升協同運作、增強狀態可視化，並更好地支援能源感知與教室感知工作流。