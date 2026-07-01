# Appendix D — Data Model Reference

# Appendix D — 數據模型參考

> **參考展開｜非正文正本** — 規範性定義見 [第 7 章 系統數據模型](../章節/chapter%207%20系統數據模型.md)。本附錄提供欄位級參考表與擴展實體（事件、指令、狀態、遙測等）。

---

## D.1 Purpose

## D.1 目的

## EN

This appendix defines the Data Model Reference for the OceanAI System Architecture Specification. The purpose of this appendix is to provide a structured reference for how devices, spaces, users, roles, services, capabilities, events, commands, states, telemetry, automation, scenes, cloud synchronization, Edge outputs, health status, validation records, and claim evidence are represented within the OceanAI architecture.

The Data Model Reference supports consistent system design across Local Runtime, Cloud services, Edge intelligence, Artibird products, App interfaces, deployment documents, validation plans, and future architecture evolution.

A data model is not only a software schema. In OceanAI, it is an architecture structure that determines how physical environments are represented, how runtime behavior is processed, how cloud and Edge layers interact, how security and privacy rules are applied, and how system claims are validated.

## ZH-TW

本附錄定義《OceanAI 系統架構規格書》的數據模型參考。此附錄的目的，是為設備、空間、用戶、角色、服務、能力、事件、指令、狀態、遙測、自動化、場景、雲端同步、Edge 輸出、健康狀態、驗證記錄與宣稱證據如何在 OceanAI 架構中被表示提供結構化參考。

數據模型參考支援 Local Runtime、雲端服務、Edge 智慧、Artibird 產品、App 介面、部署文件、驗證計劃與未來架構演進之間的一致系統設計。

數據模型不只是軟體 Schema。在 OceanAI 中，它是一種架構結構，決定物理環境如何被表示、Runtime 行為如何被處理、雲端與 Edge 層如何互動、安全與隱私規則如何套用，以及系統宣稱如何被驗證。

---

## D.2 Data Model Principles

## D.2 數據模型原則

## EN

The OceanAI data model must represent physical devices, spatial structures, runtime behavior, user roles, data boundaries, system state, cloud synchronization, Edge-assisted context, and validation evidence in a consistent and traceable way.

A data model should define what an entity is, how it is identified, what fields it contains, how it relates to other entities, how it changes state, which permissions apply to it, where it may be stored, whether it may synchronize, and how it is validated.

Data model design must remain aligned with Local-First Architecture, Cloud Architecture, Edge Intelligence Architecture, Security and Privacy Architecture, Governance and Claim Boundaries, and Testing and Validation Framework.

## ZH-TW

OceanAI 數據模型必須以一致且可追溯的方式表示實體設備、空間結構、Runtime 行為、用戶角色、數據邊界、系統狀態、雲端同步、Edge 輔助上下文與驗證證據。

數據模型應定義某一實體是什麼、如何識別、包含哪些欄位、如何與其他實體關聯、如何改變狀態、適用哪些權限、可儲存於何處、是否可同步，以及如何被驗證。

數據模型設計必須與本地優先架構、雲端架構、邊緣智慧架構、安全與隱私架構、治理與宣稱邊界，以及測試與驗證框架保持一致。

---

## English Table

|Data Model Principle|Description|
|---|---|
|Unique identification|Each major entity must have a stable identifier where required|
|Layer alignment|Data entities must map to architecture layers and responsibilities|
|State consistency|Device, scene, automation, service, and system states must remain consistent|
|Permission awareness|Data access must follow user, role, service, and device permissions|
|Privacy awareness|Sensitive data must follow collection, storage, processing, sync, and retention boundaries|
|Synchronization control|Data must define whether it remains local, syncs, queues, or is cloud-required|
|Edge compatibility|Edge input and output data must be classified and bounded|
|Validation linkage|Data used for claims must link to validation evidence|
|Version control|Data entities and fields must support versioning and migration|
|Traceability|Important changes, commands, states, and evidence should be recordable where supported|

## 中文表

|數據模型原則|說明|
|---|---|
|唯一識別|需要時，每個主要實體必須具備穩定識別碼|
|層級對齊|數據實體必須映射至架構層級與責任|
|狀態一致性|設備、場景、自動化、服務與系統狀態必須保持一致|
|權限感知|數據存取必須遵循用戶、角色、服務與設備權限|
|隱私感知|敏感數據必須遵循收集、儲存、處理、同步與保留邊界|
|同步控制|數據必須定義是否保留本地、同步、排隊或必須雲端|
|Edge 相容|Edge 輸入與輸出數據必須被分類並受邊界約束|
|驗證關聯|用於宣稱的數據必須連接至驗證證據|
|版本控制|數據實體與欄位必須支援版本管理與遷移|
|可追溯性|支援條件下，重要變更、指令、狀態與證據應可被記錄|

---

## D.3 Core Entity Model

## D.3 核心實體模型

## EN

The Core Entity Model defines the major entities represented in the OceanAI system. These entities form the foundation for runtime behavior, product participation, user access, cloud synchronization, Edge processing, deployment planning, and validation.

Each entity should be defined with an identifier, type, version where applicable, ownership relationship, state, permission boundary, data residency rule, synchronization behavior, and validation status where required.

## ZH-TW

核心實體模型定義 OceanAI 系統中被表示的主要實體。這些實體構成 Runtime 行為、產品參與、用戶存取、雲端同步、Edge 處理、部署規劃與驗證的基礎。

每個實體應根據需要定義識別碼、類型、適用版本、所有權關係、狀態、權限邊界、數據駐留規則、同步行為與驗證狀態。

---

## English Table

