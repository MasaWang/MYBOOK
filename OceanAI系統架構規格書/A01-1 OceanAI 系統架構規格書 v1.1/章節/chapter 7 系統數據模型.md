# 7. System Data Model

# 7. 系統數據模型

---

## 7.1 Purpose

## 7.1 目的

## EN

This chapter defines the System Data Model of OceanAI. The System Data Model describes how devices, spaces, users, roles, services, configurations, capabilities, health states, and validation records are represented inside the OceanAI architecture.

The purpose of the System Data Model is to provide a consistent structure for runtime behavior, cloud synchronization, Edge-assisted interpretation, security control, privacy management, deployment planning, validation, and future architecture evolution.

Without a consistent data model, devices may be connected but not coordinated. A system-level intelligence architecture requires structured representations of what exists, where it exists, who may access it, what it can do, what state it is in, and under what conditions its behavior has been validated.

## ZH-TW

本章定義 OceanAI 的系統數據模型。系統數據模型描述設備、空間、用戶、角色、服務、配置、能力、健康狀態與驗證記錄如何在 OceanAI 架構中被表示。

系統數據模型的目的，是為 Runtime 行為、雲端同步、Edge 輔助解讀、安全控制、隱私管理、部署規劃、驗證與未來架構演進提供一致結構。

如果沒有一致的數據模型，設備可能已經連接，但並不一定能形成協同。系統級智慧架構需要結構化地表示：什麼存在、存在於何處、誰可以存取、它能做什麼、目前處於什麼狀態，以及它的行為在什麼條件下已被驗證。

---

## English Table

|Data Model Area|Description|
|---|---|
|Device Model|Defines how supported devices are represented|
|Space Model|Defines rooms, areas, zones, buildings, campuses, and sites|
|User and Role Model|Defines users, permissions, roles, and access relationships|
|Service Model|Defines runtime, cloud, Edge, synchronization, and lifecycle services|
|Configuration Model|Defines system, device, scene, automation, and deployment configuration|
|Capability Model|Defines what each device, service, or component can support|
|Health Model|Defines online, offline, degraded, error, updating, and disabled states|
|Validation Data Model|Defines how test evidence and claim support are recorded|

## 中文表

|數據模型領域|說明|
|---|---|
|設備模型|定義受支援設備如何被表示|
|空間模型|定義房間、區域、分區、建築、校園與站點|
|用戶與角色模型|定義用戶、權限、角色與存取關係|
|服務模型|定義 Runtime、雲端、Edge、同步與生命週期服務|
|配置模型|定義系統、設備、場景、自動化與部署配置|
|能力模型|定義每個設備、服務或組件可支援什麼|
|健康狀態模型|定義在線、離線、降級、錯誤、更新中與已停用狀態|
|驗證數據模型|定義測試證據與宣稱支持如何被記錄|

---

## 7.2 System Data Model Definition

## 7.2 系統數據模型定義

## EN

The System Data Model is the structured representation layer of OceanAI. It defines the entities, relationships, states, capabilities, permissions, configurations, and validation records required for the architecture to operate as a coordinated system.

The data model is not only a database structure. It is an architectural contract. It determines how runtime services understand devices, how the cloud synchronizes selected information, how Edge intelligence receives context, how the App displays system state, how permissions are enforced, and how validation evidence is connected to claims.

The System Data Model must remain consistent across local runtime, cloud services, Edge processing, App interfaces, deployment tools, testing records, and product specifications.

## ZH-TW

系統數據模型是 OceanAI 的結構化表示層。它定義架構作為協同系統運作所需的實體、關係、狀態、能力、權限、配置與驗證記錄。

數據模型不只是資料庫結構，而是一份架構契約。它決定 Runtime 服務如何理解設備、雲端如何同步特定資訊、Edge 智慧如何接收上下文、App 如何顯示系統狀態、權限如何被執行，以及驗證證據如何與宣稱相連。

系統數據模型必須在本地 Runtime、雲端服務、Edge 處理、App 介面、部署工具、測試記錄與產品規格書之間保持一致。

---

## English Table

