# 9. Local-First Architecture

# 9. 本地優先架構

---

## 9.1 Purpose

## 9.1 目的

## EN

This chapter defines the Local-First Architecture of OceanAI. Local-first architecture describes how supported core functions continue to operate within the local environment when required local components are present.

The purpose of this chapter is to define the responsibility of local runtime behavior, local device control, local scene execution, local automation, local data handling, offline operation, local failure handling, and the boundary between local functions and cloud-dependent functions.

Local-first does not mean cloud-free. It means that the architecture should not make every essential physical environment behavior dependent on cloud availability. OceanAI uses cloud services for enhancement, synchronization, remote access, lifecycle management, and multi-site expansion, while keeping supported core runtime behavior locally available where required components exist.

## ZH-TW

本章定義 OceanAI 的本地優先架構。本地優先架構描述當所需本地組件具備時，受支援核心功能如何在本地環境中持續運作。

本章目的，是定義本地 Runtime 行為、本地設備控制、本地場景執行、本地自動化、本地數據處理、離線運作、本地故障處理，以及本地功能與雲端依賴功能之間的邊界。

本地優先不表示沒有雲端，而是表示架構不應讓所有關鍵物理環境行為都依賴雲端可用性。OceanAI 使用雲端服務進行增強、同步、遠端存取、生命週期管理與多站點擴展，同時在所需組件存在時保持受支援核心 Runtime 行為可本地運作。

---

## English Table

|Local-First Area|Description|
|---|---|
|Local runtime|Core runtime behavior remains within the local environment where supported|
|Local control|Supported device control may operate through local paths|
|Local scenes|Defined scene behavior may execute locally where configured|
|Local automation|Rules may run locally when triggers and targets are local|
|Local state|Device and system state may be maintained locally|
|Offline operation|Supported functions may continue without Internet or cloud|
|Local data handling|Selected state, configuration, event, and log data may remain local|
|Local failure handling|Local degraded behavior is defined when cloud or network conditions fail|

## 中文表

|本地優先領域|說明|
|---|---|
|本地 Runtime|支援條件下核心 Runtime 行為保持在本地環境內|
|本地控制|受支援設備控制可透過本地路徑運作|
|本地場景|已定義場景行為可在配置條件下本地執行|
|本地自動化|當觸發源與目標均在本地時，規則可本地運行|
|本地狀態|設備與系統狀態可在本地維護|
|離線運作|受支援功能可在無 Internet 或雲端時繼續|
|本地數據處理|特定狀態、配置、事件與日誌數據可保留於本地|
|本地故障處理|當雲端或網路條件故障時，定義本地降級行為|

---

## 9.2 Local-First Architecture Definition

## 9.2 本地優先架構定義

## EN

Local-First Architecture defines a system model in which supported core runtime behavior is designed to operate locally when required local components are available. These components may include the local runtime platform, local network, device access path, supported devices, local state store, and local control interface.

In OceanAI, local-first architecture is a structural principle rather than a marketing phrase. It defines which responsibilities belong to the local runtime layer and which responsibilities may be extended by cloud services or Edge intelligence.

A local-first system should clearly distinguish local behavior, cloud-enhanced behavior, cloud-required behavior, Edge-assisted behavior, degraded behavior, and unavailable behavior.

## ZH-TW

本地優先架構定義一種系統模型：當所需本地組件可用時，受支援核心 Runtime 行為被設計為可在本地運作。這些組件可包含本地 Runtime 平台、本地網路、設備接入路徑、受支援設備、本地狀態儲存與本地控制介面。

在 OceanAI 中，本地優先架構是一項結構性原則，而不是行銷語句。它定義哪些責任屬於本地 Runtime 層，哪些責任可由雲端服務或 Edge 智慧擴展。

本地優先系統應清楚區分本地行為、雲端增強行為、必須雲端行為、Edge 輔助行為、降級行為與不可用行為。

---

## English Table

|Behavior Type|Definition|
|---|---|
|Local behavior|Operates within the local environment when required local components are present|
|Cloud-enhanced behavior|Operates locally or partially locally, with cloud services extending capability|
|Cloud-required behavior|Requires cloud availability, account services, or remote access path|
|Edge-assisted behavior|Requires deployed Edge capability and supported input data|
|Degraded behavior|Operates partially when one or more dependencies are unavailable|
|Unavailable behavior|Cannot operate when required dependency is missing|

## 中文表