|Entity|Description|
|---|---|
|Device|A supported physical product or component participating in the runtime system|
|Space|A physical location such as room, zone, floor, building, campus, site, field, or infrastructure area|
|User|A person or account identity interacting with the system|
|Role|A permission category defining what a user or service may access or control|
|Site|A managed deployment location such as home, classroom, office, building, campus, or infrastructure site|
|Service|A local, cloud, Edge, runtime, App, lifecycle, or support service|
|Scene|A predefined multi-device behavior executed under runtime logic|
|Automation|A conditional runtime rule based on trigger, condition, target, and action|
|Event|A generated signal or system change that may be processed by runtime|
|Command|An actionable instruction routed to a target under permission and priority rules|
|State|The current condition of an entity or system element|
|Telemetry|Reported measurement or status data from devices or services|
|Edge Output|AI-assisted interpretation, alert, recommendation, optimization signal, or validated control input|
|Validation Evidence|Recorded proof that a capability, behavior, boundary, or claim has been tested|

## 中文表

|實體|說明|
|---|---|
|Device|參與 Runtime 系統的受支援實體產品或組件|
|Space|房間、區域、樓層、建築、校園、站點、田地或基礎設施區域等物理位置|
|User|與系統互動的人或帳號身份|
|Role|定義用戶或服務可存取或控制內容的權限類別|
|Site|受管理部署位置，例如住宅、教室、辦公室、建築、校園或基礎設施站點|
|Service|本地、雲端、Edge、Runtime、App、生命週期或支援服務|
|Scene|在 Runtime 邏輯下執行的預定義多設備行為|
|Automation|基於觸發、條件、目標與動作的條件性 Runtime 規則|
|Event|可被 Runtime 處理的生成信號或系統變化|
|Command|在權限與優先級規則下路由至目標的可執行指示|
|State|某一實體或系統元素的當前條件|
|Telemetry|來自設備或服務的量測或狀態上報數據|
|Edge Output|AI 輔助解讀、警報、建議、優化信號或已驗證控制輸入|
|Validation Evidence|能力、行為、邊界或宣稱已完成測試的記錄證據|

---

## D.4 Device Data Model

## D.4 設備數據模型

## EN

The Device Data Model defines how supported devices are represented within OceanAI. A device is not only a hardware object. It is a runtime participant with identity, capability, state, connectivity, security, health, firmware, validation, and deployment relationships.

Device data must support local control, cloud synchronization, gateway access, runtime routing, security validation, product compatibility, capacity planning, and deployment validation.

## ZH-TW

設備數據模型定義受支援設備如何在 OceanAI 中被表示。設備不只是硬體物件，而是具備身份、能力、狀態、連接、安全、健康、韌體、驗證與部署關係的 Runtime 參與者。

設備數據必須支援本地控制、雲端同步、網關接入、Runtime 路由、安全驗證、產品相容性、容量規劃與部署驗證。

---

## English Table

|Field|Description|
|---|---|
|Device ID|Unique device identifier|
|Product Type|Hub, Gate, Sync, Switch, Panel, Act, Sense, Vision, App-related device, or supported component|
|Product Name|Commercial or internal product name|
|Model Number|Product model or variant identifier|
|Hardware Version|Physical hardware revision|
|Firmware Version|Installed firmware version|
|Runtime Role|Interaction, sensing, execution, gateway, synchronization, runtime center, or service role|
|Capability Profile|Supported functions and limits|
|Connectivity Type|Wi-Fi, Ethernet, BLE Mesh, Wi-Fi Mesh, IR, RF, wired, or variant-specific path|
|Assigned Space|Room, zone, building, site, or other spatial assignment|
|Binding Status|Account, user, site, organization, or deployment association|
|Security Identity|Credential, token, certificate, key, or authentication profile where implemented|
|Health Status|Online, offline, degraded, error, updating, unbound, disabled, unsupported, or unknown|
|Last Seen|Most recent communication timestamp|
|Validation Status|Tested, untested, partially tested, approved, deprecated, or unsupported|

## 中文表

|欄位|說明|
|---|---|
|Device ID|唯一設備識別碼|
|Product Type|Hub、Gate、Sync、Switch、Panel、Act、Sense、Vision、App 相關設備或受支援組件|
|Product Name|商業或內部產品名稱|
|Model Number|產品型號或版本識別|
|Hardware Version|實體硬體版本|
|Firmware Version|已安裝韌體版本|
|Runtime Role|互動、感知、執行、網關、同步、Runtime 中心或服務角色|
|Capability Profile|受支援功能與限制|
|Connectivity Type|Wi-Fi、Ethernet、BLE Mesh、Wi-Fi Mesh、IR、RF、有線或依版本路徑|
|Assigned Space|房間、區域、建築、站點或其他空間歸屬|
|Binding Status|帳號、用戶、站點、組織或部署關聯|
|Security Identity|已實作條件下的憑證、Token、證書、金鑰或身份認證配置|
|Health Status|在線、離線、降級、錯誤、更新中、未綁定、已停用、不支援或未知|
|Last Seen|最近通訊時間戳|
|Validation Status|已測、未測、部分測試、已核准、退役中或不支援|

---

## D.5 Space Data Model

## D.5 空間數據模型

## EN

The Space Data Model defines how physical environments are represented. OceanAI is designed for spatial systems, so spaces must be modeled as structured entities rather than simple labels.

A space may represent a room, zone, floor, building, campus, site, agricultural field, infrastructure area, or operational region. Space data supports device grouping, user permissions, automation scope, scene scope, deployment validation, privacy boundaries, and multi-site management.

## ZH-TW

空間數據模型定義物理環境如何被表示。OceanAI 面向空間系統設計，因此空間必須被建模為結構化實體，而不是簡單標籤。

空間可表示房間、區域、樓層、建築、校園、站點、農業田地、基礎設施區域或運行區域。空間數據支援設備分組、用戶權限、自動化範圍、場景範圍、部署驗證、隱私邊界與多站點管理。

---

## English Table

|Field|Description|
|---|---|
|Space ID|Unique spatial identifier|
|Space Type|Room, zone, floor, building, campus, site, field, facility, or infrastructure area|
|Space Name|User-facing or operational name|
|Parent Space|Higher-level spatial entity|
|Child Spaces|Spaces contained within this space|
|Assigned Devices|Devices associated with the space|
|User Access Scope|Users or roles allowed to access or control this space|
|Scene Scope|Scenes associated with the space|
|Automation Scope|Automations associated with the space|
|Privacy Scope|Privacy rules applicable to this space|
|Security Scope|Security rules applicable to this space|
|Deployment Type|Residential, classroom, office, building, campus, energy, vision-aware, agriculture, or infrastructure|
|Capacity Boundary|Supported device count, users, events, scenes, or automations within the space|
|Validation Status|Deployment or space-level validation status|

