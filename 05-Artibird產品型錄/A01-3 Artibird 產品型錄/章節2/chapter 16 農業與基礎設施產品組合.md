# Chapter 16 — Agriculture and Infrastructure Product Combination

# 第十六章｜農業與基礎設施產品組合

---

## 16.1 Product Combination Positioning

## 16.1 產品組合定位

**EN**  
The Agriculture and Infrastructure Product Combination defines how Artibird products can support distributed sensing, gateway access, equipment control, irrigation automation, environmental monitoring, outdoor deployment, and cloud-visible operation across agriculture, landscape, facility, and infrastructure scenarios.

Within the OceanAI architecture, agriculture and infrastructure deployments are treated as distributed intelligent environments. Sensors, execution nodes, gateways, local runtime services, cloud services, and Edge intelligence may work together to support monitoring, automation, equipment coordination, and operational visibility under defined deployment and validation conditions.

**ZH-TW**  
農業與基礎設施產品組合定義 Artibird 產品如何支援分布式感知、網關接入、設備控制、灌溉自動化、環境監測、戶外部署，以及在農業、景觀、設施與基礎設施場景中的雲端可視化運行。

在 OceanAI 架構中，農業與基礎設施部署被視為分布式智慧環境。感測器、執行節點、網關、本地 Runtime 服務、雲端服務與 Edge 智慧，可在明確部署與驗證條件下共同支援監測、自動化、設備協同與運行可視化。

---

## 16.2 System Role

## 16.2 系統角色

**EN**  
In agriculture and infrastructure deployments, Artibird products help connect distributed field devices, environmental sensors, irrigation equipment, pumps, valves, lighting, power loads, and monitoring nodes into a coordinated system.

Artibird Gate supports device access across supported communication paths. Artibird Sense provides environmental and field context. Artibird Act provides electrical execution for supported loads or equipment. Artibird Hub / ArtiOS provides local runtime coordination where deployed. Artibird App and OceanAI Cloud provide setup, remote visibility, reporting, and status monitoring. OceanAI Edge may provide AI-assisted interpretation where deployed and validated.

**ZH-TW**  
在農業與基礎設施部署中，Artibird 產品幫助將分布式田間設備、環境感測器、灌溉設備、水泵、閥門、照明、電力負載與監測節點連接為一個協同系統。

Artibird Gate 支援透過受支援通訊路徑進行設備接入。Artibird Sense 提供環境與場域上下文。Artibird Act 為受支援負載或設備提供電力執行。Artibird Hub / ArtiOS 在已部署條件下提供本地 Runtime 協同。Artibird App 與 OceanAI Cloud 提供設定、遠端可視化、報告與狀態監測。OceanAI Edge 可在已部署並驗證條件下提供 AI 輔助解讀。

---

## English Table

|Agriculture / Infrastructure Function|Recommended Components|System Meaning|
|---|---|---|
|Local runtime coordination|Hub / ArtiOS|Maintains local automation, state, and command routing where deployed|
|Device access|Gate|Connects distributed sensing and execution devices through supported paths|
|Environmental sensing|Sense|Provides temperature, humidity, light, soil-related, occupancy, or site context where implemented|
|Electrical execution|Act / Act-E|Controls supported pumps, valves, lighting, plugs, relays, or equipment loads|
|Irrigation automation|Sense / Act / Hub|Supports sensor-based or schedule-based irrigation workflows|
|Remote visibility|App / Cloud|Provides status viewing, alerts, history, and remote management where configured|
|Energy monitoring|Act-E / Cloud|Provides load or energy-related data where implemented|
|Visual monitoring|Vision / Edge / Cloud|Supports visual awareness, alerts, and AI-assisted context where deployed|
|Distributed deployment|Gate / Cloud / Hub|Supports multi-zone or multi-site field operation under validated conditions|
|Failure awareness|Hub / App / Cloud|Supports defined alerts, degraded states, or device health visibility where implemented|

## 中文表