|Data Model Principle|Description|
|---|---|
|Structured representation|All system entities must have defined representations|
|Runtime usability|Runtime services must be able to process entities, states, and commands|
|Synchronization readiness|Selected data must be structured for local-cloud synchronization|
|Edge context readiness|Context data must be usable by Edge-assisted interpretation where deployed|
|Security alignment|Data access must follow identity, role, and permission rules|
|Privacy alignment|Sensitive data must follow collection, storage, processing, and retention rules|
|Validation traceability|Claims and behavior should connect to evidence records where applicable|
|Evolution support|Data structures should support versioning and compatibility|

## 中文表

|數據模型原則|說明|
|---|---|
|結構化表示|所有系統實體都必須有已定義表示方式|
|Runtime 可用性|Runtime 服務必須能處理實體、狀態與指令|
|同步準備|特定數據必須具備本地—雲端同步結構|
|Edge 上下文準備|部署 Edge 時，上下文數據必須可被 Edge 輔助解讀使用|
|安全對齊|數據存取必須遵循身份、角色與權限規則|
|隱私對齊|敏感數據必須遵循收集、儲存、處理與保留規則|
|驗證可追溯|適用時，宣稱與行為應連接至證據記錄|
|演進支援|數據結構應支援版本管理與相容性|

---

## 7.3 Device Model

## 7.3 設備模型

## EN

The Device Model defines how a supported physical or virtual device is represented inside OceanAI. A device is not only identified by its product name. It must also be represented by its identity, type, model, firmware version, hardware version, assigned space, state, capability, connectivity, security identity, health status, and validation status.

The Device Model enables runtime services to route commands, process events, evaluate automations, display status, enforce permissions, synchronize data, and determine whether a device may participate in a specific behavior.

A device may act as an interaction participant, sensing participant, execution participant, synchronization participant, access participant, or runtime service participant depending on its type and capability.

## ZH-TW

設備模型定義受支援實體或虛擬設備如何在 OceanAI 中被表示。設備不僅由產品名稱識別，還必須由其身份、類型、型號、韌體版本、硬體版本、所屬空間、狀態、能力、連接方式、安全身份、健康狀態與驗證狀態共同表示。

設備模型使 Runtime 服務能夠路由指令、處理事件、判斷自動化、顯示狀態、執行權限、同步數據，並判斷設備是否可參與某一特定行為。

設備可依其類型與能力，作為互動參與者、感知參與者、執行參與者、同步參與者、接入參與者或 Runtime 服務參與者。

---

## English Table

|Device Field|Description|
|---|---|
|Device ID|Unique identifier for the device|
|Product Type|Device category such as Hub, Gate, Switch, Panel, Act, Sense, Sync, Vision, App, Cloud, or Edge-related component|
|Model Number|Product model or variant identifier|
|Hardware Version|Physical hardware revision|
|Firmware Version|Current firmware version|
|Software Version|App, service, runtime, or Edge software version where applicable|
|Assigned Space|Room, area, zone, building, campus, or site assignment|
|Device State|Current operational state or output state|
|Capability|Supported functions and limits|
|Connectivity|Network path, protocol, and connection status|
|Security Identity|Authentication and authorization identity|
|Health Status|Online, offline, degraded, error, updating, unbound, or disabled|
|Validation Status|Whether the device behavior has been validated under defined conditions|

## 中文表

|設備欄位|說明|
|---|---|
|Device ID|設備唯一識別碼|
|Product Type|設備類別，例如 Hub、Gate、Switch、Panel、Act、Sense、Sync、Vision、App、Cloud 或 Edge 相關組件|
|Model Number|產品型號或版本識別|
|Hardware Version|實體硬體版本|
|Firmware Version|當前韌體版本|
|Software Version|適用時 App、服務、Runtime 或 Edge 軟體版本|
|Assigned Space|房間、區域、分區、建築、校園或站點分配|
|Device State|當前運作狀態或輸出狀態|
|Capability|受支援功能與限制|
|Connectivity|網路路徑、協議與連接狀態|
|Security Identity|身份認證與授權身份|
|Health Status|在線、離線、降級、錯誤、更新中、未綁定或已停用|
|Validation Status|設備行為是否已在明確條件下完成驗證|

