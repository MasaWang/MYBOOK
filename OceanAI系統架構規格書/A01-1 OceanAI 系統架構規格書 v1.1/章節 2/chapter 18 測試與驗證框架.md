# 18. Testing and Validation Framework

# 18. 測試與驗證框架

---

## 18.1 Purpose

## 18.1 目的

## EN

This chapter defines the Testing and Validation Framework of OceanAI. Testing and validation ensure that architecture behavior, runtime behavior, product participation, data models, local-cloud-edge coordination, security, privacy, capacity, reliability, deployment patterns, and system claims are supported by evidence.

The purpose of this chapter is to establish a structured framework for validating OceanAI as a system-level intelligence architecture. A capability should not be treated as confirmed simply because it is designed, described, prototyped, or technically possible. It becomes a validated capability only when it has been tested under defined conditions and recorded with traceable evidence.

Testing and validation protect architecture credibility, engineering quality, user safety, privacy, security, commercial accuracy, and long-term system evolution.

## ZH-TW

本章定義 OceanAI 的測試與驗證框架。測試與驗證用於確保架構行為、Runtime 行為、產品參與、數據模型、本地—雲端—Edge 協同、安全、隱私、容量、可靠性、部署模式與系統宣稱均有證據支持。

本章目的，是為 OceanAI 作為系統級智慧架構建立結構化驗證框架。某項能力不應僅因為被設計、描述、原型展示或技術上可行，就被視為已確認能力。只有當它在明確條件下完成測試，並以可追溯證據記錄時，才可被視為已驗證能力。

測試與驗證保護架構可信度、工程品質、用戶安全、隱私、安全性、商業準確性與長期系統演進。

---

## English Table

|Validation Area|Description|
|---|---|
|Architecture validation|Verifies architecture layers, responsibilities, boundaries, and coordination logic|
|Runtime validation|Verifies events, commands, states, scenes, automations, priorities, and failure behavior|
|Data model validation|Verifies entity representation, field mapping, state structure, and traceability|
|Connectivity validation|Verifies network paths, device access, MQTT, gateway behavior, and cloud connection|
|Local-cloud-edge validation|Verifies responsibility separation and cross-layer coordination|
|Security validation|Verifies identity, access control, secure communication, update integrity, and auditability|
|Privacy validation|Verifies data collection, processing, storage, retention, deletion, and Vision / AI boundaries|
|Capacity validation|Verifies device count, throughput, latency, scenes, automations, users, and sites|
|Reliability validation|Verifies degraded behavior, fallback, recovery, and failure isolation|
|Deployment validation|Verifies actual site conditions, topology, component mix, and scenario behavior|
|Claim validation|Verifies that engineering and commercial claims are evidence-based|

## 中文表

|驗證領域|說明|
|---|---|
|架構驗證|驗證架構層級、責任、邊界與協同邏輯|
|Runtime 驗證|驗證事件、指令、狀態、場景、自動化、優先級與故障行為|
|數據模型驗證|驗證實體表示、欄位映射、狀態結構與可追溯性|
|連接驗證|驗證網路路徑、設備接入、MQTT、網關行為與雲端連接|
|本地—雲端—Edge 驗證|驗證責任分離與跨層協同|
|安全驗證|驗證身份、存取控制、安全通訊、更新完整性與可審計性|
|隱私驗證|驗證數據收集、處理、儲存、保留、刪除與 Vision / AI 邊界|
|容量驗證|驗證設備數、吞吐量、延遲、場景、自動化、用戶與站點|
|可靠性驗證|驗證降級行為、回退、恢復與故障隔離|
|部署驗證|驗證實際場地條件、拓撲、組件組合與場景行為|
|宣稱驗證|驗證工程與商業宣稱基於證據|

---

## 18.2 Testing and Validation Definition

## 18.2 測試與驗證定義

## EN

Testing is the process of executing defined cases under known conditions. Validation is the process of confirming that the tested behavior supports an intended capability, requirement, boundary, or claim.

In OceanAI, testing and validation must include both functional behavior and architectural behavior. A device may function correctly by itself, but the system must also verify how the device participates in runtime, data flow, security, privacy, local-cloud-edge coordination, deployment, and failure behavior.

Validation must record the tested condition, expected result, observed result, evidence type, boundary statement, version information, and approval status.

## ZH-TW

測試是在已知條件下執行已定義案例的過程。驗證則是確認測試結果是否支持某一預期能力、要求、邊界或宣稱的過程。

在 OceanAI 中，測試與驗證必須同時包含功能行為與架構行為。某個設備本身可能運作正常，但系統還必須驗證該設備如何參與 Runtime、數據流、安全、隱私、本地—雲端—Edge 協同、部署與故障行為。

驗證必須記錄測試條件、預期結果、觀察結果、證據類型、邊界聲明、版本資訊與核准狀態。

