# 10. Cloud Architecture

# 10. 雲端架構

---

## 10.1 Purpose

## 10.1 目的

## EN

This chapter defines the Cloud Architecture of OceanAI. The Cloud Architecture describes how OceanAI Cloud extends the system beyond the local environment through account services, identity services, remote access, synchronization, lifecycle management, historical data, analytics, alerts, multi-site management, and service governance.

The purpose of this chapter is to clarify the role of the cloud as an enhancement and coordination layer. OceanAI Cloud expands visibility, access, management, synchronization, and lifecycle capabilities, but it should not be treated as the required execution path for every local physical action.

Cloud Architecture must remain aligned with the Local-First Architecture. Local runtime provides supported local continuity. Cloud services extend the system through remote, historical, cross-site, and lifecycle functions under defined conditions.

## ZH-TW

本章定義 OceanAI 的雲端架構。雲端架構描述 OceanAI Cloud 如何透過帳號服務、身份服務、遠端存取、同步、生命週期管理、歷史數據、分析、警報、多站點管理與服務治理，將系統能力擴展至本地環境之外。

本章目的，是釐清雲端作為增強與協同層的角色。OceanAI Cloud 擴展可視化、存取、管理、同步與生命週期能力，但不應被視為每一個本地物理動作的必要執行路徑。

雲端架構必須與本地優先架構保持一致。本地 Runtime 提供受支援本地延續性；雲端服務則在明確條件下透過遠端、歷史、跨站點與生命週期功能擴展系統。

---

## English Table

|Cloud Architecture Area|Description|
|---|---|
|Account and identity|Manages users, roles, accounts, organizations, and identity relationships|
|Remote access|Enables off-site access to supported control, monitoring, and configuration functions|
|Synchronization|Aligns selected state, configuration, logs, lifecycle, and historical data|
|Lifecycle services|Supports firmware, software, configuration, device, and service lifecycle|
|Historical data|Stores and presents long-term records where enabled|
|Analytics|Provides reporting, trends, operational insight, and multi-site visibility where supported|
|Alerts|Delivers selected notifications beyond the local environment|
|Multi-site management|Supports multiple homes, classrooms, buildings, campuses, or sites|
|Cloud governance|Defines access, privacy, data, security, validation, and claim boundaries|

## 中文表

|雲端架構領域|說明|
|---|---|
|帳號與身份|管理用戶、角色、帳號、組織與身份關係|
|遠端存取|啟用場外對受支援控制、監測與配置功能的存取|
|同步|對齊特定狀態、配置、日誌、生命週期與歷史數據|
|生命週期服務|支援韌體、軟體、配置、設備與服務生命週期|
|歷史數據|在啟用條件下儲存並呈現長期記錄|
|分析|在支援條件下提供報告、趨勢、運行洞察與多站點可視化|
|警報|將特定通知傳送至本地環境之外|
|多站點管理|支援多住宅、教室、建築、校園或站點|
|雲端治理|定義存取、隱私、數據、安全、驗證與宣稱邊界|

---

## 10.2 Cloud Architecture Definition

## 10.2 雲端架構定義

## EN

Cloud Architecture defines the cloud-side service structure of OceanAI. It includes cloud services that support account management, remote access, data synchronization, service lifecycle, analytics, alert delivery, and multi-site management.

OceanAI Cloud is not the entire OceanAI system. It is one architecture layer within a larger local-cloud-edge system. Its responsibility is to extend and coordinate system capabilities beyond local runtime boundaries.

The Cloud Architecture must be designed around defined service responsibility, permission boundaries, data boundaries, synchronization behavior, availability assumptions, failure behavior, and validation evidence.

## ZH-TW

雲端架構定義 OceanAI 的雲端側服務結構。它包括支援帳號管理、遠端存取、數據同步、服務生命週期、分析、警報傳送與多站點管理的雲端服務。

OceanAI Cloud 不是整個 OceanAI 系統，而是更大本地—雲端—Edge 系統中的一個架構層。它的責任，是將系統能力擴展並協同至本地 Runtime 邊界之外。

雲端架構必須圍繞已定義服務責任、權限邊界、數據邊界、同步行為、可用性假設、故障行為與驗證證據進行設計。

---

## English Table