|農業 / 基礎設施功能|建議組件|系統意義|
|---|---|---|
|本地 Runtime 協同|Hub / ArtiOS|在已部署條件下維持本地自動化、狀態與指令路由|
|設備接入|Gate|透過受支援路徑連接分布式感知與執行設備|
|環境感知|Sense|在已實作條件下提供溫度、濕度、光照、土壤相關、人在或站點上下文|
|電力執行|Act / Act-E|控制受支援水泵、閥門、照明、插座、繼電器或設備負載|
|灌溉自動化|Sense / Act / Hub|支援基於感測或排程的灌溉工作流|
|遠端可視化|App / Cloud|在已配置條件下提供狀態查看、警報、歷史與遠端管理|
|能源監測|Act-E / Cloud|在已實作條件下提供負載或能源相關數據|
|視覺監測|Vision / Edge / Cloud|在已部署條件下支援視覺感知、警報與 AI 輔助上下文|
|分布式部署|Gate / Cloud / Hub|在已驗證條件下支援多區域或多站點田間運行|
|故障感知|Hub / App / Cloud|在已實作條件下支援已定義警報、降級狀態或設備健康可視化|

---

## 16.3 Core Agriculture and Infrastructure Functions

## 16.3 核心農業與基礎設施功能

**EN**  
The agriculture and infrastructure product combination should support field-oriented operation where sensing, execution, and connectivity may be distributed across wide or outdoor environments.

The core value is structured coordination under variable site conditions. Instead of manually checking every zone, valve, pump, load, or sensor, the system can provide defined automation, status visibility, alerts, and remote management under supported deployment conditions.

**ZH-TW**  
農業與基礎設施產品組合應支援面向場域的運行，其中感知、執行與連接可能分布於廣域或戶外環境中。

其核心價值是在多變站點條件下提供結構化協同。系統不需要人工逐一檢查每個區域、閥門、水泵、負載或感測器，而是可在受支援部署條件下提供已定義自動化、狀態可視化、警報與遠端管理。

---

## English Table

|Core Function|Description|
|---|---|
|Distributed sensing|Collects environmental or field data from supported sensing nodes|
|Irrigation control|Controls supported valves, pumps, or irrigation equipment through Act or relay-based execution|
|Scheduled automation|Runs defined schedules for irrigation, lighting, equipment, or site workflows|
|Sensor-based automation|Uses temperature, humidity, light, soil-related, occupancy, or other supported inputs|
|Remote monitoring|Displays supported device, zone, energy, or environmental status through App or Cloud|
|Energy-aware operation|Uses Act-E or supported energy data for reporting or load visibility|
|Equipment protection|Supports defined safe states, alerts, or failure behavior where implemented|
|Multi-zone management|Organizes field, garden, facility, or infrastructure areas into zones|
|Visual awareness|Uses Vision or Edge where supported for visual events, alerts, or site monitoring|
|Local continuity|Supports defined local behavior when required local components are present|

## 中文表

|核心功能|說明|
|---|---|
|分布式感知|從受支援感知節點收集環境或場域數據|
|灌溉控制|透過 Act 或基於繼電器的執行控制受支援閥門、水泵或灌溉設備|
|排程自動化|執行已定義灌溉、照明、設備或站點工作流排程|
|基於感測的自動化|使用溫度、濕度、光照、土壤相關、人在或其他受支援輸入|
|遠端監測|透過 App 或 Cloud 顯示受支援設備、區域、能源或環境狀態|
|能源感知運行|使用 Act-E 或受支援能源數據進行報告或負載可視化|
|設備保護|在已實作條件下支援已定義安全狀態、警報或故障行為|
|多區域管理|將田地、花園、設施或基礎設施區域組織為區域|
|視覺感知|在支援條件下使用 Vision 或 Edge 進行視覺事件、警報或站點監測|
|本地延續|當所需本地組件具備時，支援已定義本地行為|

---

## 16.4 Recommended Product Packages

## 16.4 建議產品套組

**EN**  
Agriculture and infrastructure deployments can be organized into reference packages according to site size, communication coverage, environmental exposure, equipment type, automation needs, and monitoring requirements.

These packages should be treated as planning references. Final deployment should be based on site survey, power availability, network coverage, environmental rating, enclosure design, device capacity, safety requirements, and validation status.

**ZH-TW**  
農業與基礎設施部署可依站點規模、通訊覆蓋、環境暴露、設備類型、自動化需求與監測要求，組織為參考套組。

這些套組應被視為規劃參考。最終部署應基於站點勘察、供電可用性、網路覆蓋、環境等級、外殼設計、設備容量、安全要求與驗證狀態。

---

## English Table

