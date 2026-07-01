# 16. Deployment Architecture

# 16. 部署架構

---

## 16.1 Purpose

## 16.1 目的

## EN

This chapter defines the Deployment Architecture of OceanAI. Deployment Architecture describes how the OceanAI architecture may be applied across different physical environments, including residential spaces, classrooms, offices, buildings, campuses, energy systems, vision-aware environments, agriculture, and infrastructure scenarios.

The purpose of this chapter is to define repeatable deployment patterns while maintaining clear architectural boundaries. A deployment pattern describes how Local Runtime, Cloud services, Edge intelligence, device access, interaction, sensing, execution, security, privacy, capacity, and validation requirements are organized for a specific environment.

Deployment Architecture does not guarantee that every function is available in every scenario. Actual deployment capability depends on supported components, network conditions, power conditions, configuration, local runtime availability, cloud service availability, Edge deployment status, user permissions, capacity validation, privacy requirements, and site-specific conditions.

## ZH-TW

本章定義 OceanAI 的部署架構。部署架構描述 OceanAI 架構如何應用於不同物理環境，包括住宅空間、教室、辦公、建築、校園、能源系統、視覺感知環境、農業與基礎設施場景。

本章目的，是在維持清楚架構邊界的前提下，定義可重複使用的部署模式。部署模式描述 Local Runtime、雲端服務、Edge 智慧、設備接入、互動、感知、執行、安全、隱私、容量與驗證要求如何針對特定環境被組織。

部署架構不保證每一項功能在所有場景中都可用。實際部署能力取決於受支援組件、網路條件、供電條件、配置、本地 Runtime 可用性、雲端服務可用性、Edge 部署狀態、用戶權限、容量驗證、隱私要求與場地專用條件。

---

## English Table

|Deployment Area|Description|
|---|---|
|Residential deployment|Home-based coordinated intelligent environment|
|Classroom deployment|Teaching space control, sensing, energy, climate, and AV coordination|
|Office deployment|Meeting room, workspace, shared area, and facility coordination|
|Building deployment|Multi-room, multi-floor, multi-zone coordinated operation|
|Campus deployment|Multi-building, multi-site, organization-level deployment|
|Energy deployment|Energy-aware execution, monitoring, reporting, and optimization|
|Vision-aware deployment|Visual context, security awareness, local alerts, and Edge interpretation|
|Agriculture / Infrastructure deployment|Distributed sensing, execution, gateway access, and outdoor constraints|
|Deployment governance|Capacity, validation, privacy, security, and claim boundaries|

## 中文表

|部署領域|說明|
|---|---|
|住宅部署|基於家庭的協同智慧空間|
|教室部署|教學空間控制、感知、能源、空調與影音協同|
|辦公部署|會議室、工位區、共享區域與設施協同|
|建築部署|多房間、多樓層、多區域協同運作|
|校園部署|多建築、多站點、組織級部署|
|能源部署|能源感知執行、監測、報告與優化|
|視覺感知部署|視覺上下文、安全感知、本地警報與 Edge 解讀|
|農業 / 基礎設施部署|分布式感知、執行、網關接入與戶外限制|
|部署治理|容量、驗證、隱私、安全與宣稱邊界|

---

## 16.2 Deployment Architecture Definition

## 16.2 部署架構定義

## EN

Deployment Architecture defines how OceanAI is physically and logically organized within a specific environment. It includes component selection, network topology, local runtime placement, cloud service connection, Edge deployment, device access strategy, sensing coverage, execution coverage, interaction points, user roles, security configuration, privacy settings, capacity planning, and validation requirements.

A deployment should be treated as an architecture instance. Each deployment may use the same OceanAI architectural principles, but the actual component mix, capacity, topology, privacy settings, Edge requirements, and validation conditions may differ.

A deployment is valid only when its actual conditions are documented and aligned with the supported architecture model.

## ZH-TW

部署架構定義 OceanAI 如何在特定環境中被物理與邏輯組織。它包括組件選擇、網路拓撲、本地 Runtime 位置、雲端服務連接、Edge 部署、設備接入策略、感知覆蓋、執行覆蓋、互動點、用戶角色、安全配置、隱私設定、容量規劃與驗證要求。