|Cloud Definition Element|Architectural Meaning|
|---|---|
|Cloud service layer|Provides remote and extended system services|
|Not local runtime replacement|Does not replace local runtime by default|
|Account-bound access|Remote access and management depend on identity and permission|
|Selective synchronization|Only defined data should synchronize according to policy|
|Lifecycle extension|Supports device, firmware, software, and service lifecycle|
|Multi-site coordination|Supports cross-location management where implemented|
|Availability boundary|Cloud behavior depends on Internet, service status, and account condition|
|Validation boundary|Cloud claims require defined test and service evidence|

## 中文表

|雲端定義元素|架構意義|
|---|---|
|雲端服務層|提供遠端與擴展型系統服務|
|不取代本地 Runtime|預設不取代本地 Runtime|
|基於帳號的存取|遠端存取與管理依賴身份與權限|
|選擇性同步|僅已定義數據應依政策同步|
|生命週期擴展|支援設備、韌體、軟體與服務生命週期|
|多站點協同|在已實作條件下支援跨地點管理|
|可用性邊界|雲端行為依賴 Internet、服務狀態與帳號條件|
|驗證邊界|雲端宣稱需要明確測試與服務證據|

---

## 10.3 Cloud Service Responsibilities

## 10.3 雲端服務責任

## EN

Cloud services are responsible for functions that extend the OceanAI architecture beyond local runtime. These responsibilities include user and account management, remote access, synchronization, lifecycle operations, historical records, analytics, alert delivery, multi-site management, and service-level governance.

Cloud responsibilities should be separated from local runtime responsibilities. A function belongs to the Cloud Layer when it requires off-site access, account-based coordination, long-term data storage, multi-site visibility, centralized lifecycle management, or cloud-based notification delivery.

Cloud service responsibilities must be documented with dependencies, data behavior, permission requirements, failure behavior, and validation conditions.

## ZH-TW

雲端服務負責將 OceanAI 架構擴展至本地 Runtime 之外的功能。這些責任包括用戶與帳號管理、遠端存取、同步、生命週期操作、歷史記錄、分析、警報傳送、多站點管理與服務級治理。

雲端責任應與本地 Runtime 責任區分。當某項功能需要場外存取、基於帳號的協同、長期數據儲存、多站點可視化、集中式生命週期管理或雲端通知傳送時，該功能屬於雲端層。

雲端服務責任必須記錄其依賴、數據行為、權限要求、故障行為與驗證條件。

---

## English Table

|Cloud Service Responsibility|Description|
|---|---|
|User and account management|Manages accounts, identity, binding, roles, and organization structure|
|Remote control support|Enables supported off-site commands under permission rules|
|Remote monitoring|Provides remote visibility into supported device, space, and system states|
|Data synchronization|Syncs selected state, configuration, logs, lifecycle, and historical data|
|Lifecycle operations|Supports firmware, software, configuration, and service lifecycle where implemented|
|Alert delivery|Sends selected notifications through cloud-supported channels|
|Historical records|Stores long-term event, state, energy, alert, or service records where enabled|
|Analytics and reports|Provides trends, operational reports, and multi-site insight where supported|
|Multi-site management|Supports multiple sites, homes, buildings, classrooms, campuses, or organizations|
|Service governance|Applies cloud access, data, security, privacy, and validation rules|

## 中文表

|雲端服務責任|說明|
|---|---|
|用戶與帳號管理|管理帳號、身份、綁定、角色與組織結構|
|遠端控制支援|在權限規則下啟用受支援場外指令|
|遠端監測|提供對受支援設備、空間與系統狀態的遠端可視化|
|數據同步|同步特定狀態、配置、日誌、生命週期與歷史數據|
|生命週期操作|在已實作條件下支援韌體、軟體、配置與服務生命週期|
|警報傳送|透過雲端支援通道傳送特定通知|
|歷史記錄|在啟用條件下儲存長期事件、狀態、能源、警報或服務記錄|
|分析與報告|在支援條件下提供趨勢、運行報告與多站點洞察|
|多站點管理|支援多站點、住宅、建築、教室、校園或組織|
|服務治理|套用雲端存取、數據、安全、隱私與驗證規則|

---

## 10.4 Account and Identity Services

## 10.4 帳號與身份服務

## EN

Account and Identity Services define how users, devices, homes, sites, organizations, roles, and permissions are represented and managed within OceanAI Cloud.

Identity is required for secure remote access, device binding, permission enforcement, multi-user operation, multi-site management, support workflows, auditability, and lifecycle services.