---

## 7.4 Space Model

## 7.4 空間模型

## EN

The Space Model defines how physical environments are represented inside OceanAI. A space may be a room, area, zone, floor, building, campus, facility, outdoor area, agricultural field, or infrastructure site.

The Space Model allows devices, scenes, automations, permissions, alerts, energy data, visual events, and deployment conditions to be organized according to physical context.

OceanAI treats space as an active part of the system model. A coordinated intelligent environment is not only a list of devices. It is a structured spatial system in which devices participate according to room, zone, site, and deployment relationships.

## ZH-TW

空間模型定義物理環境如何在 OceanAI 中被表示。空間可以是房間、區域、分區、樓層、建築、校園、設施、戶外區域、農業田地或基礎設施站點。

空間模型允許設備、場景、自動化、權限、警報、能源數據、視覺事件與部署條件根據物理上下文被組織。

OceanAI 將空間視為系統模型中的主動部分。協同智慧空間不只是一組設備清單，而是一個結構化空間系統，其中設備依房間、區域、站點與部署關係參與運作。

---

## English Table

|Space Field|Description|
|---|---|
|Space ID|Unique identifier for the space|
|Space Type|Room, zone, floor, building, campus, field, site, or facility|
|Parent Space|Higher-level space relationship such as building or campus|
|Assigned Devices|Devices associated with the space|
|Users and Roles|Users and permissions associated with the space|
|Scenes|Scenes assigned to the space|
|Automations|Automation rules associated with the space|
|Environmental Context|Sensor, visual, energy, or state context|
|Deployment Condition|Site-specific deployment characteristics|
|Privacy Scope|Privacy boundary associated with the space|
|Validation Scope|Tested conditions related to the space|

## 中文表

|空間欄位|說明|
|---|---|
|Space ID|空間唯一識別碼|
|Space Type|房間、分區、樓層、建築、校園、田地、站點或設施|
|Parent Space|上級空間關係，例如建築或校園|
|Assigned Devices|與該空間關聯的設備|
|Users and Roles|與該空間關聯的用戶與權限|
|Scenes|分配至該空間的場景|
|Automations|與該空間關聯的自動化規則|
|Environmental Context|感測、視覺、能源或狀態上下文|
|Deployment Condition|場地專用部署特徵|
|Privacy Scope|與該空間相關的隱私邊界|
|Validation Scope|與該空間相關的已測條件|

---

## 7.5 User and Role Model

## 7.5 用戶與角色模型

## EN

The User and Role Model defines who may access, configure, control, monitor, deploy, validate, or administer the OceanAI system. It establishes the relationship between users, accounts, roles, spaces, devices, services, permissions, and audit records.

A system-level architecture requires clear role boundaries. Owners, administrators, users, installers, guests, organization managers, support personnel, and service operators may have different access rights and operational responsibilities.

The User and Role Model must support both local access and cloud-based access where implemented. It must also support role-based access control, permission inheritance, revocation, auditability, and privacy enforcement.

## ZH-TW

用戶與角色模型定義誰可以存取、配置、控制、監測、部署、驗證或管理 OceanAI 系統。它建立用戶、帳號、角色、空間、設備、服務、權限與審計記錄之間的關係。

系統級架構需要清楚的角色邊界。Owner、Admin、User、Installer、Guest、組織管理者、支援人員與服務運營人員，可能具有不同存取權與操作責任。

用戶與角色模型必須在已實作條件下支援本地存取與雲端存取，也必須支援角色權限控制、權限繼承、撤銷、可審計性與隱私執行。

---

## English Table

|Role|Typical Permission Scope|
|---|---|
|Owner|Full system ownership, binding, permission, and high-level configuration|
|Admin|System management, user management, configuration, and monitoring|
|User|Approved device, scene, automation, and room-level control|
|Installer|Setup, onboarding, deployment, and configuration within assigned scope|
|Guest|Limited temporary or restricted access|
|Organization Manager|Multi-site or organization-level visibility and management|
|Support Personnel|Diagnostic access under defined permission and privacy conditions|
|Service Operator|Cloud, lifecycle, or platform operation under strict governance boundaries|