|Package|Recommended Components|Typical Purpose|
|---|---|---|
|Basic Irrigation Package|Hub, Gate, Sense, Act, App|Basic sensing, valve or pump control, and local / App-based operation|
|Sensor-Based Irrigation Package|Hub, Gate, Sense, Act, Cloud, App|Sensor-informed irrigation control and remote visibility|
|Energy-Aware Equipment Package|Hub, Act-E, Sense, Cloud, App|Equipment monitoring, load visibility, and energy-related reporting|
|Infrastructure Monitoring Package|Gate, Sense, Act, Cloud, App|Distributed monitoring and controlled execution across site areas|
|Vision-Aware Site Package|Hub, Vision, Cloud, Edge, App|Visual events, alerts, and AI-assisted site context where deployed|
|Multi-Zone Agriculture Package|Hub, multiple Gate, Sense, Act, Cloud|Multi-zone sensing and execution across larger fields or facilities|
|Full Agriculture / Infrastructure Package|Hub, Gate, Sense, Act, Vision, App, Cloud, Edge|Complete distributed sensing, execution, visibility, and AI-assisted operation|

## 中文表

|套組|建議組件|典型用途|
|---|---|---|
|基礎灌溉套組|Hub、Gate、Sense、Act、App|基礎感知、閥門或水泵控制，以及本地 / App 操作|
|基於感測灌溉套組|Hub、Gate、Sense、Act、Cloud、App|基於感測的灌溉控制與遠端可視化|
|能源感知設備套組|Hub、Act-E、Sense、Cloud、App|設備監測、負載可視化與能源相關報告|
|基礎設施監測套組|Gate、Sense、Act、Cloud、App|跨站點區域的分布式監測與受控執行|
|視覺感知站點套組|Hub、Vision、Cloud、Edge、App|在部署條件下提供視覺事件、警報與 AI 輔助站點上下文|
|多區域農業套組|Hub、多個 Gate、Sense、Act、Cloud|跨較大田地或設施的多區域感知與執行|
|完整農業 / 基礎設施套組|Hub、Gate、Sense、Act、Vision、App、Cloud、Edge|完整分布式感知、執行、可視化與 AI 輔助運行|

---

## 16.5 Agriculture and Infrastructure Scene Examples

## 16.5 農業與基礎設施場景示例

**EN**  
Agriculture and infrastructure scenes can combine sensing, irrigation, equipment control, lighting, monitoring, alerts, schedules, and energy-related behavior. Scene behavior should be configured according to site policy, climate, crop type, equipment type, safety requirement, water availability, and validation conditions.

**ZH-TW**  
農業與基礎設施場景可結合感知、灌溉、設備控制、照明、監測、警報、排程與能源相關行為。場景行為應依站點政策、氣候、作物類型、設備類型、安全要求、水源可用性與驗證條件配置。

---

## English Table

|Scene|Possible Behavior|
|---|---|
|Morning Irrigation Mode|Opens supported valves or pump circuits according to schedule and sensor rules|
|Soil / Environment Response Mode|Adjusts irrigation or equipment behavior based on supported environmental inputs|
|Heat Protection Mode|Activates selected irrigation, ventilation, shading, or alert behavior where supported|
|Night Lighting Mode|Controls supported lighting loads for site safety or operation|
|Equipment Protection Mode|Powers down or isolates selected equipment under defined abnormal conditions|
|Water-Saving Mode|Reduces irrigation duration or frequency according to configured rules and sensor input|
|Maintenance Mode|Enables selected controls, lighting, and device access for maintenance personnel|
|Alert Mode|Sends supported alerts for device offline, abnormal load, visual event, or environmental threshold|

## 中文表

|場景|可能行為|
|---|---|
|早晨灌溉模式|依排程與感測規則開啟受支援閥門或水泵回路|
|土壤 / 環境響應模式|依受支援環境輸入調整灌溉或設備行為|
|高溫保護模式|在支援條件下啟動特定灌溉、通風、遮蔭或警報行為|
|夜間照明模式|控制受支援照明負載，用於站點安全或運行|
|設備保護模式|在已定義異常條件下關閉或隔離特定設備|
|節水模式|依配置規則與感測輸入降低灌溉時長或頻率|
|維護模式|為維護人員啟用特定控制、照明與設備接入|
|警報模式|針對設備離線、異常負載、視覺事件或環境閾值發送受支援警報|

---

## 16.6 Agriculture and Infrastructure Runtime Flow

## 16.6 農業與基礎設施 Runtime 流程

**EN**  
In agriculture and infrastructure deployments, runtime flow should remain controlled and validation-bound. Inputs may come from sensors, schedules, App commands, cloud workflows, visual events, or Edge-assisted interpretation. Hub / ArtiOS should evaluate supported inputs before any physical execution.