Account and identity behavior must be governed by authentication, authorization, binding rules, role-based access control, session handling, access revocation, audit records, and privacy requirements.

## ZH-TW

帳號與身份服務定義用戶、設備、住宅、站點、組織、角色與權限如何在 OceanAI Cloud 中被表示與管理。

安全遠端存取、設備綁定、權限執行、多用戶運作、多站點管理、支援流程、可審計性與生命週期服務，都需要身份機制。

帳號與身份行為必須受到身份認證、授權、綁定規則、角色權限控制、Session 處理、存取撤銷、審計記錄與隱私要求的治理。

---

## English Table

|Account and Identity Function|Description|
|---|---|
|User account|Represents individual user identity|
|Organization account|Represents organization-level ownership or management|
|Site binding|Associates users and devices with homes, buildings, classrooms, campuses, or sites|
|Device binding|Associates supported devices with accounts, spaces, or organizations|
|Role assignment|Assigns owner, admin, user, installer, guest, support, or operator roles|
|Permission enforcement|Controls who may view, configure, control, or manage system elements|
|Access revocation|Removes or limits access where required|
|Audit records|Records identity-sensitive or permission-sensitive activity where supported|
|Session management|Manages authenticated access sessions|
|Privacy alignment|Ensures account data follows defined privacy rules|

## 中文表

|帳號與身份功能|說明|
|---|---|
|用戶帳號|表示個人用戶身份|
|組織帳號|表示組織級所有權或管理|
|站點綁定|將用戶與設備關聯至住宅、建築、教室、校園或站點|
|設備綁定|將受支援設備關聯至帳號、空間或組織|
|角色分配|分配 Owner、Admin、User、Installer、Guest、Support 或 Operator 角色|
|權限執行|控制誰可以查看、配置、控制或管理系統元素|
|存取撤銷|在需要時移除或限制存取|
|審計記錄|在支援條件下記錄身份敏感或權限敏感活動|
|Session 管理|管理已認證存取 Session|
|隱私對齊|確保帳號數據遵循已定義隱私規則|

---

## 10.5 Remote Access Services

## 10.5 遠端存取服務

## EN

Remote Access Services allow users or authorized systems to access supported OceanAI functions from outside the local environment. Remote access may include monitoring, control, configuration, alerts, status viewing, scene triggering, and lifecycle operations where implemented.

Remote access must be permission-controlled and should not bypass local runtime rules. A remote command must still follow authentication, authorization, runtime priority, target capability, safety rules, local availability, cloud availability, and validation boundaries.

Remote access should be treated as a cloud-enhanced capability, not as proof that every system function depends on cloud execution.

## ZH-TW

遠端存取服務允許用戶或授權系統從本地環境之外存取受支援 OceanAI 功能。遠端存取可在已實作條件下包括監測、控制、配置、警報、狀態查看、場景觸發與生命週期操作。

遠端存取必須受到權限控制，不應繞過本地 Runtime 規則。遠端指令仍必須遵循身份認證、授權、Runtime 優先級、目標能力、安全規則、本地可用性、雲端可用性與驗證邊界。

遠端存取應被視為雲端增強能力，而不是所有系統功能都依賴雲端執行的證明。

---

## English Table

|Remote Access Function|Required Control|
|---|---|
|Remote status view|Requires authenticated and authorized access|
|Remote device control|Must follow permission, runtime priority, and target capability|
|Remote scene trigger|Must route through supported runtime path|
|Remote configuration|Must follow role, scope, and validation rules|
|Remote alert access|Must follow notification and privacy settings|
|Remote lifecycle operation|Must follow update, version, and rollback rules where supported|
|Remote support access|Must follow explicit permission and audit requirements|
|Remote failure behavior|Must define behavior when cloud, Internet, or local runtime is unavailable|

## 中文表

|遠端存取功能|必須控制|
|---|---|
|遠端狀態查看|需要完成身份認證與授權|
|遠端設備控制|必須遵循權限、Runtime 優先級與目標能力|
|遠端場景觸發|必須透過受支援 Runtime 路徑路由|
|遠端配置|必須遵循角色、範圍與驗證規則|
|遠端警報存取|必須遵循通知與隱私設定|
|遠端生命週期操作|在支援條件下必須遵循更新、版本與回滾規則|
|遠端支援存取|必須遵循明確權限與審計要求|
|遠端故障行為|必須定義雲端、Internet 或本地 Runtime 不可用時的行為|