## 中文表

|角色|典型權限範圍|
|---|---|
|Owner|完整系統所有權、綁定、權限與高層配置|
|Admin|系統管理、用戶管理、配置與監測|
|User|已授權設備、場景、自動化與房間級控制|
|Installer|指定範圍內的設定、入網、部署與配置|
|Guest|有限、臨時或受限制存取|
|Organization Manager|多站點或組織級可視化與管理|
|Support Personnel|在明確權限與隱私條件下進行診斷存取|
|Service Operator|在嚴格治理邊界下執行雲端、生命週期或平台運營|

---

## 7.6 Service Model

## 7.6 服務模型

## EN

The Service Model defines how system services are represented within OceanAI. Services may include local runtime services, MQTT services, cloud synchronization services, account services, lifecycle services, alert services, Edge inference services, Vision processing services, logging services, and validation services.

Services must be represented with identity, responsibility, status, dependency, version, permission scope, data boundary, failure behavior, and validation state.

The Service Model allows OceanAI to manage not only physical devices, but also the software and platform services required to operate the system.

## ZH-TW

服務模型定義系統服務如何在 OceanAI 中被表示。服務可包括本地 Runtime 服務、MQTT 服務、雲端同步服務、帳號服務、生命週期服務、警報服務、Edge 推理服務、Vision 處理服務、日誌服務與驗證服務。

服務必須以身份、責任、狀態、依賴、版本、權限範圍、數據邊界、故障行為與驗證狀態來表示。

服務模型使 OceanAI 不僅能管理實體設備，也能管理系統運作所需的軟體與平台服務。

---

## English Table

|Service Field|Description|
|---|---|
|Service ID|Unique service identifier|
|Service Type|Runtime, MQTT, Cloud, Edge, Vision, Alert, Lifecycle, Logging, or Validation service|
|Responsibility|Defined service function|
|Service Status|Active, inactive, degraded, error, updating, or disabled|
|Version|Service version or software build|
|Dependency|Required devices, services, network, cloud, or Edge resources|
|Permission Scope|Who or what may access the service|
|Data Boundary|Data collected, processed, stored, synchronized, or retained|
|Failure Behavior|Expected behavior when the service is unavailable|
|Validation Status|Whether service behavior has been validated|

## 中文表

|服務欄位|說明|
|---|---|
|Service ID|服務唯一識別碼|
|Service Type|Runtime、MQTT、Cloud、Edge、Vision、Alert、Lifecycle、Logging 或 Validation 服務|
|Responsibility|已定義服務功能|
|Service Status|啟用、未啟用、降級、錯誤、更新中或已停用|
|Version|服務版本或軟體建置版本|
|Dependency|所需設備、服務、網路、雲端或 Edge 資源|
|Permission Scope|誰或什麼可以存取該服務|
|Data Boundary|被收集、處理、儲存、同步或保留的數據|
|Failure Behavior|服務不可用時的預期行為|
|Validation Status|服務行為是否已完成驗證|

---

## 7.7 Configuration Model

## 7.7 配置模型

## EN

The Configuration Model defines the configurable parameters of the OceanAI system. It includes device configuration, space configuration, scene configuration, automation configuration, network configuration, cloud configuration, Edge configuration, permission configuration, privacy configuration, and deployment configuration.

Configuration must be versioned, traceable, permission-controlled, and recoverable where supported. Misconfiguration can affect runtime behavior, safety behavior, privacy behavior, and deployment reliability.

The Configuration Model should distinguish between user-level configuration, installer-level configuration, system-level configuration, and service-level configuration.

## ZH-TW

配置模型定義 OceanAI 系統中的可配置參數，包括設備配置、空間配置、場景配置、自動化配置、網路配置、雲端配置、Edge 配置、權限配置、隱私配置與部署配置。

配置在支援條件下必須具備版本管理、可追溯、權限控制與可恢復能力。錯誤配置可能影響 Runtime 行為、安全行為、隱私行為與部署可靠性。

