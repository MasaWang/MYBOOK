# 13. Security and Privacy Architecture

# 13. 安全與隱私架構

---

## 13.1 Purpose

## 13.1 目的

## EN

This chapter defines the Security and Privacy Architecture of OceanAI. Security and privacy are not external additions to the system. They are architectural requirements that must be embedded into device identity, user access, local runtime behavior, cloud services, Edge intelligence, data handling, visual processing, remote access, lifecycle management, and validation.

The purpose of this chapter is to define how OceanAI protects devices, users, spaces, data, control paths, AI-assisted processing, cloud services, and runtime behavior within a coordinated intelligent environment.

Because OceanAI operates close to physical space, user activity, environmental signals, energy behavior, visual data, and controlled execution, its security and privacy architecture must be explicit, bounded, auditable, and validation-based.

## ZH-TW

本章定義 OceanAI 的安全與隱私架構。安全與隱私不是系統外部的附加項，而是必須嵌入設備身份、用戶存取、本地 Runtime 行為、雲端服務、Edge 智慧、數據處理、視覺處理、遠端存取、生命週期管理與驗證中的架構要求。

本章目的，是定義 OceanAI 如何在協同智慧空間中保護設備、用戶、空間、數據、控制路徑、AI 輔助處理、雲端服務與 Runtime 行為。

由於 OceanAI 接近物理空間、用戶活動、環境信號、能源行為、視覺數據與受控執行，其安全與隱私架構必須清楚、具邊界、可審計，並基於驗證。

---

## English Table

|Security and Privacy Area|Description|
|---|---|
|Device trust|Defines how supported devices are identified, authenticated, and authorized|
|Identity and access|Defines user, role, account, site, and permission control|
|Secure communication|Defines protected communication paths where implemented|
|Firmware and software integrity|Defines update, version, signature, and integrity requirements|
|Data protection|Defines how data is collected, stored, processed, transmitted, retained, and deleted|
|Vision and AI privacy|Defines privacy boundaries for visual data and AI-assisted processing|
|Runtime security|Defines how commands, priorities, execution, and failure behavior are protected|
|Cloud security|Defines account, remote access, synchronization, and lifecycle security|
|Edge security|Defines local AI access, model, input, output, and processing boundaries|
|Auditability|Defines logs, traceability, and evidence records where supported|

## 中文表

|安全與隱私領域|說明|
|---|---|
|設備信任|定義受支援設備如何識別、認證與授權|
|身份與存取|定義用戶、角色、帳號、站點與權限控制|
|安全通訊|在已實作條件下定義受保護通訊路徑|
|韌體與軟體完整性|定義更新、版本、簽名與完整性要求|
|數據保護|定義數據如何被收集、儲存、處理、傳輸、保留與刪除|
|Vision 與 AI 隱私|定義視覺數據與 AI 輔助處理的隱私邊界|
|Runtime 安全|定義指令、優先級、執行與故障行為如何被保護|
|雲端安全|定義帳號、遠端存取、同步與生命週期安全|
|Edge 安全|定義本地 AI 存取、模型、輸入、輸出與處理邊界|
|可審計性|在支援條件下定義日誌、可追溯性與證據記錄|

---

## 13.2 Security Architecture Definition

## 13.2 安全架構定義

## EN

Security Architecture defines how OceanAI protects system access, device participation, communication paths, runtime actions, cloud services, Edge processing, firmware updates, user permissions, and operational integrity.

Security in OceanAI must be designed across multiple layers. It includes device identity, account identity, role-based access control, secure communication, command authorization, update integrity, diagnostic access control, audit logging, and failure-safe behavior.

Security Architecture must prevent unsupported devices, unauthorized users, invalid commands, unsafe actions, unverified updates, exposed diagnostic access, and uncontrolled remote operation from affecting the system.

## ZH-TW

安全架構定義 OceanAI 如何保護系統存取、設備參與、通訊路徑、Runtime 動作、雲端服務、Edge 處理、韌體更新、用戶權限與運行完整性。

OceanAI 的安全必須跨多個層級設計，包括設備身份、帳號身份、角色權限控制、安全通訊、指令授權、更新完整性、診斷存取控制、審計日誌與故障安全行為。