---

## 10.6 Synchronization Services

## 10.6 同步服務

## EN

Synchronization Services define how selected data moves between local runtime, cloud services, App interfaces, and other supported system services. Synchronization may include device state, configuration, logs, lifecycle data, account data, historical records, alerts, and deployment-related data.

Synchronization must be selective and governed. Not all local data should automatically synchronize to the cloud. Data synchronization should follow privacy rules, permission rules, data classification, retention policy, conflict handling, retry behavior, and validation requirements.

The architecture should define immediate synchronization, delayed synchronization, queued synchronization, permission-based synchronization, and non-synchronized data categories where applicable.

## ZH-TW

同步服務定義特定數據如何在本地 Runtime、雲端服務、App 介面與其他受支援系統服務之間流動。同步可包括設備狀態、配置、日誌、生命週期數據、帳號數據、歷史記錄、警報與部署相關數據。

同步必須是選擇性的，並受到治理。並非所有本地數據都應自動同步至雲端。數據同步應遵循隱私規則、權限規則、數據分類、保留政策、衝突處理、重試行為與驗證要求。

架構應在適用條件下定義立即同步、延遲同步、佇列同步、基於權限的同步與不同步數據類別。

---

## English Table

|Synchronization Category|Description|
|---|---|
|Immediate sync|Data synchronizes as soon as available and permitted|
|Delayed sync|Data synchronizes after network or service recovery|
|Queued sync|Data is stored locally and retried according to defined rules|
|Permission-based sync|Data synchronizes only when user, role, or policy permits|
|Non-synchronized data|Data remains local according to privacy or architecture boundary|
|Conflict resolution|Defines how local and cloud state conflicts are handled|
|Sync failure behavior|Defines retry, expiration, error reporting, or rejection|
|Sync validation|Confirms sync behavior under defined network and service conditions|

## 中文表

|同步類別|說明|
|---|---|
|立即同步|數據在可用且被允許時立即同步|
|延遲同步|網路或服務恢復後同步|
|佇列同步|數據在本地儲存，並依已定義規則重試|
|基於權限的同步|僅在用戶、角色或政策允許時同步|
|不同步數據|依隱私或架構邊界保留於本地|
|衝突解決|定義本地與雲端狀態衝突如何處理|
|同步故障行為|定義重試、過期、錯誤回報或拒絕|
|同步驗證|在明確網路與服務條件下確認同步行為|

---

## 10.7 Lifecycle Services

## 10.7 生命週期服務

## EN

Lifecycle Services support the long-term operation, maintenance, update, and management of devices, services, firmware, software, configurations, accounts, and deployments.

Lifecycle services may include device registration, device binding, firmware update, software update, configuration deployment, service activation, service deactivation, version tracking, rollback handling, diagnostics, and retirement of unsupported versions.

Lifecycle operations must be governed by permission, version compatibility, update safety, rollback strategy, validation evidence, and failure behavior.

## ZH-TW

生命週期服務支援設備、服務、韌體、軟體、配置、帳號與部署的長期運行、維護、更新與管理。

生命週期服務可包括設備註冊、設備綁定、韌體更新、軟體更新、配置下發、服務啟用、服務停用、版本追蹤、回滾處理、診斷，以及不支援版本的退役。

生命週期操作必須受到權限、版本相容性、更新安全、回滾策略、驗證證據與故障行為的治理。

---

## English Table

|Lifecycle Function|Required Control|
|---|---|
|Device registration|Must verify device identity and supported model|
|Device binding|Must follow account, site, role, and permission rules|
|Firmware update|Must follow version, signature, safety, and rollback rules where supported|
|Software update|Must follow compatibility and deployment rules|
|Configuration deployment|Must be permission-controlled and traceable|
|Service activation|Must follow entitlement, policy, and validation requirements|
|Service deactivation|Must define fallback or degraded behavior|
|Version tracking|Must record component and service versions|
|Diagnostics|Must follow privacy, support, and audit rules|
|Retirement|Unsupported versions must be handled according to migration and compatibility strategy|

## 中文表