配置模型應區分用戶級配置、安裝方級配置、系統級配置與服務級配置。

---

## English Table

|Configuration Type|Description|
|---|---|
|Device configuration|Device settings, capability settings, network settings, and firmware-related parameters|
|Space configuration|Room, zone, building, campus, or site assignment|
|Scene configuration|Defined multi-device behavior|
|Automation configuration|Rules, triggers, conditions, targets, and priorities|
|Network configuration|Local network, gateway, MQTT, protocol, and connectivity settings|
|Cloud configuration|Account, sync, remote access, lifecycle, and service settings|
|Edge configuration|Model, input source, processing boundary, and output configuration|
|Permission configuration|User, role, access, and control permissions|
|Privacy configuration|Data collection, storage, retention, processing, and sharing settings|
|Deployment configuration|Site-specific topology, component placement, and validation conditions|

## 中文表

|配置類型|說明|
|---|---|
|設備配置|設備設定、能力設定、網路設定與韌體相關參數|
|空間配置|房間、分區、建築、校園或站點分配|
|場景配置|已定義多設備行為|
|自動化配置|規則、觸發、條件、目標與優先級|
|網路配置|本地網路、網關、MQTT、協議與連接設定|
|雲端配置|帳號、同步、遠端存取、生命週期與服務設定|
|Edge 配置|模型、輸入來源、處理邊界與輸出配置|
|權限配置|用戶、角色、存取與控制權限|
|隱私配置|數據收集、儲存、保留、處理與共享設定|
|部署配置|場地專用拓撲、組件佈置與驗證條件|

---

## 7.8 Capability Model

## 7.8 能力模型

## EN

The Capability Model defines what a device, service, layer, or deployment can support under defined conditions. Capabilities may include sensing, interaction, execution, synchronization, communication, automation, AI-assisted interpretation, cloud synchronization, local control, remote access, security, privacy, and validation support.

Capabilities must not be assumed from product category alone. A capability should be associated with hardware version, firmware version, software version, service availability, network condition, configuration, permission, and validation status.

The Capability Model prevents unsupported functions from being exposed, triggered, advertised, or claimed as system capability.

## ZH-TW

能力模型定義設備、服務、層級或部署在明確條件下能夠支援什麼。能力可包括感知、互動、執行、同步、通訊、自動化、AI 輔助解讀、雲端同步、本地控制、遠端存取、安全、隱私與驗證支援。

能力不應僅根據產品類別被假設。能力應與硬體版本、韌體版本、軟體版本、服務可用性、網路條件、配置、權限與驗證狀態相關聯。

能力模型防止未支援功能被暴露、觸發、宣傳或宣稱為系統能力。

---

## English Table

|Capability Field|Description|
|---|---|
|Capability ID|Unique capability identifier|
|Capability Type|Sensing, interaction, execution, sync, communication, automation, AI, cloud, security, or privacy capability|
|Supported Component|Device, service, layer, or deployment that supports the capability|
|Required Version|Required hardware, firmware, software, service, or model version|
|Required Condition|Network, cloud, Edge, local runtime, configuration, or deployment condition|
|Permission Requirement|Role or access requirement|
|Validation Requirement|Test evidence required to claim the capability|
|Failure Behavior|Behavior when the capability dependency is unavailable|
|Claim Boundary|How the capability may be described in documentation|

## 中文表

|能力欄位|說明|
|---|---|
|Capability ID|能力唯一識別碼|
|Capability Type|感知、互動、執行、同步、通訊、自動化、AI、雲端、安全或隱私能力|
|Supported Component|支援該能力的設備、服務、層級或部署|
|Required Version|所需硬體、韌體、軟體、服務或模型版本|
|Required Condition|所需網路、雲端、Edge、本地 Runtime、配置或部署條件|
|Permission Requirement|角色或存取要求|
|Validation Requirement|宣稱該能力所需測試證據|
|Failure Behavior|能力依賴不可用時的行為|
|Claim Boundary|該能力可如何被文件描述|

---

## 7.9 Health Model

## 7.9 健康狀態模型

## EN