安全架構必須防止未支援設備、未授權用戶、無效指令、不安全動作、未驗證更新、暴露診斷存取與不受控遠端操作影響系統。

---

## English Table

|Security Element|Architectural Meaning|
|---|---|
|Device identity|Each supported device must be uniquely identifiable where required|
|User identity|Users must be authenticated before protected access|
|Authorization|Commands and configuration changes require permission|
|Secure communication|Sensitive communication should be protected where implemented|
|Command protection|Runtime commands must follow permission and priority rules|
|Update integrity|Firmware, software, and model updates must follow integrity rules where supported|
|Access revocation|Access must be removable or restricted where required|
|Auditability|Security-sensitive actions should be recorded where supported|
|Failure safety|Security behavior must support safe degradation and recovery|
|Claim control|Security claims must reflect implemented and validated behavior|

## 中文表

|安全元素|架構意義|
|---|---|
|設備身份|所需條件下，每個受支援設備必須可唯一識別|
|用戶身份|用戶在受保護存取前必須完成身份認證|
|授權|指令與配置變更需要權限|
|安全通訊|已實作條件下，敏感通訊應受到保護|
|指令保護|Runtime 指令必須遵循權限與優先級規則|
|更新完整性|支援條件下，韌體、軟體與模型更新必須遵循完整性規則|
|存取撤銷|必要時必須可移除或限制存取|
|可審計性|支援條件下，安全敏感動作應被記錄|
|故障安全|安全行為必須支援安全降級與恢復|
|宣稱管控|安全宣稱必須反映已實作與已驗證行為|

---

## 13.3 Privacy Architecture Definition

## 13.3 隱私架構定義

## EN

Privacy Architecture defines how OceanAI protects personal, environmental, behavioral, visual, diagnostic, and system-related data. Privacy must be embedded into data collection, local processing, cloud synchronization, Edge intelligence, Vision processing, storage, access, retention, deletion, and sharing.

Privacy Architecture must distinguish between data that remains local, data that may synchronize with cloud services, data that requires user permission, data that is processed by Edge, data that is stored temporarily, and data that is retained long-term.

Privacy in OceanAI should follow the principle of bounded data use: collect only what is needed, process only under defined conditions, synchronize only when permitted, retain only according to policy, and expose only through authorized access.

## ZH-TW

隱私架構定義 OceanAI 如何保護個人、環境、行為、視覺、診斷與系統相關數據。隱私必須嵌入數據收集、本地處理、雲端同步、Edge 智慧、Vision 處理、儲存、存取、保留、刪除與共享中。

隱私架構必須區分保留本地的數據、可與雲端服務同步的數據、需要用戶權限的數據、由 Edge 處理的數據、暫時儲存的數據，以及長期保留的數據。

OceanAI 的隱私應遵循有邊界的數據使用原則：只收集必要數據，只在已定義條件下處理，只在被允許時同步，只依政策保留，只透過授權存取暴露。

---

## English Table

|Privacy Element|Architectural Meaning|
|---|---|
|Data minimization|Collect only data required for supported functions|
|Purpose limitation|Use data only for defined system purposes|
|Local processing|Keep sensitive data local where configured and supported|
|Permission-based access|Protected data requires appropriate permission|
|Selective synchronization|Not all local data should synchronize to cloud|
|Retention control|Data must be retained according to defined policy|
|Deletion behavior|Data deletion or removal behavior must be defined|
|Vision privacy|Visual data requires strict access and storage boundaries|
|Edge privacy|AI-assisted processing must follow data and privacy rules|
|Transparency|Users or operators should understand supported data behavior where applicable|

## 中文表

|隱私元素|架構意義|
|---|---|
|數據最小化|只收集受支援功能所需數據|
|目的限制|僅將數據用於已定義系統目的|
|本地處理|在配置且支援條件下將敏感數據保留本地|
|基於權限的存取|受保護數據需要適當權限|
|選擇性同步|並非所有本地數據都應同步至雲端|
|保留控制|數據必須依已定義政策保留|
|刪除行為|必須定義數據刪除或移除行為|
|Vision 隱私|視覺數據需要嚴格存取與儲存邊界|
|Edge 隱私|AI 輔助處理必須遵循數據與隱私規則|
|透明性|適用時，用戶或操作人員應理解受支援數據行為|