---

## English Table

|Validation Element|Required Definition|
|---|---|
|Test objective|What capability, behavior, boundary, or claim is being tested|
|Test condition|Hardware, firmware, software, network, cloud, Edge, load, and deployment conditions|
|Expected result|Required outcome before test execution|
|Observed result|Actual outcome during test execution|
|Evidence type|Log, measurement, report, screenshot, video, certification document, or audit record|
|Version record|Hardware, firmware, software, model, cloud, runtime, and document version|
|Boundary statement|Conditions under which the validation result applies|
|Pass / fail status|Whether the result satisfies the validation requirement|
|Approval status|Draft, reviewed, approved, final, superseded, or archived|
|Claim linkage|Which engineering or commercial claim the validation supports|

## 中文表

|驗證元素|必須定義內容|
|---|---|
|測試目標|被測試的是哪項能力、行為、邊界或宣稱|
|測試條件|硬體、韌體、軟體、網路、雲端、Edge、負載與部署條件|
|預期結果|測試前定義的所需結果|
|觀察結果|測試執行中的實際結果|
|證據類型|日誌、量測、報告、截圖、視頻、認證文件或審計記錄|
|版本記錄|硬體、韌體、軟體、模型、雲端、Runtime 與文件版本|
|邊界聲明|驗證結果適用的條件|
|通過 / 失敗狀態|結果是否滿足驗證要求|
|核准狀態|草案、已審查、已核准、最終版、已取代或已歸檔|
|宣稱關聯|該驗證支持哪項工程或商業宣稱|

---

## 18.3 Architecture Validation

## 18.3 架構驗證

## EN

Architecture Validation verifies whether OceanAI architecture layers, responsibilities, boundaries, and coordination logic are correctly defined and implemented across system components.

Architecture validation should confirm that Cloud, Edge, Local Runtime, Device Access, Interaction, Sensing, Execution, and Device Participation layers remain distinct but coordinated. It should also confirm that each layer follows its defined responsibility and does not claim responsibility outside its boundary.

Architecture validation is required when introducing new architecture versions, new product categories, new runtime responsibilities, new cloud services, new Edge functions, or new deployment patterns.

## ZH-TW

架構驗證用於確認 OceanAI 的架構層級、責任、邊界與協同邏輯是否在系統組件之間被正確定義與實作。

架構驗證應確認 Cloud、Edge、Local Runtime、Device Access、Interaction、Sensing、Execution 與 Device Participation 各層保持區分但彼此協同，也應確認每一層遵循其已定義責任，不宣稱超出邊界的責任。

當引入新架構版本、新產品類別、新 Runtime 責任、新雲端服務、新 Edge 功能或新部署模式時，需要進行架構驗證。

---

## English Table

|Architecture Validation Item|Required Verification|
|---|---|
|Layer responsibility|Each layer has a defined and implemented responsibility|
|Layer boundary|Each layer operates within its defined boundary|
|Cross-layer flow|Data, events, commands, and state move according to defined paths|
|Local responsibility|Local Runtime retains deterministic local behavior where supported|
|Cloud responsibility|Cloud extends remote, lifecycle, sync, and multi-site functions without replacing local runtime by default|
|Edge responsibility|Edge assists interpretation without unrestricted control authority|
|Device participation|Products map correctly to architecture layers and runtime roles|
|Governance alignment|Security, privacy, validation, and claim boundaries apply across all layers|
|Document alignment|Product, system, commercial, and deployment documents remain consistent with architecture|
|Change impact|Architecture changes are reviewed for downstream impact|

## 中文表

|架構驗證項目|必須驗證內容|
|---|---|
|層級責任|每一層都有已定義且已實作的責任|
|層級邊界|每一層在其已定義邊界內運作|
|跨層流程|數據、事件、指令與狀態依已定義路徑流動|
|本地責任|本地 Runtime 在支援條件下保留確定性本地行為|
|雲端責任|雲端擴展遠端、生命週期、同步與多站點功能，預設不取代本地 Runtime|
|Edge 責任|Edge 輔助解讀，但不具有不受限制的控制權威|
|設備參與|產品正確映射至架構層級與 Runtime 角色|
|治理對齊|安全、隱私、驗證與宣稱邊界套用於所有層級|
|文件對齊|產品、系統、商業與部署文件與架構保持一致|
|變更影響|架構變更經過下游影響審查|

---

## 18.4 Runtime Validation

## 18.4 Runtime 驗證

## EN

Runtime Validation verifies active system behavior during operation. It confirms that events are processed correctly, commands are routed properly, states remain consistent, scenes execute as defined, automations follow rules, priorities are enforced, failure behavior is deterministic, and recovery behavior is traceable.