|行為類型|定義|
|---|---|
|本地行為|所需本地組件具備時，在本地環境內運作|
|雲端增強行為|可本地或部分本地運作，由雲端服務擴展能力|
|必須雲端行為|需要雲端可用性、帳號服務或遠端存取路徑|
|Edge 輔助行為|需要已部署 Edge 能力與受支援輸入數據|
|降級行為|一個或多個依賴不可用時部分運作|
|不可用行為|缺少必要依賴時無法運作|

---

## 9.3 Local Runtime Responsibility

## 9.3 本地 Runtime 責任

## EN

The local runtime layer is responsible for maintaining supported local coordination. It processes local events, routes local commands, maintains local state, executes local scenes, evaluates local automations, applies runtime priority rules, and handles defined local failure behavior.

Local runtime responsibility should remain clear even when cloud and Edge services are available. Cloud services may synchronize state, provide remote control, and manage lifecycle functions. Edge intelligence may provide interpretation or optimization signals. However, the local runtime remains responsible for deterministic local behavior where supported.

This responsibility prevents the system from depending on remote services for every local physical action.

## ZH-TW

本地 Runtime 層負責維持受支援本地協同。它處理本地事件、路由本地指令、維護本地狀態、執行本地場景、判斷本地自動化、套用 Runtime 優先級規則，並處理已定義本地故障行為。

即使雲端與 Edge 服務可用，本地 Runtime 責任也應保持清楚。雲端服務可同步狀態、提供遠端控制並管理生命週期功能。Edge 智慧可提供解讀或優化信號。然而，在受支援條件下，本地 Runtime 仍負責確定性的本地行為。

此責任可防止系統讓每一個本地物理動作都依賴遠端服務。

---

## English Table

|Local Runtime Responsibility|Description|
|---|---|
|Local event processing|Processes events generated by local devices, users, sensors, and services|
|Local command routing|Routes commands through local paths to supported targets|
|Local state management|Maintains device, room, scene, automation, and system state locally|
|Local scene execution|Executes configured multi-device scenes within the local runtime|
|Local automation execution|Evaluates and executes local rules when triggers and targets are available|
|Priority enforcement|Applies safety, local, automation, Edge, cloud, and background priority rules|
|Local failure handling|Defines what continues, degrades, stops, or recovers under local failure|
|Runtime traceability|Maintains logs, state records, or evidence where supported|

## 中文表

|本地 Runtime 責任|說明|
|---|---|
|本地事件處理|處理由本地設備、用戶、感測器與服務產生的事件|
|本地指令路由|透過本地路徑將指令路由至受支援目標|
|本地狀態管理|在本地維護設備、房間、場景、自動化與系統狀態|
|本地場景執行|在本地 Runtime 中執行已配置多設備場景|
|本地自動化執行|當觸發源與目標可用時，判斷並執行本地規則|
|優先級執行|套用安全、本地、自動化、Edge、雲端與背景優先級規則|
|本地故障處理|定義本地故障下哪些功能繼續、降級、停止或恢復|
|Runtime 可追溯性|在支援條件下維護日誌、狀態記錄或證據|

---

## 9.4 Local Control Model

## 9.4 本地控制模型

## EN

The Local Control Model defines how supported control actions are executed within the local environment. Local control may originate from physical controls, room interfaces, local App access, local automation, or local runtime services.

A local control action must still pass through permission checks, runtime priority, command routing, device capability checks, safety rules, and validation boundaries. Local control does not mean uncontrolled execution. It means the action can be processed through local infrastructure without requiring cloud execution.

Local control is essential for reliability, user responsiveness, and physical environment continuity.

## ZH-TW

本地控制模型定義受支援控制動作如何在本地環境中執行。本地控制可來自實體控制、房間介面、App 本地存取、本地自動化或本地 Runtime 服務。

本地控制動作仍必須經過權限檢查、Runtime 優先級、指令路由、設備能力檢查、安全規則與驗證邊界。本地控制不表示不受控制地執行，而是表示該動作可透過本地基礎設施處理，不需要雲端執行。

本地控制對可靠性、用戶響應速度與物理環境延續性至關重要。

---

## English Table

|Local Control Source|Control Path|
|---|---|
|Switch input|Switch → Local runtime / supported device path → target action|
|Panel action|Panel → Local runtime → target device or scene|
|App local command|App → local network → Hub / runtime → target device|
|Automation command|Local rule engine → runtime → target action|
|Scene command|Local scene engine → multiple target devices|
|Safety control|Fail-safe logic → priority override → controlled action|
|Device-level fallback|Supported device behavior when runtime dependency is unavailable|

## 中文表