---

## 13.4 Device Trust Model

## 13.4 設備信任模型

## EN

The Device Trust Model defines how devices are allowed to participate in the OceanAI architecture. A device should not be trusted only because it is physically present or connected to the network. It should be identified, authenticated, authorized, bound, and validated according to supported system rules.

Device trust may include device identity, product type, model number, hardware version, firmware version, binding status, certificate or credential where implemented, supported protocol, capability model, and validation status.

The purpose of the Device Trust Model is to prevent unsupported, unverified, spoofed, misconfigured, or unauthorized devices from participating in runtime behavior.

## ZH-TW

設備信任模型定義設備如何被允許參與 OceanAI 架構。設備不應僅因為物理存在或已連接至網路就被信任，而應依受支援系統規則完成識別、認證、授權、綁定與驗證。

設備信任可包括設備身份、產品類型、型號、硬體版本、韌體版本、綁定狀態、已實作條件下的憑證或憑據、受支援協議、能力模型與驗證狀態。

設備信任模型的目的，是防止未支援、未驗證、偽造、錯誤配置或未授權設備參與 Runtime 行為。

---

## English Table

|Device Trust Field|Description|
|---|---|
|Device ID|Unique device identifier|
|Product type|Supported device category|
|Model number|Product model or variant|
|Hardware version|Physical hardware revision|
|Firmware version|Installed firmware version|
|Binding status|Account, site, space, or organization association|
|Credential|Certificate, token, key, or other credential where implemented|
|Capability profile|Supported functions and limits|
|Security status|Authentication and authorization condition|
|Validation status|Verified behavior under defined conditions|
|Revocation status|Whether device access has been removed or restricted|

## 中文表

|設備信任欄位|說明|
|---|---|
|Device ID|設備唯一識別碼|
|Product Type|受支援設備類別|
|Model Number|產品型號或版本|
|Hardware Version|實體硬體版本|
|Firmware Version|已安裝韌體版本|
|Binding Status|帳號、站點、空間或組織關聯|
|Credential|已實作條件下的憑證、Token、金鑰或其他憑據|
|Capability Profile|受支援功能與限制|
|Security Status|身份認證與授權條件|
|Validation Status|在明確條件下已驗證行為|
|Revocation Status|設備存取是否已被移除或限制|

---

## 13.5 Identity and Access Control Model

## 13.5 身份與存取控制模型

## EN

The Identity and Access Control Model defines how users, roles, accounts, organizations, sites, services, and devices are authenticated and authorized within OceanAI.

Access control must apply to local access, remote access, App access, Panel access, installer access, diagnostic access, support access, cloud access, Edge access, configuration changes, and lifecycle operations.

Access control should be role-based, scope-aware, revocable, auditable where supported, and aligned with privacy requirements.

## ZH-TW

身份與存取控制模型定義 OceanAI 中用戶、角色、帳號、組織、站點、服務與設備如何被身份認證與授權。

存取控制必須適用於本地存取、遠端存取、App 存取、Panel 存取、安裝方存取、診斷存取、支援存取、雲端存取、Edge 存取、配置變更與生命週期操作。

存取控制應基於角色、具備範圍意識、可撤銷、在支援條件下可審計，並與隱私要求保持一致。

---

## English Table

|Access Control Area|Required Control|
|---|---|
|Local access|Must follow local identity and permission rules where implemented|
|Remote access|Requires account authentication and authorization|
|Device control|Requires permission, runtime priority, and capability checks|
|Configuration access|Requires role and scope permission|
|Installer access|Must be limited to assigned deployment or configuration scope|
|Guest access|Must be limited, temporary, or restricted|
|Support access|Requires explicit permission and audit record where supported|
|Cloud access|Requires account, role, and service authorization|
|Edge access|Requires model, data, and privacy permission where applicable|
|Revocation|Access should be removable when role or ownership changes|

## 中文表

