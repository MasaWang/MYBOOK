# Appendix C — Runtime Flow Reference

# Appendix C — Runtime 流程參考

---

## C.1 Purpose

## C.1 目的

## EN

This appendix defines the Runtime Flow Reference for the OceanAI System Architecture Specification. The purpose of this appendix is to provide structured reference flows for how events, commands, states, scenes, automations, local control, cloud requests, Edge-assisted inputs, synchronization, and failure behavior move through the OceanAI runtime architecture.

Runtime flows help clarify how OceanAI operates as a coordinated system during active use. They show that system behavior is not simply device-to-device control, but a governed process involving event capture, permission checks, command routing, state updates, priority handling, execution, feedback, synchronization, and validation boundaries.

This appendix should be used as a reference for engineering specifications, product behavior design, App workflows, deployment validation, commercial claim control, and future runtime evolution.

## ZH-TW

本附錄定義《OceanAI 系統架構規格書》的 Runtime 流程參考。此附錄的目的，是為事件、指令、狀態、場景、自動化、本地控制、雲端請求、Edge 輔助輸入、同步與故障行為如何在 OceanAI Runtime 架構中流動提供結構化參考。

Runtime 流程有助於釐清 OceanAI 在實際運行時如何作為協同系統工作。它顯示系統行為不是簡單的設備對設備控制，而是一個受治理的過程，包括事件捕捉、權限檢查、指令路由、狀態更新、優先級處理、執行、回饋、同步與驗證邊界。

本附錄應作為工程規格書、產品行為設計、App 工作流、部署驗證、商業宣稱管控與未來 Runtime 演進的參考。

---

## C.2 Runtime Flow Principles

## C.2 Runtime 流程原則

## EN

OceanAI runtime flows are based on deterministic coordination. Each event, command, state change, automation, or Edge-assisted input must pass through defined logic before it affects physical behavior.

A runtime flow should always define the source, trigger, permission requirement, priority level, target, execution path, state update, feedback behavior, failure handling, and validation boundary.

Runtime flows must remain traceable. When supported, the system should be able to record what happened, what triggered it, what rule or priority applied, what device executed it, what state changed, and whether the action succeeded, failed, degraded, or was rejected.

## ZH-TW

OceanAI 的 Runtime 流程基於確定性協同。每一個事件、指令、狀態變化、自動化或 Edge 輔助輸入，在影響物理行為之前，都必須通過已定義邏輯。

Runtime 流程應始終定義來源、觸發條件、權限要求、優先級、目標、執行路徑、狀態更新、回饋行為、故障處理與驗證邊界。

Runtime 流程必須保持可追溯。在支援條件下，系統應能記錄發生了什麼、由什麼觸發、套用了什麼規則或優先級、哪個設備執行、哪些狀態改變，以及動作是否成功、失敗、降級或被拒絕。

---

## English Table

|Runtime Flow Principle|Description|
|---|---|
|Source clarity|Every flow must define where the event or command originates|
|Permission control|Actions must follow user, role, device, and service permissions|
|Priority handling|Competing actions must follow the runtime priority model|
|Capability check|Targets must support the requested behavior|
|State consistency|State changes must be updated and represented consistently|
|Safety boundary|Safety and fail-safe behavior must override lower-priority actions|
|Traceability|Flow results should be recorded where supported|
|Failure determinism|Failure, rejection, degradation, and recovery behavior must be defined|
|Validation dependency|Flow claims must be supported by defined test conditions|

## 中文表

|Runtime 流程原則|說明|
|---|---|
|來源清晰|每個流程必須定義事件或指令來源|
|權限控制|動作必須遵循用戶、角色、設備與服務權限|
|優先級處理|競爭動作必須遵循 Runtime 優先級模型|
|能力檢查|目標必須支援被請求行為|
|狀態一致性|狀態變化必須被一致更新與表示|
|安全邊界|安全與故障安全行為必須覆蓋較低優先級動作|
|可追溯性|支援條件下應記錄流程結果|
|故障確定性|必須定義故障、拒絕、降級與恢復行為|
|驗證依賴|流程宣稱必須由明確測試條件支持|

---

## C.3 Basic Event-to-Action Flow