|本地控制來源|控制路徑|
|---|---|
|Switch 輸入|Switch → 本地 Runtime / 受支援設備路徑 → 目標動作|
|Panel 動作|Panel → 本地 Runtime → 目標設備或場景|
|App 本地指令|App → 本地網路 → Hub / Runtime → 目標設備|
|自動化指令|本地規則引擎 → Runtime → 目標動作|
|場景指令|本地場景引擎 → 多個目標設備|
|安全控制|故障安全邏輯 → 優先級覆蓋 → 受控動作|
|設備級回退|Runtime 依賴不可用時的受支援設備行為|

---

## 9.5 Local Scene and Automation Model

## 9.5 本地場景與自動化模型

## EN

The Local Scene and Automation Model defines how coordinated behaviors operate without requiring cloud execution where local configuration and required components are available.

A local scene is a predefined multi-device behavior executed by the local runtime. A local automation is a conditional rule that evaluates local triggers, states, sensor inputs, schedules, or supported context to trigger defined actions.

Local scenes and automations must remain deterministic and traceable. They should follow priority rules, device capability limits, safety boundaries, user permissions, and validation requirements.

## ZH-TW

本地場景與自動化模型定義在本地配置與所需組件可用時，協同行為如何不依賴雲端執行。

本地場景是由本地 Runtime 執行的預定義多設備行為。本地自動化則是條件規則，用於判斷本地觸發源、狀態、感測輸入、排程或受支援上下文，並觸發已定義動作。

本地場景與自動化必須保持確定性與可追溯性。它們應遵循優先級規則、設備能力限制、安全邊界、用戶權限與驗證要求。

---

## English Table

|Local Behavior|Required Condition|
|---|---|
|Local scene execution|Scene configuration, target devices, runtime availability, and validated behavior|
|Local automation execution|Trigger source, rule logic, target devices, runtime availability, and validated behavior|
|Time-based automation|Local time source or validated time synchronization|
|Sensor-based automation|Supported sensor input and local rule evaluation|
|State-based automation|Local state model and defined state transition|
|Scene conflict handling|Runtime priority and conflict resolution rules|
|Safety override|Safety behavior must override scene or automation where required|
|Failure behavior|Partial scene or automation failure must be defined where applicable|

## 中文表

|本地行為|必要條件|
|---|---|
|本地場景執行|場景配置、目標設備、Runtime 可用性與已驗證行為|
|本地自動化執行|觸發來源、規則邏輯、目標設備、Runtime 可用性與已驗證行為|
|基於時間的自動化|本地時間來源或已驗證時間同步|
|基於感測的自動化|受支援感測輸入與本地規則判斷|
|基於狀態的自動化|本地狀態模型與已定義狀態轉換|
|場景衝突處理|Runtime 優先級與衝突解決規則|
|安全覆蓋|需要時安全行為必須覆蓋場景或自動化|
|故障行為|適用時必須定義場景或自動化部分失敗行為|

---

## 9.6 Offline Operation Model

## 9.6 離線運作模型

## EN

The Offline Operation Model defines how the system behaves when Internet or cloud access is unavailable. Offline operation should be described only for functions that have been implemented and validated under defined local conditions.

Offline operation may include local control, local scenes, local automations, physical control behavior, local state handling, limited local alerts, and local device status display where supported.

Offline operation does not include remote access, cloud synchronization, cloud account changes, cloud alerts, cloud analytics, multi-site management, or cloud-based lifecycle functions unless a deferred, queued, or retry behavior has been explicitly implemented.

## ZH-TW

離線運作模型定義 Internet 或雲端存取不可用時，系統如何運作。離線運作只能用於描述已在明確本地條件下實作並驗證的功能。

離線運作可在支援條件下包括本地控制、本地場景、本地自動化、實體控制行為、本地狀態處理、有限本地警報與本地設備狀態顯示。

離線運作不包括遠端存取、雲端同步、雲端帳號變更、雲端警報、雲端分析、多站點管理或基於雲端的生命週期功能，除非已明確實作延遲、排隊或重試行為。

---

## English Table

|Function|Offline Behavior|
|---|---|
|Local device control|May continue where local path and required components are available|
|Local scenes|May continue where scenes are locally configured|
|Local automation|May continue where triggers, rules, and targets are local|
|Physical controls|May continue according to device-level design|
|Local state|May continue locally with later synchronization where supported|
|Remote control|Not available without Internet or cloud path|
|Cloud synchronization|Stops, delays, queues, or retries according to implementation|
|Multi-site management|Not available without cloud services|
|Cloud analytics|Not available until data synchronization resumes|
|Lifecycle updates|Delayed or unavailable without cloud path|

## 中文表