|存取控制領域|必須控制|
|---|---|
|本地存取|已實作條件下必須遵循本地身份與權限規則|
|遠端存取|需要帳號身份認證與授權|
|設備控制|需要權限、Runtime 優先級與能力檢查|
|配置存取|需要角色與範圍權限|
|安裝方存取|必須限制於指定部署或配置範圍|
|Guest 存取|必須有限、臨時或受限制|
|支援存取|支援條件下需要明確權限與審計記錄|
|雲端存取|需要帳號、角色與服務授權|
|Edge 存取|適用時需要模型、數據與隱私權限|
|撤銷|當角色或所有權變更時，存取應可移除|

---

## 13.6 Role-Based Permission Model

## 13.6 角色權限模型

## EN

The Role-Based Permission Model defines how different user roles may interact with OceanAI. Roles should define what a user or operator may view, configure, control, manage, update, diagnose, or administer.

Roles must be assigned according to ownership, organization relationship, site relationship, deployment responsibility, and operational need. Permissions should be specific enough to prevent unnecessary exposure of control functions, private data, diagnostic records, or administrative actions.

Role-based permissions help protect both the system and the people using the system.

## ZH-TW

角色權限模型定義不同用戶角色如何與 OceanAI 互動。角色應定義用戶或操作人員可以查看、配置、控制、管理、更新、診斷或管理哪些內容。

角色必須依所有權、組織關係、站點關係、部署責任與運行需求分配。權限應足夠具體，以防止不必要地暴露控制功能、私密數據、診斷記錄或管理動作。

角色權限有助於同時保護系統與使用系統的人。

---

## English Table

|Role|Typical Permission Boundary|
|---|---|
|Owner|Full ownership, binding, high-level permission, and system management|
|Admin|User management, configuration, monitoring, and operational control|
|User|Approved device, room, scene, and automation control|
|Installer|Setup, onboarding, deployment, and configuration within assigned scope|
|Guest|Limited or temporary access to selected functions|
|Support|Diagnostic access only under permission and audit conditions|
|Organization Manager|Multi-site visibility and management within assigned organization|
|Service Operator|Platform or cloud service operation under strict governance|
|Edge Operator|Edge model or processing management under defined permission|
|Auditor|View logs, validation records, or security records where supported|

## 中文表

|角色|典型權限邊界|
|---|---|
|Owner|完整所有權、綁定、高層權限與系統管理|
|Admin|用戶管理、配置、監測與運行控制|
|User|已授權設備、房間、場景與自動化控制|
|Installer|指定範圍內的設定、入網、部署與配置|
|Guest|對特定功能的有限或臨時存取|
|Support|僅在權限與審計條件下進行診斷存取|
|Organization Manager|指定組織內的多站點可視化與管理|
|Service Operator|在嚴格治理下進行平台或雲端服務運營|
|Edge Operator|在已定義權限下管理 Edge 模型或處理|
|Auditor|支援條件下查看日誌、驗證記錄或安全記錄|

---

## 13.7 Secure Communication Model

## 13.7 安全通訊模型

## EN

The Secure Communication Model defines how communication paths are protected within OceanAI. Communication may occur between devices, gateways, local runtime services, App interfaces, cloud services, Edge systems, and external support or lifecycle services.

Security requirements may include authentication, authorization, encryption where implemented, message integrity, topic-level permission, command validation, replay protection, session control, and failure handling.

Secure communication must be described according to implemented protocol, supported device capability, network condition, service configuration, and validation evidence.

## ZH-TW

安全通訊模型定義 OceanAI 中通訊路徑如何受到保護。通訊可能發生於設備、網關、本地 Runtime 服務、App 介面、雲端服務、Edge 系統，以及外部支援或生命週期服務之間。

安全要求可包括身份認證、授權、已實作條件下加密、消息完整性、Topic 級權限、指令驗證、防重放、Session 控制與故障處理。

安全通訊必須依已實作協議、受支援設備能力、網路條件、服務配置與驗證證據進行描述。

---

## English Table

|Communication Path|Security Requirement|
|---|---|
|Device to gateway|Device identity, supported protocol, and authentication where implemented|
|Gateway to local runtime|Authorized communication and message integrity where supported|
|App to local runtime|Local access control, session, and permission checks|
|Local runtime to cloud|Authenticated and protected synchronization where implemented|
|Cloud to local runtime|Remote command authorization and runtime validation|
|Edge to runtime|Authorized Edge output and bounded runtime influence|
|Runtime to device|Command validation, capability check, and priority handling|
|Support access|Explicit permission, scope limit, and audit record where supported|
|Lifecycle update path|Integrity, version control, and rollback behavior where supported|
|Diagnostic channel|Permission-controlled and privacy-aware access|