部署應被視為一個架構實例。每個部署可以使用相同的 OceanAI 架構原則，但實際組件組合、容量、拓撲、隱私設定、Edge 要求與驗證條件可能不同。

只有當實際條件被記錄並與受支援架構模型對齊時，該部署才可被視為有效部署。

---

## English Table

|Deployment Element|Required Definition|
|---|---|
|Deployment site|Home, classroom, office, building, campus, field, facility, or infrastructure site|
|Component mix|Hub, Gate, Cloud, Edge, App, interaction, sensing, execution, and device nodes|
|Network topology|Local network, gateway path, cloud path, Edge path, and fallback path|
|Runtime placement|Where local runtime services are hosted|
|Device access strategy|How devices onboard, communicate, and remain connected|
|Sensing coverage|What environmental, visual, energy, or state signals are collected|
|Execution coverage|What physical actions are controlled|
|Interaction points|App, Panel, Switch, local interface, or remote interface|
|Privacy setting|What data remains local, syncs, stores, or requires permission|
|Capacity boundary|Supported device count, event load, scenes, automations, and users|
|Validation requirement|Tests required for deployment approval|

## 中文表

|部署元素|必須定義內容|
|---|---|
|部署站點|住宅、教室、辦公室、建築、校園、田地、設施或基礎設施站點|
|組件組合|Hub、Gate、Cloud、Edge、App、互動、感知、執行與設備節點|
|網路拓撲|本地網路、網關路徑、雲端路徑、Edge 路徑與回退路徑|
|Runtime 位置|本地 Runtime 服務承載位置|
|設備接入策略|設備如何入網、通訊並保持連接|
|感知覆蓋|收集哪些環境、視覺、能源或狀態信號|
|執行覆蓋|控制哪些物理動作|
|互動點|App、Panel、Switch、本地介面或遠端介面|
|隱私設定|哪些數據保留本地、同步、儲存或需要權限|
|容量邊界|受支援設備數、事件負載、場景、自動化與用戶數|
|驗證要求|部署核准所需測試|

---

## 16.3 Residential Deployment Pattern

## 16.3 住宅部署模式

## EN

Residential Deployment Pattern defines how OceanAI may operate within a home environment. This deployment focuses on local control, room-level interaction, device coordination, sensing, execution, appliance synchronization, basic automation, local scenes, remote access where enabled, and privacy-aware data handling.

A residential deployment may include local runtime services, device access, switches, panels, sensors, execution nodes, appliance synchronization nodes, App access, cloud account services, and optional Edge intelligence depending on system configuration.

Residential deployment should prioritize local responsiveness, simple interaction, reliable physical control, privacy clarity, and clear failure behavior.

## ZH-TW

住宅部署模式定義 OceanAI 如何在家庭環境中運作。此部署重點在於本地控制、房間級互動、設備協同、感知、執行、家電同步、基本自動化、本地場景、啟用條件下遠端存取，以及隱私導向數據處理。

住宅部署可依系統配置包括本地 Runtime 服務、設備接入、開關、面板、感測器、執行節點、家電同步節點、App 存取、雲端帳號服務與可選 Edge 智慧。

住宅部署應優先考慮本地響應速度、簡單互動、可靠物理控制、隱私清晰性與清楚故障行為。

---

## English Table

|Residential Deployment Element|Description|
|---|---|
|Primary objective|Local home coordination and user-friendly control|
|Typical components|Hub, Gate, App, Switch, Panel, Sense, Act, Sync, optional Vision or Edge|
|Runtime focus|Local control, scenes, automation, and state management|
|Cloud role|Account, remote access, sync, alerts, and lifecycle where enabled|
|Edge role|Optional visual, sensor, or AI-assisted home context|
|Interaction model|App, Panel, Switch, room-level scenes, and manual override|
|Sensing model|Temperature, humidity, light, occupancy, energy, or visual context where supported|
|Execution model|Lighting, appliance, plug, relay, climate-related, or synchronized actions|
|Privacy focus|Local data handling, Vision boundary, user permission, and cloud sync clarity|
|Validation focus|Local control, offline behavior, scene execution, device capacity, and failure behavior|

## 中文表