## C.3 基礎事件至動作流程

## EN

The Basic Event-to-Action Flow describes how a system event becomes a runtime action. This flow applies to user input, sensor input, device events, cloud requests, Edge-assisted context, and system-generated events.

A runtime action should not be executed directly from raw input. The event must first be classified, authenticated where required, checked against permissions and priorities, mapped to a target, evaluated against device capability and system state, then routed to execution.

## ZH-TW

基礎事件至動作流程描述系統事件如何成為 Runtime 動作。此流程適用於用戶輸入、感測輸入、設備事件、雲端請求、Edge 輔助上下文與系統生成事件。

Runtime 動作不應直接由原始輸入執行。事件必須先被分類，在需要時完成身份認證，經過權限與優先級檢查，映射至目標，依設備能力與系統狀態判斷後，才被路由至執行。

---

## English Table

|Step|Runtime Flow Stage|Description|
|---|---|---|
|1|Event generated|Event originates from user, device, sensor, cloud, Edge, or system process|
|2|Event classified|Runtime identifies event type, source, priority, and category|
|3|Permission checked|Runtime verifies whether the source may trigger the behavior|
|4|Priority evaluated|Runtime compares action against safety, local, automation, Edge, cloud, and background priorities|
|5|Capability checked|Runtime confirms that target device or service supports the requested action|
|6|State evaluated|Runtime checks current state and conflict conditions|
|7|Command generated|Runtime creates a valid command for the target|
|8|Command routed|Command is routed through supported local, gateway, cloud, or service path|
|9|Action executed|Target device or service performs the action|
|10|State updated|System state is updated according to execution result|
|11|Feedback returned|App, Panel, Cloud, logs, or runtime records receive feedback where supported|
|12|Evidence recorded|Event, command, state, and result may be recorded for traceability|

## 中文表

|步驟|Runtime 流程階段|說明|
|---|---|---|
|1|事件生成|事件來自用戶、設備、感測器、雲端、Edge 或系統流程|
|2|事件分類|Runtime 識別事件類型、來源、優先級與類別|
|3|權限檢查|Runtime 驗證來源是否可觸發該行為|
|4|優先級判斷|Runtime 將動作與安全、本地、自動化、Edge、雲端與背景優先級比較|
|5|能力檢查|Runtime 確認目標設備或服務支援被請求動作|
|6|狀態判斷|Runtime 檢查當前狀態與衝突條件|
|7|指令生成|Runtime 為目標生成有效指令|
|8|指令路由|指令透過受支援本地、網關、雲端或服務路徑路由|
|9|動作執行|目標設備或服務執行動作|
|10|狀態更新|系統狀態依執行結果更新|
|11|回饋返回|支援條件下，App、Panel、Cloud、日誌或 Runtime 記錄接收回饋|
|12|證據記錄|事件、指令、狀態與結果可被記錄以支持可追溯性|

---

## C.4 Local Manual Control Flow

## C.4 本地手動控制流程

## EN

Local Manual Control Flow defines how user actions from Switch, Panel, or App local access are processed by the runtime.

Local manual control has high priority because it represents direct user intention within the physical environment. However, it must still follow safety constraints, permission rules, device capability, runtime priority, and validation boundaries.

## ZH-TW

本地手動控制流程定義來自 Switch、Panel 或 App 本地存取的用戶動作如何由 Runtime 處理。

本地手動控制具有較高優先級，因為它代表物理環境中的直接用戶意圖。然而，它仍必須遵循安全限制、權限規則、設備能力、Runtime 優先級與驗證邊界。

---

## English Table

|Step|Flow Stage|Description|
|---|---|---|
|1|User action|User presses Switch, selects Panel control, or sends App local command|
|2|Source identified|Runtime identifies source device, user role, and access path|
|3|Permission verified|Runtime checks whether the user or source can perform the action|
|4|Safety checked|Safety and fail-safe conditions are evaluated|
|5|Target resolved|Runtime identifies target device, scene, automation, or group|
|6|Priority applied|Local manual control priority is applied unless safety overrides it|
|7|Command routed|Runtime sends command through local path or gateway path|
|8|Execution performed|Device, scene, or service executes the action|
|9|State updated|Target and system state update after execution|
|10|Feedback displayed|App, Panel, or local indicator displays result where supported|
|11|Log recorded|Runtime records action where supported|