## 中文表

|通訊路徑|安全要求|
|---|---|
|設備至網關|已實作條件下的設備身份、受支援協議與身份認證|
|網關至本地 Runtime|支援條件下授權通訊與消息完整性|
|App 至本地 Runtime|本地存取控制、Session 與權限檢查|
|本地 Runtime 至雲端|已實作條件下經認證且受保護同步|
|雲端至本地 Runtime|遠端指令授權與 Runtime 驗證|
|Edge 至 Runtime|已授權 Edge 輸出與受邊界約束的 Runtime 影響|
|Runtime 至設備|指令驗證、能力檢查與優先級處理|
|支援存取|支援條件下明確權限、範圍限制與審計記錄|
|生命週期更新路徑|支援條件下完整性、版本控制與回滾行為|
|診斷通道|受權限控制且隱私導向的存取|

---

## 13.8 Firmware and Software Integrity

## 13.8 韌體與軟體完整性

## EN

Firmware and Software Integrity defines how OceanAI protects updates, software versions, firmware versions, configuration changes, Edge model updates, and runtime service updates.

Integrity protection may include version tracking, signed updates where implemented, compatibility checks, rollback behavior, update validation, deployment staging, update logs, and failure recovery.

Firmware, software, and model updates must not compromise safety, device identity, runtime stability, privacy settings, or access control.

## ZH-TW

韌體與軟體完整性定義 OceanAI 如何保護更新、軟體版本、韌體版本、配置變更、Edge 模型更新與 Runtime 服務更新。

完整性保護可包括版本追蹤、已實作條件下簽名更新、相容性檢查、回滾行為、更新驗證、部署分階段、更新日誌與故障恢復。

韌體、軟體與模型更新不得破壞安全、設備身份、Runtime 穩定性、隱私設定或存取控制。

---

## English Table

|Integrity Area|Required Control|
|---|---|
|Firmware version|Must be tracked and associated with device model|
|Software version|Must be tracked for runtime, App, cloud, and Edge services|
|Signed update|Should be used where implemented and required|
|Compatibility check|Updates must match supported hardware, firmware, software, and service versions|
|Rollback behavior|Recovery or rollback should be defined where supported|
|Update permission|Update actions must follow role and authorization rules|
|Update log|Update status, result, and failure should be recorded where supported|
|Edge model update|Model version, input requirements, and validation status must be controlled|
|Configuration update|Configuration changes must be traceable and permission-controlled|
|Failure recovery|Failed update behavior must be defined|

## 中文表

|完整性領域|必須控制|
|---|---|
|韌體版本|必須追蹤並與設備型號關聯|
|軟體版本|必須追蹤 Runtime、App、雲端與 Edge 服務版本|
|簽名更新|在已實作且需要條件下應使用|
|相容性檢查|更新必須匹配受支援硬體、韌體、軟體與服務版本|
|回滾行為|支援條件下應定義恢復或回滾|
|更新權限|更新動作必須遵循角色與授權規則|
|更新日誌|支援條件下應記錄更新狀態、結果與失敗|
|Edge 模型更新|必須控制模型版本、輸入要求與驗證狀態|
|配置更新|配置變更必須可追溯並受權限控制|
|故障恢復|必須定義更新失敗行為|

---

## 13.9 Data Protection Model

## 13.9 數據保護模型

## EN

The Data Protection Model defines how OceanAI protects data throughout its lifecycle. Data protection includes collection, processing, local storage, cloud storage, synchronization, access, retention, deletion, export, diagnostic use, and audit use.

Data protection must apply to device state, user identity, role information, configuration, event logs, diagnostic records, energy data, visual data, Edge input and output, cloud records, and validation evidence.

Data protection should be aligned with privacy settings, access control, encryption where implemented, service policy, local storage policy, cloud storage policy, and data residency boundaries.

## ZH-TW

數據保護模型定義 OceanAI 如何在數據生命週期中保護數據。數據保護包括收集、處理、本地儲存、雲端儲存、同步、存取、保留、刪除、匯出、診斷使用與審計使用。

