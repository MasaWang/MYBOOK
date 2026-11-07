# Appendix E — Validation Framework

# Appendix E — 驗證框架

> **參考展開｜非正文正本** — 規範性定義見 [第 18 章 測試與驗證框架](../章節%202/chapter%2018%20測試與驗證框架.md)。本附錄提供驗證清單、證據模板與驗證—宣稱矩陣。

---

## E.1 Purpose

## E.1 目的

## EN

This appendix defines the Validation Framework for the OceanAI System Architecture Specification. The purpose of this appendix is to provide a structured reference for how OceanAI capabilities, architecture behavior, runtime behavior, data models, connectivity, local-cloud-edge coordination, security, privacy, capacity, reliability, deployment patterns, and system claims are validated.

Validation is the evidence layer of the OceanAI architecture. It determines whether a capability is only described, partially implemented, prototyped, tested, approved, or ready to support engineering and commercial claims.

This appendix should be used together with the main Testing and Validation Framework chapter, product specifications, deployment documents, claim governance records, certification planning, and future architecture revisions.

## ZH-TW

本附錄定義《OceanAI 系統架構規格書》的驗證框架。此附錄的目的，是為 OceanAI 的能力、架構行為、Runtime 行為、數據模型、連接、本地—雲端—Edge 協同、安全、隱私、容量、可靠性、部署模式與系統宣稱如何被驗證提供結構化參考。

驗證是 OceanAI 架構中的證據層。它決定某項能力只是被描述、部分實作、原型展示、已測試、已核准，或已可支持工程與商業宣稱。

本附錄應與主文件中的「測試與驗證框架」章節、產品規格書、部署文件、宣稱治理記錄、認證規劃與未來架構修訂一起使用。

---

## E.2 Validation Principles

## E.2 驗證原則

## EN

OceanAI validation must be evidence-based, version-bound, condition-bound, role-aware, privacy-aware, and claim-aware. A capability should not be treated as validated simply because it is technically possible, prototyped, planned, or described in an architecture document.

Validation must define what is tested, under what conditions, with which components, using which versions, against which expected results, and with what evidence.

A validation result must not be generalized beyond its tested boundary without additional review.

## ZH-TW

OceanAI 驗證必須基於證據、綁定版本、綁定條件、具角色意識、具隱私意識，並具宣稱意識。某項能力不應僅因為技術上可行、已有原型、已被規劃或已出現在架構文件中，就被視為已驗證。

驗證必須定義測試什麼、在什麼條件下測試、使用哪些組件、基於哪些版本、對應哪些預期結果，以及使用什麼證據。

驗證結果不得在未經額外審查的情況下，被推廣至其已測邊界之外。

---

## English Table

|Validation Principle|Description|
|---|---|
|Evidence-based|Validation must be supported by recorded evidence|
|Version-bound|Results apply to specific hardware, firmware, software, cloud, Edge, runtime, and document versions|
|Condition-bound|Results apply only under defined test, network, load, deployment, and environmental conditions|
|Architecture-aligned|Validation must map to architecture layers, responsibilities, and boundaries|
|Runtime-aware|Validation must confirm active system behavior, not only static configuration|
|Privacy-aware|Validation must respect data handling, access, retention, Vision, and AI privacy boundaries|
|Security-aware|Validation must include identity, permission, communication, integrity, and access control where relevant|
|Claim-aware|Validation must support only approved engineering or commercial claim language|
|Traceable|Validation records must be linkable to requirements, components, versions, evidence, and approvals|
|Reviewable|Validation results must be suitable for future review, audit, revalidation, or revision|

## 中文表

|驗證原則|說明|
|---|---|
|基於證據|驗證必須由已記錄證據支持|
|綁定版本|結果適用於特定硬體、韌體、軟體、雲端、Edge、Runtime 與文件版本|
|綁定條件|結果僅適用於已定義測試、網路、負載、部署與環境條件|
|架構對齊|驗證必須映射至架構層級、責任與邊界|
|Runtime 感知|驗證必須確認主動系統行為，而不只是靜態配置|
|隱私感知|驗證必須遵循數據處理、存取、保留、Vision 與 AI 隱私邊界|
|安全感知|相關情況下，驗證必須包括身份、權限、通訊、完整性與存取控制|
|宣稱感知|驗證只能支持已核准工程或商業宣稱語言|
|可追溯|驗證記錄必須可連接至要求、組件、版本、證據與核准|
|可審查|驗證結果必須適合未來審查、審計、重新驗證或修訂|

---

## E.3 Validation Status Model

## E.3 驗證狀態模型

## EN

The Validation Status Model defines how the maturity of a capability, function, component, deployment, or claim is classified. This model prevents confusion between design intent, prototype behavior, partial testing, approved validation, and commercial readiness.

Validation status should be assigned to architecture capabilities, runtime flows, device behaviors, cloud functions, Edge functions, data models, deployment scenarios, and external claims.

## ZH-TW

驗證狀態模型定義能力、功能、組件、部署或宣稱的成熟度如何分類。此模型用於避免將設計意圖、原型行為、部分測試、已核准驗證與商業就緒狀態混淆。

驗證狀態應分配給架構能力、Runtime 流程、設備行為、雲端功能、Edge 功能、數據模型、部署場景與對外宣稱。

---

## English Table