## 中文表

|步驟|流程階段|說明|
|---|---|---|
|1|用戶動作|用戶按下 Switch、選擇 Panel 控制或發送 App 本地指令|
|2|來源識別|Runtime 識別來源設備、用戶角色與存取路徑|
|3|權限驗證|Runtime 檢查用戶或來源是否可執行該動作|
|4|安全檢查|評估安全與故障安全條件|
|5|目標解析|Runtime 識別目標設備、場景、自動化或設備群組|
|6|優先級套用|除非被安全行為覆蓋，否則套用本地手動控制優先級|
|7|指令路由|Runtime 透過本地路徑或網關路徑發送指令|
|8|執行完成|設備、場景或服務執行動作|
|9|狀態更新|執行後更新目標與系統狀態|
|10|回饋顯示|支援條件下 App、Panel 或本地指示顯示結果|
|11|日誌記錄|支援條件下 Runtime 記錄動作|

---

## C.5 Scene Execution Flow

## C.5 場景執行流程

## EN

Scene Execution Flow defines how a predefined multi-device behavior is executed. A scene may be triggered by App, Panel, Switch, automation, cloud request, or another supported runtime event.

A scene must be treated as a coordinated runtime behavior. It may involve multiple targets, ordered actions, grouped commands, partial failure handling, state updates, and feedback.

## ZH-TW

場景執行流程定義預定義多設備行為如何被執行。場景可由 App、Panel、Switch、自動化、雲端請求或其他受支援 Runtime 事件觸發。

場景必須被視為協同 Runtime 行為。它可能涉及多個目標、有序動作、群組指令、部分失敗處理、狀態更新與回饋。

---

## English Table

|Step|Flow Stage|Description|
|---|---|---|
|1|Scene trigger|Scene is triggered by user, automation, cloud, or runtime event|
|2|Scene configuration loaded|Runtime loads scene definition, target list, sequence, and conditions|
|3|Permission checked|Runtime verifies that source may trigger the scene|
|4|Priority evaluated|Runtime checks safety, manual control, automation, cloud, and conflict priority|
|5|Target availability checked|Runtime checks device availability, capability, and health state|
|6|Commands generated|Runtime generates commands for each target|
|7|Commands executed|Commands execute sequentially, in parallel, or according to scene logic|
|8|Partial failure handled|Failed targets are retried, skipped, degraded, or reported according to definition|
|9|Scene state updated|Scene state becomes active, completed, failed, degraded, or partial|
|10|Feedback returned|Result is displayed or recorded where supported|
|11|Sync performed|Scene status may synchronize with cloud where permitted|
|12|Evidence recorded|Execution result may be logged for validation and traceability|

## 中文表

|步驟|流程階段|說明|
|---|---|---|
|1|場景觸發|場景由用戶、自動化、雲端或 Runtime 事件觸發|
|2|場景配置載入|Runtime 載入場景定義、目標清單、執行順序與條件|
|3|權限檢查|Runtime 驗證來源是否可觸發該場景|
|4|優先級判斷|Runtime 檢查安全、手動控制、自動化、雲端與衝突優先級|
|5|目標可用性檢查|Runtime 檢查設備可用性、能力與健康狀態|
|6|指令生成|Runtime 為每個目標生成指令|
|7|指令執行|指令按場景邏輯依序、並行或組合執行|
|8|部分失敗處理|失敗目標依定義被重試、跳過、降級或回報|
|9|場景狀態更新|場景狀態變為啟用、完成、失敗、降級或部分完成|
|10|回饋返回|支援條件下顯示或記錄結果|
|11|同步執行|在被允許條件下，場景狀態可同步至雲端|
|12|證據記錄|執行結果可記錄用於驗證與可追溯|

---

## C.6 Automation Execution Flow

## C.6 自動化執行流程

## EN

Automation Execution Flow defines how conditional logic is evaluated and executed. Automations may be based on time, device state, sensor input, user action, occupancy, environmental thresholds, Edge-assisted context, or cloud-enhanced conditions where supported.