數據保護必須適用於設備狀態、用戶身份、角色資訊、配置、事件日誌、診斷記錄、能源數據、視覺數據、Edge 輸入與輸出、雲端記錄與驗證證據。

數據保護應與隱私設定、存取控制、已實作條件下加密、服務政策、本地儲存政策、雲端儲存政策與數據駐留邊界保持一致。

---

## English Table

|Data Protection Area|Required Control|
|---|---|
|Collection|Define what data is collected and why|
|Processing|Define local, Edge, cloud, or service-side processing|
|Storage|Define local and cloud storage behavior|
|Synchronization|Define what data syncs and under what permission|
|Access|Define who may access data and under what role|
|Retention|Define how long data is kept|
|Deletion|Define how data can be removed where supported|
|Diagnostic use|Define how support or diagnostic data is accessed|
|Audit use|Define how logs are used for security or validation|
|Export or sharing|Define if and how data may be exported or shared|

## 中文表

|數據保護領域|必須控制|
|---|---|
|收集|定義收集哪些數據以及為什麼收集|
|處理|定義本地、Edge、雲端或服務側處理|
|儲存|定義本地與雲端儲存行為|
|同步|定義哪些數據在什麼權限下同步|
|存取|定義誰可在什麼角色下存取數據|
|保留|定義數據保留多久|
|刪除|支援條件下定義數據如何移除|
|診斷使用|定義支援或診斷數據如何被存取|
|審計使用|定義日誌如何用於安全或驗證|
|匯出或共享|定義數據是否以及如何匯出或共享|

---

## 13.10 Vision and AI Privacy Boundary

## 13.10 Vision 與 AI 隱私邊界

## EN

The Vision and AI Privacy Boundary defines how visual data, AI input, AI output, model processing, Edge interpretation, and cloud-assisted intelligence are governed.

Visual data and AI-assisted processing may involve sensitive information about spaces, people, activity, objects, routines, and environmental conditions. Therefore, Vision and AI processing must be strictly bounded by permission, purpose, storage, retention, access, masking, local processing, cloud synchronization, and validation rules.

Vision and AI outputs must also be classified properly. Outputs may be events, alerts, recommendations, interpretations, summaries, optimization signals, or validated control inputs. These categories must not be mixed.

## ZH-TW

Vision 與 AI 隱私邊界定義視覺數據、AI 輸入、AI 輸出、模型處理、Edge 解讀與雲端輔助智慧如何被治理。

視覺數據與 AI 輔助處理可能涉及空間、人員、活動、物體、日常規律與環境條件等敏感資訊。因此，Vision 與 AI 處理必須受到權限、目的、儲存、保留、存取、遮蔽、本地處理、雲端同步與驗證規則的嚴格約束。

Vision 與 AI 輸出也必須正確分類。輸出可屬於事件、警報、建議、解讀、摘要、優化信號或已驗證控制輸入。這些類別不得混淆。

---

## English Table

|Vision / AI Privacy Area|Required Boundary|
|---|---|
|Visual capture|Define when visual data is captured|
|Local processing|Define whether visual or AI data remains local|
|Cloud synchronization|Define whether any visual or AI-related data syncs to cloud|
|Storage|Define whether data is stored, where, and for how long|
|Access|Define who may view, process, or export visual or AI data|
|Masking|Define masking or minimization where implemented|
|Model input|Define permitted input sources|
|Model output|Classify output type and permitted use|
|AI recommendation|Must remain recommendation unless validated as control input|
|Deletion|Define deletion or retention behavior where supported|

## 中文表

|Vision / AI 隱私領域|必須邊界|
|---|---|
|視覺捕捉|定義視覺數據何時被捕捉|
|本地處理|定義視覺或 AI 數據是否保留本地|
|雲端同步|定義任何視覺或 AI 相關數據是否同步至雲端|
|儲存|定義數據是否儲存、儲存位置與保留時間|
|存取|定義誰可以查看、處理或匯出視覺或 AI 數據|
|遮蔽|在已實作條件下定義遮蔽或最小化|
|模型輸入|定義被允許的輸入來源|
|模型輸出|分類輸出類型與允許用途|
|AI 建議|除非已驗證為控制輸入，否則必須保持為建議|
|刪除|支援條件下定義刪除或保留行為|