|Validation Status|Meaning|Allowed Use|
|---|---|---|
|Defined|Capability or behavior is described in architecture or specification|Internal planning and design reference|
|Prototype|Capability has been demonstrated in limited prototype form|Internal testing or controlled demonstration|
|Partially Tested|Some test cases have passed, but scope is incomplete|Internal engineering reference only|
|Tested|Defined test cases have been executed under recorded conditions|Engineering reference within tested boundary|
|Validated|Test results support the intended behavior under defined conditions|Engineering and controlled deployment reference|
|Approved|Validation has been reviewed and approved for specified use|Downstream documentation and approved claim support|
|Final|Validation is accepted as stable reference for the defined scope|Official reference under stated boundary|
|Deprecated|Validation applies to a capability scheduled for replacement|Existing support only|
|Unsupported|Capability is not supported or not approved|Must not be claimed|
|Rejected|Test failed or evidence does not support the intended claim|Must not be used as support|

## 中文表

|驗證狀態|含義|允許使用|
|---|---|---|
|已定義|能力或行為已在架構或規格中描述|內部規劃與設計參考|
|原型|能力已以有限原型形式展示|內部測試或受控展示|
|部分測試|部分測試案例通過，但範圍不完整|僅供內部工程參考|
|已測試|已在記錄條件下執行定義測試案例|在已測邊界內作為工程參考|
|已驗證|測試結果支持明確條件下的預期行為|工程與受控部署參考|
|已核准|驗證已審查並核准用於特定用途|支持下游文件與已核准宣稱|
|最終版|驗證被接受為指定範圍內的穩定參考|在聲明邊界下作為正式參考|
|退役中|驗證適用於已規劃替換的能力|僅供既有支援使用|
|不支援|能力不受支援或未被核准|不得宣稱|
|已拒絕|測試失敗或證據不支持預期宣稱|不得作為支持使用|

---

## E.4 Validation Scope Matrix

## E.4 驗證範圍矩陣

## EN

The Validation Scope Matrix defines the primary validation areas required for OceanAI. Each validation area should be mapped to related components, architecture layers, runtime behaviors, test cases, evidence records, and claim boundaries.

Validation scope must be explicit. A validation result for one area should not automatically apply to another area.

## ZH-TW

驗證範圍矩陣定義 OceanAI 所需的主要驗證領域。每一個驗證領域都應映射至相關組件、架構層級、Runtime 行為、測試案例、證據記錄與宣稱邊界。

驗證範圍必須明確。某一領域的驗證結果不應自動適用於另一領域。

---

## English Table

|Validation Area|Primary Focus|
|---|---|
|Architecture validation|Layer responsibility, architecture boundary, cross-layer coordination, and document alignment|
|Runtime validation|Event handling, command routing, state management, scenes, automations, priorities, and failure behavior|
|Device validation|Device identity, capability, connectivity, firmware, health, execution, sensing, and compatibility|
|Data model validation|Entity fields, state model, event model, command model, synchronization, and migration|
|Connectivity validation|Wi-Fi, Ethernet, BLE Mesh, Wi-Fi Mesh, MQTT, gateway paths, App access, and cloud access|
|Cloud validation|Account, remote access, synchronization, lifecycle, alerts, analytics, and multi-site services|
|Edge validation|Model behavior, input quality, output category, latency, fallback, and privacy boundary|
|Security validation|Identity, access control, authorization, secure communication, update integrity, and audit records|
|Privacy validation|Data collection, processing, storage, synchronization, retention, deletion, Vision, and AI privacy|
|Capacity validation|Device count, throughput, latency, load, storage, cloud sync, Edge processing, and concurrent use|
|Reliability validation|Failure, degradation, fallback, recovery, failure isolation, and long-duration operation|
|Deployment validation|Site topology, component mix, versions, network conditions, roles, privacy settings, and capacity|
|Claim validation|Engineering, commercial, AI, security, privacy, capacity, reliability, energy, and certification claims|

## 中文表

|驗證領域|主要重點|
|---|---|
|架構驗證|層級責任、架構邊界、跨層協同與文件對齊|
|Runtime 驗證|事件處理、指令路由、狀態管理、場景、自動化、優先級與故障行為|
|設備驗證|設備身份、能力、連接、韌體、健康、執行、感知與相容性|
|數據模型驗證|實體欄位、狀態模型、事件模型、指令模型、同步與遷移|
|連接驗證|Wi-Fi、Ethernet、BLE Mesh、Wi-Fi Mesh、MQTT、網關路徑、App 存取與雲端存取|
|雲端驗證|帳號、遠端存取、同步、生命週期、警報、分析與多站點服務|
|Edge 驗證|模型行為、輸入品質、輸出類別、延遲、回退與隱私邊界|
|安全驗證|身份、存取控制、授權、安全通訊、更新完整性與審計記錄|
|隱私驗證|數據收集、處理、儲存、同步、保留、刪除、Vision 與 AI 隱私|
|容量驗證|設備數、吞吐量、延遲、負載、儲存、雲端同步、Edge 處理與併發使用|
|可靠性驗證|故障、降級、回退、恢復、故障隔離與長時間運行|
|部署驗證|站點拓撲、組件組合、版本、網路條件、角色、隱私設定與容量|
|宣稱驗證|工程、商業、AI、安全、隱私、容量、可靠性、能源與認證宣稱|

---

## E.5 Architecture Validation Checklist

## E.5 架構驗證清單

## EN

Architecture validation verifies whether the OceanAI architecture remains coherent across its system layers, responsibilities, boundaries, and downstream documents.

This checklist should be used when releasing a new architecture version, adding a product category, changing system layer responsibilities, modifying runtime architecture, expanding Edge or Cloud functions, or preparing a formal architecture review.

## ZH-TW

架構驗證用於確認 OceanAI 架構在系統層級、責任、邊界與下游文件之間是否保持連貫。

當發布新架構版本、新增產品類別、變更系統層級責任、修改 Runtime 架構、擴展 Edge 或 Cloud 功能，或準備正式架構審查時，應使用此清單。

---

## English Table