|住宅部署元素|說明|
|---|---|
|主要目標|家庭本地協同與易用控制|
|典型組件|Hub、Gate、App、Switch、Panel、Sense、Act、Sync、可選 Vision 或 Edge|
|Runtime 重點|本地控制、場景、自動化與狀態管理|
|雲端角色|啟用條件下帳號、遠端存取、同步、警報與生命週期|
|Edge 角色|可選視覺、感測或 AI 輔助家庭上下文|
|互動模型|App、Panel、Switch、房間級場景與手動覆蓋|
|感知模型|支援條件下溫度、濕度、光照、人在、能源或視覺上下文|
|執行模型|照明、家電、插座、繼電器、空調相關或同步動作|
|隱私重點|本地數據處理、Vision 邊界、用戶權限與雲端同步清晰性|
|驗證重點|本地控制、離線行為、場景執行、設備容量與故障行為|

---

## 16.4 Classroom Deployment Pattern

## 16.4 教室部署模式

## EN

Classroom Deployment Pattern defines how OceanAI may operate within a teaching environment. This deployment focuses on classroom control, lighting, climate, energy, AV synchronization, teacher interaction, institutional management, and optional Vision-aware context.

A classroom deployment may require stronger role separation than a residential deployment. Teachers, administrators, installers, facility managers, IT personnel, and support teams may require different permissions.

Classroom deployment should prioritize reliability, simple daily operation, energy reduction workflows where validated, local control, centralized visibility, privacy boundaries, and clear override behavior.

## ZH-TW

教室部署模式定義 OceanAI 如何在教學環境中運作。此部署重點在於教室控制、照明、空調、能源、影音同步、教師互動、機構管理與可選視覺感知上下文。

與住宅部署相比，教室部署可能需要更強的角色分離。教師、管理員、安裝人員、設施管理者、IT 人員與支援團隊可能需要不同權限。

教室部署應優先考慮可靠性、簡單日常操作、在已驗證條件下的節能工作流、本地控制、集中可視化、隱私邊界與清楚覆蓋行為。

---

## English Table

|Classroom Deployment Element|Description|
|---|---|
|Primary objective|Classroom control, energy, climate, AV, and teaching-space coordination|
|Typical components|Hub, Gate, Panel, Switch, Sense, Act, Sync, App, Cloud, optional Vision or Edge|
|Runtime focus|Teacher control, local scenes, schedules, automation, and override behavior|
|Cloud role|Institutional visibility, account management, alerts, reports, and lifecycle|
|Edge role|Optional visual context, occupancy interpretation, or sensor fusion|
|Interaction model|Teacher-facing Panel, App access, physical controls, and admin console where supported|
|Sensing model|Occupancy, light, temperature, humidity, energy, device state, and optional Vision|
|Execution model|Lighting, climate, AV, outlet, appliance, and energy-related execution|
|Privacy focus|Student and classroom privacy, Vision boundary, role-based access, and data retention|
|Validation focus|Local reliability, scheduled operation, override, capacity, privacy, and failure behavior|

## 中文表

|教室部署元素|說明|
|---|---|
|主要目標|教室控制、能源、空調、影音與教學空間協同|
|典型組件|Hub、Gate、Panel、Switch、Sense、Act、Sync、App、Cloud、可選 Vision 或 Edge|
|Runtime 重點|教師控制、本地場景、排程、自動化與覆蓋行為|
|雲端角色|機構級可視化、帳號管理、警報、報告與生命週期|
|Edge 角色|可選視覺上下文、人在解讀或感測融合|
|互動模型|教師端 Panel、App 存取、實體控制與支援條件下管理控制台|
|感知模型|人在、光照、溫度、濕度、能源、設備狀態與可選 Vision|
|執行模型|照明、空調、影音、插座、家電與能源相關執行|
|隱私重點|學生與教室隱私、Vision 邊界、角色存取與數據保留|
|驗證重點|本地可靠性、排程運行、覆蓋、容量、隱私與故障行為|

---

## 16.5 Office Deployment Pattern

## 16.5 辦公部署模式

## EN

Office Deployment Pattern defines how OceanAI may operate within office environments, including meeting rooms, work areas, shared spaces, reception areas, and facility zones.

This deployment focuses on shared interaction, room-level coordination, energy-aware operation, meeting room automation, access-controlled management, cloud visibility, and optional Edge-assisted occupancy or usage interpretation.

Office deployments should support flexible permissions, schedule-aware operation, user-friendly shared control, privacy-sensitive monitoring, and operational reporting where enabled.