---

## 13.11 Security and Privacy Boundary

## 13.11 安全與隱私邊界

## EN

Security and privacy boundaries define what the OceanAI architecture may and may not claim. These boundaries prevent overstatement, false assurance, unsupported privacy claims, or unrealistic security guarantees.

OceanAI should not claim absolute security, perfect privacy, impossible-to-breach protection, universal compliance, guaranteed threat prevention, or fully private behavior under all conditions unless such claims are legally, technically, and formally supported.

Security and privacy claims must describe implemented behavior, supported conditions, known boundaries, user responsibilities, deployment dependencies, and validation evidence.

## ZH-TW

安全與隱私邊界定義 OceanAI 架構可以與不可以宣稱的內容。這些邊界防止過度表述、錯誤保證、未支援隱私宣稱或不現實安全保證。

OceanAI 不應宣稱絕對安全、完美隱私、不可能被攻破、通用合規、保證威脅預防，或所有條件下完全私密，除非此類宣稱具備法律、技術與正式支持。

安全與隱私宣稱必須描述已實作行為、受支援條件、已知邊界、用戶責任、部署依賴與驗證證據。

---

## English Table

|Restricted Claim|Preferred Boundary Language|
|---|---|
|Completely secure|Designed with defined security controls where implemented|
|Impossible to hack|Supports implemented protection and access control mechanisms|
|Fully private under all conditions|Supports privacy-aware data handling under defined settings|
|No data leaves the local system|Specific data remains local where configured and supported|
|Perfect AI privacy|AI processing follows defined input, storage, and access boundaries|
|Guaranteed compliance|Designed to support applicable privacy and security requirements where implemented|
|Never unauthorized access|Access control and audit behavior are implemented where supported|
|Always encrypted|Communication is protected where implemented and validated|
|No risk|Risks are reduced through defined controls, not eliminated|
|All data can be deleted anytime|Deletion behavior depends on data category, policy, and implementation|

## 中文表

|限制宣稱|建議邊界語言|
|---|---|
|完全安全|在已實作條件下具備已定義安全控制|
|不可能被攻破|支援已實作保護與存取控制機制|
|所有條件下完全私密|在已定義設定下支援隱私導向數據處理|
|沒有數據離開本地系統|特定數據在配置且支援條件下保留本地|
|完美 AI 隱私|AI 處理遵循已定義輸入、儲存與存取邊界|
|保證合規|在已實作條件下設計用於支援適用隱私與安全要求|
|永遠不會未授權存取|支援條件下實作存取控制與審計行為|
|永遠加密|通訊在已實作並驗證條件下受到保護|
|沒有風險|透過已定義控制降低風險，而不是消除所有風險|
|所有數據可隨時刪除|刪除行為取決於數據類別、政策與實作|

---

## 13.12 Chapter Conclusion

## 13.12 章節結論

## EN

This chapter defines the Security and Privacy Architecture of OceanAI. It establishes security and privacy as core architectural requirements across device trust, identity, access control, role-based permissions, secure communication, firmware and software integrity, data protection, Vision and AI privacy, and claim boundaries.

Security and privacy in OceanAI must remain layered, governed, traceable, and validation-based. They must protect both technical system operation and the people, spaces, and data represented by the system.

The following chapter defines Governance and Claim Boundaries, including AI governance, Runtime governance, data governance, security governance, privacy governance, engineering claim governance, commercial claim governance, certification claim boundaries, audit, and traceability.

## ZH-TW

本章定義 OceanAI 的安全與隱私架構，將安全與隱私確立為跨設備信任、身份、存取控制、角色權限、安全通訊、韌體與軟體完整性、數據保護、Vision 與 AI 隱私，以及宣稱邊界的核心架構要求。

OceanAI 的安全與隱私必須保持分層、受治理、可追溯，並基於驗證。它們必須同時保護技術系統運作，以及系統所表示的人、空間與數據。

下一章將定義治理與宣稱邊界，包括 AI 治理、Runtime 治理、數據治理、安全治理、隱私治理、工程宣稱治理、商業宣稱治理、認證宣稱邊界、審計與可追溯性。