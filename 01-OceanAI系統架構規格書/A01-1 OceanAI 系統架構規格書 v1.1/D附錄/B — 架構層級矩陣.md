# Appendix B — Architecture Layer Matrix

# Appendix B — 架構層級矩陣

---

## B.1 Purpose

## B.1 目的

## EN

This appendix defines the Architecture Layer Matrix for the OceanAI System Architecture Specification. The purpose of this matrix is to provide a structured reference for how each major system layer participates in the OceanAI architecture.

The Architecture Layer Matrix helps maintain consistency across architecture documents, product specifications, commercial specifications, deployment references, validation plans, and future system evolution. It clarifies each layer’s responsibility, representative components, runtime role, data relationship, security and privacy relevance, validation requirement, and claim boundary.

This appendix should be used as a quick-reference architecture alignment tool. It does not replace the detailed chapter definitions in the main specification.

## ZH-TW

本附錄定義《OceanAI 系統架構規格書》的架構層級矩陣。此矩陣的目的，是為 OceanAI 架構中各主要系統層級如何參與整體架構提供結構化參考。

架構層級矩陣有助於在架構文件、產品規格書、商業規格書、部署參考、驗證計劃與未來系統演進中維持一致性。它釐清每一層的責任、代表組件、Runtime 角色、數據關係、安全與隱私關聯、驗證要求與宣稱邊界。

本附錄應作為快速架構對齊工具使用，不取代主規格書中各章節的詳細定義。

---

## B.2 Architecture Layer Overview

## B.2 架構層級總覽

## EN

The OceanAI architecture is organized into multiple responsibility layers. These layers do not operate as isolated modules. They cooperate through runtime behavior, data flow, command routing, synchronization, Edge-assisted interpretation, cloud services, security rules, privacy boundaries, and validation evidence.

Each layer has a defined architectural role. A component may participate in more than one layer, but its primary responsibility must remain clear.

## ZH-TW

OceanAI 架構由多個責任層級組成。這些層級不是孤立模組，而是透過 Runtime 行為、數據流、指令路由、同步、Edge 輔助解讀、雲端服務、安全規則、隱私邊界與驗證證據共同運作。

每一層都有已定義架構角色。一個組件可以參與多個層級，但其主要責任必須保持清楚。

---

## English Table

|Layer|Core Responsibility|Representative Components|
|---|---|---|
|Cloud Layer|Remote access, account services, synchronization, lifecycle, analytics, alerts, and multi-site management|OceanAI Cloud|
|Edge Intelligence Layer|Local AI-assisted inference, visual understanding, sensor fusion, context interpretation, and optimization support|OceanAI Edge|
|Local Runtime Layer|Local coordination, state management, scenes, automation, command routing, priority handling, and offline behavior|ArtiOS, Artibird Hub|
|Device Access Layer|Device onboarding, gateway communication, protocol access, and local network participation|Artibird Gate|
|Interaction Layer|User intention, control interface, scene selection, configuration, and feedback|Artibird App, Artibird Panel, Artibird Switch|
|Sensing Layer|Environmental, visual, device, energy, and contextual input|Artibird Sense, Artibird Vision, supported device telemetry|
|Execution Layer|Controlled physical action, relay behavior, load control, plug control, and appliance synchronization|Artibird Act, Artibird Switch Relay variants, Artibird Sync|
|Device Participation Layer|Supported physical devices participating in the runtime system|Artibird Hub, Gate, Sync, Switch, Panel, Act, Sense, Vision|

## 中文表

|層級|核心責任|代表組件|
|---|---|---|
|雲端層|遠端存取、帳號服務、同步、生命週期、分析、警報與多站點管理|OceanAI Cloud|
|邊緣智慧層|本地 AI 輔助推理、視覺理解、感測融合、上下文解讀與優化支持|OceanAI Edge|
|本地 Runtime 層|本地協同、狀態管理、場景、自動化、指令路由、優先級處理與離線行為|ArtiOS、Artibird Hub|
|設備接入層|設備入網、網關通訊、協議接入與本地網路參與|Artibird Gate|
|互動層|用戶意圖、控制介面、場景選擇、配置與回饋|Artibird App、Artibird Panel、Artibird Switch|
|感知層|環境、視覺、設備、能源與上下文輸入|Artibird Sense、Artibird Vision、受支援設備遙測|
|執行層|受控物理動作、繼電器行為、負載控制、插座控制與家電同步|Artibird Act、Artibird Switch 繼電器版本、Artibird Sync|
|設備參與層|參與 Runtime 系統的受支援實體設備|Artibird Hub、Gate、Sync、Switch、Panel、Act、Sense、Vision|