Automation must remain deterministic and bounded. It should not execute outside its defined trigger, condition, permission, priority, target capability, and validation scope.

## ZH-TW

自動化執行流程定義條件邏輯如何被判斷與執行。自動化可基於時間、設備狀態、感測輸入、用戶動作、人在、環境閾值、Edge 輔助上下文，或支援條件下雲端增強條件。

自動化必須保持確定性與邊界，不應在已定義觸發、條件、權限、優先級、目標能力與驗證範圍之外執行。

---

## English Table

|Step|Flow Stage|Description|
|---|---|---|
|1|Trigger detected|Time, event, state, sensor, user, Edge, or cloud condition is detected|
|2|Rule loaded|Runtime loads related automation rule|
|3|Conditions evaluated|Runtime checks conditions, thresholds, time windows, and context|
|4|Permission checked|Runtime verifies automation is enabled and allowed|
|5|Priority evaluated|Automation priority is compared with safety and manual control|
|6|Target checked|Runtime verifies target availability, capability, and health|
|7|Command generated|Runtime generates action command or scene trigger|
|8|Action executed|Target device, scene, or service executes behavior|
|9|State updated|Automation state and target state are updated|
|10|Conflict handled|Competing automations or commands are resolved|
|11|Feedback recorded|Result is logged, displayed, or synchronized where supported|
|12|Failure handled|Missing input, unavailable target, or rejected command follows defined behavior|

## 中文表

|步驟|流程階段|說明|
|---|---|---|
|1|觸發偵測|偵測到時間、事件、狀態、感測、用戶、Edge 或雲端條件|
|2|規則載入|Runtime 載入相關自動化規則|
|3|條件判斷|Runtime 檢查條件、閾值、時間窗口與上下文|
|4|權限檢查|Runtime 驗證自動化已啟用且被允許|
|5|優先級判斷|自動化優先級與安全及手動控制比較|
|6|目標檢查|Runtime 驗證目標可用性、能力與健康狀態|
|7|指令生成|Runtime 生成動作指令或場景觸發|
|8|動作執行|目標設備、場景或服務執行行為|
|9|狀態更新|自動化狀態與目標狀態被更新|
|10|衝突處理|解決競爭自動化或指令|
|11|回饋記錄|支援條件下結果被記錄、顯示或同步|
|12|故障處理|缺失輸入、目標不可用或指令被拒絕時遵循已定義行為|

---

## C.7 Sensor-to-Automation Flow

## C.7 感測至自動化流程

## EN

Sensor-to-Automation Flow defines how environmental, energy, occupancy, visual, or device telemetry signals become automation input.

Sensor input should not automatically become action. It must be interpreted according to sensor type, freshness, threshold, validity, calibration, confidence, privacy setting, and automation rule definition.

## ZH-TW

感測至自動化流程定義環境、能源、人在、視覺或設備遙測信號如何成為自動化輸入。

感測輸入不應自動成為動作。它必須依感測類型、數據新鮮度、閾值、有效性、校準、可信度、隱私設定與自動化規則定義進行解讀。

---

## English Table

|Step|Flow Stage|Description|
|---|---|---|
|1|Sensor data generated|Sense, Vision, Act-E, device telemetry, or other sensor source reports data|
|2|Data validated|Runtime checks source, timestamp, freshness, range, and validity|
|3|Data classified|Input is categorized as environmental, occupancy, visual, energy, device, or context data|
|4|Privacy checked|Sensitive data follows privacy and processing boundaries|
|5|Rule matched|Runtime checks whether any automation rule uses this input|
|6|Threshold evaluated|Sensor value is compared with defined threshold or condition|
|7|Context combined|Additional state, time, occupancy, or Edge context may be combined|
|8|Automation triggered|Rule triggers if all conditions are satisfied|
|9|Command routed|Runtime routes command to supported target|
|10|State updated|Sensor state, automation state, and target state are updated|
|11|Feedback recorded|Logs, App display, or cloud sync occur where supported|

## 中文表