## 中文表

|欄位|說明|
|---|---|
|Space ID|唯一空間識別碼|
|Space Type|房間、區域、樓層、建築、校園、站點、田地、設施或基礎設施區域|
|Space Name|面向用戶或運行管理的名稱|
|Parent Space|上層空間實體|
|Child Spaces|該空間包含的子空間|
|Assigned Devices|關聯至該空間的設備|
|User Access Scope|被允許存取或控制該空間的用戶或角色|
|Scene Scope|與該空間關聯的場景|
|Automation Scope|與該空間關聯的自動化|
|Privacy Scope|適用於該空間的隱私規則|
|Security Scope|適用於該空間的安全規則|
|Deployment Type|住宅、教室、辦公、建築、校園、能源、視覺感知、農業或基礎設施|
|Capacity Boundary|該空間內受支援設備數、用戶數、事件數、場景數或自動化數|
|Validation Status|部署或空間級驗證狀態|

---

## D.6 User and Role Data Model

## D.6 用戶與角色數據模型

## EN

The User and Role Data Model defines how people, accounts, organizations, permissions, and access scopes are represented. It supports local access, remote access, App behavior, cloud services, installer access, support access, audit records, and multi-site management.

User and role data must follow authentication, authorization, privacy, account binding, role-based access control, and revocation requirements.

## ZH-TW

用戶與角色數據模型定義人、帳號、組織、權限與存取範圍如何被表示。它支援本地存取、遠端存取、App 行為、雲端服務、安裝方存取、支援存取、審計記錄與多站點管理。

用戶與角色數據必須遵循身份認證、授權、隱私、帳號綁定、角色權限控制與撤銷要求。

---

## English Table

|Field|Description|
|---|---|
|User ID|Unique user or account identifier|
|Account Type|Individual, household, organization, installer, support, or service account|
|Role|Owner, Admin, User, Installer, Guest, Support, Organization Manager, Service Operator, Edge Operator, or Auditor|
|Permission Scope|Devices, spaces, sites, services, or functions the user may access|
|Site Association|Home, classroom, building, campus, organization, or infrastructure site relationship|
|Authentication Status|Authenticated, unauthenticated, expired, revoked, or pending|
|Access Method|Local App, remote App, Panel, cloud console, service tool, or support interface|
|Session Status|Active, expired, revoked, limited, or unknown|
|Privacy Consent|User permission or consent status where applicable|
|Audit Requirement|Whether user actions require audit logging|
|Revocation Status|Whether access has been removed, limited, or suspended|
|Last Activity|Most recent user or account activity timestamp|

## 中文表

|欄位|說明|
|---|---|
|User ID|唯一用戶或帳號識別碼|
|Account Type|個人、家庭、組織、安裝方、支援或服務帳號|
|Role|Owner、Admin、User、Installer、Guest、Support、Organization Manager、Service Operator、Edge Operator 或 Auditor|
|Permission Scope|用戶可存取的設備、空間、站點、服務或功能|
|Site Association|與住宅、教室、建築、校園、組織或基礎設施站點的關係|
|Authentication Status|已認證、未認證、已過期、已撤銷或待處理|
|Access Method|本地 App、遠端 App、Panel、雲端控制台、服務工具或支援介面|
|Session Status|啟用、已過期、已撤銷、受限或未知|
|Privacy Consent|適用時的用戶權限或同意狀態|
|Audit Requirement|用戶動作是否需要審計記錄|
|Revocation Status|存取是否已被移除、限制或暫停|
|Last Activity|最近用戶或帳號活動時間戳|

---

## D.7 Event Data Model

## D.7 事件數據模型

## EN

The Event Data Model defines how system events are represented. Events may originate from devices, users, sensors, cloud services, Edge intelligence, runtime processes, lifecycle services, or failure detection.

Events must include enough metadata to support routing, permission checks, priority handling, state updates, synchronization, auditability, and validation.

## ZH-TW

事件數據模型定義系統事件如何被表示。事件可來自設備、用戶、感測器、雲端服務、Edge 智慧、Runtime 流程、生命週期服務或故障偵測。

事件必須包含足夠元數據，以支援路由、權限檢查、優先級處理、狀態更新、同步、可審計性與驗證。

---

## English Table

|Field|Description|
|---|---|
|Event ID|Unique event identifier|
|Event Type|User, device, sensor, vision, execution, system, cloud, Edge, security, privacy, lifecycle, or failure event|
|Source ID|Device, user, service, cloud, Edge, or runtime source|
|Source Layer|Cloud, Edge, Local Runtime, Device Access, Interaction, Sensing, Execution, or Device Participation|
|Timestamp|Event generation time|
|Priority|Runtime priority category|
|Payload|Event-specific data|
|Related Space|Room, zone, site, or deployment context|
|Related Device|Associated device or device group|
|Security Metadata|Authentication, permission, or trust information where required|
|Privacy Classification|Sensitivity category and data handling requirement|
|Validation Status|Whether the event type has been validated|
|Handling Result|Processed, ignored, rejected, queued, failed, degraded, or completed|

## 中文表

|欄位|說明|
|---|---|
|Event ID|唯一事件識別碼|
|Event Type|用戶、設備、感測、視覺、執行、系統、雲端、Edge、安全、隱私、生命週期或故障事件|
|Source ID|設備、用戶、服務、雲端、Edge 或 Runtime 來源|
|Source Layer|雲端、Edge、本地 Runtime、設備接入、互動、感知、執行或設備參與層|
|Timestamp|事件生成時間|
|Priority|Runtime 優先級類別|
|Payload|事件特定數據|
|Related Space|房間、區域、站點或部署上下文|
|Related Device|關聯設備或設備群組|
|Security Metadata|需要時的身份認證、權限或信任資訊|
|Privacy Classification|敏感性類別與數據處理要求|
|Validation Status|該事件類型是否已驗證|
|Handling Result|已處理、忽略、拒絕、排隊、失敗、降級或完成|