|Validation Item|Required Result|
|---|---|
|System identity defined|OceanAI is clearly defined as a system-level intelligence architecture|
|Product layer separated|Artibird is clearly defined as product and physical device layer|
|Layer model verified|Cloud, Edge, Local Runtime, Device Access, Interaction, Sensing, Execution, and Device Participation layers are defined|
|Layer responsibility verified|Each layer has a clear responsibility and boundary|
|Cross-layer flow verified|Events, commands, state, data, and synchronization follow defined paths|
|Runtime role verified|Runtime responsibility is distinct from cloud, Edge, and device-level behavior|
|Governance applied|Security, privacy, validation, and claim boundaries apply across architecture|
|Downstream alignment checked|Product, commercial, deployment, validation, App, Cloud, and Edge documents remain aligned|
|Boundary language included|Unsupported or unvalidated claims are restricted|
|Review status recorded|Architecture validation status is documented|

## 中文表

|驗證項目|所需結果|
|---|---|
|系統身份已定義|OceanAI 被清楚定義為系統級智慧架構|
|產品層已區分|Artibird 被清楚定義為產品與實體設備層|
|分層模型已驗證|雲端、Edge、本地 Runtime、設備接入、互動、感知、執行與設備參與層已定義|
|層級責任已驗證|每一層具備清楚責任與邊界|
|跨層流程已驗證|事件、指令、狀態、數據與同步遵循已定義路徑|
|Runtime 角色已驗證|Runtime 責任與雲端、Edge、設備級行為保持區分|
|治理已套用|安全、隱私、驗證與宣稱邊界套用於整體架構|
|下游對齊已檢查|產品、商業、部署、驗證、App、Cloud 與 Edge 文件保持對齊|
|邊界語言已包含|未支援或未驗證宣稱受到限制|
|審查狀態已記錄|架構驗證狀態已記錄|

---

## E.6 Runtime Validation Checklist

## E.6 Runtime 驗證清單

## EN

Runtime validation verifies active system behavior. It is required whenever a feature affects event handling, command routing, state management, scenes, automations, priority, execution, synchronization, or failure behavior.

Runtime validation is especially important because runtime behavior may result in physical action.

## ZH-TW

Runtime 驗證用於確認主動系統行為。當某項功能影響事件處理、指令路由、狀態管理、場景、自動化、優先級、執行、同步或故障行為時，都需要進行 Runtime 驗證。

Runtime 驗證尤其重要，因為 Runtime 行為可能產生物理動作。

---

## English Table

|Validation Item|Required Result|
|---|---|
|Event classification verified|Events are correctly identified by type, source, priority, and category|
|Permission check verified|Unauthorized actions are rejected or restricted|
|Priority model verified|Safety, local manual control, automation, Edge, cloud, and background priorities resolve correctly|
|Command routing verified|Commands reach correct targets through supported paths|
|Capability check verified|Unsupported target actions are rejected or limited|
|State update verified|State changes are consistent across local runtime, App, cloud, and device views where supported|
|Scene execution verified|Scene actions execute according to defined sequence, grouping, and failure behavior|
|Automation execution verified|Rules trigger only under defined conditions|
|Conflict handling verified|Competing commands or automations resolve according to priority rules|
|Failure behavior verified|Runtime degradation, rejection, queueing, retry, or recovery follows defined logic|
|Trace record verified|Events, commands, state changes, and results are recorded where supported|

## 中文表

|驗證項目|所需結果|
|---|---|
|事件分類已驗證|事件依類型、來源、優先級與類別被正確識別|
|權限檢查已驗證|未授權動作被拒絕或限制|
|優先級模型已驗證|安全、本地手動控制、自動化、Edge、雲端與背景優先級正確解決|
|指令路由已驗證|指令透過受支援路徑到達正確目標|
|能力檢查已驗證|不支援目標動作被拒絕或限制|
|狀態更新已驗證|支援條件下，狀態變化在本地 Runtime、App、雲端與設備視圖中保持一致|
|場景執行已驗證|場景動作依已定義順序、分組與故障行為執行|
|自動化執行已驗證|規則只在已定義條件下觸發|
|衝突處理已驗證|競爭指令或自動化依優先級規則解決|
|故障行為已驗證|Runtime 降級、拒絕、排隊、重試或恢復遵循已定義邏輯|
|追蹤記錄已驗證|支援條件下記錄事件、指令、狀態變化與結果|

---

## E.7 Connectivity Validation Checklist

## E.7 連接驗證清單

## EN

Connectivity validation verifies whether devices, gateways, local runtime services, cloud services, Edge services, App interfaces, and synchronization paths communicate correctly under defined conditions.

Connectivity validation must include normal operation, weak network conditions, disconnection, reconnection, gateway behavior, offline behavior, and capacity-related communication load.

## ZH-TW

連接驗證用於確認設備、網關、本地 Runtime 服務、雲端服務、Edge 服務、App 介面與同步路徑，在明確條件下是否正確通訊。

連接驗證必須包含正常運作、弱網路條件、斷連、重連、網關行為、離線行為與容量相關通訊負載。

---

## English Table

|Validation Item|Required Result|
|---|---|
|Device onboarding verified|Supported devices can be discovered, authenticated, bound, and assigned|
|Gateway communication verified|Gate and Hub communication paths function under defined conditions|
|Local MQTT verified|Topic structure, authentication, message flow, latency, and failure behavior are verified|
|App local access verified|App can access supported local functions under defined local network conditions|
|Cloud connection verified|Remote access and synchronization operate under defined service conditions|
|Edge connection verified|Edge input and output paths operate under supported deployment conditions|
|Offline transition verified|System enters defined local behavior when Internet or cloud is unavailable|
|Reconnection verified|Devices, cloud, Edge, and runtime services recover according to defined logic|
|Network load verified|Communication remains within validated throughput and latency limits|
|Failure isolation verified|Connectivity failure does not unnecessarily stop unrelated functions|