|步驟|流程階段|說明|
|---|---|---|
|1|感測數據生成|Sense、Vision、Act-E、設備遙測或其他感測來源上報數據|
|2|數據驗證|Runtime 檢查來源、時間戳、新鮮度、範圍與有效性|
|3|數據分類|輸入被分類為環境、人在、視覺、能源、設備或上下文數據|
|4|隱私檢查|敏感數據遵循隱私與處理邊界|
|5|規則匹配|Runtime 檢查是否有自動化規則使用該輸入|
|6|閾值判斷|感測值與已定義閾值或條件比較|
|7|上下文融合|可融合額外狀態、時間、人在或 Edge 上下文|
|8|自動化觸發|當所有條件滿足時觸發規則|
|9|指令路由|Runtime 將指令路由至受支援目標|
|10|狀態更新|感測狀態、自動化狀態與目標狀態被更新|
|11|回饋記錄|支援條件下進行日誌、App 顯示或雲端同步|

---

## C.8 Cloud Command Flow

## C.8 雲端指令流程

## EN

Cloud Command Flow defines how remote commands enter the OceanAI system. A cloud command may originate from remote App access, cloud console, authorized service, account-level action, lifecycle function, or multi-site management interface.

Cloud commands must not bypass local runtime rules. They must pass authentication, authorization, permission scope, local availability, runtime priority, target capability, and failure behavior.

## ZH-TW

雲端指令流程定義遠端指令如何進入 OceanAI 系統。雲端指令可來自遠端 App 存取、雲端控制台、授權服務、帳號級動作、生命週期功能或多站點管理介面。

雲端指令不得繞過本地 Runtime 規則。它必須通過身份認證、授權、權限範圍、本地可用性、Runtime 優先級、目標能力與故障行為。

---

## English Table

|Step|Flow Stage|Description|
|---|---|---|
|1|Remote request generated|Cloud command originates from App, cloud console, service, or account action|
|2|Account authenticated|Cloud verifies identity and session|
|3|Permission checked|Role, site, device, and function permissions are evaluated|
|4|Command classified|Cloud identifies command type, target, urgency, and required route|
|5|Runtime path resolved|Cloud determines whether local runtime is reachable|
|6|Command delivered|Command is delivered to Hub, local runtime, gateway, or supported service|
|7|Runtime priority applied|Local runtime evaluates priority and conflicts|
|8|Capability checked|Target support and current state are verified|
|9|Action executed or rejected|Command executes, queues, delays, or is rejected according to conditions|
|10|State synchronized|Result synchronizes back to cloud where permitted|
|11|Feedback displayed|User or operator receives result where supported|
|12|Log recorded|Cloud and runtime records are stored where supported|

## 中文表

|步驟|流程階段|說明|
|---|---|---|
|1|遠端請求生成|雲端指令來自 App、雲端控制台、服務或帳號動作|
|2|帳號身份認證|雲端驗證身份與 Session|
|3|權限檢查|判斷角色、站點、設備與功能權限|
|4|指令分類|雲端識別指令類型、目標、緊急程度與所需路徑|
|5|Runtime 路徑解析|雲端判斷本地 Runtime 是否可達|
|6|指令傳送|指令傳送至 Hub、本地 Runtime、網關或受支援服務|
|7|Runtime 優先級套用|本地 Runtime 判斷優先級與衝突|
|8|能力檢查|驗證目標支援能力與當前狀態|
|9|動作執行或拒絕|指令依條件執行、排隊、延遲或拒絕|
|10|狀態同步|結果在被允許條件下同步回雲端|
|11|回饋顯示|支援條件下用戶或操作人員接收結果|
|12|日誌記錄|支援條件下儲存雲端與 Runtime 記錄|

---

## C.9 Edge-Assisted Runtime Flow

## C.9 Edge 輔助 Runtime 流程

## EN

Edge-Assisted Runtime Flow defines how OceanAI Edge output may influence runtime behavior. Edge output may include interpretation, detection, recommendation, alert, optimization signal, or validated control input.

Edge output must be classified before use. It must not automatically become action unless explicit validation, permission, priority, safety, and runtime governance are satisfied.

## ZH-TW

Edge 輔助 Runtime 流程定義 OceanAI Edge 輸出如何影響 Runtime 行為。Edge 輸出可包括解讀、偵測、建議、警報、優化信號或已驗證控制輸入。