---

## D.8 Command Data Model

## D.8 指令數據模型

## EN

The Command Data Model defines how actionable instructions are represented. Commands may originate from local manual control, automation, scenes, cloud services, Edge-assisted logic, lifecycle services, or system recovery processes.

Commands must be permission-aware, priority-aware, capability-aware, safety-aware, and traceable. A command should not be considered valid unless it can be routed to a supported target under defined conditions.

## ZH-TW

指令數據模型定義可執行指示如何被表示。指令可來自本地手動控制、自動化、場景、雲端服務、Edge 輔助邏輯、生命週期服務或系統恢復流程。

指令必須具備權限意識、優先級意識、能力意識、安全意識與可追溯性。除非指令可在明確條件下路由至受支援目標，否則不應被視為有效。

---

## English Table

|Field|Description|
|---|---|
|Command ID|Unique command identifier|
|Command Type|Control, scene, automation, configuration, lifecycle, sync, diagnostic, safety, or recovery command|
|Source ID|User, App, Panel, Switch, Cloud, Edge, Runtime, automation, or service source|
|Target ID|Device, scene, automation, service, space, group, or system target|
|Target Layer|Local Runtime, Device Access, Execution, Cloud, Edge, or Service layer|
|Parameters|Command-specific values or settings|
|Priority|Runtime priority category|
|Permission Status|Allowed, denied, pending, limited, or unknown|
|Capability Check|Supported, unsupported, partial, or unknown|
|Safety Check|Passed, failed, overridden, or not applicable|
|Routing Path|Local, gateway, cloud, Edge, service, or hybrid path|
|Execution Status|Pending, executing, completed, failed, rejected, queued, delayed, or degraded|
|Result|Execution result or response|
|Trace Record|Related log, event, validation, or audit reference|

## 中文表

|欄位|說明|
|---|---|
|Command ID|唯一指令識別碼|
|Command Type|控制、場景、自動化、配置、生命週期、同步、診斷、安全或恢復指令|
|Source ID|用戶、App、Panel、Switch、Cloud、Edge、Runtime、自動化或服務來源|
|Target ID|設備、場景、自動化、服務、空間、群組或系統目標|
|Target Layer|本地 Runtime、設備接入、執行、雲端、Edge 或服務層|
|Parameters|指令特定數值或設定|
|Priority|Runtime 優先級類別|
|Permission Status|允許、拒絕、待處理、受限或未知|
|Capability Check|支援、不支援、部分支援或未知|
|Safety Check|通過、失敗、被覆蓋或不適用|
|Routing Path|本地、網關、雲端、Edge、服務或混合路徑|
|Execution Status|待處理、執行中、完成、失敗、拒絕、排隊、延遲或降級|
|Result|執行結果或回應|
|Trace Record|關聯日誌、事件、驗證或審計參考|

---

## D.9 State Data Model

## D.9 狀態數據模型

## EN

The State Data Model defines how the current condition of system entities is represented. State may apply to devices, spaces, scenes, automations, services, users, cloud connection, Edge processing, network paths, and the system as a whole.

State data must remain consistent across Local Runtime, App, Cloud, Edge, and supported device views. State inconsistency must be handled through defined synchronization, conflict resolution, freshness, and recovery rules.

## ZH-TW

狀態數據模型定義系統實體的當前條件如何被表示。狀態可適用於設備、空間、場景、自動化、服務、用戶、雲端連接、Edge 處理、網路路徑與整個系統。

狀態數據必須在 Local Runtime、App、Cloud、Edge 與受支援設備視圖之間保持一致。狀態不一致必須透過已定義同步、衝突解決、新鮮度與恢復規則處理。

---

## English Table

|Field|Description|
|---|---|
|State ID|Unique state record identifier|
|Entity Type|Device, space, scene, automation, service, user, cloud, Edge, network, or system|
|Entity ID|Related entity identifier|
|State Type|Operational, health, connectivity, security, privacy, lifecycle, runtime, or deployment state|
|State Value|Current state value|
|Previous State|Prior state value where recorded|
|Timestamp|Time of state update|
|Freshness|Current, stale, expired, unknown, or estimated|
|Source|Device, runtime, cloud, Edge, App, user, automation, or service|
|Sync Status|Local-only, synced, pending sync, conflict, failed sync, or not synchronized|
|Conflict Status|None, detected, resolved, unresolved, or requires review|
|Visibility Scope|User, admin, installer, support, service, or restricted visibility|
|Validation Status|Whether state behavior has been validated|

## 中文表

|欄位|說明|
|---|---|
|State ID|唯一狀態記錄識別碼|
|Entity Type|設備、空間、場景、自動化、服務、用戶、雲端、Edge、網路或系統|
|Entity ID|關聯實體識別碼|
|State Type|運行、健康、連接、安全、隱私、生命週期、Runtime 或部署狀態|
|State Value|當前狀態值|
|Previous State|已記錄條件下的先前狀態值|
|Timestamp|狀態更新時間|
|Freshness|當前、新鮮度不足、過期、未知或估算|
|Source|設備、Runtime、雲端、Edge、App、用戶、自動化或服務|
|Sync Status|僅本地、已同步、待同步、衝突、同步失敗或不同步|
|Conflict Status|無、已偵測、已解決、未解決或需審查|
|Visibility Scope|用戶、管理員、安裝方、支援、服務或受限制可視範圍|
|Validation Status|狀態行為是否已驗證|

---

## D.10 Telemetry Data Model

## D.10 遙測數據模型

## EN

The Telemetry Data Model defines measurement and reporting data from devices, sensors, execution nodes, gateways, runtime services, cloud services, and Edge systems.

Telemetry may include temperature, humidity, light, occupancy, motion, voltage, current, power, energy, relay state, device health, network signal, message latency, model latency, storage status, or other supported measurements.