---

## B.3 Layer Responsibility Matrix

## B.3 層級責任矩陣

## EN

The Layer Responsibility Matrix defines the primary responsibility of each architecture layer. It should be used to prevent unclear ownership between Cloud, Edge, Local Runtime, Device Access, Interaction, Sensing, Execution, and Device Participation layers.

No layer should claim responsibility that belongs to another layer unless a validated cross-layer design has been explicitly defined.

## ZH-TW

層級責任矩陣定義每一個架構層的主要責任。它應用於避免 Cloud、Edge、Local Runtime、Device Access、Interaction、Sensing、Execution 與 Device Participation 各層之間出現不清楚的責任歸屬。

任何層級都不應宣稱屬於另一層的責任，除非已明確定義並驗證跨層設計。

---

## English Table

|Layer|Primary Responsibility|Not Primary Responsibility|
|---|---|---|
|Cloud Layer|Remote, historical, lifecycle, account, analytics, alert, and multi-site services|Direct local physical execution by default|
|Edge Intelligence Layer|AI-assisted interpretation, inference, visual analysis, fusion, and recommendations|Unrestricted autonomous control|
|Local Runtime Layer|Deterministic local behavior, state, scenes, automations, priorities, and command routing|Cloud account management or AI model training|
|Device Access Layer|Device discovery, onboarding, communication access, gateway participation, and protocol entry|Runtime decision authority by itself|
|Interaction Layer|User intention, control entry, configuration input, and feedback presentation|Direct execution without permission, priority, and routing|
|Sensing Layer|Input signals, environmental context, visual context, energy data, and device telemetry|Automatic action without runtime interpretation|
|Execution Layer|Physical output, load control, relay behavior, plug action, and appliance synchronization|Policy definition or data governance|
|Device Participation Layer|Physical participation in runtime through supported roles and capabilities|Universal compatibility with unsupported devices|

## 中文表

|層級|主要責任|非主要責任|
|---|---|---|
|雲端層|遠端、歷史、生命週期、帳號、分析、警報與多站點服務|預設不直接負責本地物理執行|
|邊緣智慧層|AI 輔助解讀、推理、視覺分析、融合與建議|不受限制的自主控制|
|本地 Runtime 層|確定性本地行為、狀態、場景、自動化、優先級與指令路由|雲端帳號管理或 AI 模型訓練|
|設備接入層|設備發現、入網、通訊接入、網關參與與協議入口|單獨具備 Runtime 決策權威|
|互動層|用戶意圖、控制入口、配置輸入與回饋呈現|未經權限、優先級與路由直接執行|
|感知層|輸入信號、環境上下文、視覺上下文、能源數據與設備遙測|未經 Runtime 解讀自動動作|
|執行層|物理輸出、負載控制、繼電器行為、插座動作與家電同步|政策定義或數據治理|
|設備參與層|透過受支援角色與能力參與 Runtime 的實體設備|與未支援設備的通用相容|

---

## B.4 Component-to-Layer Matrix

## B.4 組件—層級矩陣

## EN

The Component-to-Layer Matrix maps major OceanAI and Artibird components to their primary and secondary architecture layers. This matrix helps clarify that a product may participate in multiple layers while still maintaining a primary architectural role.

For example, Artibird Hub belongs primarily to the Local Runtime Layer, but it may also participate in connectivity, data handling, and deployment validation. Artibird Vision belongs primarily to the Sensing Layer, but it may also support Edge context and privacy-sensitive workflows.

## ZH-TW

組件—層級矩陣將主要 OceanAI 與 Artibird 組件映射至其主要與次要架構層級。此矩陣有助於釐清一個產品可以參與多個層級，但仍必須保持主要架構角色。