The Health Model defines the operational condition of devices, services, spaces, runtime components, cloud services, Edge services, and network paths.

Health state is necessary for runtime decisions, App display, diagnostics, alerts, automation logic, deployment validation, and support workflows.

The Health Model must distinguish between normal operation, offline state, degraded state, error state, updating state, unbound state, disabled state, and unsupported state.

## ZH-TW

健康狀態模型定義設備、服務、空間、Runtime 組件、雲端服務、Edge 服務與網路路徑的運行條件。

健康狀態對 Runtime 決策、App 顯示、診斷、警報、自動化邏輯、部署驗證與支援流程都是必要的。

健康狀態模型必須區分正常運作、離線狀態、降級狀態、錯誤狀態、更新中狀態、未綁定狀態、已停用狀態與不支援狀態。

---

## English Table

|Health State|Description|
|---|---|
|Online|Component is reachable and operating normally|
|Offline|Component is not reachable|
|Degraded|Component is reachable but capability is limited|
|Error|Component reports fault or abnormal condition|
|Updating|Component is undergoing firmware, software, configuration, or model update|
|Unbound|Component is not assigned to an account, site, space, or system|
|Disabled|Component is intentionally disabled by policy, user, or system configuration|
|Unsupported|Component or behavior is not supported under current conditions|
|Unknown|Health state cannot be determined due to missing data or communication failure|

## 中文表

|健康狀態|說明|
|---|---|
|Online｜在線|組件可達且正常運作|
|Offline｜離線|組件不可達|
|Degraded｜降級|組件可達，但能力受限|
|Error｜錯誤|組件回報故障或異常條件|
|Updating｜更新中|組件正在進行韌體、軟體、配置或模型更新|
|Unbound｜未綁定|組件尚未分配至帳號、站點、空間或系統|
|Disabled｜已停用|組件因政策、用戶或系統配置被有意停用|
|Unsupported｜不支援|當前條件下不支援該組件或行為|
|Unknown｜未知|因缺少數據或通訊故障，無法判定健康狀態|

---

## 7.10 Validation Data Model

## 7.10 驗證數據模型

## EN

The Validation Data Model defines how evidence is recorded to support architecture behavior, runtime behavior, system capability, deployment claims, AI-assisted behavior, capacity claims, reliability claims, security claims, privacy claims, and commercial claims.

Validation data must be traceable to a product, service, software version, hardware version, deployment model, test condition, expected behavior, observed result, and approval status.

Without validation data, a system behavior may remain a design intention, prototype behavior, or roadmap item, but it should not be treated as a confirmed architecture capability.

## ZH-TW

驗證數據模型定義如何記錄證據，以支持架構行為、Runtime 行為、系統能力、部署宣稱、AI 輔助行為、容量宣稱、可靠性宣稱、安全宣稱、隱私宣稱與商業宣稱。

驗證數據必須可追溯至產品、服務、軟體版本、硬體版本、部署模型、測試條件、預期行為、觀察結果與核准狀態。

如果沒有驗證數據，某一系統行為可以被視為設計意圖、原型行為或路線圖項目，但不應被視為已確認架構能力。

---

## English Table

|Validation Field|Description|
|---|---|
|Validation ID|Unique validation record identifier|
|Claim or Behavior|The claim, feature, behavior, or capability being validated|
|Related Component|Device, service, layer, model, or deployment under validation|
|Version Information|Hardware, firmware, software, service, or model version|
|Test Condition|Network, load, cloud, Edge, runtime, deployment, and environmental condition|
|Expected Result|Required behavior|
|Observed Result|Actual test result|
|Evidence Type|Log, measurement, report, screenshot, video, record, or certification document|
|Pass / Fail|Validation result|
|Boundary Statement|Conditions under which the result applies|
|Approval Status|Draft, reviewed, approved, final, superseded, or archived|

## 中文表