Telemetry data must be classified according to accuracy, freshness, sampling interval, unit, source, privacy sensitivity, synchronization behavior, and validation status.

## ZH-TW

遙測數據模型定義來自設備、感測器、執行節點、網關、Runtime 服務、雲端服務與 Edge 系統的量測與上報數據。

遙測可包括溫度、濕度、光照、人在、移動、電壓、電流、功率、電能、繼電器狀態、設備健康、網路信號、消息延遲、模型延遲、儲存狀態或其他受支援量測。

遙測數據必須依準確性、新鮮度、取樣間隔、單位、來源、隱私敏感性、同步行為與驗證狀態進行分類。

---

## English Table

|Field|Description|
|---|---|
|Telemetry ID|Unique telemetry record identifier|
|Source ID|Device, service, Edge, cloud, or runtime source|
|Telemetry Type|Environmental, energy, visual, network, health, runtime, Edge, or system telemetry|
|Measurement Name|Temperature, humidity, light, current, voltage, power, occupancy, latency, or other supported measurement|
|Value|Reported measurement value|
|Unit|Unit of measurement|
|Timestamp|Measurement time|
|Sampling Interval|Reporting or measurement interval|
|Accuracy Class|Stated accuracy or validation class where applicable|
|Freshness|Current, stale, expired, unknown, or estimated|
|Privacy Classification|Sensitivity and handling category|
|Sync Status|Local-only, synced, queued, permission-based, or non-synchronized|
|Validation Status|Whether measurement behavior has been validated|

## 中文表

|欄位|說明|
|---|---|
|Telemetry ID|唯一遙測記錄識別碼|
|Source ID|設備、服務、Edge、雲端或 Runtime 來源|
|Telemetry Type|環境、能源、視覺、網路、健康、Runtime、Edge 或系統遙測|
|Measurement Name|溫度、濕度、光照、電流、電壓、功率、人在、延遲或其他受支援量測|
|Value|上報量測值|
|Unit|量測單位|
|Timestamp|量測時間|
|Sampling Interval|上報或量測間隔|
|Accuracy Class|適用時的標稱準確性或驗證等級|
|Freshness|當前、新鮮度不足、過期、未知或估算|
|Privacy Classification|敏感性與處理類別|
|Sync Status|僅本地、已同步、排隊、基於權限或不同步|
|Validation Status|量測行為是否已驗證|

---

## D.11 Scene and Automation Data Model

## D.11 場景與自動化數據模型

## EN

The Scene and Automation Data Model defines how coordinated behaviors are represented. Scenes describe predefined multi-device actions. Automations describe conditional runtime rules.

Both scenes and automations must include trigger, condition, target, action, permission, priority, failure behavior, validation status, and version information where required.

## ZH-TW

場景與自動化數據模型定義協同行為如何被表示。場景描述預定義多設備動作。自動化描述條件性 Runtime 規則。

場景與自動化都必須根據需要包含觸發、條件、目標、動作、權限、優先級、故障行為、驗證狀態與版本資訊。

---

## English Table

|Field|Description|
|---|---|
|Behavior ID|Unique scene or automation identifier|
|Behavior Type|Scene or automation|
|Name|User-facing or internal behavior name|
|Trigger|User action, time, event, sensor value, state change, cloud request, or Edge output|
|Conditions|Required conditions before execution|
|Target List|Devices, groups, spaces, services, or scenes affected|
|Action List|Commands or behaviors to execute|
|Execution Mode|Sequential, parallel, conditional, delayed, scheduled, or hybrid|
|Priority|Runtime priority category|
|Permission Scope|Roles or users allowed to create, modify, or execute|
|Failure Behavior|Retry, skip, partial, reject, degrade, queue, or stop|
|State|Enabled, disabled, active, inactive, executing, failed, degraded, or completed|
|Validation Status|Tested, untested, partially tested, approved, deprecated, or unsupported|
|Version|Behavior definition version|

## 中文表

|欄位|說明|
|---|---|
|Behavior ID|唯一場景或自動化識別碼|
|Behavior Type|場景或自動化|
|Name|面向用戶或內部行為名稱|
|Trigger|用戶動作、時間、事件、感測值、狀態變化、雲端請求或 Edge 輸出|
|Conditions|執行前必須滿足的條件|
|Target List|受影響設備、群組、空間、服務或場景|
|Action List|要執行的指令或行為|
|Execution Mode|依序、並行、條件、延遲、排程或混合|
|Priority|Runtime 優先級類別|
|Permission Scope|可建立、修改或執行的角色或用戶|
|Failure Behavior|重試、跳過、部分完成、拒絕、降級、排隊或停止|
|State|啟用、停用、作用中、未作用、執行中、失敗、降級或完成|
|Validation Status|已測、未測、部分測試、已核准、退役中或不支援|
|Version|行為定義版本|

---

## D.12 Cloud Synchronization Data Model

## D.12 雲端同步數據模型

## EN

The Cloud Synchronization Data Model defines how selected data synchronizes between Local Runtime, Cloud services, App interfaces, Edge services, and supported components.

Synchronization must be selective and policy-driven. Each synchronized data type must define eligibility, permission, direction, conflict handling, retry behavior, retention, and privacy requirements.

## ZH-TW

雲端同步數據模型定義特定數據如何在 Local Runtime、雲端服務、App 介面、Edge 服務與受支援組件之間同步。

同步必須是選擇性且由政策驅動。每一類同步數據都必須定義同步資格、權限、方向、衝突處理、重試行為、保留與隱私要求。

---

## English Table

|Field|Description|
|---|---|
|Sync Record ID|Unique synchronization record identifier|
|Data Type|State, configuration, log, lifecycle, account, telemetry, alert, history, or validation data|
|Source Location|Local Runtime, Cloud, Edge, App, service, or device|
|Destination Location|Local Runtime, Cloud, Edge, App, service, or device|
|Sync Direction|Local-to-cloud, cloud-to-local, bidirectional, Edge-to-local, local-to-App, or other supported path|
|Sync Mode|Immediate, delayed, queued, permission-based, scheduled, or non-synchronized|
|Permission Requirement|Required role, account, site, privacy, or policy permission|
|Conflict Rule|Local wins, cloud wins, latest wins, manual review, merge, or reject|
|Retry Policy|Retry count, interval, expiration, or failure behavior|
|Privacy Classification|Sensitivity and handling category|
|Retention Policy|How long synchronized data is stored|
|Sync Status|Pending, synced, failed, queued, delayed, conflict, rejected, or expired|