例如，Artibird Hub 主要屬於本地 Runtime 層，但也可能參與連接、數據處理與部署驗證。Artibird Vision 主要屬於感知層，但也可能支援 Edge 上下文與隱私敏感工作流。

---

## English Table

|Component|Primary Layer|Secondary Participation|
|---|---|---|
|OceanAI Cloud|Cloud Layer|Governance, synchronization, lifecycle, analytics, multi-site management|
|OceanAI Edge|Edge Intelligence Layer|Sensing interpretation, AI privacy, optimization, runtime input|
|ArtiOS|Local Runtime Layer|Data model, automation, scene logic, command routing, governance|
|Artibird Hub|Local Runtime Layer|Local services, MQTT, state management, deployment center|
|Artibird Gate|Device Access Layer|Gateway communication, network participation, protocol access|
|Artibird App|Interaction Layer|Local access, remote access, configuration, status viewing|
|Artibird Panel|Interaction Layer|Room-level control, shared interface, scene selection|
|Artibird Switch|Interaction / Execution Layer|Event input, relay behavior by variant, local manual control|
|Artibird Sense|Sensing Layer|Environmental context, automation input, Edge input|
|Artibird Vision|Sensing / Edge Context Layer|Visual events, AI vision context, privacy-sensitive data|
|Artibird Act|Execution Layer|Electrical execution, load control, optional energy telemetry|
|Artibird Sync|Execution / Synchronization Layer|IR / RF appliance synchronization, runtime command target|

## 中文表

|組件|主要層級|次要參與|
|---|---|---|
|OceanAI Cloud|雲端層|治理、同步、生命週期、分析、多站點管理|
|OceanAI Edge|邊緣智慧層|感知解讀、AI 隱私、優化、Runtime 輸入|
|ArtiOS|本地 Runtime 層|數據模型、自動化、場景邏輯、指令路由、治理|
|Artibird Hub|本地 Runtime 層|本地服務、MQTT、狀態管理、部署中心|
|Artibird Gate|設備接入層|網關通訊、網路參與、協議接入|
|Artibird App|互動層|本地存取、遠端存取、配置、狀態查看|
|Artibird Panel|互動層|房間級控制、共享介面、場景選擇|
|Artibird Switch|互動 / 執行層|事件輸入、依版本支援繼電器行為、本地手動控制|
|Artibird Sense|感知層|環境上下文、自動化輸入、Edge 輸入|
|Artibird Vision|感知 / Edge 上下文層|視覺事件、AI 視覺上下文、隱私敏感數據|
|Artibird Act|執行層|電力執行、負載控制、可選能源遙測|
|Artibird Sync|執行 / 同步層|IR / RF 家電同步、Runtime 指令目標|

---

## B.5 Runtime Participation Matrix

## B.5 Runtime 參與矩陣

## EN

The Runtime Participation Matrix defines how each layer contributes to active system operation. Runtime participation includes event generation, command routing, state updates, scene execution, automation input, physical execution, synchronization, alerts, and failure behavior.

Runtime participation should always follow permission, priority, capability, safety, privacy, and validation boundaries.

## ZH-TW

Runtime 參與矩陣定義每一層如何參與主動系統運行。Runtime 參與包括事件生成、指令路由、狀態更新、場景執行、自動化輸入、物理執行、同步、警報與故障行為。

Runtime 參與必須始終遵循權限、優先級、能力、安全、隱私與驗證邊界。

---

## English Table

|Layer|Runtime Participation|
|---|---|
|Cloud Layer|Sends remote requests, synchronizes selected state, provides alerts, supports lifecycle and recovery|
|Edge Intelligence Layer|Provides interpretation, detection, recommendation, context, and optimization signals|
|Local Runtime Layer|Processes events, routes commands, maintains state, executes scenes and automations|
|Device Access Layer|Transports device events and commands through supported gateway paths|
|Interaction Layer|Generates user events and configuration inputs; displays status and feedback|
|Sensing Layer|Generates sensor, visual, energy, device, or environmental events|
|Execution Layer|Performs controlled physical actions and reports output state|
|Device Participation Layer|Generates events, receives commands, reports state, and participates according to capability|

## 中文表