This is especially important because irrigation, pumps, valves, outdoor loads, and infrastructure equipment may affect water usage, equipment safety, energy consumption, or site operation.

**ZH-TW**  
在農業與基礎設施部署中，Runtime 流程應保持受控並受驗證邊界約束。輸入可來自感測器、排程、App 指令、雲端工作流、視覺事件或 Edge 輔助解讀。Hub / ArtiOS 應在任何物理執行前判斷受支援輸入。

這一點尤其重要，因為灌溉、水泵、閥門、戶外負載與基礎設施設備可能影響用水、設備安全、能源消耗或站點運行。

---

## English Table

|Flow Stage|Description|
|---|---|
|Input source|Sense, Vision, schedule, App, Cloud, Edge, maintenance workflow, or local control|
|Zone identification|Runtime identifies field, garden, facility area, irrigation zone, or infrastructure zone|
|Runtime evaluation|Hub / ArtiOS evaluates permission, priority, rule, device capability, safety, and current state|
|Automation decision|Runtime determines whether irrigation, load control, alert, or status update should occur|
|Command routing|Commands are routed to Act, relay, valve, pump, lighting, App, Cloud, or supported target|
|Physical execution|Supported devices perform irrigation, switching, equipment control, lighting, or alert behavior|
|State update|Zone state, device state, automation status, energy data, or event status is updated where supported|
|Feedback and reporting|App, Cloud, dashboard, or local interface displays supported results, logs, or alerts|

## 中文表

|流程階段|說明|
|---|---|
|輸入來源|Sense、Vision、排程、App、Cloud、Edge、維護工作流或本地控制|
|區域識別|Runtime 識別田地、花園、設施區域、灌溉區或基礎設施區域|
|Runtime 判斷|Hub / ArtiOS 判斷權限、優先級、規則、設備能力、安全與當前狀態|
|自動化決策|Runtime 判斷是否執行灌溉、負載控制、警報或狀態更新|
|指令路由|指令路由至 Act、繼電器、閥門、水泵、照明、App、Cloud 或受支援目標|
|物理執行|受支援設備執行灌溉、開關、設備控制、照明或警報行為|
|狀態更新|在支援條件下更新區域狀態、設備狀態、自動化狀態、能源數據或事件狀態|
|回饋與報告|App、Cloud、儀表板或本地介面顯示受支援結果、日誌或警報|

---

## 16.7 Outdoor and Site Deployment Considerations

## 16.7 戶外與站點部署考量

**EN**  
Agriculture and infrastructure deployments often face more challenging site conditions than indoor smart environments. Outdoor exposure, distance, enclosure design, power availability, communication coverage, equipment rating, water protection, and maintenance access must be considered before deployment.

The catalog should not imply that standard indoor products are automatically suitable for outdoor or infrastructure environments.

**ZH-TW**  
農業與基礎設施部署通常比室內智慧環境面臨更複雜的站點條件。戶外暴露、距離、外殼設計、供電可用性、通訊覆蓋、設備額定、防水保護與維護通道，都必須在部署前考量。

型錄不應暗示標準室內產品可自動適用於戶外或基礎設施環境。

---

## English Table

|Deployment Factor|Required Consideration|
|---|---|
|Environmental rating|Outdoor products require suitable enclosure, sealing, temperature, humidity, dust, or water protection|
|Power availability|AC, DC, battery, solar, or local power availability must be defined|
|Communication coverage|Wi-Fi, Ethernet, BLE Mesh, or other supported communication paths must be validated on site|
|Distance and topology|Gate placement and device distribution must reflect actual site layout|
|Load type|Pumps, valves, lighting, or equipment loads must stay within supported electrical ratings|
|Safety requirement|Water, power, and equipment interaction must follow installation and safety requirements|
|Maintenance access|Devices should be reachable for service, inspection, reset, or replacement|
|Privacy and visual data|Vision deployment must follow privacy, access, recording, and data retention rules|
|Cloud dependency|Remote visibility depends on Internet and cloud availability where used|
|Validation|Site-specific validation is required before operational claims are made|

## 中文表