## ZH-TW

辦公部署模式定義 OceanAI 如何在辦公環境中運作，包括會議室、工位區、共享空間、接待區與設施區域。

此部署重點在於共享互動、房間級協同、能源感知運行、會議室自動化、受控管理、雲端可視化，以及可選 Edge 輔助人在或使用狀態解讀。

辦公部署應支援彈性權限、排程感知運行、易用共享控制、隱私敏感監測，以及啟用條件下的運行報告。

---

## English Table

|Office Deployment Element|Description|
|---|---|
|Primary objective|Office space coordination, meeting room control, and operational efficiency|
|Typical components|Hub, Gate, Panel, Switch, Sense, Act, Sync, App, Cloud, optional Vision or Edge|
|Runtime focus|Local room control, schedules, scenes, automations, and shared state|
|Cloud role|Remote management, reports, account roles, lifecycle, and multi-area visibility|
|Edge role|Optional occupancy, visual context, comfort, or usage interpretation|
|Interaction model|Panel, App, shared controls, room scenes, and facility management access|
|Sensing model|Occupancy, light, temperature, humidity, energy, device state, and optional Vision|
|Execution model|Lighting, climate, AV, plug, relay, and shared equipment control|
|Privacy focus|Workplace privacy, role-based visibility, Vision limits, and data retention|
|Validation focus|Shared control, scheduling, automation reliability, capacity, and privacy behavior|

## 中文表

|辦公部署元素|說明|
|---|---|
|主要目標|辦公空間協同、會議室控制與運行效率|
|典型組件|Hub、Gate、Panel、Switch、Sense、Act、Sync、App、Cloud、可選 Vision 或 Edge|
|Runtime 重點|本地房間控制、排程、場景、自動化與共享狀態|
|雲端角色|遠端管理、報告、帳號角色、生命週期與多區域可視化|
|Edge 角色|可選人在、視覺上下文、舒適度或使用狀態解讀|
|互動模型|Panel、App、共享控制、房間場景與設施管理存取|
|感知模型|人在、光照、溫度、濕度、能源、設備狀態與可選 Vision|
|執行模型|照明、空調、影音、插座、繼電器與共享設備控制|
|隱私重點|工作場所隱私、角色可視範圍、Vision 限制與數據保留|
|驗證重點|共享控制、排程、自動化可靠性、容量與隱私行為|

---

## 16.6 Building Deployment Pattern

## 16.6 建築部署模式

## EN

Building Deployment Pattern defines how OceanAI may operate across multiple rooms, floors, zones, and facility systems within a building.

This deployment requires stronger capacity planning, device grouping, role management, local network design, gateway placement, cloud visibility, failure isolation, and validation of cross-zone behavior.

Building deployment should distinguish between room-level control, floor-level management, building-level visibility, energy-related execution, security-aware sensing, and facility-level governance.

## ZH-TW

建築部署模式定義 OceanAI 如何在一棟建築內跨多房間、多樓層、多區域與設施系統運作。

此部署需要更強的容量規劃、設備分組、角色管理、本地網路設計、網關位置規劃、雲端可視化、故障隔離，以及跨區域行為驗證。

建築部署應區分房間級控制、樓層級管理、建築級可視化、能源相關執行、安全感知與設施級治理。

---

## English Table

|Building Deployment Element|Description|
|---|---|
|Primary objective|Multi-room, multi-zone, and facility-level coordinated operation|
|Typical components|Multiple Hub / Gate units where required, Panels, Switches, Sense, Act, Vision, Cloud, optional Edge|
|Runtime focus|Zone-level scenes, automation, state management, and failure isolation|
|Cloud role|Building visibility, multi-user roles, reporting, lifecycle, and alert management|
|Edge role|Optional visual analysis, sensor fusion, and operational optimization|
|Interaction model|Room controls, floor controls, facility dashboard, App, and admin access|
|Sensing model|Environmental, occupancy, energy, device health, and optional visual signals|
|Execution model|Lighting, power, climate, relay, plug, access-related or facility equipment actions|
|Privacy focus|Area-specific privacy, role visibility, Vision governance, and data separation|
|Validation focus|Capacity, network topology, gateway load, latency, automation, and failure isolation|

## 中文表