|生命週期功能|必須控制|
|---|---|
|設備註冊|必須驗證設備身份與受支援型號|
|設備綁定|必須遵循帳號、站點、角色與權限規則|
|韌體更新|支援條件下必須遵循版本、簽名、安全與回滾規則|
|軟體更新|必須遵循相容性與部署規則|
|配置下發|必須受權限控制並可追溯|
|服務啟用|必須遵循授權、政策與驗證要求|
|服務停用|必須定義回退或降級行為|
|版本追蹤|必須記錄組件與服務版本|
|診斷|必須遵循隱私、支援與審計規則|
|退役|不支援版本必須依遷移與相容性策略處理|

---

## 10.8 Historical Data and Analytics

## 10.8 歷史數據與分析

## EN

Historical Data and Analytics Services support long-term visibility into selected system behavior. These services may include event history, device state history, energy records, alert history, runtime logs, deployment history, user activity records, performance trends, and multi-site analytics where enabled.

Historical data must be governed by data classification, retention rules, access permissions, privacy requirements, storage boundaries, deletion behavior, and validation requirements.

Analytics should be described as reporting or insight unless it directly affects runtime behavior. If analytics output affects automation, recommendations, optimization, or AI-assisted behavior, it must be governed by runtime, Edge, privacy, and validation boundaries.

## ZH-TW

歷史數據與分析服務支援對特定系統行為的長期可視化。這些服務可在啟用條件下包括事件歷史、設備狀態歷史、能源記錄、警報歷史、Runtime 日誌、部署歷史、用戶活動記錄、性能趨勢與多站點分析。

歷史數據必須受到數據分類、保留規則、存取權限、隱私要求、儲存邊界、刪除行為與驗證要求的治理。

分析應被描述為報告或洞察，除非它直接影響 Runtime 行為。如果分析輸出會影響自動化、建議、優化或 AI 輔助行為，則必須受到 Runtime、Edge、隱私與驗證邊界治理。

---

## English Table

|Historical / Analytics Data|Governance Requirement|
|---|---|
|Event history|Must follow retention and access rules|
|Device state history|Must follow device, user, and privacy policies|
|Energy records|Must follow measurement accuracy and claim boundaries|
|Alert history|Must follow notification, privacy, and retention rules|
|Runtime logs|Must be protected and used according to diagnostic policy|
|User activity records|Must follow access, privacy, and audit boundaries|
|Multi-site analytics|Must follow organization-level permission and data scope|
|Trend reporting|Must be described as insight unless validated as control input|
|Deletion behavior|Must define how records are removed or retained|
|Validation evidence|Analytics-related claims require defined evidence|

## 中文表

|歷史 / 分析數據|治理要求|
|---|---|
|事件歷史|必須遵循保留與存取規則|
|設備狀態歷史|必須遵循設備、用戶與隱私政策|
|能源記錄|必須遵循量測準確性與宣稱邊界|
|警報歷史|必須遵循通知、隱私與保留規則|
|Runtime 日誌|必須受保護，並依診斷政策使用|
|用戶活動記錄|必須遵循存取、隱私與審計邊界|
|多站點分析|必須遵循組織級權限與數據範圍|
|趨勢報告|除非已驗證為控制輸入，否則應描述為洞察|
|刪除行為|必須定義記錄如何移除或保留|
|驗證證據|分析相關宣稱需要明確證據|

---

## 10.9 Multi-Site Management

## 10.9 多站點管理

## EN

Multi-Site Management allows OceanAI Cloud to support multiple homes, classrooms, buildings, campuses, agricultural sites, infrastructure sites, or organizations under defined account and permission structures.

Multi-site architecture requires clear representation of site hierarchy, ownership, role assignment, device grouping, deployment model, synchronization scope, alert scope, analytics scope, and validation scope.

Multi-site management must avoid assuming that one site’s validation results automatically apply to all other sites. Each deployment may have different network topology, device density, environmental conditions, local runtime configuration, Edge deployment status, and capacity boundaries.

## ZH-TW

多站點管理使 OceanAI Cloud 能夠在已定義帳號與權限結構下，支援多住宅、教室、建築、校園、農業站點、基礎設施站點或組織。

多站點架構需要清楚表示站點層級、所有權、角色分配、設備分組、部署模型、同步範圍、警報範圍、分析範圍與驗證範圍。

多站點管理必須避免假設某一站點的驗證結果自動適用於所有其他站點。每個部署都可能具有不同網路拓撲、設備密度、環境條件、本地 Runtime 配置、Edge 部署狀態與容量邊界。

---