## 中文表

|欄位|說明|
|---|---|
|Sync Record ID|唯一同步記錄識別碼|
|Data Type|狀態、配置、日誌、生命週期、帳號、遙測、警報、歷史或驗證數據|
|Source Location|Local Runtime、Cloud、Edge、App、服務或設備|
|Destination Location|Local Runtime、Cloud、Edge、App、服務或設備|
|Sync Direction|本地至雲端、雲端至本地、雙向、Edge 至本地、本地至 App 或其他受支援路徑|
|Sync Mode|立即、延遲、排隊、基於權限、排程或不同步|
|Permission Requirement|所需角色、帳號、站點、隱私或政策權限|
|Conflict Rule|本地優先、雲端優先、最新優先、人工審查、合併或拒絕|
|Retry Policy|重試次數、間隔、過期或失敗行為|
|Privacy Classification|敏感性與處理類別|
|Retention Policy|同步數據儲存時長|
|Sync Status|待處理、已同步、失敗、排隊、延遲、衝突、拒絕或過期|

---

## D.13 Edge Output Data Model

## D.13 Edge 輸出數據模型

## EN

The Edge Output Data Model defines how AI-assisted results are represented. Edge output may include interpretation, detection, classification, alert, recommendation, summary, optimization signal, or validated control input.

Edge output must be classified before it can influence runtime behavior. It must include model version, input source, output type, confidence where applicable, privacy classification, runtime influence, validation status, and failure handling.

## ZH-TW

Edge 輸出數據模型定義 AI 輔助結果如何被表示。Edge 輸出可包括解讀、偵測、分類、警報、建議、摘要、優化信號或已驗證控制輸入。

Edge 輸出在影響 Runtime 行為之前必須先被分類。它必須包含模型版本、輸入來源、輸出類型、適用時的可信度、隱私分類、Runtime 影響、驗證狀態與故障處理。

---

## English Table

|Field|Description|
|---|---|
|Edge Output ID|Unique Edge output identifier|
|Edge Source ID|Edge device, service, or model source|
|Model Name|AI model or processing module name|
|Model Version|Model version identifier|
|Input Source|Vision, Sense, device state, telemetry, runtime context, historical data, or user-approved context|
|Output Type|Interpretation, detection, classification, alert, recommendation, summary, optimization signal, or control input|
|Confidence|Confidence score or qualitative confidence where applicable|
|Timestamp|Output generation time|
|Privacy Classification|Sensitivity and processing boundary|
|Runtime Influence|None, display only, recommendation, rule input, alert input, or validated control input|
|Permission Requirement|Required role, user consent, policy, or service permission|
|Validation Status|Tested, untested, partially tested, approved, deprecated, or unsupported|
|Fallback Behavior|Behavior when Edge output is missing, delayed, invalid, or rejected|

## 中文表

|欄位|說明|
|---|---|
|Edge Output ID|唯一 Edge 輸出識別碼|
|Edge Source ID|Edge 設備、服務或模型來源|
|Model Name|AI 模型或處理模組名稱|
|Model Version|模型版本識別|
|Input Source|Vision、Sense、設備狀態、遙測、Runtime 上下文、歷史數據或用戶授權上下文|
|Output Type|解讀、偵測、分類、警報、建議、摘要、優化信號或控制輸入|
|Confidence|適用時的可信度分數或定性可信度|
|Timestamp|輸出生成時間|
|Privacy Classification|敏感性與處理邊界|
|Runtime Influence|無、僅顯示、建議、規則輸入、警報輸入或已驗證控制輸入|
|Permission Requirement|所需角色、用戶同意、政策或服務權限|
|Validation Status|已測、未測、部分測試、已核准、退役中或不支援|
|Fallback Behavior|Edge 輸出缺失、延遲、無效或被拒絕時的行為|

---

## D.14 Health and Failure Data Model

## D.14 健康與故障數據模型

## EN

The Health and Failure Data Model defines how system health, degradation, error, failure, and recovery conditions are represented.

Health data is necessary for runtime reliability, user feedback, deployment validation, support diagnostics, cloud monitoring, Edge fallback, and claim boundaries.

## ZH-TW

健康與故障數據模型定義系統健康、降級、錯誤、故障與恢復條件如何被表示。

健康數據對 Runtime 可靠性、用戶回饋、部署驗證、支援診斷、雲端監測、Edge 回退與宣稱邊界都是必要的。

---

## English Table

|Field|Description|
|---|---|
|Health Record ID|Unique health or failure record identifier|
|Entity Type|Device, service, runtime, cloud, Edge, network, storage, App, or system|
|Entity ID|Related entity identifier|
|Health Status|Online, offline, degraded, error, updating, unbound, disabled, unsupported, unknown, or recovering|
|Failure Type|Connectivity, power, firmware, software, cloud, Edge, storage, security, privacy, capacity, or runtime failure|
|Severity|Info, warning, degraded, critical, or emergency|
|Detection Time|Time when condition was detected|
|Affected Functions|Functions impacted by the condition|
|Failure Behavior|Continue, stop, degrade, queue, retry, reject, or fail-safe|
|Recovery Status|Not started, in progress, recovered, failed, partial, or requires manual action|
|User Visibility|Hidden, user-visible, admin-visible, support-visible, or audit-only|
|Log Reference|Related event, command, runtime, or support log|
|Validation Requirement|Whether failure behavior has been validated|

## 中文表