|功能|離線行為|
|---|---|
|本地設備控制|當本地路徑與所需組件可用時可繼續|
|本地場景|場景已本地配置時可繼續|
|本地自動化|觸發源、規則與目標均在本地時可繼續|
|實體控制|依設備級設計繼續|
|本地狀態|可在本地繼續，支援條件下之後同步|
|遠端控制|無 Internet 或雲端路徑時不可用|
|雲端同步|依實作停止、延遲、排隊或重試|
|多站點管理|無雲端服務時不可用|
|雲端分析|數據同步恢復前不可用|
|生命週期更新|無雲端路徑時延遲或不可用|

---

## 9.7 Local Data Handling

## 9.7 本地數據處理

## EN

Local Data Handling defines how selected data is stored, processed, updated, and protected within the local environment. This may include device state, room state, scene configuration, automation configuration, event logs, local alerts, diagnostic data, and selected runtime records.

Local data handling must follow security, privacy, access control, retention, storage, synchronization, and recovery rules. Local data should not be treated as ungoverned simply because it remains local.

Where cloud synchronization is supported, local data must be classified according to whether it remains local, synchronizes immediately, synchronizes later, synchronizes only with permission, or is never synchronized.

## ZH-TW

本地數據處理定義特定數據如何在本地環境中被儲存、處理、更新與保護。這可包括設備狀態、房間狀態、場景配置、自動化配置、事件日誌、本地警報、診斷數據與特定 Runtime 記錄。

本地數據處理必須遵循安全、隱私、存取控制、保留、儲存、同步與恢復規則。數據保留在本地，不代表它可以不受治理。

當支援雲端同步時，本地數據必須依是否保留本地、立即同步、延後同步、僅經權限同步或永不同步進行分類。

---

## English Table

|Local Data Type|Handling Requirement|
|---|---|
|Device state|Maintained locally and synchronized where supported|
|Scene configuration|Stored locally for local execution where supported|
|Automation configuration|Stored locally for rule evaluation where supported|
|Event logs|Stored according to retention and privacy rules|
|Diagnostic data|Protected by permission and support access rules|
|Local alerts|Displayed or stored locally where supported|
|Vision-related data|Must follow strict privacy and storage boundaries|
|Edge input data|Must follow local processing and sharing boundaries|
|Sync queue|Must define retry, expiration, and conflict behavior|
|Security records|Must be protected and retained according to policy|

## 中文表

|本地數據類型|處理要求|
|---|---|
|設備狀態|在本地維護，支援條件下同步|
|場景配置|支援條件下為本地執行儲存在本地|
|自動化配置|支援條件下為規則判斷儲存在本地|
|事件日誌|依保留與隱私規則儲存|
|診斷數據|受權限與支援存取規則保護|
|本地警報|支援條件下本地顯示或儲存|
|Vision 相關數據|必須遵循嚴格隱私與儲存邊界|
|Edge 輸入數據|必須遵循本地處理與共享邊界|
|同步佇列|必須定義重試、過期與衝突行為|
|安全記錄|必須依政策保護與保留|

---

## 9.8 Local Failure Handling

## 9.8 本地故障處理

## EN

Local Failure Handling defines how the local system behaves when local components, local network paths, device access paths, services, or storage become unavailable or degraded.

Failure handling must be deterministic. The system should define which functions continue, which functions degrade, which functions stop, which commands are rejected, which commands are queued, and which states are marked uncertain.

Local failure handling should prioritize safety, user clarity, state consistency, and recoverability.

## ZH-TW

本地故障處理定義當本地組件、本地網路路徑、設備接入路徑、服務或儲存不可用或降級時，本地系統如何運作。

故障處理必須是確定性的。系統應定義哪些功能繼續、哪些功能降級、哪些功能停止、哪些指令被拒絕、哪些指令被排隊，以及哪些狀態被標記為不確定。

本地故障處理應優先考慮安全、用戶清晰性、狀態一致性與可恢復性。

---

## English Table

|Local Failure Scenario|Expected Behavior|
|---|---|
|Hub unavailable|Hub-dependent runtime functions stop or degrade as defined|
|Gate unavailable|Gate-dependent device access stops or degrades as defined|
|Local network unavailable|Local App or device communication may stop or degrade|
|Device offline|Device is marked offline and commands follow defined behavior|
|Local storage unavailable|Logs, state, or configuration behavior follows defined fallback|
|MQTT service unavailable|MQTT-dependent flows stop, degrade, or retry as defined|
|Scene partial failure|Failed target actions are reported or handled according to defined logic|
|Automation input missing|Rule evaluation stops, degrades, or uses fallback behavior where defined|
|Sync queue failure|Deferred cloud sync follows retry or failure logic|
|Recovery|System restores supported state, sync, and service behavior after recovery|