Runtime validation is especially important because Runtime behavior may produce physical action. It must verify that a command does not execute merely because it exists, but only when permission, priority, capability, state, safety, and validation conditions are satisfied.

Runtime validation should cover normal operation, degraded operation, offline behavior, recovery behavior, conflict handling, and cross-layer input from Cloud and Edge.

## ZH-TW

Runtime 驗證用於確認系統運行期間的主動行為。它確認事件是否正確處理、指令是否正確路由、狀態是否保持一致、場景是否按定義執行、自動化是否遵循規則、優先級是否被執行、故障行為是否具確定性，以及恢復行為是否可追溯。

Runtime 驗證尤其重要，因為 Runtime 行為可能產生物理動作。它必須驗證指令不是因為存在就被執行，而是只有在權限、優先級、能力、狀態、安全與驗證條件滿足時才被執行。

Runtime 驗證應涵蓋正常運作、降級運作、離線行為、恢復行為、衝突處理，以及來自 Cloud 與 Edge 的跨層輸入。

---

## English Table

|Runtime Validation Item|Required Verification|
|---|---|
|Event processing|Events are classified, routed, and handled correctly|
|Command routing|Commands reach correct targets through permitted paths|
|State management|Device, scene, automation, and system states remain consistent|
|Scene execution|Multi-device scenes execute as defined|
|Automation execution|Rules trigger only under defined conditions|
|Priority handling|Safety, local, automation, Edge, cloud, and background priorities resolve correctly|
|Permission enforcement|Unauthorized actions are rejected or blocked|
|Conflict handling|Competing commands are resolved according to priority rules|
|Offline behavior|Supported local functions continue without Internet or cloud|
|Recovery behavior|System restores supported state and services after failure|

## 中文表

|Runtime 驗證項目|必須驗證內容|
|---|---|
|事件處理|事件被正確分類、路由與處理|
|指令路由|指令透過被允許路徑到達正確目標|
|狀態管理|設備、場景、自動化與系統狀態保持一致|
|場景執行|多設備場景按定義執行|
|自動化執行|規則只在已定義條件下觸發|
|優先級處理|安全、本地、自動化、Edge、雲端與背景優先級正確解決|
|權限執行|未授權動作被拒絕或阻止|
|衝突處理|競爭指令依優先級規則解決|
|離線行為|無 Internet 或雲端時，受支援本地功能繼續|
|恢復行為|故障後系統恢復受支援狀態與服務|

---

## 18.5 Data Model Validation

## 18.5 數據模型驗證

## EN

Data Model Validation verifies that devices, spaces, users, roles, services, configurations, capabilities, health states, events, commands, telemetry, Edge outputs, and validation records are represented correctly.

A data model must support runtime processing, App display, cloud synchronization, Edge interpretation, security enforcement, privacy governance, deployment planning, and validation traceability.

Data model validation should confirm field definitions, entity relationships, version compatibility, migration behavior, state transitions, synchronization behavior, permission linkage, and claim evidence linkage.

## ZH-TW

數據模型驗證用於確認設備、空間、用戶、角色、服務、配置、能力、健康狀態、事件、指令、遙測、Edge 輸出與驗證記錄是否被正確表示。

數據模型必須支援 Runtime 處理、App 顯示、雲端同步、Edge 解讀、安全執行、隱私治理、部署規劃與驗證可追溯性。

數據模型驗證應確認欄位定義、實體關係、版本相容性、遷移行為、狀態轉換、同步行為、權限關聯與宣稱證據關聯。

---

## English Table

|Data Model Validation Item|Required Verification|
|---|---|
|Device representation|Devices include identity, type, version, capability, state, and health fields|
|Space representation|Rooms, zones, buildings, campuses, and sites are correctly represented|
|User and role mapping|Users, roles, permissions, and access scopes are correctly linked|
|Capability mapping|Supported capabilities are tied to versions, conditions, and validation status|
|State model|State values and transitions behave consistently|
|Event model|Event type, source, payload, timestamp, priority, and metadata are correct|
|Command model|Command source, target, parameters, priority, and authorization are correct|
|Sync model|Local-cloud synchronization follows defined schema and conflict rules|
|Migration behavior|Data remains compatible or migrates correctly across versions|
|Validation linkage|Claims and behavior connect to validation evidence where required|

## 中文表

|數據模型驗證項目|必須驗證內容|
|---|---|
|設備表示|設備包含身份、類型、版本、能力、狀態與健康欄位|
|空間表示|房間、分區、建築、校園與站點被正確表示|
|用戶與角色映射|用戶、角色、權限與存取範圍被正確關聯|
|能力映射|受支援能力與版本、條件與驗證狀態關聯|
|狀態模型|狀態值與轉換行為保持一致|
|事件模型|事件類型、來源、Payload、時間戳、優先級與元數據正確|
|指令模型|指令來源、目標、參數、優先級與授權正確|
|同步模型|本地—雲端同步遵循已定義 Schema 與衝突規則|
|遷移行為|數據跨版本保持相容或正確遷移|
|驗證關聯|需要時，宣稱與行為連接至驗證證據|