## 中文表

|驗證項目|所需結果|
|---|---|
|設備入網已驗證|受支援設備可被發現、認證、綁定與分配|
|網關通訊已驗證|Gate 與 Hub 通訊路徑在明確條件下運作|
|本地 MQTT 已驗證|Topic 結構、身份認證、消息流、延遲與故障行為已驗證|
|App 本地存取已驗證|App 在明確本地網路條件下可存取受支援本地功能|
|雲端連接已驗證|遠端存取與同步在明確服務條件下運作|
|Edge 連接已驗證|Edge 輸入與輸出路徑在受支援部署條件下運作|
|離線轉換已驗證|Internet 或雲端不可用時，系統進入已定義本地行為|
|重連已驗證|設備、雲端、Edge 與 Runtime 服務依已定義邏輯恢復|
|網路負載已驗證|通訊保持在已驗證吞吐量與延遲限制內|
|故障隔離已驗證|連接故障不會不必要地停止無關功能|

---

## E.8 Security and Privacy Validation Checklist

## E.8 安全與隱私驗證清單

## EN

Security and privacy validation verifies that system access, device identity, user permissions, communication paths, data handling, Vision processing, Edge processing, and cloud services operate according to defined protection requirements.

Security and privacy validation must be completed before related claims are used externally.

## ZH-TW

安全與隱私驗證用於確認系統存取、設備身份、用戶權限、通訊路徑、數據處理、Vision 處理、Edge 處理與雲端服務，是否依已定義保護要求運作。

相關宣稱對外使用之前，必須完成安全與隱私驗證。

---

## English Table

|Validation Item|Required Result|
|---|---|
|Device identity verified|Unsupported or unauthorized devices are rejected or restricted|
|Account authentication verified|Protected access requires valid account or identity|
|Role permission verified|Owner, Admin, User, Installer, Guest, Support, and other roles follow defined permissions|
|Command authorization verified|Unauthorized or invalid commands are rejected|
|Secure communication verified|Implemented protected communication paths function as designed|
|Update integrity verified|Firmware, software, and model updates follow integrity and version rules|
|Data collection verified|Only defined data is collected under defined conditions|
|Data synchronization verified|Data sync follows privacy, permission, and residency rules|
|Vision privacy verified|Capture, access, storage, retention, deletion, and sync behavior follow defined boundary|
|Edge privacy verified|AI input, output, processing, storage, and runtime influence follow defined boundary|
|Audit record verified|Security-sensitive actions are recorded where supported|
|Revocation verified|User, role, or device access can be removed or restricted where required|

## 中文表

|驗證項目|所需結果|
|---|---|
|設備身份已驗證|未支援或未授權設備被拒絕或限制|
|帳號身份認證已驗證|受保護存取需要有效帳號或身份|
|角色權限已驗證|Owner、Admin、User、Installer、Guest、Support 與其他角色遵循已定義權限|
|指令授權已驗證|未授權或無效指令被拒絕|
|安全通訊已驗證|已實作受保護通訊路徑按設計運作|
|更新完整性已驗證|韌體、軟體與模型更新遵循完整性與版本規則|
|數據收集已驗證|僅在明確條件下收集已定義數據|
|數據同步已驗證|數據同步遵循隱私、權限與駐留規則|
|Vision 隱私已驗證|捕捉、存取、儲存、保留、刪除與同步行為遵循已定義邊界|
|Edge 隱私已驗證|AI 輸入、輸出、處理、儲存與 Runtime 影響遵循已定義邊界|
|審計記錄已驗證|支援條件下記錄安全敏感動作|
|撤銷已驗證|必要時，用戶、角色或設備存取可被移除或限制|

---

## E.9 Capacity and Reliability Validation Checklist

## E.9 容量與可靠性驗證清單

## EN

Capacity and reliability validation verifies that OceanAI operates within measurable limits and behaves predictably during degraded or failure conditions.

Capacity validation must be tied to device count, message throughput, event latency, scene count, automation count, user count, site count, storage limit, cloud synchronization volume, and Edge processing load.

Reliability validation must be tied to failure behavior, recovery behavior, offline behavior, degraded operation, failure isolation, long-duration stability, and fallback behavior.

## ZH-TW

容量與可靠性驗證用於確認 OceanAI 是否在可量測限制內運作，並在降級或故障條件下保持可預測行為。

容量驗證必須與設備數、消息吞吐量、事件延遲、場景數、自動化數、用戶數、站點數、儲存限制、雲端同步量與 Edge 處理負載綁定。

可靠性驗證必須與故障行為、恢復行為、離線行為、降級運作、故障隔離、長時間穩定性與回退行為綁定。

---

## English Table

|Validation Item|Required Result|
|---|---|
|Max device count verified|Supported device count is measured under defined conditions|
|Gate capacity verified|Maximum devices per Gate are tested under defined network and load conditions|
|Hub capacity verified|Maximum devices, scenes, automations, users, and runtime load per Hub are tested|
|MQTT throughput verified|Message throughput, latency, and error behavior are measured|
|Event latency verified|Time from event generation to action execution is measured|
|Cloud sync capacity verified|Synchronization volume, delay, queueing, and recovery are tested|
|Edge processing capacity verified|Model load, input rate, output latency, and fallback are tested|
|Long-duration operation verified|System remains stable under continuous operation|
|Failure behavior verified|Cloud, Edge, network, Hub, Gate, and device failures follow defined behavior|
|Recovery behavior verified|System returns to supported state according to defined recovery logic|
|Overload behavior verified|System remains safe, degrades, queues, rejects, or limits unsupported load|
|Reliability claim boundary verified|Reliability claims match actual evidence and conditions|