|驗證欄位|說明|
|---|---|
|Validation ID|驗證記錄唯一識別碼|
|Claim or Behavior|被驗證的宣稱、功能、行為或能力|
|Related Component|被驗證的設備、服務、層級、模型或部署|
|Version Information|硬體、韌體、軟體、服務或模型版本|
|Test Condition|網路、負載、雲端、Edge、Runtime、部署與環境條件|
|Expected Result|所需行為|
|Observed Result|實際測試結果|
|Evidence Type|日誌、量測、報告、截圖、視頻、記錄或認證文件|
|Pass / Fail|驗證結果|
|Boundary Statement|該結果適用的條件|
|Approval Status|草案、已審查、已核准、最終版、已取代或已歸檔|

---

## 7.11 Data Model Boundary

## 7.11 數據模型邊界

## EN

The System Data Model defines how OceanAI represents system entities and relationships. It does not by itself define database implementation, storage technology, API schema, user interface layout, or final data retention policy.

Data model boundaries must be maintained to prevent architecture-level definitions from being confused with implementation-level decisions. The architecture may define what must be represented, while implementation documents define how that representation is stored, transmitted, rendered, secured, and synchronized.

Any data model claim must remain aligned with supported services, privacy policies, security requirements, validation records, and version compatibility.

## ZH-TW

系統數據模型定義 OceanAI 如何表示系統實體與關係。它本身不定義資料庫實作、儲存技術、API Schema、使用者介面佈局或最終數據保留政策。

必須維持數據模型邊界，以防止架構級定義與實作級決策混淆。架構可以定義必須被表示的內容，而實作文件則定義該表示如何被儲存、傳輸、渲染、保護與同步。

任何數據模型宣稱都必須與受支援服務、隱私政策、安全要求、驗證記錄與版本相容性保持一致。

---

## English Table

|Boundary Area|Required Control|
|---|---|
|Database implementation|The architecture defines representation, not storage engine|
|API schema|Architecture may inform API design, but does not replace API specification|
|UI layout|Data model supports UI, but does not define final interface layout|
|Data retention|Architecture identifies retention needs; policy documents define final rules|
|Cloud synchronization|Only selected data should synchronize according to defined policy|
|Edge processing|Edge data access must follow privacy and processing boundaries|
|Security|Data access must follow identity, role, and permission rules|
|Validation|Data model claims require tested and documented behavior|
|Versioning|Data structures must support compatibility and migration strategy|

## 中文表

|邊界領域|必須控制|
|---|---|
|資料庫實作|架構定義表示方式，不定義儲存引擎|
|API Schema|架構可指導 API 設計，但不取代 API 規格|
|UI 佈局|數據模型支援 UI，但不定義最終介面佈局|
|數據保留|架構識別保留需求；政策文件定義最終規則|
|雲端同步|僅特定數據應依已定義政策同步|
|Edge 處理|Edge 數據存取必須遵循隱私與處理邊界|
|安全|數據存取必須遵循身份、角色與權限規則|
|驗證|數據模型宣稱需要已測試並記錄的行為|
|版本管理|數據結構必須支援相容性與遷移策略|

---

## 7.12 Chapter Conclusion

## 7.12 章節結論

## EN

This chapter defines the System Data Model of OceanAI. It describes how devices, spaces, users, roles, services, configurations, capabilities, health states, and validation records are represented within the architecture.

The System Data Model allows OceanAI to maintain coherent runtime behavior, synchronized cloud services, Edge-assisted interpretation, permission control, privacy boundaries, deployment planning, validation traceability, and future evolution.

The following chapter defines the Event, Command, and State Model in greater detail, explaining how system signals, instructions, states, telemetry, context, synchronization, priority, and conflict handling operate within the OceanAI architecture.

## ZH-TW

本章定義 OceanAI 的系統數據模型，說明設備、空間、用戶、角色、服務、配置、能力、健康狀態與驗證記錄如何在架構中被表示。

系統數據模型使 OceanAI 能夠維持連貫的 Runtime 行為、同步的雲端服務、Edge 輔助解讀、權限控制、隱私邊界、部署規劃、驗證可追溯性與未來演進。

下一章將更深入定義事件、指令與狀態模型，說明系統信號、操作指令、狀態、遙測、上下文、同步、優先級與衝突處理如何在 OceanAI 架構中運作。