|欄位|說明|
|---|---|
|Health Record ID|唯一健康或故障記錄識別碼|
|Entity Type|設備、服務、Runtime、雲端、Edge、網路、儲存、App 或系統|
|Entity ID|關聯實體識別碼|
|Health Status|在線、離線、降級、錯誤、更新中、未綁定、已停用、不支援、未知或恢復中|
|Failure Type|連接、供電、韌體、軟體、雲端、Edge、儲存、安全、隱私、容量或 Runtime 故障|
|Severity|資訊、警告、降級、嚴重或緊急|
|Detection Time|條件被偵測時間|
|Affected Functions|受該條件影響的功能|
|Failure Behavior|繼續、停止、降級、排隊、重試、拒絕或故障安全|
|Recovery Status|未開始、進行中、已恢復、失敗、部分恢復或需要人工操作|
|User Visibility|隱藏、用戶可見、管理員可見、支援可見或僅審計|
|Log Reference|關聯事件、指令、Runtime 或支援日誌|
|Validation Requirement|該故障行為是否已驗證|

---

## D.15 Validation Evidence Data Model

## D.15 驗證證據數據模型

## EN

The Validation Evidence Data Model defines how evidence is represented when a capability, behavior, boundary, deployment, or claim has been tested.

Validation evidence must be specific enough to support future review. It must connect to the tested requirement, related component, version condition, test environment, result, boundary, reviewer, approval status, and claim linkage.

## ZH-TW

驗證證據數據模型定義當某一能力、行為、邊界、部署或宣稱完成測試後，證據如何被表示。

驗證證據必須足夠具體，以支持未來審查。它必須連接至被測要求、關聯組件、版本條件、測試環境、結果、邊界、審查人、核准狀態與宣稱關聯。

---

## English Table

|Field|Description|
|---|---|
|Evidence ID|Unique validation evidence identifier|
|Related Requirement|Requirement, behavior, boundary, or claim supported by evidence|
|Related Component|Device, service, runtime, cloud, Edge, deployment, data model, or architecture layer|
|Version Condition|Hardware, firmware, software, runtime, cloud, Edge model, or document version|
|Test Environment|Network, load, site, device count, configuration, deployment, and environmental condition|
|Test Method|Manual, automated, simulation, field test, lab test, certification test, or audit review|
|Expected Result|Defined pass condition|
|Actual Result|Observed behavior or measurement|
|Evidence File|Report, log, screenshot, video, record, certificate, measurement, or audit file|
|Boundary Statement|Conditions under which evidence applies|
|Reviewer|Person or role responsible for review|
|Approval Status|Draft, reviewed, approved, final, superseded, or archived|
|Claim Linkage|Related engineering or commercial claim supported by evidence|

## 中文表

|欄位|說明|
|---|---|
|Evidence ID|唯一驗證證據識別碼|
|Related Requirement|證據支持的要求、行為、邊界或宣稱|
|Related Component|設備、服務、Runtime、雲端、Edge、部署、數據模型或架構層|
|Version Condition|硬體、韌體、軟體、Runtime、雲端、Edge 模型或文件版本|
|Test Environment|網路、負載、站點、設備數、配置、部署與環境條件|
|Test Method|手動、自動化、模擬、現場測試、實驗室測試、認證測試或審計審查|
|Expected Result|已定義通過條件|
|Actual Result|觀察行為或量測結果|
|Evidence File|報告、日誌、截圖、視頻、記錄、證書、量測或審計文件|
|Boundary Statement|證據適用條件|
|Reviewer|負責審查的人或角色|
|Approval Status|草案、已審查、已核准、最終版、已取代或已歸檔|
|Claim Linkage|證據支持的關聯工程或商業宣稱|

---

## D.16 Claim Evidence Data Model

## D.16 宣稱證據數據模型

## EN

The Claim Evidence Data Model defines how engineering and commercial claims are connected to architecture definitions, implementation status, validation evidence, approval records, and boundary language.

A claim should not exist as an isolated statement. It must be traceable to the system behavior, version condition, test evidence, and approved language that supports it.

## ZH-TW

宣稱證據數據模型定義工程與商業宣稱如何連接至架構定義、實作狀態、驗證證據、核准記錄與邊界語言。

宣稱不應作為孤立語句存在，而必須可追溯至支持它的系統行為、版本條件、測試證據與已核准語言。

---

## English Table

|Field|Description|
|---|---|
|Claim ID|Unique claim identifier|
|Claim Type|Architecture, runtime, local-first, cloud, Edge, AI, capacity, reliability, security, privacy, energy, certification, deployment, or commercial claim|
|Claim Statement|Exact claim language|
|Approved Boundary Language|Approved wording with defined conditions and limits|
|Related Architecture Section|Chapter, appendix, matrix, or model supporting the claim|
|Related Component|Device, service, layer, deployment, feature, or system behavior|
|Implementation Status|Implemented, partially implemented, planned, beta, prototype, deprecated, unsupported, or retired|
|Evidence ID|Validation evidence supporting the claim|
|Version Condition|Hardware, firmware, software, cloud, Edge, runtime, or document version|
|Approval Status|Draft, reviewed, approved, final, superseded, or rejected|
|External Use Allowed|Whether the claim may be used in website, sales, channel, product, or public materials|
|Review Date|Date for revalidation or claim review|

## 中文表

|欄位|說明|
|---|---|
|Claim ID|唯一宣稱識別碼|
|Claim Type|架構、Runtime、本地優先、雲端、Edge、AI、容量、可靠性、安全、隱私、能源、認證、部署或商業宣稱|
|Claim Statement|精確宣稱語句|
|Approved Boundary Language|已核准且包含明確條件與限制的邊界語言|
|Related Architecture Section|支持該宣稱的章節、附錄、矩陣或模型|
|Related Component|設備、服務、層級、部署、功能或系統行為|
|Implementation Status|已實作、部分實作、規劃中、Beta、原型、退役中、不支援或已退役|
|Evidence ID|支持該宣稱的驗證證據|
|Version Condition|硬體、韌體、軟體、雲端、Edge、Runtime 或文件版本|
|Approval Status|草案、已審查、已核准、最終版、已取代或已拒絕|
|External Use Allowed|該宣稱是否可用於網站、銷售、渠道、產品或公開材料|
|Review Date|重新驗證或宣稱審查日期|