---

## 18.6 Connectivity Validation

## 18.6 連接驗證

## EN

Connectivity Validation verifies the communication paths required for OceanAI operation. It includes local network communication, device access paths, gateway behavior, MQTT communication, App local access, cloud connection, Edge communication, synchronization paths, and failure recovery.

Connectivity validation must test normal operation, weak network conditions, network interruption, gateway failure, cloud disconnection, Edge disconnection, device offline behavior, and reconnection behavior.

Connectivity claims must be based on tested conditions, including network topology, device count, distance, interference, protocol type, gateway placement, and load.

## ZH-TW

連接驗證用於確認 OceanAI 運行所需通訊路徑。它包括本地網路通訊、設備接入路徑、網關行為、MQTT 通訊、App 本地存取、雲端連接、Edge 通訊、同步路徑與故障恢復。

連接驗證必須測試正常運作、弱網路條件、網路中斷、網關故障、雲端斷連、Edge 斷連、設備離線行為與重新連接行為。

連接宣稱必須基於已測條件，包括網路拓撲、設備數量、距離、干擾、協議類型、網關位置與負載。

---

## English Table

|Connectivity Validation Item|Required Verification|
|---|---|
|Device onboarding|Supported devices can be discovered, authenticated, and bound|
|Gateway communication|Gateway paths function under defined conditions|
|MQTT communication|Topic, authentication, message flow, latency, and failure behavior are verified|
|App local connection|App can access supported local runtime functions under defined network conditions|
|Cloud connection|Remote access and synchronization function under defined service conditions|
|Edge communication|Edge input and output paths function under supported deployment|
|Offline transition|System behavior during Internet or cloud loss is verified|
|Reconnection behavior|Devices, cloud, Edge, and services recover according to defined logic|
|Network load|Performance remains within validated load conditions|
|Failure isolation|Connectivity failure scope is limited where supported|

## 中文表

|連接驗證項目|必須驗證內容|
|---|---|
|設備入網|受支援設備可被發現、認證與綁定|
|網關通訊|網關路徑在明確條件下正常運作|
|MQTT 通訊|Topic、身份認證、消息流、延遲與故障行為被驗證|
|App 本地連接|App 在明確網路條件下可存取受支援本地 Runtime 功能|
|雲端連接|遠端存取與同步在明確服務條件下運作|
|Edge 通訊|Edge 輸入與輸出路徑在受支援部署下運作|
|離線轉換|Internet 或雲端中斷時的系統行為被驗證|
|重新連接行為|設備、雲端、Edge 與服務依已定義邏輯恢復|
|網路負載|性能在已驗證負載條件內保持|
|故障隔離|支援條件下連接故障範圍被限制|

---

## 18.7 Local-Cloud-Edge Validation

## 18.7 本地—雲端—Edge 驗證

## EN

Local-Cloud-Edge Validation verifies that local runtime, cloud services, and Edge intelligence cooperate according to defined responsibilities and boundaries.

This validation confirms that local runtime remains responsible for deterministic local behavior, cloud services handle remote and synchronized functions, and Edge intelligence provides bounded interpretation or recommendation. It also confirms that no layer silently replaces another layer’s responsibility.

Validation must include normal coordination, cloud failure, Edge failure, Internet loss, synchronization delay, decision boundary, data residency, and recovery.

## ZH-TW

本地—雲端—Edge 驗證用於確認本地 Runtime、雲端服務與 Edge 智慧是否依已定義責任與邊界協同運作。

此驗證確認本地 Runtime 保持對確定性本地行為的責任，雲端服務處理遠端與同步功能，Edge 智慧提供受邊界約束的解讀或建議。同時也確認沒有任何一層靜默取代另一層的責任。

驗證必須包含正常協同、雲端故障、Edge 故障、Internet 中斷、同步延遲、決策邊界、數據駐留與恢復。

---

## English Table

|Local-Cloud-Edge Validation Item|Required Verification|
|---|---|
|Local responsibility|Local runtime executes supported local behavior|
|Cloud responsibility|Cloud handles remote access, sync, lifecycle, alerts, or analytics as defined|
|Edge responsibility|Edge provides bounded interpretation, alert, recommendation, or optimization support|
|Decision boundary|Edge and cloud outputs pass through runtime rules before physical action|
|Synchronization boundary|Only defined data synchronizes according to policy|
|Data residency|Data remains local, edge-side, cloud-side, or synchronized according to rules|
|Cloud failure|Local supported functions continue where required components are present|
|Edge failure|Non-edge runtime behavior continues where supported|
|Recovery|Local, cloud, and Edge layers recover according to defined behavior|
|Traceability|Cross-layer behavior is logged or recorded where supported|