Edge 輸出在使用前必須先分類。除非明確滿足驗證、權限、優先級、安全與 Runtime 治理條件，否則它不得自動成為動作。

---

## English Table

|Step|Flow Stage|Description|
|---|---|---|
|1|Input collected|Edge receives visual, sensor, device state, energy, event, or runtime context|
|2|Privacy checked|Input is processed according to privacy and data residency settings|
|3|Model executed|Edge runs supported AI model under defined conditions|
|4|Output generated|Edge generates interpretation, alert, recommendation, or optimization signal|
|5|Output classified|Runtime or Edge service classifies output category|
|6|Confidence / validity checked|Output is checked against confidence, freshness, and validation condition|
|7|Runtime boundary applied|Output is treated as input to runtime, not unrestricted authority|
|8|Rule matched|Runtime checks whether any rule uses this Edge output|
|9|Permission and priority checked|Runtime evaluates permission, safety, and priority|
|10|Action or recommendation produced|System executes action only if validated; otherwise displays recommendation or alert|
|11|State and logs updated|Runtime, Edge, or App records result where supported|
|12|Fallback handled|If Edge unavailable or output invalid, non-edge runtime behavior continues where supported|

## 中文表

|步驟|流程階段|說明|
|---|---|---|
|1|輸入收集|Edge 接收視覺、感測、設備狀態、能源、事件或 Runtime 上下文|
|2|隱私檢查|輸入依隱私與數據駐留設定處理|
|3|模型執行|Edge 在明確條件下運行受支援 AI 模型|
|4|輸出生成|Edge 生成解讀、警報、建議或優化信號|
|5|輸出分類|Runtime 或 Edge 服務分類輸出類別|
|6|可信度 / 有效性檢查|檢查輸出可信度、新鮮度與驗證條件|
|7|Runtime 邊界套用|輸出被視為 Runtime 輸入，而非不受限制權威|
|8|規則匹配|Runtime 檢查是否有規則使用該 Edge 輸出|
|9|權限與優先級檢查|Runtime 判斷權限、安全與優先級|
|10|動作或建議產生|只有已驗證時系統才執行動作；否則顯示建議或警報|
|11|狀態與日誌更新|支援條件下 Runtime、Edge 或 App 記錄結果|
|12|回退處理|Edge 不可用或輸出無效時，支援條件下非 Edge Runtime 行為繼續|

---

## C.10 Synchronization Flow

## C.10 同步流程

## EN

Synchronization Flow defines how selected data moves between local runtime, cloud services, App interfaces, Edge services, and other supported components.

Synchronization must be selective. It must follow privacy, permission, retention, conflict resolution, availability, and validation requirements.

## ZH-TW

同步流程定義特定數據如何在本地 Runtime、雲端服務、App 介面、Edge 服務與其他受支援組件之間流動。

同步必須是選擇性的，並遵循隱私、權限、保留、衝突解決、可用性與驗證要求。

---

## English Table

|Step|Flow Stage|Description|
|---|---|---|
|1|Data change detected|Device state, configuration, log, event, lifecycle, or history data changes|
|2|Data classified|Runtime or service classifies data type and sensitivity|
|3|Sync eligibility checked|System checks whether data may sync under policy|
|4|Permission checked|Role, account, privacy, and site permissions are evaluated|
|5|Sync mode selected|Immediate, delayed, queued, permission-based, or non-synchronized mode is selected|
|6|Conflict checked|Local and cloud versions are compared where required|
|7|Data transmitted|Data is transmitted through supported protected path where implemented|
|8|Sync result confirmed|Cloud or local runtime confirms success, failure, delay, or conflict|
|9|State updated|Local and cloud records update according to result|
|10|Retry / queue handled|Failed sync follows retry, expiration, or rejection rules|
|11|Log recorded|Sync activity is recorded where supported|

## 中文表