|層級|Runtime 參與|
|---|---|
|雲端層|發送遠端請求、同步特定狀態、提供警報、支援生命週期與恢復|
|邊緣智慧層|提供解讀、偵測、建議、上下文與優化信號|
|本地 Runtime 層|處理事件、路由指令、維護狀態、執行場景與自動化|
|設備接入層|透過受支援網關路徑傳輸設備事件與指令|
|互動層|產生用戶事件與配置輸入；顯示狀態與回饋|
|感知層|產生感測、視覺、能源、設備或環境事件|
|執行層|完成受控物理動作並回報輸出狀態|
|設備參與層|根據能力產生事件、接收指令、回報狀態並參與系統|

---

## B.6 Data Relationship Matrix

## B.6 數據關係矩陣

## EN

The Data Relationship Matrix defines the type of data each layer may generate, process, store, synchronize, or consume. Data handling must follow security, privacy, residency, retention, synchronization, and validation requirements.

This matrix should not be interpreted as permission for all data to be collected or synchronized. Actual data behavior depends on implementation, configuration, user permission, policy, and validation status.

## ZH-TW

數據關係矩陣定義每一層可生成、處理、儲存、同步或使用的數據類型。數據處理必須遵循安全、隱私、駐留、保留、同步與驗證要求。

此矩陣不應被解讀為允許收集或同步所有數據。實際數據行為取決於實作、配置、用戶權限、政策與驗證狀態。

---

## English Table

|Layer|Data Generated / Processed|
|---|---|
|Cloud Layer|Account data, synchronization records, lifecycle data, alerts, analytics, historical records, multi-site data|
|Edge Intelligence Layer|AI input, AI output, interpretation results, visual context, sensor fusion results, recommendation data|
|Local Runtime Layer|Device state, scene state, automation state, command records, event logs, runtime status|
|Device Access Layer|Onboarding data, gateway status, connectivity state, protocol records, device access events|
|Interaction Layer|User actions, configuration input, scene selection, status requests, interface feedback|
|Sensing Layer|Environmental data, visual data, occupancy signals, energy readings, device telemetry|
|Execution Layer|Relay state, plug state, load state, appliance command status, execution result|
|Device Participation Layer|Device identity, capability, firmware version, health state, connectivity, validation status|

## 中文表

|層級|生成 / 處理數據|
|---|---|
|雲端層|帳號數據、同步記錄、生命週期數據、警報、分析、歷史記錄、多站點數據|
|邊緣智慧層|AI 輸入、AI 輸出、解讀結果、視覺上下文、感測融合結果、建議數據|
|本地 Runtime 層|設備狀態、場景狀態、自動化狀態、指令記錄、事件日誌、Runtime 狀態|
|設備接入層|入網數據、網關狀態、連接狀態、協議記錄、設備接入事件|
|互動層|用戶動作、配置輸入、場景選擇、狀態請求、介面回饋|
|感知層|環境數據、視覺數據、人在信號、能源讀數、設備遙測|
|執行層|繼電器狀態、插座狀態、負載狀態、家電指令狀態、執行結果|
|設備參與層|設備身份、能力、韌體版本、健康狀態、連接狀態、驗證狀態|

---

## B.7 Security and Privacy Matrix

## B.7 安全與隱私矩陣

## EN

The Security and Privacy Matrix defines how each architecture layer relates to security and privacy requirements. Every layer may carry security and privacy responsibilities, even if its primary function is not security or privacy.

Security and privacy must be layered, governed, traceable, and validation-based.

## ZH-TW

安全與隱私矩陣定義每一架構層如何與安全及隱私要求相關。即使某一層的主要功能不是安全或隱私，它仍可能承擔安全與隱私責任。

安全與隱私必須保持分層、受治理、可追溯，並基於驗證。

---

## English Table