|建築部署元素|說明|
|---|---|
|主要目標|多房間、多區域與設施級協同運作|
|典型組件|依需求配置多個 Hub / Gate、Panel、Switch、Sense、Act、Vision、Cloud、可選 Edge|
|Runtime 重點|區域級場景、自動化、狀態管理與故障隔離|
|雲端角色|建築可視化、多用戶角色、報告、生命週期與警報管理|
|Edge 角色|可選視覺分析、感測融合與運行優化|
|互動模型|房間控制、樓層控制、設施儀表板、App 與管理員存取|
|感知模型|環境、人在、能源、設備健康與可選視覺信號|
|執行模型|照明、電力、空調、繼電器、插座、門禁相關或設施設備動作|
|隱私重點|區域特定隱私、角色可視範圍、Vision 治理與數據隔離|
|驗證重點|容量、網路拓撲、網關負載、延遲、自動化與故障隔離|

---

## 16.7 Campus Deployment Pattern

## 16.7 校園部署模式

## EN

Campus Deployment Pattern defines how OceanAI may operate across multiple buildings, classrooms, offices, public areas, energy zones, security-aware zones, and infrastructure nodes.

Campus deployment is a multi-site or multi-building architecture. It requires site hierarchy, organization-level roles, multiple local runtime zones, gateway planning, cloud visibility, Edge deployment planning, security governance, privacy governance, and validation across representative environments.

Campus deployment should not assume that all buildings or rooms share the same network quality, device density, privacy requirements, or capacity boundary.

## ZH-TW

校園部署模式定義 OceanAI 如何跨多建築、教室、辦公區、公共區域、能源區域、安全感知區域與基礎設施節點運作。

校園部署是一種多站點或多建築架構。它需要站點層級、組織級角色、多個本地 Runtime 區域、網關規劃、雲端可視化、Edge 部署規劃、安全治理、隱私治理，以及跨代表性環境的驗證。

校園部署不應假設所有建築或房間具有相同網路品質、設備密度、隱私要求或容量邊界。

---

## English Table

|Campus Deployment Element|Description|
|---|---|
|Primary objective|Multi-building, multi-zone, organization-level coordinated operation|
|Typical components|Multiple Hubs, Gates, Panels, Sense, Act, Vision, Cloud, Edge, App, and role-based tools|
|Runtime focus|Distributed local runtime zones and coordinated management|
|Cloud role|Multi-site dashboard, reports, account hierarchy, lifecycle, and alerts|
|Edge role|Building-level or zone-level AI-assisted interpretation where deployed|
|Interaction model|Classroom panels, facility dashboards, App access, admin roles, and support roles|
|Sensing model|Environmental, energy, occupancy, visual, infrastructure, and device health signals|
|Execution model|Lighting, power, classroom systems, HVAC-related systems, irrigation, and infrastructure nodes|
|Privacy focus|Student, staff, public-area, Vision, and organization-level data governance|
|Validation focus|Multi-site capacity, network segmentation, role scope, privacy, latency, and recovery|

## 中文表

|校園部署元素|說明|
|---|---|
|主要目標|多建築、多區域、組織級協同運作|
|典型組件|多個 Hub、Gate、Panel、Sense、Act、Vision、Cloud、Edge、App 與角色化工具|
|Runtime 重點|分布式本地 Runtime 區域與協同管理|
|雲端角色|多站點儀表板、報告、帳號層級、生命週期與警報|
|Edge 角色|部署條件下建築級或區域級 AI 輔助解讀|
|互動模型|教室面板、設施儀表板、App 存取、管理員角色與支援角色|
|感知模型|環境、能源、人在、視覺、基礎設施與設備健康信號|
|執行模型|照明、電力、教室系統、HVAC 相關系統、灌溉與基礎設施節點|
|隱私重點|學生、教職員、公共區域、Vision 與組織級數據治理|
|驗證重點|多站點容量、網路分段、角色範圍、隱私、延遲與恢復|

---

## 16.8 Energy Deployment Pattern

## 16.8 能源部署模式

## EN

Energy Deployment Pattern defines how OceanAI may support energy-aware operation. This deployment may include electrical execution nodes, energy measurement, device state, load control, schedule-based operation, energy reports, cloud analytics, and optional Edge-assisted optimization.