## 中文表

|本地—雲端—Edge 驗證項目|必須驗證內容|
|---|---|
|本地責任|本地 Runtime 執行受支援本地行為|
|雲端責任|雲端按定義處理遠端存取、同步、生命週期、警報或分析|
|Edge 責任|Edge 提供受邊界約束的解讀、警報、建議或優化支持|
|決策邊界|Edge 與雲端輸出在物理動作前通過 Runtime 規則|
|同步邊界|僅已定義數據依政策同步|
|數據駐留|數據依規則保留於本地、Edge 側、雲端側或同步|
|雲端故障|所需組件具備時，受支援本地功能繼續|
|Edge 故障|支援條件下非 Edge Runtime 行為繼續|
|恢復|本地、雲端與 Edge 層依已定義行為恢復|
|可追溯性|支援條件下跨層行為被日誌或記錄保存|

---

## 18.8 Security and Privacy Validation

## 18.8 安全與隱私驗證

## EN

Security and Privacy Validation verifies that OceanAI protects devices, users, roles, communication paths, data, Vision processing, Edge processing, cloud services, and runtime behavior according to defined requirements.

Security validation must test device identity, account identity, access control, command authorization, secure communication, update integrity, support access, auditability, and failure behavior.

Privacy validation must test data collection, purpose limitation, access control, local processing, cloud synchronization, Edge processing, Vision data handling, storage, retention, deletion, and user transparency where applicable.

## ZH-TW

安全與隱私驗證用於確認 OceanAI 是否依已定義要求保護設備、用戶、角色、通訊路徑、數據、Vision 處理、Edge 處理、雲端服務與 Runtime 行為。

安全驗證必須測試設備身份、帳號身份、存取控制、指令授權、安全通訊、更新完整性、支援存取、可審計性與故障行為。

隱私驗證必須測試數據收集、目的限制、存取控制、本地處理、雲端同步、Edge 處理、Vision 數據處理、儲存、保留、刪除，以及適用時的用戶透明性。

---

## English Table

|Security / Privacy Validation Item|Required Verification|
|---|---|
|Device identity|Unsupported or unauthorized devices are rejected or limited|
|User authentication|Protected access requires valid identity|
|Role-based access|Permissions match assigned roles and scopes|
|Command authorization|Unauthorized commands are rejected|
|Secure communication|Implemented protected paths function as designed|
|Update integrity|Firmware, software, and model updates follow integrity rules|
|Data collection|Only defined data is collected|
|Data synchronization|Data sync follows privacy and permission policies|
|Vision privacy|Visual capture, access, storage, retention, and deletion are verified|
|Edge privacy|AI input, output, storage, and sync follow privacy boundaries|
|Audit records|Security-sensitive events are recorded where supported|
|Data deletion|Deletion behavior matches policy where implemented|

## 中文表

|安全 / 隱私驗證項目|必須驗證內容|
|---|---|
|設備身份|未支援或未授權設備被拒絕或限制|
|用戶身份認證|受保護存取需要有效身份|
|角色權限|權限與已分配角色及範圍一致|
|指令授權|未授權指令被拒絕|
|安全通訊|已實作受保護路徑按設計運作|
|更新完整性|韌體、軟體與模型更新遵循完整性規則|
|數據收集|僅收集已定義數據|
|數據同步|數據同步遵循隱私與權限政策|
|Vision 隱私|驗證視覺捕捉、存取、儲存、保留與刪除|
|Edge 隱私|AI 輸入、輸出、儲存與同步遵循隱私邊界|
|審計記錄|支援條件下安全敏感事件被記錄|
|數據刪除|已實作條件下刪除行為符合政策|

---

## 18.9 Capacity and Reliability Validation

## 18.9 容量與可靠性驗證

## EN

Capacity and Reliability Validation verifies measurable system limits and expected failure behavior. It confirms whether the system can support the defined number of devices, users, events, scenes, automations, messages, cloud synchronization tasks, Edge processing loads, and deployment scale.

Capacity validation must be conducted under documented hardware, firmware, software, network, cloud, Edge, and deployment conditions.

Reliability validation must verify degraded operation, fallback behavior, failure isolation, recovery time, local continuity, cloud failure, Edge failure, device failure, and long-duration stability.

## ZH-TW

容量與可靠性驗證用於確認可量測系統限制與預期故障行為。它確認系統是否能支援已定義設備數、用戶數、事件數、場景數、自動化數、消息量、雲端同步任務、Edge 處理負載與部署規模。

容量驗證必須在已記錄硬體、韌體、軟體、網路、雲端、Edge 與部署條件下進行。

可靠性驗證必須確認降級運作、回退行為、故障隔離、恢復時間、本地延續、雲端故障、Edge 故障、設備故障與長時間穩定性。