## English Table

|Multi-Site Element|Description|
|---|---|
|Organization|Highest-level account or management structure where supported|
|Site|Home, classroom, building, campus, field, facility, or infrastructure location|
|Space hierarchy|Rooms, zones, floors, buildings, or areas within a site|
|Role scope|Defines which users can access which sites or spaces|
|Device grouping|Organizes devices by site, space, function, or deployment model|
|Sync scope|Defines which data synchronizes per site|
|Alert scope|Defines who receives alerts and from which site|
|Analytics scope|Defines reporting by site, group, region, or organization|
|Validation scope|Defines which site conditions have been tested|
|Boundary|Prevents universal claims across unvalidated site conditions|

## 中文表

|多站點元素|說明|
|---|---|
|組織|支援條件下最高層級帳號或管理結構|
|站點|住宅、教室、建築、校園、田地、設施或基礎設施位置|
|空間層級|站點內的房間、分區、樓層、建築或區域|
|角色範圍|定義哪些用戶可存取哪些站點或空間|
|設備分組|依站點、空間、功能或部署模型組織設備|
|同步範圍|定義每個站點同步哪些數據|
|警報範圍|定義誰接收來自哪些站點的警報|
|分析範圍|依站點、群組、區域或組織定義報告|
|驗證範圍|定義哪些站點條件已完成測試|
|邊界|防止在未驗證站點條件下提出通用宣稱|

---

## 10.10 Cloud Failure and Degraded Behavior

## 10.10 雲端故障與降級行為

## EN

Cloud Failure and Degraded Behavior defines how the system behaves when cloud services, Internet access, account services, synchronization services, remote access, notification delivery, analytics, or lifecycle services become unavailable or degraded.

Cloud failure should not automatically stop supported local runtime behavior. Local control, local scenes, local automations, and local state handling should continue where required local components are present and local configuration supports the behavior.

Cloud-dependent functions should stop, degrade, delay, queue, or retry according to defined implementation behavior. The system should clearly communicate cloud degradation to users or operators where supported.

## ZH-TW

雲端故障與降級行為定義當雲端服務、Internet 存取、帳號服務、同步服務、遠端存取、通知傳送、分析或生命週期服務不可用或降級時，系統如何運作。

雲端故障不應自動停止受支援本地 Runtime 行為。當所需本地組件具備且本地配置支援該行為時，本地控制、本地場景、本地自動化與本地狀態處理應繼續。

依賴雲端的功能應依已定義實作行為停止、降級、延遲、排隊或重試。系統應在支援條件下向用戶或操作人員清楚呈現雲端降級狀態。

---

## English Table

|Cloud Failure Scenario|Expected Behavior|
|---|---|
|Internet unavailable|Local supported functions continue where local components are present|
|Cloud service unavailable|Remote access, sync, alerts, analytics, or lifecycle functions degrade as defined|
|Account service unavailable|Login, binding, permission updates, or remote access may degrade|
|Synchronization failure|Data queues, retries, delays, or fails according to implementation|
|Remote control unavailable|Remote commands are rejected, delayed, or unavailable|
|Notification delivery failure|Alerts may remain local or retry where supported|
|Analytics unavailable|Reports or historical views may stop or delay|
|Lifecycle service unavailable|Updates or service changes may be delayed|
|Cloud recovery|Sync, alerts, lifecycle, and remote services resume according to recovery logic|
|User communication|Cloud failure should be displayed or logged where supported|

## 中文表

|雲端故障場景|預期行為|
|---|---|
|Internet 不可用|本地組件具備時，受支援本地功能繼續|
|雲端服務不可用|遠端存取、同步、警報、分析或生命週期功能按定義降級|
|帳號服務不可用|登入、綁定、權限更新或遠端存取可能降級|
|同步失敗|數據依實作排隊、重試、延遲或失敗|
|遠端控制不可用|遠端指令被拒絕、延遲或不可用|
|通知傳送失敗|警報可在支援條件下保留本地或重試|
|分析不可用|報告或歷史視圖可能停止或延遲|
|生命週期服務不可用|更新或服務變更可能延遲|
|雲端恢復|同步、警報、生命週期與遠端服務依恢復邏輯恢復|
|用戶溝通|支援條件下應顯示或記錄雲端故障|

---

## 10.11 Cloud Boundary

## 10.11 雲端邊界

## EN