Energy deployment should distinguish between monitoring, reporting, awareness, recommendation, and verified energy-saving claims. Energy-related claims must be based on measured data, defined test conditions, and validated comparison models.

Energy deployment must also respect safety, load limits, electrical ratings, certification boundaries, and failure behavior.

## ZH-TW

能源部署模式定義 OceanAI 如何支援能源感知運作。此部署可包括電力執行節點、能源量測、設備狀態、負載控制、基於排程的運作、能源報告、雲端分析與可選 Edge 輔助優化。

能源部署應區分監測、報告、感知、建議與已驗證節能宣稱。能源相關宣稱必須基於量測數據、明確測試條件與已驗證比較模型。

能源部署也必須遵守安全、負載限制、電氣額定值、認證邊界與故障行為。

---

## English Table

|Energy Deployment Element|Description|
|---|---|
|Primary objective|Energy-aware monitoring, execution, reporting, and optimization support|
|Typical components|Hub, Act / Act-E, Sense, Cloud, App, optional Edge|
|Runtime focus|Load state, schedules, automation, fail-safe behavior, and energy-related execution|
|Cloud role|Historical energy records, reports, alerts, analytics, and multi-site comparison|
|Edge role|Optional energy pattern interpretation or optimization recommendations|
|Interaction model|App reports, dashboard, local control, schedules, and administrative settings|
|Sensing model|Power, current, voltage, device state, environmental context, and occupancy where supported|
|Execution model|Relay, plug, load control, schedule-based execution, and automation output|
|Privacy focus|Energy usage may reveal behavioral patterns and must follow data governance|
|Validation focus|Measurement accuracy, load safety, claim boundary, reporting accuracy, and fallback behavior|

## 中文表

|能源部署元素|說明|
|---|---|
|主要目標|能源感知監測、執行、報告與優化支持|
|典型組件|Hub、Act / Act-E、Sense、Cloud、App、可選 Edge|
|Runtime 重點|負載狀態、排程、自動化、故障安全行為與能源相關執行|
|雲端角色|歷史能源記錄、報告、警報、分析與多站點比較|
|Edge 角色|可選能源模式解讀或優化建議|
|互動模型|App 報告、儀表板、本地控制、排程與管理設定|
|感知模型|支援條件下功率、電流、電壓、設備狀態、環境上下文與人在|
|執行模型|繼電器、插座、負載控制、排程執行與自動化輸出|
|隱私重點|能源使用可能揭示行為模式，必須遵循數據治理|
|驗證重點|量測準確性、負載安全、宣稱邊界、報告準確性與回退行為|

---

## 16.9 Vision-Aware Deployment Pattern

## 16.9 視覺感知部署模式

## EN

Vision-Aware Deployment Pattern defines how OceanAI may use visual context within supported privacy and security boundaries. This deployment may include Vision devices, Edge interpretation, local alerts, cloud-supported remote viewing where enabled, visual event records, and AI-assisted context.

Vision-aware deployment must be handled with stricter privacy governance than non-visual deployments. It must define capture conditions, processing location, storage rules, access permission, retention behavior, masking or minimization where implemented, and cloud synchronization boundaries.

Vision-aware deployment should not claim perfect detection, guaranteed security, or unrestricted AI understanding.

## ZH-TW

視覺感知部署模式定義 OceanAI 如何在受支援隱私與安全邊界內使用視覺上下文。此部署可包括 Vision 設備、Edge 解讀、本地警報、啟用條件下雲端支援遠端查看、視覺事件記錄與 AI 輔助上下文。

視覺感知部署必須比非視覺部署採用更嚴格的隱私治理。它必須定義捕捉條件、處理位置、儲存規則、存取權限、保留行為、已實作條件下遮蔽或最小化，以及雲端同步邊界。

視覺感知部署不應宣稱完美偵測、保證安全或不受限制的 AI 理解。

---

## English Table