---

## English Table

|Capacity / Reliability Validation Item|Required Verification|
|---|---|
|Device capacity|Maximum supported devices under defined conditions|
|Gate capacity|Maximum supported device access per Gate|
|Hub capacity|Maximum supported devices, scenes, automations, and runtime load per Hub|
|MQTT throughput|Message rate, latency, and failure behavior|
|Event latency|Time from event generation to action execution|
|Cloud sync capacity|Supported sync volume, delay, queue, and recovery|
|Edge processing capacity|Supported model load, input rate, latency, and fallback|
|Long-duration operation|Stability under continuous operation|
|Failure behavior|Defined degraded behavior occurs correctly|
|Recovery behavior|System recovers according to defined recovery logic|
|Stress behavior|System remains safe under overload or rejects unsupported load|
|Claim boundary|Capacity claims match validated conditions|

## 中文表

|容量 / 可靠性驗證項目|必須驗證內容|
|---|---|
|設備容量|明確條件下最大受支援設備數|
|Gate 容量|每個 Gate 最大受支援設備接入數|
|Hub 容量|每個 Hub 最大受支援設備、場景、自動化與 Runtime 負載|
|MQTT 吞吐量|消息速率、延遲與故障行為|
|事件延遲|從事件產生到動作執行的時間|
|雲端同步容量|受支援同步量、延遲、佇列與恢復|
|Edge 處理容量|受支援模型負載、輸入速率、延遲與回退|
|長時間運行|連續運行下的穩定性|
|故障行為|已定義降級行為正確發生|
|恢復行為|系統依已定義恢復邏輯恢復|
|壓力行為|系統在過載下保持安全或拒絕不支援負載|
|宣稱邊界|容量宣稱與已驗證條件一致|

---

## 18.10 Deployment Validation

## 18.10 部署驗證

## EN

Deployment Validation verifies whether a specific deployment matches the supported architecture model and operates correctly under actual or representative site conditions.

A deployment cannot be considered validated only because its components are individually validated. The site topology, network condition, device density, user roles, local runtime placement, cloud availability, Edge deployment, privacy requirements, power conditions, and failure behavior must also be validated.

Deployment validation must be performed for residential, classroom, office, building, campus, energy, vision-aware, agriculture, infrastructure, or other scenario-specific installations where applicable.

## ZH-TW

部署驗證用於確認特定部署是否符合受支援架構模型，並在實際或具代表性的場地條件下正確運作。

不能僅因為部署中的組件分別通過驗證，就將整個部署視為已驗證。站點拓撲、網路條件、設備密度、用戶角色、本地 Runtime 位置、雲端可用性、Edge 部署、隱私要求、供電條件與故障行為也必須完成驗證。

部署驗證應在適用情況下針對住宅、教室、辦公、建築、校園、能源、視覺感知、農業、基礎設施或其他特定場景安裝執行。

---

## English Table

|Deployment Validation Item|Required Verification|
|---|---|
|Component list|Actual deployed components match supported configuration|
|Version record|Hardware, firmware, software, cloud, Edge, and runtime versions are recorded|
|Network topology|Local, cloud, Edge, gateway, and fallback paths are verified|
|Device placement|Device location, range, interference, and access conditions are checked|
|Runtime placement|Local runtime services are correctly hosted and reachable|
|User roles|Owner, admin, user, installer, support, and organization roles are correctly assigned|
|Privacy setting|Data capture, processing, storage, sync, and retention match policy|
|Capacity condition|Device count, event load, scenes, automations, and users are within validated limits|
|Failure test|Cloud, Edge, network, device, and local runtime failures are tested where applicable|
|Site approval|Deployment is reviewed and approved with defined boundaries|

## 中文表

|部署驗證項目|必須驗證內容|
|---|---|
|組件清單|實際部署組件符合受支援配置|
|版本記錄|硬體、韌體、軟體、雲端、Edge 與 Runtime 版本被記錄|
|網路拓撲|本地、雲端、Edge、網關與回退路徑被驗證|
|設備位置|設備位置、範圍、干擾與接入條件被檢查|
|Runtime 位置|本地 Runtime 服務被正確承載並可達|
|用戶角色|Owner、Admin、User、Installer、Support 與組織角色被正確分配|
|隱私設定|數據捕捉、處理、儲存、同步與保留符合政策|
|容量條件|設備數、事件負載、場景、自動化與用戶數在已驗證限制內|
|故障測試|適用時測試雲端、Edge、網路、設備與本地 Runtime 故障|
|站點核准|部署在已定義邊界下完成審查與核准|

---

## 18.11 Claim Validation

## 18.11 宣稱驗證

## EN

Claim Validation verifies that engineering, commercial, website, sales, channel, deployment, and certification-related statements are supported by evidence.