## 中文表

|驗證項目|所需結果|
|---|---|
|最大設備數已驗證|在明確條件下量測受支援設備數|
|Gate 容量已驗證|在明確網路與負載條件下測試每個 Gate 最大設備數|
|Hub 容量已驗證|測試每個 Hub 最大設備、場景、自動化、用戶與 Runtime 負載|
|MQTT 吞吐量已驗證|量測消息吞吐量、延遲與錯誤行為|
|事件延遲已驗證|量測從事件產生到動作執行的時間|
|雲端同步容量已驗證|測試同步量、延遲、排隊與恢復|
|Edge 處理容量已驗證|測試模型負載、輸入速率、輸出延遲與回退|
|長時間運行已驗證|系統在連續運行下保持穩定|
|故障行為已驗證|Cloud、Edge、網路、Hub、Gate 與設備故障遵循已定義行為|
|恢復行為已驗證|系統依已定義恢復邏輯返回受支援狀態|
|過載行為已驗證|系統在不支援負載下保持安全、降級、排隊、拒絕或限制|
|可靠性宣稱邊界已驗證|可靠性宣稱與實際證據及條件一致|

---

## E.10 Deployment Validation Checklist

## E.10 部署驗證清單

## EN

Deployment validation verifies that a specific deployment instance matches the supported OceanAI architecture model and operates correctly under actual or representative site conditions.

A deployment is not validated only because its components are individually validated. Site topology, user roles, device placement, network conditions, privacy settings, capacity conditions, and failure behavior must also be verified.

## ZH-TW

部署驗證用於確認特定部署實例是否符合受支援 OceanAI 架構模型，並在實際或具代表性的場地條件下正確運作。

部署中的組件分別通過驗證，並不代表整體部署已完成驗證。站點拓撲、用戶角色、設備位置、網路條件、隱私設定、容量條件與故障行為也必須被驗證。

---

## English Table

|Validation Item|Required Result|
|---|---|
|Deployment scenario defined|Residential, classroom, office, building, campus, energy, vision-aware, agriculture, or infrastructure scenario is identified|
|Component list verified|Actual deployed components match supported configuration|
|Version record verified|Hardware, firmware, software, cloud, Edge, runtime, and document versions are recorded|
|Network topology verified|Local, cloud, Edge, gateway, and fallback paths are checked|
|Device placement verified|Location, range, interference, access, and power conditions are checked|
|Runtime placement verified|Local runtime services are correctly hosted and reachable|
|User roles verified|Owner, Admin, User, Installer, Support, and organization roles are assigned correctly|
|Privacy setting verified|Data capture, processing, storage, sync, and retention match policy|
|Capacity condition verified|Device count, event load, scenes, automations, and users remain within validated limits|
|Failure test completed|Cloud, Edge, network, device, and local runtime failures are tested where applicable|
|Site approval recorded|Deployment is reviewed and approved with defined boundaries|

## 中文表

|驗證項目|所需結果|
|---|---|
|部署場景已定義|已識別住宅、教室、辦公、建築、校園、能源、視覺感知、農業或基礎設施場景|
|組件清單已驗證|實際部署組件符合受支援配置|
|版本記錄已驗證|硬體、韌體、軟體、雲端、Edge、Runtime 與文件版本已記錄|
|網路拓撲已驗證|本地、雲端、Edge、網關與回退路徑已檢查|
|設備位置已驗證|設備位置、範圍、干擾、接入與供電條件已檢查|
|Runtime 位置已驗證|本地 Runtime 服務被正確承載並可達|
|用戶角色已驗證|Owner、Admin、User、Installer、Support 與組織角色被正確分配|
|隱私設定已驗證|數據捕捉、處理、儲存、同步與保留符合政策|
|容量條件已驗證|設備數、事件負載、場景、自動化與用戶數保持在已驗證限制內|
|故障測試已完成|適用時已測試 Cloud、Edge、網路、設備與本地 Runtime 故障|
|站點核准已記錄|部署在已定義邊界下完成審查與核准|

---

## E.11 Claim Validation Checklist

## E.11 宣稱驗證清單

## EN

Claim validation verifies whether engineering, commercial, website, channel, sales, deployment, and certification-related statements are supported by evidence.

A claim must be connected to architecture definition, implementation status, test result, validation evidence, version condition, deployment condition, and approved boundary language before it may be used externally.

## ZH-TW

宣稱驗證用於確認工程、商業、網站、渠道、銷售、部署與認證相關表述是否由證據支持。

宣稱在對外使用之前，必須連接至架構定義、實作狀態、測試結果、驗證證據、版本條件、部署條件與已核准邊界語言。

---

## English Table

|Claim Type|Required Validation|
|---|---|
|Architecture claim|Must match approved architecture definition|
|Runtime claim|Must be supported by runtime validation evidence|
|Local-first claim|Must define which local functions work under which local conditions|
|Cloud claim|Must define implemented cloud service scope and availability boundary|
|Edge / AI claim|Must distinguish interpretation, recommendation, alert, optimization, and validated control input|
|Capacity claim|Must be based on measured load under defined conditions|
|Reliability claim|Must include failure, degraded, recovery, and long-duration evidence|
|Security claim|Must reflect implemented and validated security controls|
|Privacy claim|Must reflect actual data behavior and policy boundaries|
|Energy claim|Must be based on measured data and validated comparison conditions|
|Certification claim|Must be supported by formal certification, listing, or test evidence|
|Commercial claim|Must translate validated engineering evidence into approved boundary language|

## 中文表