|Vision-Aware Deployment Element|Description|
|---|---|
|Primary objective|Visual context, local alerts, AI-assisted interpretation, and security awareness|
|Typical components|Vision, Hub, Cloud, Edge, App, Sense, optional Act or local alert devices|
|Runtime focus|Visual events, alerts, automation input, and local response rules|
|Cloud role|Remote viewing, alerts, storage, history, and account-based access where enabled|
|Edge role|Visual analysis, VLM understanding, event classification, and context interpretation|
|Interaction model|App viewing, alerts, dashboard, permission settings, and local indicators|
|Sensing model|Visual events, motion, occupancy, room context, and optional sensor fusion|
|Execution model|Alerts, lighting response, local notification, or automation under validated conditions|
|Privacy focus|Capture, storage, access, retention, masking, local processing, and sync boundaries|
|Validation focus|Detection boundaries, privacy behavior, latency, storage, access control, and failure behavior|

## 中文表

|視覺感知部署元素|說明|
|---|---|
|主要目標|視覺上下文、本地警報、AI 輔助解讀與安全感知|
|典型組件|Vision、Hub、Cloud、Edge、App、Sense、可選 Act 或本地警報設備|
|Runtime 重點|視覺事件、警報、自動化輸入與本地回應規則|
|雲端角色|啟用條件下遠端查看、警報、儲存、歷史與基於帳號的存取|
|Edge 角色|視覺分析、VLM 理解、事件分類與上下文解讀|
|互動模型|App 查看、警報、儀表板、權限設定與本地指示|
|感知模型|視覺事件、移動、人在、房間上下文與可選感測融合|
|執行模型|在已驗證條件下警報、照明回應、本地通知或自動化|
|隱私重點|捕捉、儲存、存取、保留、遮蔽、本地處理與同步邊界|
|驗證重點|偵測邊界、隱私行為、延遲、儲存、存取控制與故障行為|

---

## 16.10 Agriculture / Infrastructure Deployment Pattern

## 16.10 農業 / 基礎設施部署模式

## EN

Agriculture and Infrastructure Deployment Pattern defines how OceanAI may support distributed sensing, execution, gateway access, local automation, cloud monitoring, and optional Edge interpretation in outdoor, semi-outdoor, or infrastructure environments.

These deployments may have wider spatial distribution, weaker network conditions, harsher environmental conditions, stronger power constraints, and longer-distance communication requirements.

Agriculture and infrastructure deployment must define environmental rating, connectivity condition, power supply, gateway placement, device density, data interval, automation behavior, failure recovery, and maintenance access.

## ZH-TW

農業與基礎設施部署模式定義 OceanAI 如何在戶外、半戶外或基礎設施環境中支援分布式感知、執行、網關接入、本地自動化、雲端監測與可選 Edge 解讀。

這類部署可能具有更大空間分布、更弱網路條件、更嚴苛環境條件、更強供電限制與更長距離通訊需求。

農業與基礎設施部署必須定義環境等級、連接條件、供電方式、網關位置、設備密度、數據間隔、自動化行為、故障恢復與維護存取。

---

## English Table

|Agriculture / Infrastructure Deployment Element|Description|
|---|---|
|Primary objective|Distributed sensing, execution, monitoring, and infrastructure coordination|
|Typical components|Gate, Hub where applicable, Sense, Act, Cloud, App, optional Edge|
|Runtime focus|Local automation, state reporting, scheduled execution, and failure behavior|
|Cloud role|Remote monitoring, alerts, history, multi-site visibility, and lifecycle|
|Edge role|Optional environmental pattern interpretation or anomaly detection|
|Interaction model|App, dashboard, maintenance access, and alert interface|
|Sensing model|Soil, water, light, temperature, humidity, power, device state, or infrastructure signals|
|Execution model|Irrigation, relay control, pump control, valve control, lighting, or infrastructure actions|
|Privacy focus|Site data, operational data, ownership, access, and monitoring boundaries|
|Validation focus|Environmental conditions, connectivity, power, device range, latency, and recovery behavior|

## 中文表

|農業 / 基礎設施部署元素|說明|
|---|---|
|主要目標|分布式感知、執行、監測與基礎設施協同|
|典型組件|Gate、適用時 Hub、Sense、Act、Cloud、App、可選 Edge|
|Runtime 重點|本地自動化、狀態回報、排程執行與故障行為|
|雲端角色|遠端監測、警報、歷史、多站點可視化與生命週期|
|Edge 角色|可選環境模式解讀或異常偵測|
|互動模型|App、儀表板、維護存取與警報介面|
|感知模型|土壤、水、光照、溫度、濕度、電力、設備狀態或基礎設施信號|
|執行模型|灌溉、繼電器控制、水泵控制、閥門控制、照明或基礎設施動作|
|隱私重點|站點數據、運行數據、所有權、存取與監測邊界|
|驗證重點|環境條件、連接、供電、設備範圍、延遲與恢復行為|