|Layer|Security Responsibility|Privacy Responsibility|
|---|---|---|
|Cloud Layer|Account security, remote access control, service authorization, audit records|Cloud data policy, retention, deletion, sharing, and user data protection|
|Edge Intelligence Layer|Model access, device access, input/output authorization, Edge service integrity|AI input privacy, visual data privacy, local processing, storage, and sync boundaries|
|Local Runtime Layer|Command authorization, priority enforcement, local access control, failure-safe behavior|Local state handling, event logs, automation records, and local data boundaries|
|Device Access Layer|Device identity, onboarding authorization, gateway communication security|Device access records and connectivity data protection|
|Interaction Layer|User authentication, role-based access, interface permission|User action data, configuration privacy, and interface visibility control|
|Sensing Layer|Trusted sensor input and device identity|Environmental, visual, occupancy, energy, and behavior-related data protection|
|Execution Layer|Safe command execution, capability checks, load limits, and fail-safe behavior|Execution logs and behavior patterns that may reveal user activity|
|Device Participation Layer|Device trust, firmware integrity, authentication, and revocation|Device telemetry, identity, health, and location-related data protection|

## 中文表

|層級|安全責任|隱私責任|
|---|---|---|
|雲端層|帳號安全、遠端存取控制、服務授權、審計記錄|雲端數據政策、保留、刪除、共享與用戶數據保護|
|邊緣智慧層|模型存取、設備存取、輸入 / 輸出授權、Edge 服務完整性|AI 輸入隱私、視覺數據隱私、本地處理、儲存與同步邊界|
|本地 Runtime 層|指令授權、優先級執行、本地存取控制、故障安全行為|本地狀態處理、事件日誌、自動化記錄與本地數據邊界|
|設備接入層|設備身份、入網授權、網關通訊安全|設備接入記錄與連接數據保護|
|互動層|用戶身份認證、角色權限、介面權限|用戶動作數據、配置隱私與介面可視範圍控制|
|感知層|可信感測輸入與設備身份|環境、視覺、人在、能源與行為相關數據保護|
|執行層|安全指令執行、能力檢查、負載限制與故障安全行為|可能揭示用戶活動的執行日誌與行為模式|
|設備參與層|設備信任、韌體完整性、身份認證與撤銷|設備遙測、身份、健康與位置相關數據保護|

---

## B.8 Validation Matrix

## B.8 驗證矩陣

## EN

The Validation Matrix defines the required validation focus for each architecture layer. Each layer must be validated according to its own responsibility and its cross-layer participation.

Validation results must remain bound to tested versions, hardware, firmware, software, network conditions, load conditions, deployment conditions, privacy settings, and claim boundaries.

## ZH-TW

驗證矩陣定義每一架構層所需驗證重點。每一層都必須根據自身責任與跨層參與進行驗證。

驗證結果必須與已測版本、硬體、韌體、軟體、網路條件、負載條件、部署條件、隱私設定與宣稱邊界保持綁定。

---

## English Table

|Layer|Required Validation Focus|
|---|---|
|Cloud Layer|Account behavior, remote access, synchronization, lifecycle, alerts, analytics, failure behavior|
|Edge Intelligence Layer|Model behavior, input quality, output category, latency, privacy boundary, fallback behavior|
|Local Runtime Layer|Event handling, command routing, state management, scenes, automations, priority, offline behavior|
|Device Access Layer|Onboarding, gateway communication, protocol support, device count, connectivity recovery|
|Interaction Layer|User permission, input accuracy, configuration behavior, status feedback, role-based visibility|
|Sensing Layer|Sensor accuracy, data freshness, visual event behavior, privacy handling, automation input validity|
|Execution Layer|Command execution, load control, relay behavior, fail-safe response, execution reporting|
|Device Participation Layer|Device identity, capability mapping, firmware compatibility, health reporting, validation status|

## 中文表

|層級|必須驗證重點|
|---|---|
|雲端層|帳號行為、遠端存取、同步、生命週期、警報、分析、故障行為|
|邊緣智慧層|模型行為、輸入品質、輸出類別、延遲、隱私邊界、回退行為|
|本地 Runtime 層|事件處理、指令路由、狀態管理、場景、自動化、優先級、離線行為|
|設備接入層|入網、網關通訊、協議支援、設備數、連接恢復|
|互動層|用戶權限、輸入準確性、配置行為、狀態回饋、角色可視範圍|
|感知層|感測準確性、數據新鮮度、視覺事件行為、隱私處理、自動化輸入有效性|
|執行層|指令執行、負載控制、繼電器行為、故障安全回應、執行回報|
|設備參與層|設備身份、能力映射、韌體相容性、健康回報、驗證狀態|