|步驟|流程階段|說明|
|---|---|---|
|1|數據變化偵測|設備狀態、配置、日誌、事件、生命週期或歷史數據變化|
|2|數據分類|Runtime 或服務分類數據類型與敏感性|
|3|同步資格檢查|系統檢查該數據是否可依政策同步|
|4|權限檢查|判斷角色、帳號、隱私與站點權限|
|5|同步模式選擇|選擇立即、延遲、佇列、基於權限或不同步模式|
|6|衝突檢查|必要時比較本地與雲端版本|
|7|數據傳輸|透過已實作受保護路徑傳輸數據|
|8|同步結果確認|雲端或本地 Runtime 確認成功、失敗、延遲或衝突|
|9|狀態更新|本地與雲端記錄依結果更新|
|10|重試 / 佇列處理|同步失敗依重試、過期或拒絕規則處理|
|11|日誌記錄|支援條件下記錄同步活動|

---

## C.11 Failure and Recovery Flow

## C.11 故障與恢復流程

## EN

Failure and Recovery Flow defines how the runtime responds when a component, path, service, layer, device, cloud service, Edge service, or network condition becomes unavailable or degraded.

Failure behavior must be deterministic. The system should define what continues, what stops, what degrades, what queues, what retries, what is rejected, and how recovery occurs.

## ZH-TW

故障與恢復流程定義當組件、路徑、服務、層級、設備、雲端服務、Edge 服務或網路條件不可用或降級時，Runtime 如何回應。

故障行為必須是確定性的。系統應定義哪些繼續、哪些停止、哪些降級、哪些排隊、哪些重試、哪些被拒絕，以及如何恢復。

---

## English Table

|Step|Flow Stage|Description|
|---|---|---|
|1|Failure detected|Device, network, Hub, Gate, Cloud, Edge, service, or storage failure is detected|
|2|Failure classified|Runtime identifies failure type, scope, severity, and affected functions|
|3|Safety evaluated|Safety and fail-safe rules are applied first|
|4|Dependency checked|Runtime determines which functions depend on failed component|
|5|Degraded mode selected|Continue, stop, degrade, queue, retry, or reject behavior is selected|
|6|State updated|Affected component is marked offline, degraded, error, unknown, or unavailable|
|7|User / operator notified|App, Panel, Cloud, or logs show failure status where supported|
|8|Recovery monitored|Runtime monitors whether component or service becomes available again|
|9|Recovery executed|System restores state, sync, service, route, or function according to defined logic|
|10|Post-recovery validation|Runtime checks health and consistency after recovery|
|11|Record stored|Failure, degradation, and recovery are recorded where supported|

## 中文表

|步驟|流程階段|說明|
|---|---|---|
|1|故障偵測|偵測到設備、網路、Hub、Gate、Cloud、Edge、服務或儲存故障|
|2|故障分類|Runtime 識別故障類型、範圍、嚴重程度與受影響功能|
|3|安全判斷|優先套用安全與故障安全規則|
|4|依賴檢查|Runtime 判斷哪些功能依賴失效組件|
|5|降級模式選擇|選擇繼續、停止、降級、排隊、重試或拒絕行為|
|6|狀態更新|受影響組件被標記為離線、降級、錯誤、未知或不可用|
|7|用戶 / 操作人員通知|支援條件下 App、Panel、Cloud 或日誌顯示故障狀態|
|8|恢復監測|Runtime 監測組件或服務是否再次可用|
|9|恢復執行|系統依已定義邏輯恢復狀態、同步、服務、路徑或功能|
|10|恢復後驗證|Runtime 在恢復後檢查健康狀態與一致性|
|11|記錄保存|支援條件下記錄故障、降級與恢復|

---

## C.12 Runtime Priority Reference

## C.12 Runtime 優先級參考

## EN

Runtime Priority Reference defines the priority order used when multiple commands, actions, automations, or system processes compete.

Priority rules must be applied consistently across local control, automation, cloud command, Edge-assisted input, background synchronization, and failure behavior.

## ZH-TW

Runtime 優先級參考定義多個指令、動作、自動化或系統流程競爭時使用的優先順序。

優先級規則必須一致套用於本地控制、自動化、雲端指令、Edge 輔助輸入、背景同步與故障行為。

---

## English Table