|部署因素|必須考量|
|---|---|
|環境等級|戶外產品需要合適外殼、密封、溫度、濕度、防塵或防水保護|
|供電可用性|必須定義 AC、DC、電池、太陽能或本地供電可用性|
|通訊覆蓋|Wi-Fi、Ethernet、BLE Mesh 或其他受支援通訊路徑必須在現場驗證|
|距離與拓撲|Gate 放置與設備分布必須反映實際站點布局|
|負載類型|水泵、閥門、照明或設備負載必須處於受支援電氣額定內|
|安全要求|水、電與設備互動必須遵循安裝與安全要求|
|維護通道|設備應可被維護、檢查、重置或更換|
|隱私與視覺數據|Vision 部署必須遵循隱私、存取、錄影與數據保留規則|
|雲端依賴|遠端可視化在使用時取決於 Internet 與 Cloud 可用性|
|驗證|在提出運行宣稱前需要完成站點專用驗證|

---

## 16.8 User Roles and Operational Access

## 16.8 用戶角色與運行存取

**EN**  
Agriculture and infrastructure deployments may involve owners, operators, facility staff, maintenance personnel, installers, administrators, and security staff. Access should be controlled according to responsibility, equipment risk, site policy, and system configuration.

Not every user should have permission to control pumps, valves, electrical loads, irrigation schedules, Vision devices, or infrastructure equipment.

**ZH-TW**  
農業與基礎設施部署可能涉及所有者、運營人員、設施人員、維護人員、安裝人員、管理員與安保人員。存取應依責任、設備風險、站點政策與系統配置進行控制。

並非每個用戶都應具備控制水泵、閥門、電力負載、灌溉排程、Vision 設備或基礎設施設備的權限。

---

## English Table

|User Role|Typical Access Scope|Recommended Interface|
|---|---|---|
|Owner / Site Manager|Site-level status, schedules, reports, and control policy|App, Cloud|
|Operator|Daily equipment control, irrigation operation, and alerts|App, Panel where deployed|
|Maintenance Staff|Device inspection, equipment test, and maintenance mode|App, local controls, installer tools|
|Installer|Device onboarding, wiring, gateway setup, and validation|App, Hub, Gate tools where implemented|
|Administrator|Account, roles, permissions, reports, and lifecycle management|Cloud, App|
|Security Staff|Supported Vision alerts, site events, and response workflows|Vision, App, Cloud, Edge where deployed|
|Guest / Temporary User|Limited access where configured|App or restricted interface|

## 中文表

|用戶角色|典型存取範圍|建議介面|
|---|---|---|
|所有者 / 站點管理者|站點級狀態、排程、報告與控制政策|App、Cloud|
|運營人員|日常設備控制、灌溉操作與警報|App、已部署條件下的 Panel|
|維護人員|設備檢查、設備測試與維護模式|App、本地控制、安裝工具|
|安裝人員|設備入網、接線、網關設定與驗證|App、Hub、Gate 工具，在已實作條件下|
|管理員|帳號、角色、權限、報告與生命週期管理|Cloud、App|
|安保人員|受支援 Vision 警報、站點事件與響應工作流|Vision、App、Cloud、Edge，在已部署條件下|
|訪客 / 臨時用戶|在已配置條件下的有限存取|App 或受限介面|

---

## 16.9 Customer-Readable Description

## 16.9 客戶可讀描述

**EN**  
Artibird agriculture and infrastructure combinations help distributed spaces become easier to monitor and control. Sensors can report environmental conditions. Execution nodes can control supported pumps, valves, lights, or equipment. Gateways connect distributed devices. Cloud services provide remote visibility. Edge and Vision may add AI-assisted context where deployed.

Instead of relying only on manual inspection and isolated controllers, agriculture and infrastructure sites can use coordinated sensing, execution, automation, and visibility under supported deployment conditions.

**ZH-TW**  
Artibird 農業與基礎設施產品組合，幫助分布式空間更容易監測與控制。感測器可以回報環境條件。執行節點可以控制受支援水泵、閥門、照明或設備。網關連接分布式設備。雲端服務提供遠端可視化。Edge 與 Vision 可在部署條件下增加 AI 輔助上下文。

農業與基礎設施站點不必只依賴人工巡檢與孤立控制器，而是可以在受支援部署條件下使用協同感知、執行、自動化與可視化能力。

---

## 16.10 Product Combination Summary

## 16.10 產品組合摘要

## EN

**Agriculture and Infrastructure Product Combination**  
Distributed Sensing, Irrigation Control, Equipment Execution, and Cloud-Visible Operation

The Artibird agriculture and infrastructure combination connects Hub, Gate, Sense, Act, Vision, App, Cloud, and Edge into a distributed operational system. It supports defined sensing, irrigation, electrical execution, monitoring, alerts, energy-aware workflows, remote visibility, and AI-assisted interpretation under supported site, network, environmental, and validation conditions.