Cloud boundaries define what OceanAI Cloud may claim, control, store, synchronize, and govern. These boundaries prevent cloud services from being overstated as universal control, unlimited storage, guaranteed availability, unrestricted analytics, or complete system dependency.

Cloud Architecture must avoid claims such as “always online,” “unlimited storage,” “works everywhere,” “controls all devices,” or “guaranteed remote access” unless validated under defined conditions and supported by the actual service implementation.

Any cloud-related claim must specify service scope, availability assumptions, account condition, supported region, supported component, data policy, security rules, privacy rules, failure behavior, and validation evidence.

## ZH-TW

雲端邊界定義 OceanAI Cloud 可以宣稱、控制、儲存、同步與治理的內容。這些邊界防止雲端服務被過度描述為通用控制、無限制儲存、保證可用、不受限制分析或完整系統依賴。

雲端架構必須避免使用「永遠在線」「無限制儲存」「到處可用」「控制所有設備」或「保證遠端存取」等宣稱，除非這些宣稱已在明確條件下完成驗證，並由實際服務實作支持。

任何雲端相關宣稱都必須說明服務範圍、可用性假設、帳號條件、受支援區域、受支援組件、數據政策、安全規則、隱私規則、故障行為與驗證證據。

---

## English Table

|Cloud Boundary Area|Required Control|
|---|---|
|Service scope|Define which cloud services are implemented and supported|
|Availability|Avoid guaranteed availability unless supported by formal service terms|
|Remote access|Define authentication, permission, region, network, and local dependency|
|Storage|Define storage type, limit, retention, deletion, and access policy|
|Synchronization|Define which data syncs, when it syncs, and what remains local|
|Analytics|Define data source, report scope, and claim boundary|
|Alerts|Define delivery channel, reliability, privacy, and failure behavior|
|Multi-site|Define supported site model, role scope, and validation boundary|
|Security|Define identity, access, encryption, and audit behavior where implemented|
|Privacy|Define collection, processing, retention, and sharing rules|
|Claims|Require validation evidence before cloud-related external statements|

## 中文表

|雲端邊界領域|必須控制|
|---|---|
|服務範圍|定義哪些雲端服務已實作並受支援|
|可用性|除非由正式服務條款支持，否則避免保證可用性|
|遠端存取|定義身份認證、權限、區域、網路與本地依賴|
|儲存|定義儲存類型、限制、保留、刪除與存取政策|
|同步|定義哪些數據同步、何時同步，以及哪些保留本地|
|分析|定義數據來源、報告範圍與宣稱邊界|
|警報|定義傳送通道、可靠性、隱私與故障行為|
|多站點|定義受支援站點模型、角色範圍與驗證邊界|
|安全|在已實作條件下定義身份、存取、加密與審計行為|
|隱私|定義收集、處理、保留與共享規則|
|宣稱|雲端相關對外表述前需要驗證證據|

---

## 10.12 Chapter Conclusion

## 10.12 章節結論

## EN

This chapter defines the Cloud Architecture of OceanAI. It explains the role of OceanAI Cloud as an enhancement and coordination layer that supports account and identity services, remote access, synchronization, lifecycle management, historical data, analytics, multi-site management, cloud failure behavior, and cloud governance boundaries.

Cloud Architecture extends the system beyond the local environment, but it does not replace the local runtime foundation. It must remain aligned with local-first principles, security rules, privacy boundaries, data governance, validation requirements, and controlled claim language.

The following chapter defines the Edge Intelligence Architecture, including local AI inference, SLM-assisted reasoning, VLM-assisted understanding, vision analysis, sensor fusion, AI-assisted optimization, Edge failure behavior, and Edge boundaries.

## ZH-TW

本章定義 OceanAI 的雲端架構，說明 OceanAI Cloud 作為增強與協同層，如何支援帳號與身份服務、遠端存取、同步、生命週期管理、歷史數據、分析、多站點管理、雲端故障行為與雲端治理邊界。

雲端架構將系統擴展至本地環境之外，但不取代本地 Runtime 基礎。它必須與本地優先原則、安全規則、隱私邊界、數據治理、驗證要求與受控宣稱語言保持一致。

下一章將定義邊緣智慧架構，包括本地 AI 推理、SLM 輔助推理、VLM 輔助理解、視覺分析、感測融合、AI 輔助優化、Edge 故障行為與 Edge 邊界。