---

## 16.11 Deployment Boundary

## 16.11 部署邊界

## EN

Deployment boundaries define what can and cannot be claimed for each deployment pattern. A reference deployment pattern is not a universal guarantee. Each deployment must be evaluated according to actual components, site conditions, network topology, privacy requirements, capacity limits, Edge availability, cloud availability, and validation evidence.

Deployment documents must avoid claiming that a pattern works in all environments, supports unlimited devices, guarantees energy savings, guarantees security, guarantees AI detection, or remains fully functional during every type of failure.

A deployment claim must specify the deployment model, component list, versions, configuration, network condition, privacy setting, capacity boundary, validation result, and failure behavior.

## ZH-TW

部署邊界定義每一種部署模式可以與不可以宣稱的內容。參考部署模式不是通用保證。每個部署都必須依實際組件、場地條件、網路拓撲、隱私要求、容量限制、Edge 可用性、雲端可用性與驗證證據進行評估。

部署文件必須避免宣稱某種模式適用於所有環境、支援無限制設備、保證節能、保證安全、保證 AI 偵測，或在每一種故障情況下都保持完整功能。

部署宣稱必須說明部署模型、組件清單、版本、配置、網路條件、隱私設定、容量邊界、驗證結果與故障行為。

---

## English Table

|Deployment Claim Area|Required Boundary|
|---|---|
|Scenario applicability|Must define the actual deployment scenario and site condition|
|Component support|Must list supported components and versions|
|Network condition|Must define local network, Internet, cloud, gateway, and fallback paths|
|Capacity|Must be based on validated device count, event load, and runtime load|
|Local-first behavior|Must define which local functions continue under which conditions|
|Cloud behavior|Must define which services require cloud availability|
|Edge behavior|Must define whether Edge is deployed and what it supports|
|Privacy behavior|Must define data capture, processing, storage, sync, and retention|
|Reliability|Must define failure and recovery behavior|
|Commercial language|Must remain aligned with validated deployment capability|

## 中文表

|部署宣稱領域|必須邊界|
|---|---|
|場景適用性|必須定義實際部署場景與場地條件|
|組件支援|必須列出受支援組件與版本|
|網路條件|必須定義本地網路、Internet、雲端、網關與回退路徑|
|容量|必須基於已驗證設備數、事件負載與 Runtime 負載|
|本地優先行為|必須定義哪些本地功能在什麼條件下繼續|
|雲端行為|必須定義哪些服務需要雲端可用性|
|Edge 行為|必須定義是否部署 Edge 以及其支援內容|
|隱私行為|必須定義數據捕捉、處理、儲存、同步與保留|
|可靠性|必須定義故障與恢復行為|
|商業語言|必須與已驗證部署能力保持一致|

---

## 16.12 Chapter Conclusion

## 16.12 章節結論

## EN

This chapter defines the Deployment Architecture of OceanAI. It explains how OceanAI may be deployed across residential, classroom, office, building, campus, energy, vision-aware, agriculture, and infrastructure scenarios.

Deployment Architecture translates the OceanAI architecture into site-specific implementation patterns while preserving local-first behavior, cloud-enhanced services, Edge-assisted interpretation, security, privacy, capacity, reliability, validation, and claim boundaries.

The following chapter defines Versioning and Evolution Strategy, including architecture versioning, runtime versioning, product compatibility, cloud evolution, Edge evolution, data model evolution, backward compatibility, migration strategy, and roadmap boundaries.

## ZH-TW

本章定義 OceanAI 的部署架構，說明 OceanAI 如何部署於住宅、教室、辦公、建築、校園、能源、視覺感知、農業與基礎設施場景。

部署架構將 OceanAI 架構轉化為場地專用實施模式，同時保留本地優先行為、雲端增強服務、Edge 輔助解讀、安全、隱私、容量、可靠性、驗證與宣稱邊界。

下一章將定義版本與演進策略，包括架構版本管理、Runtime 版本管理、產品相容性、雲端演進、Edge 演進、數據模型演進、向後相容性、遷移策略與路線圖邊界。