|宣稱類型|必須驗證內容|
|---|---|
|架構宣稱|必須符合已核准架構定義|
|Runtime 宣稱|必須由 Runtime 驗證證據支持|
|本地優先宣稱|必須定義哪些本地功能在什麼本地條件下可用|
|雲端宣稱|必須定義已實作雲端服務範圍與可用性邊界|
|Edge / AI 宣稱|必須區分解讀、建議、警報、優化與已驗證控制輸入|
|容量宣稱|必須基於明確條件下的量測負載|
|可靠性宣稱|必須包含故障、降級、恢復與長時間運行證據|
|安全宣稱|必須反映已實作並驗證的安全控制|
|隱私宣稱|必須反映實際數據行為與政策邊界|
|能源宣稱|必須基於量測數據與已驗證比較條件|
|認證宣稱|必須由正式認證、Listed 或測試證據支持|
|商業宣稱|必須將已驗證工程證據轉化為已核准邊界語言|

---

## E.12 Validation Evidence Record Template

## E.12 驗證證據記錄模板

## EN

The Validation Evidence Record Template defines the minimum information required to record a validation result. Each validation record must be detailed enough to support review, revalidation, audit, and claim approval.

Validation evidence must remain tied to tested versions and tested conditions.

## ZH-TW

驗證證據記錄模板定義記錄驗證結果所需的最低資訊。每一項驗證記錄都必須足夠詳細，以支持審查、重新驗證、審計與宣稱核准。

驗證證據必須與已測版本與已測條件保持綁定。

---

## English Table

|Field|Required Content|
|---|---|
|Evidence ID|Unique validation evidence identifier|
|Validation Area|Architecture, runtime, connectivity, security, privacy, capacity, reliability, deployment, claim, or other area|
|Related Requirement|Requirement, behavior, boundary, or claim being tested|
|Related Component|Device, service, runtime, cloud, Edge, deployment, data model, or architecture layer|
|Test Objective|What the test is intended to confirm|
|Version Condition|Hardware, firmware, software, cloud, Edge, runtime, model, or document version|
|Test Environment|Network, load, device count, site, configuration, deployment, and environmental condition|
|Test Method|Manual, automated, simulation, field test, laboratory test, certification test, or audit review|
|Expected Result|Defined pass condition|
|Actual Result|Observed behavior, measurement, or evidence summary|
|Pass / Fail Status|Passed, failed, partial, inconclusive, or requires retest|
|Evidence File|Report, log, screenshot, video, certificate, measurement, audit file, or record|
|Boundary Statement|Conditions under which evidence applies|
|Reviewer|Person or role responsible for review|
|Approval Status|Draft, reviewed, approved, final, superseded, archived, or rejected|
|Claim Linkage|Related engineering or commercial claim supported by evidence|

## 中文表

|欄位|必須內容|
|---|---|
|Evidence ID|唯一驗證證據識別碼|
|驗證領域|架構、Runtime、連接、安全、隱私、容量、可靠性、部署、宣稱或其他領域|
|關聯要求|被測試的要求、行為、邊界或宣稱|
|關聯組件|設備、服務、Runtime、雲端、Edge、部署、數據模型或架構層|
|測試目標|測試意圖確認的內容|
|版本條件|硬體、韌體、軟體、雲端、Edge、Runtime、模型或文件版本|
|測試環境|網路、負載、設備數、站點、配置、部署與環境條件|
|測試方法|手動、自動化、模擬、現場測試、實驗室測試、認證測試或審計審查|
|預期結果|已定義通過條件|
|實際結果|觀察行為、量測結果或證據摘要|
|通過 / 失敗狀態|通過、失敗、部分通過、不確定或需要重測|
|證據文件|報告、日誌、截圖、視頻、證書、量測、審計文件或記錄|
|邊界聲明|證據適用條件|
|審查人|負責審查的人或角色|
|核准狀態|草案、已審查、已核准、最終版、已取代、已歸檔或已拒絕|
|宣稱關聯|證據支持的關聯工程或商業宣稱|

---

## E.13 Validation Boundary

## E.13 驗證邊界

## EN

Validation boundaries define what a validation result can and cannot support. A validation result applies only to the tested components, tested versions, tested configurations, tested environment, tested load, tested deployment, tested privacy settings, and tested security controls.

Validation must not be used to support claims outside the validated condition. A component-level test does not automatically support a system-level claim. A laboratory test does not automatically support a field deployment claim. A prototype demonstration does not automatically support commercial availability. A test report does not automatically equal certification.

## ZH-TW

驗證邊界定義驗證結果可以與不可以支持什麼。驗證結果僅適用於已測組件、已測版本、已測配置、已測環境、已測負載、已測部署、已測隱私設定與已測安全控制。

驗證不得用於支持已驗證條件之外的宣稱。元件級測試不會自動支持系統級宣稱。實驗室測試不會自動支持現場部署宣稱。原型展示不會自動支持商業可用性。測試報告也不會自動等同於認證。

---

## English Table

|Validation Boundary Area|Required Control|
|---|---|
|Component boundary|Evidence applies only to tested components unless reviewed|
|Version boundary|Evidence applies only to tested hardware, firmware, software, cloud, Edge, runtime, or model versions|
|Configuration boundary|Evidence applies only to tested settings and configuration|
|Network boundary|Evidence applies only to tested network topology, signal, bandwidth, and connectivity conditions|
|Load boundary|Evidence applies only to tested device count, event load, message rate, and processing load|
|Deployment boundary|Evidence applies only to tested or equivalent site conditions|
|Privacy boundary|Evidence applies only to tested privacy setting and data behavior|
|Security boundary|Evidence applies only to implemented and tested security controls|
|Certification boundary|Test report, component certification, final certification, and listing must be distinguished|
|Claim boundary|Evidence supports only the approved claim language linked to it|