---

## D.17 Data Residency and Privacy Classification

## D.17 數據駐留與隱私分類

## EN

Data residency and privacy classification define where data may exist and how sensitive it is. Each data type must be classified before storage, synchronization, sharing, or use in AI-assisted processing.

The classification should define whether data remains local, may synchronize to cloud, may be processed by Edge, may be viewed by users, may be accessed by support, may be retained, or must be deleted according to policy.

## ZH-TW

數據駐留與隱私分類定義數據可存在的位置，以及其敏感程度。每一類數據在儲存、同步、共享或用於 AI 輔助處理之前，都必須被分類。

分類應定義數據是否保留本地、是否可同步至雲端、是否可由 Edge 處理、是否可被用戶查看、是否可由支援人員存取、是否可保留，或是否必須依政策刪除。

---

## English Table

|Classification|Description|
|---|---|
|Local-only|Data remains within local runtime or Edge environment|
|Cloud-sync permitted|Data may synchronize to cloud under defined permission and policy|
|Cloud-required|Data is required for account, remote access, lifecycle, or multi-site functions|
|Edge-local processing|Data may be processed by Edge without cloud transfer where configured|
|Permission-based|Data requires explicit user, role, organization, or policy permission|
|Sensitive|Data may reveal user behavior, visual context, identity, security, or operational patterns|
|Restricted|Data requires strict access control, retention limits, and audit behavior|
|Non-synchronized|Data must not synchronize outside defined local boundary|
|Temporary|Data is retained only for short-term runtime, diagnostic, or processing purposes|
|Retained|Data may be stored according to retention policy|
|Deletable|Data supports deletion or removal where implemented|
|Audit-only|Data is retained primarily for security, validation, or accountability records|

## 中文表

|分類|說明|
|---|---|
|僅本地|數據保留於本地 Runtime 或 Edge 環境|
|允許雲端同步|數據可在明確權限與政策下同步至雲端|
|必須雲端|帳號、遠端存取、生命週期或多站點功能所需數據|
|Edge 本地處理|配置條件下，數據可由 Edge 處理且不傳輸至雲端|
|基於權限|數據需要明確用戶、角色、組織或政策權限|
|敏感|數據可能揭示用戶行為、視覺上下文、身份、安全或運行模式|
|受限制|數據需要嚴格存取控制、保留限制與審計行為|
|不同步|數據不得同步至已定義本地邊界之外|
|臨時|數據僅為短期 Runtime、診斷或處理目的保留|
|可保留|數據可依保留政策儲存|
|可刪除|已實作條件下支援刪除或移除|
|僅審計|數據主要用於安全、驗證或問責記錄|

---

## D.18 Data Model Boundary

## D.18 數據模型邊界

## EN

The Data Model Reference defines how entities and relationships should be represented, but it does not by itself confirm implementation status, database schema completion, App interface readiness, cloud service availability, Edge model support, privacy compliance, or validation completion.

A field may be architecturally required before it is implemented in every product or service. A data entity may be defined before it is synchronized across all layers. A data record may support validation only when it is linked to actual evidence.

Therefore, this appendix must be used together with product specifications, runtime implementation records, cloud service specifications, Edge model records, privacy policies, security controls, deployment documents, and validation evidence.

## ZH-TW

數據模型參考定義實體與關係應如何被表示，但其本身不確認實作狀態、資料庫 Schema 完成度、App 介面就緒度、雲端服務可用性、Edge 模型支援、隱私合規或驗證完成。

某一欄位可以在架構上被要求，但尚未於每個產品或服務中實作。某一數據實體可以在尚未跨所有層同步前被定義。某一數據記錄只有在連接至實際證據時，才可支持驗證。

因此，本附錄必須與產品規格書、Runtime 實作記錄、雲端服務規格、Edge 模型記錄、隱私政策、安全控制、部署文件與驗證證據一起使用。

---

## English Table

|Data Model Can Define|Data Model Cannot Confirm|
|---|---|
|Entity structure|Actual database implementation|
|Field meaning|Product implementation completion|
|Data relationship|Cloud service availability|
|Runtime data requirement|App interface readiness|
|Synchronization category|Sync validation by itself|
|Privacy classification|Privacy compliance without policy and validation|
|Validation evidence structure|Actual validation completion|
|Claim evidence linkage|Claim approval without evidence review|
|Version migration need|Migration success without testing|

## 中文表

|數據模型可以定義|數據模型不能確認|
|---|---|
|實體結構|實際資料庫實作|
|欄位語義|產品實作完成|
|數據關係|雲端服務可用性|
|Runtime 數據要求|App 介面就緒|
|同步類別|同步已驗證本身|
|隱私分類|缺少政策與驗證的隱私合規|
|驗證證據結構|實際驗證完成|
|宣稱證據關聯|未經證據審查的宣稱核准|
|版本遷移需求|未經測試的遷移成功|

---

## D.19 Appendix Conclusion

## D.19 附錄結論

## EN

This appendix defines the Data Model Reference for the OceanAI System Architecture Specification. It provides structured references for core entities, devices, spaces, users, roles, events, commands, states, telemetry, scenes, automations, synchronization, Edge outputs, health records, validation evidence, claim evidence, and privacy classification.

The data model reinforces OceanAI’s role as a system-level intelligence architecture. It ensures that physical devices, spatial environments, runtime behavior, cloud services, Edge intelligence, security, privacy, deployment, validation, and commercial claims can be represented consistently and governed across the system lifecycle.

## ZH-TW

本附錄定義《OceanAI 系統架構規格書》的數據模型參考，為核心實體、設備、空間、用戶、角色、事件、指令、狀態、遙測、場景、自動化、同步、Edge 輸出、健康記錄、驗證證據、宣稱證據與隱私分類提供結構化參考。

數據模型強化 OceanAI 作為系統級智慧架構的角色，確保實體設備、空間環境、Runtime 行為、雲端服務、Edge 智慧、安全、隱私、部署、驗證與商業宣稱能夠在系統生命週期中被一致表示並受到治理。