|Priority|Source|Runtime Meaning|
|---|---|---|
|1|Safety / Fail-Safe|Overrides all other behavior where defined|
|2|Local Manual Control|Direct user intention through Switch, Panel, or local App path|
|3|Local Automation|Local rules, scenes, schedules, and deterministic runtime logic|
|4|Edge-Assisted Logic|AI-assisted interpretation or recommendation where enabled|
|5|Cloud Command|Remote command or cloud-initiated request|
|6|Background Sync|Logs, analytics, reporting, lifecycle updates, and non-critical synchronization|

## 中文表

|優先級|來源|Runtime 含義|
|---|---|---|
|1|安全 / 故障安全|在已定義條件下覆蓋所有其他行為|
|2|本地手動控制|透過 Switch、Panel 或本地 App 路徑表達的直接用戶意圖|
|3|本地自動化|本地規則、場景、排程與確定性 Runtime 邏輯|
|4|Edge 輔助邏輯|啟用條件下的 AI 輔助解讀或建議|
|5|雲端指令|遠端指令或雲端發起請求|
|6|背景同步|日誌、分析、報告、生命週期更新與非關鍵同步|

---

## C.13 Runtime Flow Boundary

## C.13 Runtime 流程邊界

## EN

Runtime flow references define expected architecture behavior, but they do not by themselves confirm implementation, validation, certification, capacity, reliability, security, privacy, or commercial readiness.

A flow may be architecturally defined before all product variants fully implement it. A flow may also apply only under defined component availability, firmware version, cloud availability, Edge deployment, network condition, configuration, permission, and validation status.

Any external claim based on a runtime flow must be supported by implementation evidence and validation records.

## ZH-TW

Runtime 流程參考定義預期架構行為，但其本身不確認實作、驗證、認證、容量、可靠性、安全、隱私或商業就緒度。

某一流程可以在所有產品版本完全實作前先被架構定義。某一流程也可能僅在明確組件可用性、韌體版本、雲端可用性、Edge 部署、網路條件、配置、權限與驗證狀態下適用。

任何基於 Runtime 流程的對外宣稱，都必須由實作證據與驗證記錄支持。

---

## English Table

|Runtime Flow Can Define|Runtime Flow Cannot Confirm|
|---|---|
|Expected event path|Actual implementation completion|
|Command routing logic|Certification status|
|State update sequence|Capacity performance|
|Priority model|Security effectiveness without testing|
|Failure behavior pattern|Privacy compliance without policy and validation|
|Cloud / Edge interaction|Commercial availability|
|Synchronization pattern|Validation completion by itself|
|Recovery model|Deployment success without site validation|

## 中文表

|Runtime 流程可以定義|Runtime 流程不能確認|
|---|---|
|預期事件路徑|實際實作完成|
|指令路由邏輯|認證狀態|
|狀態更新順序|容量性能|
|優先級模型|未經測試的安全有效性|
|故障行為模式|缺少政策與驗證的隱私合規|
|Cloud / Edge 互動|商業可用性|
|同步模式|驗證已完成本身|
|恢復模型|未經站點驗證的部署成功|

---

## C.14 Appendix Conclusion

## C.14 附錄結論

## EN

This appendix defines the Runtime Flow Reference for the OceanAI System Architecture Specification. It provides structured references for event-to-action behavior, local manual control, scene execution, automation execution, sensor-to-automation logic, cloud command processing, Edge-assisted runtime behavior, synchronization, failure recovery, and runtime priority.

These flows support consistency across OceanAI architecture documents, ArtiOS runtime design, Artibird product specifications, App workflows, deployment validation, and commercial claim control.

The central principle is that OceanAI runtime behavior must remain governed, traceable, priority-aware, capability-aware, and validation-bound.

## ZH-TW

本附錄定義《OceanAI 系統架構規格書》的 Runtime 流程參考，為事件至動作行為、本地手動控制、場景執行、自動化執行、感測至自動化邏輯、雲端指令處理、Edge 輔助 Runtime 行為、同步、故障恢復與 Runtime 優先級提供結構化參考。

這些流程支援 OceanAI 架構文件、ArtiOS Runtime 設計、Artibird 產品規格書、App 工作流、部署驗證與商業宣稱管控之間的一致性。

其核心原則是：OceanAI 的 Runtime 行為必須保持受治理、可追溯、具優先級意識、具能力邊界意識，並受驗證約束。