## 中文表

|驗證邊界領域|必須控制|
|---|---|
|組件邊界|除非經審查，證據僅適用於已測組件|
|版本邊界|證據僅適用於已測硬體、韌體、軟體、雲端、Edge、Runtime 或模型版本|
|配置邊界|證據僅適用於已測設定與配置|
|網路邊界|證據僅適用於已測網路拓撲、信號、頻寬與連接條件|
|負載邊界|證據僅適用於已測設備數、事件負載、消息速率與處理負載|
|部署邊界|證據僅適用於已測或等效場地條件|
|隱私邊界|證據僅適用於已測隱私設定與數據行為|
|安全邊界|證據僅適用於已實作且已測安全控制|
|認證邊界|必須區分測試報告、元件認證、最終認證與 Listed|
|宣稱邊界|證據僅支持與其連接的已核准宣稱語言|

---

## E.14 Validation Governance

## E.14 驗證治理

## EN

Validation Governance defines how validation results are reviewed, approved, used, updated, and retired. Validation governance prevents outdated, incomplete, or misapplied evidence from supporting current system claims.

Validation governance must ensure that evidence remains current with architecture versions, product versions, runtime versions, cloud services, Edge models, security controls, privacy settings, and deployment conditions.

When a major version changes, related validation evidence must be reviewed to determine whether it remains valid, requires retesting, or should be retired.

## ZH-TW

驗證治理定義驗證結果如何被審查、核准、使用、更新與退役。驗證治理防止過期、不完整或被誤用的證據支持當前系統宣稱。

驗證治理必須確保證據與架構版本、產品版本、Runtime 版本、雲端服務、Edge 模型、安全控制、隱私設定與部署條件保持當前一致。

當重大版本變更時，相關驗證證據必須被審查，以判斷其是否仍有效、需要重新測試，或應被退役。

---

## English Table

|Governance Area|Required Control|
|---|---|
|Evidence ownership|Each validation record must have an owner or responsible role|
|Review requirement|Evidence must be reviewed before supporting claims|
|Approval requirement|External-facing claims require approved evidence|
|Revalidation trigger|Version change, architecture change, product change, deployment change, or claim change may require revalidation|
|Evidence expiration|Evidence may require periodic review or expiration date|
|Evidence retirement|Superseded or invalid evidence must be archived or retired|
|Claim linkage control|Claims must remain linked to valid evidence|
|Audit readiness|Evidence must remain accessible for review, audit, certification planning, or claim review|
|Downstream update|Product, commercial, deployment, or validation documents must update when evidence changes|
|Boundary enforcement|Evidence must not be used outside its validated boundary|

## 中文表

|治理領域|必須控制|
|---|---|
|證據責任|每項驗證記錄必須有責任人或責任角色|
|審查要求|證據在支持宣稱前必須經過審查|
|核准要求|對外宣稱需要已核准證據|
|重新驗證觸發|版本變更、架構變更、產品變更、部署變更或宣稱變更可能需要重新驗證|
|證據有效期|證據可要求定期審查或到期日期|
|證據退役|被取代或無效證據必須歸檔或退役|
|宣稱關聯控制|宣稱必須保持連接至有效證據|
|審計就緒|證據必須可供審查、審計、認證規劃或宣稱審查使用|
|下游更新|當證據變更時，產品、商業、部署或驗證文件必須更新|
|邊界執行|證據不得用於其已驗證邊界之外|

---

## E.15 Validation-to-Claim Matrix

## E.15 驗證—宣稱矩陣

## EN

The Validation-to-Claim Matrix defines how validation evidence supports claim language. A claim may be used internally, externally, commercially, or technically only when its supporting evidence and boundary language are clear.

A claim should never be stronger than the evidence that supports it.

## ZH-TW

驗證—宣稱矩陣定義驗證證據如何支持宣稱語言。只有當支持證據與邊界語言清楚時，某一宣稱才可用於內部、對外、商業或技術場景。

宣稱不應強於支持它的證據。

---

## English Table

|Claim Area|Evidence Required|Boundary Language Required|
|---|---|---|
|Local-first operation|Offline and local runtime validation|Define which functions work locally and under what component conditions|
|Cloud service|Cloud service validation and availability boundary|Define implemented service scope and dependency|
|Edge / AI|Model, input, output, latency, privacy, and fallback validation|Distinguish interpretation, recommendation, alert, optimization, and control input|
|Device compatibility|Product model, firmware, protocol, and runtime compatibility validation|Define supported models, versions, and conditions|
|Capacity|Load, throughput, latency, and device count measurements|Define tested device count, network condition, and runtime load|
|Reliability|Failure, recovery, long-duration, and fallback evidence|Define failure conditions and supported recovery behavior|
|Security|Identity, permission, communication, update integrity, and audit evidence|Define implemented controls and tested scope|
|Privacy|Data collection, storage, sync, retention, deletion, Vision, and AI privacy evidence|Define data behavior and policy boundary|
|Energy|Measurement, comparison model, reporting, and load validation|Define conditions and avoid guaranteed savings unless proven|
|Certification|Valid test report, certification, listing, or compliance document|State exact model, market, standard, and certification status|

## 中文表