## 中文表

|本地故障場景|預期行為|
|---|---|
|Hub 不可用|依賴 Hub 的 Runtime 功能按定義停止或降級|
|Gate 不可用|依賴 Gate 的設備接入按定義停止或降級|
|本地網路不可用|App 本地或設備通訊可能停止或降級|
|設備離線|設備被標記離線，指令遵循已定義行為|
|本地儲存不可用|日誌、狀態或配置行為遵循已定義回退|
|MQTT 服務不可用|依賴 MQTT 的流程按定義停止、降級或重試|
|場景部分失敗|失敗目標動作依定義邏輯回報或處理|
|自動化輸入缺失|規則判斷按定義停止、降級或使用回退行為|
|同步佇列故障|延遲雲端同步遵循重試或失敗邏輯|
|恢復|恢復後系統還原受支援狀態、同步與服務行為|

---

## 9.9 Local-First Boundary

## 9.9 本地優先邊界

## EN

Local-first claims must remain bounded. The system should not be described as fully offline for all functions unless every referenced function has been validated without Internet or cloud access.

Local-first describes supported local behavior under defined local conditions. It does not imply that cloud services, remote access, multi-site management, account synchronization, lifecycle services, or cloud analytics are available without Internet or cloud infrastructure.

Any local-first statement must specify required local components, supported functions, configuration conditions, version conditions, network conditions, and validation evidence.

## ZH-TW

本地優先宣稱必須保持邊界。除非所有被引用功能都已在無 Internet 或無雲端存取條件下完成驗證，否則系統不應被描述為所有功能完全離線可用。

本地優先描述的是在明確本地條件下受支援本地行為。它不表示雲端服務、遠端存取、多站點管理、帳號同步、生命週期服務或雲端分析可在無 Internet 或雲端基礎設施時使用。

任何本地優先表述都必須說明所需本地組件、受支援功能、配置條件、版本條件、網路條件與驗證證據。

---

## English Table

|Local-First Claim Area|Required Boundary|
|---|---|
|Local control|Must define required local path and components|
|Local scenes|Must define local scene configuration and target device availability|
|Local automation|Must define triggers, rules, target devices, and runtime availability|
|Offline behavior|Must define which functions continue and which stop|
|Local data|Must define storage, privacy, retention, and synchronization behavior|
|Local App access|Must define local discovery, network condition, and permission rules|
|Cloud-independent claim|Must specify which functions do not require cloud|
|Failure behavior|Must describe degraded and recovery behavior|
|Validation|Must be supported by test evidence under defined conditions|

## 中文表

|本地優先宣稱領域|必須邊界|
|---|---|
|本地控制|必須定義所需本地路徑與組件|
|本地場景|必須定義本地場景配置與目標設備可用性|
|本地自動化|必須定義觸發源、規則、目標設備與 Runtime 可用性|
|離線行為|必須定義哪些功能繼續、哪些功能停止|
|本地數據|必須定義儲存、隱私、保留與同步行為|
|App 本地存取|必須定義本地發現、網路條件與權限規則|
|不依賴雲端宣稱|必須說明哪些功能不需要雲端|
|故障行為|必須描述降級與恢復行為|
|驗證|必須由明確條件下的測試證據支持|

---

## 9.10 Chapter Conclusion

## 9.10 章節結論

## EN

This chapter defines the Local-First Architecture of OceanAI. It explains how supported local runtime behavior, local control, local scenes, local automation, offline operation, local data handling, and local failure handling are structured within the architecture.

Local-first is a core architectural principle. It ensures that supported physical environment behavior may continue under defined local conditions while cloud services and Edge intelligence extend, enhance, or assist the system within their own boundaries.

The following chapter defines the Cloud Architecture, including cloud service responsibilities, account and identity services, remote access, synchronization, lifecycle services, historical data, analytics, multi-site management, cloud failure behavior, and cloud boundaries.

## ZH-TW

本章定義 OceanAI 的本地優先架構，說明受支援本地 Runtime 行為、本地控制、本地場景、本地自動化、離線運作、本地數據處理與本地故障處理如何在架構中被組織。

本地優先是一項核心架構原則。它確保受支援物理環境行為可在明確本地條件下延續，同時雲端服務與 Edge 智慧在各自邊界內擴展、增強或輔助系統。

下一章將定義雲端架構，包括雲端服務責任、帳號與身份服務、遠端存取、同步、生命週期服務、歷史數據、分析、多站點管理、雲端故障行為與雲端邊界。