## ZH-TW

**農業與基礎設施產品組合**  
分布式感知、灌溉控制、設備執行與雲端可視化運行

Artibird 農業與基礎設施產品組合將 Hub、Gate、Sense、Act、Vision、App、Cloud 與 Edge 連接為分布式運行系統。它在受支援站點、網路、環境與驗證條件下，支援已定義感知、灌溉、電力執行、監測、警報、能源感知工作流、遠端可視化與 AI 輔助解讀。

---

## 16.11 Catalog Claim Boundary

## 16.11 型錄宣稱邊界

**EN**  
Agriculture and infrastructure capabilities depend on selected components, site survey, environmental rating, enclosure design, wiring condition, power availability, network coverage, device models, firmware versions, load ratings, water-related safety requirements, cloud availability, Edge deployment, installation quality, maintenance access, validation status, and certification status where applicable.

The agriculture and infrastructure product combination should not be described as supporting all outdoor environments, controlling all pumps or valves, guaranteeing irrigation results, guaranteeing crop yield, replacing agricultural management systems, ensuring water savings, or providing universal infrastructure control unless separately validated, certified, and approved.

**ZH-TW**  
農業與基礎設施能力取決於所選組件、站點勘察、環境等級、外殼設計、接線條件、供電可用性、網路覆蓋、設備型號、韌體版本、負載額定、水相關安全要求、雲端可用性、Edge 部署、安裝品質、維護通道、驗證狀態，以及適用時的認證狀態。

除非另行完成驗證、認證與核准，農業與基礎設施產品組合不應被描述為支援所有戶外環境、控制所有水泵或閥門、保證灌溉效果、保證作物產量、取代農業管理系統、確保節水，或提供通用基礎設施控制。

---

## English Table

|Avoid Saying|Preferred Catalog Language|
|---|---|
|Works in all outdoor environments|Supports defined outdoor or site deployments where environmental rating and validation allow|
|Controls all pumps and valves|Controls supported pumps, valves, or loads within validated ratings and installation conditions|
|Guarantees irrigation results|Supports defined irrigation workflows under supported sensor, schedule, and execution conditions|
|Guarantees crop yield|Do not use yield guarantee language; describe monitoring and automation support instead|
|Saves water automatically|Supports water-aware workflows where measured and validated|
|Replaces agricultural management systems|Supports selected monitoring and automation workflows; may integrate where implemented|
|Supports unlimited field zones|Supports validated zones and device capacity under defined topology|
|Works without site planning|Requires site survey, power planning, network planning, environmental protection, and validation|

## 中文表

|避免使用|建議型錄語言|
|---|---|
|適用所有戶外環境|在環境等級與驗證允許條件下支援已定義戶外或站點部署|
|控制所有水泵與閥門|在已驗證額定與安裝條件內控制受支援水泵、閥門或負載|
|保證灌溉效果|在受支援感測、排程與執行條件下支援已定義灌溉工作流|
|保證作物產量|不使用產量保證語言；改為描述監測與自動化支持|
|自動節水|在已量測與驗證條件下支援水資源感知工作流|
|取代農業管理系統|支援特定監測與自動化工作流；在已實作條件下可整合|
|支援無限制田間區域|在已定義拓撲下支援已驗證區域與設備容量|
|不需要站點規劃即可運作|需要站點勘察、供電規劃、網路規劃、環境保護與驗證|

---

## 16.12 Chapter Conclusion

## 16.12 章節結論

**EN**  
The Agriculture and Infrastructure Product Combination shows how Artibird products can extend coordinated intelligent environments beyond indoor residential, classroom, or building spaces into distributed outdoor and operational sites.

In the Artibird catalog, agriculture and infrastructure deployments should be presented as controlled, validation-bound, site-specific product combinations. Their value is reflected in distributed sensing, equipment execution, irrigation workflows, remote visibility, energy-aware operation, and AI-assisted interpretation under defined conditions.

**ZH-TW**  
農業與基礎設施產品組合展示 Artibird 產品如何將協同智慧空間從室內住宅、教室或建築空間，延伸至分布式戶外與運行站點。

在 Artibird 型錄中，農業與基礎設施部署應被呈現為受控、受驗證邊界約束、並依站點條件配置的產品組合。其價值體現在分布式感知、設備執行、灌溉工作流、遠端可視化、能源感知運行與在明確條件下的 AI 輔助解讀。