---

## B.9 Claim Boundary Matrix

## B.9 宣稱邊界矩陣

## EN

The Claim Boundary Matrix defines the external and internal claim limits for each architecture layer. It prevents system language from overstating a layer’s capability, responsibility, or validation status.

Claims should always be tied to defined conditions, supported components, implementation status, and validation evidence.

## ZH-TW

宣稱邊界矩陣定義每一架構層的內部與對外宣稱限制。它防止系統語言過度描述某一層的能力、責任或驗證狀態。

宣稱應始終與明確條件、受支援組件、實作狀態與驗證證據綁定。

---

## English Table

|Layer|Restricted Claim|Preferred Boundary Language|
|---|---|---|
|Cloud Layer|Always available / unlimited cloud control|Provides supported cloud services under defined availability and account conditions|
|Edge Intelligence Layer|Fully autonomous AI / perfect understanding|Provides AI-assisted interpretation under validated model and input conditions|
|Local Runtime Layer|Always works offline for everything|Supports defined local functions when required local components are present|
|Device Access Layer|Supports all devices|Supports validated devices and protocols under defined conditions|
|Interaction Layer|User action always executes immediately|User actions are processed through permission, priority, routing, and capability rules|
|Sensing Layer|Perfect sensing / complete awareness|Provides supported sensing input under validated environmental and device conditions|
|Execution Layer|Controls any load or appliance|Controls supported loads or appliances within validated ratings and device capability|
|Device Participation Layer|Any device can participate|Supported devices participate according to identity, capability, version, and validation status|

## 中文表

|層級|限制宣稱|建議邊界語言|
|---|---|---|
|雲端層|永遠可用 / 無限制雲端控制|在明確可用性與帳號條件下提供受支援雲端服務|
|邊緣智慧層|完全自主 AI / 完美理解|在已驗證模型與輸入條件下提供 AI 輔助解讀|
|本地 Runtime 層|所有功能永遠離線可用|當所需本地組件具備時，支援已定義本地功能|
|設備接入層|支援所有設備|在明確條件下支援已驗證設備與協議|
|互動層|用戶動作永遠立即執行|用戶動作需經權限、優先級、路由與能力規則處理|
|感知層|完美感測 / 完整感知一切|在已驗證環境與設備條件下提供受支援感知輸入|
|執行層|控制任何負載或家電|在已驗證額定值與設備能力內控制受支援負載或家電|
|設備參與層|任何設備都能參與|受支援設備依身份、能力、版本與驗證狀態參與|

---

## B.10 Layer Dependency Matrix

## B.10 層級依賴矩陣

## EN

The Layer Dependency Matrix defines the major dependencies between architecture layers. A dependency means that one layer may require another layer for a specific function, but it does not mean that the dependent layer loses its own responsibility.

Dependencies must be documented to support failure behavior, capacity planning, validation, and deployment design.

## ZH-TW

層級依賴矩陣定義架構層之間的主要依賴關係。依賴表示某一層在特定功能上可能需要另一層，但不表示被依賴層失去自身責任。

依賴必須被記錄，以支持故障行為、容量規劃、驗證與部署設計。

---

## English Table

|Function|Required / Related Layers|
|---|---|
|Local device control|Interaction Layer, Local Runtime Layer, Device Access Layer, Execution Layer|
|Remote device control|Cloud Layer, Local Runtime Layer, Device Access Layer, Execution Layer|
|Local scene execution|Local Runtime Layer, Interaction Layer, Execution Layer, Device Participation Layer|
|Sensor-based automation|Sensing Layer, Local Runtime Layer, Execution Layer|
|Vision-assisted automation|Sensing Layer, Edge Intelligence Layer, Local Runtime Layer, Execution Layer|
|Cloud synchronization|Local Runtime Layer, Cloud Layer, Data Model, Security / Privacy controls|
|Edge interpretation|Sensing Layer, Edge Intelligence Layer, Local Runtime Layer|
|Device onboarding|Device Access Layer, Cloud or Local Runtime depending on configuration, Device Participation Layer|
|Firmware lifecycle|Cloud Layer, Device Participation Layer, Security / Integrity controls|
|Offline operation|Local Runtime Layer, Device Access Layer, Interaction Layer, Execution Layer|