A claim must not be approved only because it sounds reasonable or aligns with the brand narrative. It must be connected to architecture definition, implementation status, test results, validation records, version conditions, deployment conditions, and boundary language.

Claim validation protects OceanAI from overstating capability, especially in areas such as AI, offline operation, capacity, energy savings, security, privacy, certification, compatibility, and reliability.

## ZH-TW

宣稱驗證用於確認工程、商業、網站、銷售、渠道、部署與認證相關表述是否有證據支持。

宣稱不應僅因為聽起來合理或符合品牌敘事就被核准。它必須連接至架構定義、實作狀態、測試結果、驗證記錄、版本條件、部署條件與邊界語言。

宣稱驗證可防止 OceanAI 過度表述能力，尤其是在 AI、離線運作、容量、節能、安全、隱私、認證、相容性與可靠性等領域。

---

## EN

This section defines normative claim-validation requirements. For validation checklists (E.5–E.11), the validation-to-claim matrix (E.15), and evidence record templates (E.12), see **[Appendix E — Validation Framework](../D附錄/E%20—%20驗證框架.md)**.

## ZH-TW

本節定義宣稱驗證的規範性要求。驗證清單（E.5–E.11）、驗證—宣稱矩陣（E.15）與證據記錄模板（E.12）見 **[附錄 E — 驗證框架](../D附錄/E%20—%20驗證框架.md)**。

---

## 18.12 Validation Evidence Requirements

## 18.12 驗證證據要求

## EN

Validation evidence is the recorded proof that a capability, behavior, boundary, or claim has been tested under defined conditions. Evidence must be sufficiently detailed for engineering review, claim approval, future revalidation, and audit.

Evidence may include test reports, logs, measurement results, screenshots, videos, certification documents, configuration records, version records, deployment records, diagnostic records, privacy review records, security review records, and claim approval records.

Validation evidence must remain tied to versions and conditions. Evidence from one version, one deployment, one device model, or one test environment should not automatically apply to another without review.

## ZH-TW

驗證證據是能力、行為、邊界或宣稱已在明確條件下完成測試的記錄證明。證據必須足夠詳細，以支持工程審查、宣稱核准、未來重新驗證與審計。

證據可包括測試報告、日誌、量測結果、截圖、視頻、認證文件、配置記錄、版本記錄、部署記錄、診斷記錄、隱私審查記錄、安全審查記錄與宣稱核准記錄。

驗證證據必須與版本與條件綁定。來自某一版本、某一部署、某一設備型號或某一測試環境的證據，不應在未經審查的情況下自動適用於其他情況。

---

## EN

Field-level evidence record templates are maintained in **[Appendix E — Validation Framework](../D附錄/E%20—%20驗證框架.md)** (Section E.12 Validation Evidence Record Template). Use E.12 for operational records; this section defines architecture-level evidence requirements.

## ZH-TW

欄位級證據記錄模板維護於 **[附錄 E — 驗證框架](../D附錄/E%20—%20驗證框架.md)**（E.12 驗證證據記錄模板）。實務記錄請用 E.12；本節定義架構級證據要求。

---

## English Table

|Evidence Field|Required Content|
|---|---|
|Evidence ID|Unique identifier for validation evidence|
|Related requirement|Requirement, behavior, boundary, or claim being supported|
|Related component|Device, service, runtime, cloud, Edge, deployment, or data model|
|Version condition|Hardware, firmware, software, cloud, Edge model, and document version|
|Test environment|Network, load, site, device count, configuration, and deployment condition|
|Test method|Manual, automated, simulation, field test, laboratory test, or certification test|
|Expected result|Defined pass condition|
|Actual result|Observed behavior or measurement|
|Evidence file|Report, log, image, video, record, certificate, or measurement file|
|Boundary statement|Conditions under which evidence applies|
|Reviewer|Person or role responsible for review|
|Approval status|Draft, reviewed, approved, final, superseded, or archived|

## 中文表

|證據欄位|必須內容|
|---|---|
|Evidence ID|驗證證據唯一識別碼|
|關聯要求|被支持的要求、行為、邊界或宣稱|
|關聯組件|設備、服務、Runtime、雲端、Edge、部署或數據模型|
|版本條件|硬體、韌體、軟體、雲端、Edge 模型與文件版本|
|測試環境|網路、負載、站點、設備數、配置與部署條件|
|測試方法|手動、自動化、模擬、現場測試、實驗室測試或認證測試|
|預期結果|已定義通過條件|
|實際結果|觀察行為或量測結果|
|證據文件|報告、日誌、圖片、視頻、記錄、證書或量測文件|
|邊界聲明|證據適用條件|
|審查人|負責審查的人或角色|
|核准狀態|草案、已審查、已核准、最終版、已取代或已歸檔|

---

## 18.13 Validation Boundary