|宣稱領域|所需證據|所需邊界語言|
|---|---|---|
|本地優先運作|離線與本地 Runtime 驗證|定義哪些功能在什麼組件條件下本地可用|
|雲端服務|雲端服務驗證與可用性邊界|定義已實作服務範圍與依賴|
|Edge / AI|模型、輸入、輸出、延遲、隱私與回退驗證|區分解讀、建議、警報、優化與控制輸入|
|設備相容性|產品型號、韌體、協議與 Runtime 相容性驗證|定義受支援型號、版本與條件|
|容量|負載、吞吐量、延遲與設備數量測|定義已測設備數、網路條件與 Runtime 負載|
|可靠性|故障、恢復、長時間運行與回退證據|定義故障條件與受支援恢復行為|
|安全|身份、權限、通訊、更新完整性與審計證據|定義已實作控制與已測範圍|
|隱私|數據收集、儲存、同步、保留、刪除、Vision 與 AI 隱私證據|定義數據行為與政策邊界|
|能源|量測、比較模型、報告與負載驗證|定義條件，除非已證明，避免保證節能|
|認證|有效測試報告、認證、Listed 或合規文件|說明準確型號、市場、標準與認證狀態|

---

## E.16 Validation Boundary Statement Template

## E.16 驗證邊界聲明模板

## EN

A Validation Boundary Statement should be included whenever validation evidence is used to support a capability, deployment, or claim.

The statement should clearly define what was tested, under what conditions, and what the result may support.

## ZH-TW

當驗證證據被用於支持能力、部署或宣稱時，應包含驗證邊界聲明。

該聲明應清楚定義測試了什麼、在什麼條件下測試，以及該結果可以支持什麼。

---

## English Table

|Boundary Statement Field|Required Content|
|---|---|
|Tested capability|Capability, behavior, or claim being validated|
|Tested components|Devices, services, runtime, cloud, Edge, App, or deployment components used|
|Tested versions|Hardware, firmware, software, cloud, Edge model, runtime, and document versions|
|Tested conditions|Network, load, device count, environment, site, configuration, and privacy settings|
|Evidence reference|Evidence ID, report, log, measurement, certification, or audit record|
|Supported claim|Exact claim or internal statement supported by the evidence|
|Limitations|Conditions not covered by the validation|
|Revalidation trigger|Changes that require retesting or review|
|Approval status|Draft, reviewed, approved, final, superseded, archived, or rejected|

## 中文表

|邊界聲明欄位|必須內容|
|---|---|
|已測能力|被驗證的能力、行為或宣稱|
|已測組件|使用的設備、服務、Runtime、Cloud、Edge、App 或部署組件|
|已測版本|硬體、韌體、軟體、雲端、Edge 模型、Runtime 與文件版本|
|已測條件|網路、負載、設備數、環境、站點、配置與隱私設定|
|證據參考|Evidence ID、報告、日誌、量測、認證或審計記錄|
|支持宣稱|證據支持的精確宣稱或內部表述|
|限制|該驗證未覆蓋的條件|
|重新驗證觸發|需要重新測試或審查的變更|
|核准狀態|草案、已審查、已核准、最終版、已取代、已歸檔或已拒絕|

---

## E.17 Validation Boundary

## E.17 驗證框架邊界

## EN

This Validation Framework defines how validation should be structured, recorded, reviewed, and connected to claims. It does not by itself validate any capability, certify any product, approve any claim, or confirm deployment success.

A validation framework is a governance structure. Actual validation requires test execution, evidence records, review, and approval.

Therefore, this appendix must be used together with actual test plans, test reports, product specifications, deployment records, security reviews, privacy reviews, certification evidence, and claim approval records.

## ZH-TW

本驗證框架定義驗證應如何被結構化、記錄、審查，並與宣稱連接。它本身不驗證任何能力、不認證任何產品、不核准任何宣稱，也不確認部署成功。

驗證框架是一種治理結構。實際驗證需要測試執行、證據記錄、審查與核准。

因此，本附錄必須與實際測試計劃、測試報告、產品規格書、部署記錄、安全審查、隱私審查、認證證據與宣稱核准記錄一起使用。

---

## English Table

|Validation Framework Can Define|Validation Framework Cannot Confirm|
|---|---|
|Validation structure|Actual test completion|
|Evidence requirements|Product certification|
|Validation status model|Commercial readiness|
|Claim linkage method|Claim approval without evidence|
|Boundary statement format|Capacity result without testing|
|Governance process|Security effectiveness without validation|
|Checklist requirements|Privacy compliance without policy and test evidence|
|Revalidation triggers|Deployment success without site validation|

## 中文表

|驗證框架可以定義|驗證框架不能確認|
|---|---|
|驗證結構|實際測試完成|
|證據要求|產品認證|
|驗證狀態模型|商業就緒|
|宣稱關聯方法|缺少證據的宣稱核准|
|邊界聲明格式|未經測試的容量結果|
|治理流程|缺少驗證的安全有效性|
|清單要求|缺少政策與測試證據的隱私合規|
|重新驗證觸發|未經站點驗證的部署成功|

---

## E.18 Appendix Conclusion

## E.18 附錄結論

## EN

This appendix defines the Validation Framework for the OceanAI System Architecture Specification. It provides a structured reference for validation principles, validation status, validation scope, architecture validation, runtime validation, connectivity validation, security and privacy validation, capacity and reliability validation, deployment validation, claim validation, evidence records, boundary statements, and validation governance.

The framework reinforces a central principle of OceanAI: system capability must remain evidence-based, boundary-aware, version-bound, and claim-controlled.

Validation is what converts architecture language into trusted system capability.

## ZH-TW

本附錄定義《OceanAI 系統架構規格書》的驗證框架，為驗證原則、驗證狀態、驗證範圍、架構驗證、Runtime 驗證、連接驗證、安全與隱私驗證、容量與可靠性驗證、部署驗證、宣稱驗證、證據記錄、邊界聲明與驗證治理提供結構化參考。

此框架再次強化 OceanAI 的核心原則：系統能力必須基於證據、具備邊界意識、綁定版本，並受宣稱管控。

驗證，是將架構語言轉化為可信系統能力的過程。