## 中文表

|功能|所需 / 關聯層級|
|---|---|
|本地設備控制|互動層、本地 Runtime 層、設備接入層、執行層|
|遠端設備控制|雲端層、本地 Runtime 層、設備接入層、執行層|
|本地場景執行|本地 Runtime 層、互動層、執行層、設備參與層|
|基於感測的自動化|感知層、本地 Runtime 層、執行層|
|視覺輔助自動化|感知層、邊緣智慧層、本地 Runtime 層、執行層|
|雲端同步|本地 Runtime 層、雲端層、數據模型、安全 / 隱私控制|
|Edge 解讀|感知層、邊緣智慧層、本地 Runtime 層|
|設備入網|設備接入層、依配置使用雲端或本地 Runtime、設備參與層|
|韌體生命週期|雲端層、設備參與層、安全 / 完整性控制|
|離線運作|本地 Runtime 層、設備接入層、互動層、執行層|

---

## B.11 Layer Boundary Notes

## B.11 層級邊界說明

## EN

The Architecture Layer Matrix is a reference structure. It defines architectural relationships, but it does not by itself confirm implementation status, product readiness, certification, capacity, reliability, or commercial availability.

A layer may be architecturally defined before it is fully implemented. A component may be listed in a matrix before all of its capabilities are validated. A claim may reference a layer only when the related behavior has been implemented and validated.

For this reason, the matrix must always be used with product specifications, validation records, deployment documents, security and privacy policies, and approved claim language.

## ZH-TW

架構層級矩陣是一種參考結構。它定義架構關係，但本身不確認實作狀態、產品就緒度、認證、容量、可靠性或商業可用性。

某一層可以在完全實作前先被架構定義。某一組件可以在其所有能力完成驗證前列入矩陣。只有當相關行為已實作並完成驗證時，宣稱才可引用某一層級。

因此，此矩陣必須始終與產品規格書、驗證記錄、部署文件、安全與隱私政策，以及已核准宣稱語言一起使用。

---

## English Table

|Matrix Can Define|Matrix Cannot Confirm|
|---|---|
|Architecture layer relationship|Actual implementation completion|
|Component role|Certification status|
|Layer responsibility|Capacity test result|
|Cross-layer dependency|Commercial availability|
|Data relationship|Privacy compliance by itself|
|Validation focus|Validation completion by itself|
|Claim boundary language|Claim approval without evidence|
|Deployment reference|Site success without deployment validation|

## 中文表

|矩陣可以定義|矩陣不能確認|
|---|---|
|架構層級關係|實際實作完成|
|組件角色|認證狀態|
|層級責任|容量測試結果|
|跨層依賴|商業可用性|
|數據關係|隱私合規本身|
|驗證重點|驗證已完成本身|
|宣稱邊界語言|缺少證據的宣稱核准|
|部署參考|未經部署驗證的站點成功|

---

## B.12 Appendix Conclusion

## B.12 附錄結論

## EN

This appendix defines the Architecture Layer Matrix for the OceanAI System Architecture Specification. It provides a structured reference for layer responsibilities, component mapping, runtime participation, data relationships, security and privacy responsibilities, validation requirements, claim boundaries, and cross-layer dependencies.

The matrix should be used to maintain consistency across OceanAI architecture documents, Artibird product specifications, commercial specifications, deployment models, validation plans, and future architecture revisions.

It reinforces the core principle that OceanAI is a coordinated system architecture, not a collection of isolated products or a single-layer platform.

## ZH-TW

本附錄定義《OceanAI 系統架構規格書》的架構層級矩陣，為層級責任、組件映射、Runtime 參與、數據關係、安全與隱私責任、驗證要求、宣稱邊界與跨層依賴提供結構化參考。

此矩陣應用於維持 OceanAI 架構文件、Artibird 產品規格書、商業規格書、部署模型、驗證計劃與未來架構修訂之間的一致性。

它再次強化一項核心原則：OceanAI 是一套協同系統架構，而不是孤立產品集合，也不是單一層級平台。