## 18.13 驗證邊界

## EN

Validation boundaries define what test results may and may not support. A validation result applies only to the tested hardware, firmware, software, cloud service, Edge model, configuration, network condition, load condition, deployment condition, and version scope.

Validation should not be generalized beyond the tested condition without additional review. A successful laboratory test may not automatically apply to field deployment. A small-scale prototype test may not support commercial capacity claims. A component-level test may not support system-level claims. A test report may not be the same as certification.

Validation boundaries prevent evidence from being overused or misrepresented.

## ZH-TW

驗證邊界定義測試結果可以與不可以支持什麼。驗證結果僅適用於已測硬體、韌體、軟體、雲端服務、Edge 模型、配置、網路條件、負載條件、部署條件與版本範圍。

未經額外審查，驗證不應被推廣至已測條件之外。實驗室測試成功不一定自動適用於現場部署。小規模原型測試不一定支持商業容量宣稱。元件級測試不一定支持系統級宣稱。測試報告也不一定等同於認證。

驗證邊界可防止證據被過度使用或誤用。

---

## English Table

|Validation Boundary Area|Required Control|
|---|---|
|Version boundary|Evidence applies only to tested versions unless reviewed|
|Hardware boundary|Evidence applies only to tested hardware models and revisions|
|Firmware / software boundary|Evidence applies only to tested firmware, software, cloud, and Edge versions|
|Network boundary|Evidence applies only to tested network topology and conditions|
|Load boundary|Evidence applies only to tested device count, event load, and runtime load|
|Deployment boundary|Evidence applies only to tested or equivalent site conditions|
|Privacy boundary|Evidence applies only to tested data handling and privacy configuration|
|Security boundary|Evidence applies only to implemented and tested controls|
|Certification boundary|Test reports, component certification, and final product certification must be distinguished|
|Claim boundary|Evidence supports only the specific approved claim language|

## 中文表

|驗證邊界領域|必須控制|
|---|---|
|版本邊界|除非經審查，證據僅適用於已測版本|
|硬體邊界|證據僅適用於已測硬體型號與版本|
|韌體 / 軟體邊界|證據僅適用於已測韌體、軟體、雲端與 Edge 版本|
|網路邊界|證據僅適用於已測網路拓撲與條件|
|負載邊界|證據僅適用於已測設備數、事件負載與 Runtime 負載|
|部署邊界|證據僅適用於已測或等效場地條件|
|隱私邊界|證據僅適用於已測數據處理與隱私配置|
|安全邊界|證據僅適用於已實作並測試的控制|
|認證邊界|必須區分測試報告、元件認證與最終產品認證|
|宣稱邊界|證據僅支持特定已核准宣稱語言|

---

## 18.14 Appendix Cross-Reference

## 18.14 附錄對照

## EN

Chapter 18 defines the **normative** Testing and Validation Framework. **[Appendix E — Validation Framework](../D附錄/E%20—%20驗證框架.md)** provides validation checklists (E.5–E.11), evidence record templates (E.12), validation-to-claim matrix (E.15), and boundary statement templates (E.16).

Do not duplicate Appendix E checklists in separate test plans without linking back to the appendix version.

## ZH-TW

第 18 章定義**規範性**測試與驗證框架。**[附錄 E — 驗證框架](../D附錄/E%20—%20驗證框架.md)** 提供驗證清單（E.5–E.11）、證據記錄模板（E.12）、驗證—宣稱矩陣（E.15）與邊界聲明模板（E.16）。

請勿在未連回附錄版本的情況下，於獨立測試計劃中重複收錄附錄 E 清單。

---

## 18.15 Chapter Conclusion

## 18.15 章節結論

## EN

This chapter defines the Testing and Validation Framework of OceanAI. It establishes validation as the evidence layer that supports architecture behavior, runtime behavior, data models, connectivity, local-cloud-edge coordination, security, privacy, capacity, reliability, deployment, and claims.

Testing and validation ensure that OceanAI remains measurable, traceable, trustworthy, and governable. They prevent design intent, prototype capability, theoretical possibility, and commercial language from being confused with validated system capability.

The following chapter defines Revision History, including version records, change description, review status, approval status, and document lifecycle control for the OceanAI System Architecture Specification.

## ZH-TW

本章定義 OceanAI 的測試與驗證框架，將驗證確立為支持架構行為、Runtime 行為、數據模型、連接、本地—雲端—Edge 協同、安全、隱私、容量、可靠性、部署與宣稱的證據層。

測試與驗證確保 OceanAI 保持可量測、可追溯、可信且可治理，防止設計意圖、原型能力、理論可能性與商業語言被混同為已驗證系統能力。

下一章將定義版本記錄，包括《OceanAI 系統架構規格書》的版本記錄、變更描述、審查狀態、核准狀態與文件生命週期控制。