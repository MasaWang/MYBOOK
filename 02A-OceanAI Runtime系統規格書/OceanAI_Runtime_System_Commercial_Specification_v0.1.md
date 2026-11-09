# OceanAI Runtime System Commercial Specification
# OceanAI Runtime 系統商業規格書

Version｜版本：v0.1 — Candidate｜候選稿  
Document ID｜文件編號：OAI-RT-COM-001（proposed｜提案）  
Revision date｜修訂日期：2026-11-06（America/Los_Angeles）  
Engineering reference｜工程依據：OceanAI Runtime System Engineering Specification v0.1 — OAI-RT-ENG-001

## 0. Document purpose and status｜文件用途與狀態

**EN**  
This specification describes how OceanAI Runtime can be packaged, selected, delivered, accepted and supported for intelligent spaces. It is a candidate commercial specification derived from the supplied Runtime chapters and the author-confirmed Cloud and Hub / ArtiOS scope. Product availability, supported releases, capacity, prices, licenses, service levels and warranty terms require an offering record supported by engineering evidence and commercial approval.

**ZH-TW**  
本規格說明 OceanAI Runtime 如何面向智慧空間組成方案、選型、交付、驗收及支援。本文依指定 Runtime 章節及作者確認的 Cloud、Hub／ArtiOS 範圍形成商業候選規格。產品供應、受支援版本、容量、價格、授權、服務等級與保固條款，須由具有工程證據及商業核准的方案記錄確認。

**EN**  
The names and scope are confirmed; the offering structures below are proposals. A described use case is not a released feature. The companion engineering specification governs technical semantics and identifies unresolved decisions, including D01 priority policy. This document does not revise source files or establish a sales contract.

**ZH-TW**  
名稱及範圍已確認；以下方案結構為提案。使用情境描述不代表功能已發布。配套工程版管理技術語意並列明未決事項，包含 D01 優先策略。本文不修改來源文件，也不構成銷售契約。

## 1. Product positioning｜產品定位

**EN**  
OceanAI Runtime coordinates supported devices, events, state, scenes, automations and control requests within intelligent spaces. It connects user intent and environmental information to permitted actions and makes execution results, operating conditions and recovery visible.

**ZH-TW**  
OceanAI Runtime 在智慧空間中協調受支援設備、事件、狀態、場景、自動化及控制請求。它將用戶意圖與環境資訊連接至允許的動作，並呈現執行結果、運行狀態及恢復過程。

**EN**  
ORT names the system-level runtime architecture. ORT Cloud Runtime is the cloud implementation and serves all managed schools and homes. ART is the Hub implementation and serves the one school or home assigned to that Hub. The two follow the same scene execution logic. This commercial text does not add a separate offering for either name.

**ZH-TW**  
ORT 指系統級運行架構。ORT Cloud Runtime 是雲端實現，服務所有已納管的學校與家庭。ART 是 Hub 實現，服務該 Hub 所屬的一所學校或一個家庭。兩者遵循相同的場景運行邏輯。本商業文本不為這兩個名稱另立方案。

**Candidate short description｜候選簡短介紹**

**EN**  
Coordinate your space. See what happened. Keep supported operations running under their defined conditions.

**ZH-TW**  
協調空間，掌握結果，讓受支援運作在明確條件下持續。

**EN**  
Customers choose the deployment mode according to their Internet conditions, local continuity needs, installation resources, data handling preferences and operational responsibilities. Cloud services can provide remote access and management; Hub / ArtiOS can host the local Runtime. Each choice has a specific dependency and support boundary.

**ZH-TW**  
客戶依 Internet 條件、本地持續運行需求、安裝資源、資料處理偏好及運維責任選擇部署模式。雲端服務可提供遠端存取與管理；Hub／ArtiOS 可承載本地 Runtime。每種選擇均有具體依賴與支援範圍。

## 2. Customer value and evidence｜客戶價值與證據

|Value｜價值|Customer outcome｜客戶結果|Required proof｜所需證據|
|---|---|---|
|Coordinated operation｜協同運作|Devices participate in configured scenes and rules.｜設備參與已配置場景及規則。|Compatibility matrix and scene / rule acceptance results.｜相容性矩陣及場景／規則驗收結果。|
|Visible execution｜執行可見|Users distinguish pending, confirmed, failed and unknown outcomes.｜用戶分辨待定、已確認、失敗及未知結果。|End-to-end command trace and UI verification.｜端到端指令追蹤及介面核對。|
|Local continuity｜本地延續|Selected functions continue during Internet loss in a validated Hub deployment.｜經驗證 Hub 部署在 Internet 中斷時維持指定功能。|Dependency matrix and outage test.｜依賴矩陣及斷網測試。|
|Operational visibility｜運行可見|Operators identify access, service, device and recovery issues.｜運維人員定位接入、服務、設備及恢復問題。|Health fields, logs and fault / recovery demonstrations.｜健康欄位、日誌及故障／恢復展示。|
|Controlled growth｜受控擴展|A site expands within tested capacity and compatible configurations.｜站點依已測容量及相容配置擴展。|Named workload, capacity report and release compatibility.｜具名負載、容量報告及發布相容性。|
|Cloud enhancement｜雲端增強|Remote access, selected history and multi-site visibility where offered.｜方案提供條件下的遠端存取、選定歷史及多站點可見性。|Service scope, permissions and integration acceptance.｜服務範圍、權限及整合驗收。|

## 3. Intended customers and use cases｜目標客戶與使用情境

|Customer / setting｜客戶／場域|Typical need｜典型需求|Selection condition｜選型條件|
|---|---|---|
|Home｜家庭|Lighting, room scenes, appliance control and environmental response.｜照明、房間場景、家電控制及環境回應。|Choose mode by Internet reliance, supported devices and local continuity.｜依 Internet 依賴、設備及本地延續選模式。|
|Classroom｜教室|Teacher controls, lighting / AV scenes, environmental input and equipment status.｜教師控制、照明／影音場景、環境輸入及設備狀態。|Verify physical controls, LAN / Hub, permissions and appliance compatibility.｜核對實體控制、LAN／Hub、權限及家電相容性。|
|Office / shared room｜辦公／共享房間|Shared scene access and room status with manageable support.｜共用場景入口、房間狀態及可管理支援。|Verify common interfaces and user / installer roles.｜核對共用介面及用戶／安裝者角色。|
|Building / campus｜建築／校園|Distributed sites, local operation and central maintenance visibility.｜分布式站點、本地運行及集中維護可見性。|Validate network boundaries, site isolation, capacity and operating ownership.｜驗證網路範圍、站點隔離、容量及運維責任。|
|Energy / facilities｜能源／設施|Load visibility, schedules and operational reporting.｜負載可見性、排程及運行報告。|Metering, load safety and reporting coverage require model-specific evidence.｜計量、負載安全及報告覆蓋須型號證據。|

**EN**  
Agriculture, outdoor infrastructure and other specialized environments require separate device, environmental, connectivity and maintenance validation. These are potential deployment directions, not universal suitability claims. A Runtime license alone does not make an unvalidated pump, valve, camera or electrical load suitable for a site.

**ZH-TW**  
農業、戶外基礎設施及其他專用環境須另作設備、環境、連接與維護驗證。以上為潛在部署方向，不作普遍適用宣稱。僅具 Runtime 授權不代表未驗證泵浦、閥門、攝影機或電氣負載適合該站點。

## 4. Deployment selection｜部署選擇

|Question｜選型問題|Cloud Runtime deployment｜Cloud Runtime 部署|Hub / ArtiOS local deployment｜Hub／ArtiOS 本地部署|
|---|---|---|
|Where does coordination run?｜協同在哪運行？|Cloud Runtime for the assigned site.｜指定站點的 Cloud Runtime。|Local Hub / ArtiOS for assigned resources.｜指定資源的本地 Hub／ArtiOS。|
|Required components｜必要元件|Supported devices / adapters, Internet, account and active cloud service.｜受支援設備／轉接器、Internet、帳號及有效雲端服務。|Compatible Hub, local network / power, devices / adapters and supported Runtime release.｜相容 Hub、本地網路／供電、設備／轉接器及受支援 Runtime 版本。|
|Internet unavailable｜Internet 不可用|Cloud-mediated control / rules are affected; independent device behavior only where validated.｜雲端中介控制／規則受影響；僅保留已驗證獨立設備行為。|Named local functions may continue with functioning local components.｜本地元件正常時，具名本地功能可延續。|
|Remote access｜遠端存取|Through authorized cloud service.｜經授權雲端服務。|Through configured and authorized remote path; local access remains a separate capability.｜經配置及授權遠端路徑；本地存取為另一能力。|
|Operational responsibility｜運維責任|Cloud service and site connectivity responsibilities must be assigned.｜須分配雲端服務及站點連線責任。|Include Hub power / network, backups, updates and local service recovery.｜另含 Hub 供電／網路、備份、更新及本地服務恢復。|
|Change of mode｜模式轉換|Compatibility and controlled migration review required.｜須相容及受控遷移審閱。|Same; no automatic takeover or migration included by implication.｜同樣要求；不隱含自動接管或遷移。|

**EN**  
The two modes share the engineering model, but their available features and service commitments may differ. The signed offering record states the exact supported release and mode. Hub / Cloud synchronization does not mean both are allowed to issue independent authoritative commands to the same resource.

**ZH-TW**  
兩種模式共用工程模型，但可用功能及服務承諾可能不同。經確認方案記錄須列具體受支援版本及模式。Hub／Cloud 同步不表示兩者均可對同一資源獨立發出權威指令。

## 5. Functional scope and product packages｜功能範圍與產品組合

|Capability｜能力|Commercial scope｜商業範圍|Engineering reference｜工程對應|
|---|---|---|
|Device access and identity｜設備接入及身份|Supported model registration, space assignment and access visibility.｜受支援型號註冊、空間指派及接入可見性。|RT-01–RT-03; ENG §5.|
|Control and result visibility｜控制及結果可見性|Authorized actions with execution status and documented feedback limits.｜授權動作、執行狀態及明載回饋限制。|RT-06 / RT-09; ENG §6 / §12.|
|Scenes and automation｜場景及自動化|Configured rules and multi-device actions within tested limits.｜在已測限制內的配置規則及多設備動作。|RT-07 / RT-08; ENG §8.|
|State and health｜狀態及健康|State quality, connection condition, faults and recovery status.｜狀態品質、連接、故障及恢復狀態。|RT-05 / RT-12; ENG §7 / §11 / §14.|
|Cloud services｜雲端服務|Selected remote, synchronization, history, backup and multi-site functions.｜選定遠端、同步、歷史、備份及多站點功能。|RT-11; ENG §3 / §10.|
|Edge / AI assistance｜Edge／AI 輔助|Optional interpretation, operational reports and recovery suggestions.｜選配解讀、運行報告及恢復建議。|ENG §2 / §13 / §14.|

**Candidate offering structure｜候選方案結構**

|Offering record｜方案記錄|Contents to confirm｜須確認內容|
|---|---|
|Cloud Runtime configuration｜Cloud Runtime 配置|Site / device scope, supported operations, cloud dependency, limits, service / support and commercial terms.｜站點／設備範圍、操作、雲端依賴、限制、服務／支援及商業條款。|
|Local Runtime configuration｜本地 Runtime 配置|Hub / Runtime release, adapters, local functions, optional remote services, recovery and local maintenance.｜Hub／Runtime 版本、轉接器、本地功能、選配遠端服務、恢復及本地維護。|
|Deployment and integration service｜部署整合服務|Survey, configuration, integration mapping, acceptance, training and handoff.｜勘查、配置、整合映射、驗收、培訓及交接。|
|Operational assistance option｜運維輔助選項|Log coverage, diagnostic reports, data boundaries and authorized action boundary.｜日誌覆蓋、診斷報告、資料範圍及授權動作邊界。|

**EN**  
These are configuration / service categories, not approved retail tiers, SKUs or prices. A first offer can combine only the categories required for one real deployment. Gate, Hub, Switch, Panel, Sense, Act, Sync and Vision hardware must be itemized separately unless the offering explicitly includes them. A Wi-Fi device may use an existing site AP without Gate where the validated path permits it.

**ZH-TW**  
以上為配置／服務類別，不是已核准零售等級、SKU 或價格。首個方案只需組合一個真實部署所需類別。Gate、Hub、Switch、Panel、Sense、Act、Sync 及 Vision 硬體須另列，除非方案明確包含。Wi-Fi 設備可在經驗證路徑允許時使用現有站點 AP，不一定經 Gate。

## 6. Compatibility and capacity｜相容性與容量

**EN**  
Compatibility is recorded by Runtime release, deployment mode, Hub / Gate / adapter versions, device model / firmware, supported commands / events, network requirements and test evidence. Platform or chip compatibility alone does not establish end-to-end function. Physical feedback and signal-only appliance control must be distinguished in the user experience and acceptance record.

**ZH-TW**  
相容性依 Runtime 版本、部署模式、Hub／Gate／轉接器版本、設備型號／韌體、指令／事件、網路要求及測試證據記錄。平台或晶片相容本身不代表端到端功能。實體回饋與僅發送訊號的家電控制，須於使用體驗及驗收記錄分開。

|Offering limit｜方案限制|Required basis｜必要依據|
|---|---|
|Sites, spaces and devices｜站點、空間及設備|Named topology, active fraction and workload.｜具名拓撲、活躍比例及負載。|
|Scenes / automations｜場景／自動化|Rule complexity, scene width, frequency and tested concurrency.｜規則複雜度、場景廣度、頻率及已測併發。|
|Responsiveness｜反應時間|Local / remote path, stage-specific latency and conditions.｜本地／遠端路徑、分階段延遲及條件。|
|History / logs / backup｜歷史／日誌／備份|Data classes, retention, quota and recovery method.｜資料類型、保存期限、配額及恢復方法。|
|Users / sessions / permissions｜用戶／session／權限|Roles, access scope and tested simultaneous access.｜角色、存取範圍及已測同時存取。|

**EN**  
No numerical production limit is assigned in v0.1. Quotation must use a measured profile or clearly identify a pilot target. “Unlimited,” guaranteed latency, universal compatibility and guaranteed recovery require specific evidence and approval; they are not included in this document.

**ZH-TW**  
v0.1 不指派量產數值上限。報價須使用已測配置，或清楚標示試點目標。「無限制」、保證延遲、通用相容及保證恢復須具體證據及批准；本文未包含這些承諾。

## 7. Delivery and acceptance｜交付與驗收

|Stage｜階段|Deliverable｜交付物|Acceptance basis｜驗收依據|
|---|---|---|
|Survey / selection｜勘查／選型|Site requirements, network / power inventory and chosen mode.｜站點需求、網路／供電盤點及選定模式。|Dependencies and responsibilities confirmed.｜依賴及責任確認。|
|Configuration｜配置|Named builds, devices / adapters, spaces, users, scenes and rules.｜具名建置、設備／轉接器、空間、用戶、場景及規則。|Configuration record and compatibility match.｜配置記錄及相容性一致。|
|Integration｜整合|Existing API / MQTT mappings and permission setup.｜既有 API／MQTT 映射及權限設定。|One action and result traceable end to end.｜一個動作及結果可全程追溯。|
|Acceptance｜驗收|Functional, outage, recovery, state and capacity evidence.｜功能、斷網、恢復、狀態及容量證據。|Applicable engineering AT-01–AT-12 tests and agreed thresholds.｜適用工程 AT-01–AT-12 及約定門檻。|
|Handoff｜交接|Configuration / backup, operating guide, support scope and known issues.｜配置／備份、操作指南、支援範圍及已知問題。|Customer / operator review and recorded disposition.｜客戶／運維審閱及處置記錄。|

**EN**  
For pilot delivery, unresolved items must identify the affected function, owner, temporary boundary and closure evidence. A successful demonstration is not a capacity or long-duration acceptance result. Acceptance must include the promised deployment mode; passing a Hub-local test does not validate the Cloud path, or vice versa.

**ZH-TW**  
試點交付的未解事項須列受影響功能、負責人、暫行範圍及完成證據。展示成功不代表容量或長時間驗收完成。驗收須包含承諾部署模式；Hub 本地測試通過不驗證 Cloud 路徑，反之亦然。

## 8. Responsibility and support boundary｜責任與支援範圍

|Party / function｜角色／功能|Responsibility to assign｜須分配責任|
|---|---|
|Runtime supplier｜Runtime 供應方|Supported builds, defect handling, compatible updates and documented recovery.｜受支援建置、缺陷處理、相容更新及記錄恢復。|
|Cloud service operator｜雲端服務營運方|Hosting, service monitoring, authorized access and agreed retention / backup scope.｜託管、服務監測、授權存取及約定保存／備份。|
|Installer / integrator｜安裝／整合方|Wiring / network suitability, device setup, role configuration, acceptance and handoff.｜配線／網路適用性、設備設定、角色配置、驗收及交接。|
|Site operator / customer｜站點運維／客戶|Power / Internet / LAN within agreed scope, authorized users, approved changes and access to maintain equipment.｜約定範圍內供電／Internet／LAN、授權用戶、核准變更及維護存取。|
|Device supplier｜設備供應方|Ratings, firmware capability, protections and device-specific warranty.｜額定、韌體能力、保護及設備專屬保固。|

**EN**  
The offering must name who backs up local configuration, monitors storage, replaces failed hardware, renews credentials, approves updates and responds to a cloud or local outage. Dependencies on third-party networks, services and appliances must be disclosed. Remote diagnosis requires customer-authorized access and does not imply unlimited control.

**ZH-TW**  
方案須指明誰負責本地配置備份、儲存監測、故障硬體替換、憑證更新、批准升級及回應雲端／本地中斷。須揭露第三方網路、服務及家電依賴。遠端診斷需客戶授權，不代表無限制控制。

## 9. Licensing, pricing and service terms｜授權、價格與服務條件

**EN**  
No price, subscription tier, license duration, support end date, warranty or SLA has been approved in this v0.1. Before quotation, select and document the commercial basis rather than assuming a particular model. Potential dimensions are site / installation, Runtime instance, device scope, service function and integration work; the actual charging basis requires approval.

**ZH-TW**  
本 v0.1 尚未批准價格、訂閱等級、授權期間、支援截止日、保固或 SLA。報價前須選定並記錄商業依據，不預設特定模式。可評估的維度包含站點／安裝、Runtime 實例、設備範圍、服務功能及整合工作；實際計費依據須核准。

|Term｜條件|Must specify before sale｜銷售前須確認|
|---|---|
|Software entitlement｜軟體權益|Functions, version rights, deployment scope and transfer rights.｜功能、版本權利、部署範圍及轉移權。|
|Cloud service｜雲端服務|Included functions, duration, renewal, quota and regional availability.｜包含功能、期間、續約、配額及區域可用性。|
|Expiry / non-renewal｜到期／未續約|Exact local and remote behavior, notice, data export / retention and recovery options.｜本地／遠端具體行為、通知、資料匯出／保存及恢復選項。|
|Support｜支援|Channels, hours, response targets, escalation and supported versions.｜管道、時段、回應目標、升級處理及支援版本。|
|Updates｜更新|Included updates, compatibility, maintenance windows and rollback handling.｜包含更新、相容性、維護窗口及回滾處理。|
|Service commitment｜服務承諾|Measured boundaries, exclusions, responsibility and remedy where agreed.｜經量測範圍、除外事項、責任及約定補救。|

**EN**  
Local continuity during Internet loss and behavior after license or service expiry are separate questions. The offering must state both. Do not assume that local functions require subscription renewal or that they remain licensed indefinitely without a reviewed entitlement policy.

**ZH-TW**  
Internet 中斷時的本地延續，與授權／服務到期後的行為為不同問題。方案須分別說明。不在未審權益策略下，預設本地功能需續訂，或預設其永久授權。

## 10. Data, AI assistance and control policy｜資料、AI 輔助與控制策略

**EN**  
The selected deployment states which data stays local, which is synchronized, who can access it, and how it is retained, exported and deleted. Cloud-managed operation necessarily depends on the data and connectivity needed for its declared functions. Local operation may minimize external dependence for selected core functions while optional cloud services still require connectivity.

**ZH-TW**  
選定部署須說明哪些資料留本地、哪些同步、誰可存取，以及如何保存、匯出及刪除。雲端管理運作依賴其宣告功能所需的資料及連線。本地運作可降低指定核心功能的外部依賴，選配雲端服務仍需連線。

**EN**  
AI reports and recovery suggestions must identify their evidence coverage. The Runtime authorizes actions; device protection remains in force. The inherited system priority model remains the reference until D01 is reviewed. Commercial copy must not promise remote manual priority, autonomous AI control, automatic Cloud takeover or guaranteed self-recovery from the unreviewed Gate proposal.

**ZH-TW**  
AI 報告及恢復建議須標明證據覆蓋。動作由 Runtime 授權，設備保護持續有效。D01 審定前，既有系統優先級模型仍為依據。商業文案不得由未審 Gate 提案承諾遠端手動優先、AI 自主控制、Cloud 自動接管或保證自我恢復。

## 11. Offering record and claim control｜方案記錄與宣稱管理

|Field｜欄位|Required record｜必要記錄|
|---|---|
|Offering identity｜方案身份|Offering ID, revision, owner, approval and availability.｜方案 ID、修訂、負責人、核准及供應狀態。|
|Technical baseline｜技術基準|Engineering document / release, deployment mode and policy version.｜工程文件／發布、部署模式及策略版本。|
|Scope｜範圍|Site / device / user scope, included and excluded functions.｜站點／設備／用戶範圍及包含／排除功能。|
|Dependencies｜依賴|Hardware, firmware, LAN / Internet, Cloud, permissions and optional services.｜硬體、韌體、LAN／Internet、Cloud、權限及選配服務。|
|Limits and evidence｜限制及證據|Capacity / performance profile, compatibility and test report references.｜容量／性能配置、相容性及測試報告引用。|
|Delivery and support｜交付及支援|Acceptance plan, handoff, operation ownership and service terms.｜驗收計畫、交接、運維歸屬及服務條件。|
|Data and entitlement｜資料及權益|Retention, export, expiry / renewal behavior and pricing approval.｜保存、匯出、到期／續約行為及價格核准。|

**EN**  
Publish only functions and limits supported by the named record. A candidate proposal, configuration sample or test target must not appear as a released capability. A specific deployment may launch when its own evidence is complete; unrelated future features need not block it if clearly excluded.

**ZH-TW**  
僅發布具名記錄支持的功能及限制。候選提案、配置樣本或測試目標不得作已發布能力。具體部署在自身證據完成後即可推進；清楚排除的無關未來功能不必阻擋該部署。

## 12. First commercial validation｜首個商業驗證

**EN**  
Use one real room or site, one selected deployment mode and a small supported device set. Deliver a reproducible configuration, one physical interaction, one sensor-driven rule, one execution result trace, a declared outage demonstration and a recovery / support handoff. Quote only that bounded scope. Expand after measuring operating cost, support effort, reliability and customer acceptance.

**ZH-TW**  
先用一個真實房間或站點、一種選定部署模式及一組小規模受支援設備。交付可重現配置、一個實體互動、一條感測觸發規則、一條執行結果追蹤、明列條件的斷網展示及恢復／支援交接。僅對該有界範圍報價。量測運行成本、支援投入、可靠性及客戶驗收後再擴展。

## 13. Source alignment and revision history｜來源對齊與修訂紀錄

**EN**  
This commercial specification maps to the companion engineering v0.1, which records S1 engineering Chapter 6 and S2 architecture v1.1 Chapter 6, including their retrieved blob identifiers. Scope approved by the author includes Cloud Runtime and Hub / ArtiOS Runtime. The original sources primarily describe Hub-local behavior; Cloud productization and all numerical / contractual terms remain unverified. Neither document has been committed to the source repository by this generation.

**ZH-TW**  
本商業版對應配套工程 v0.1；工程版記錄 S1 系統工程第六章及 S2 架構 v1.1 第六章與取得的 blob 識別。作者確認範圍包含 Cloud Runtime 及 Hub／ArtiOS Runtime。原始來源主要描述 Hub 本地行為；Cloud 產品化及全部數值／契約條件仍未驗證。本次生成未將任一文件提交至來源儲存庫。

|Version｜版本|Date｜日期|Change｜變更|
|---|---|---|
|v0.1-Candidate|2026-11-06|Initial bilingual commercial specification: value, deployment, scope, delivery, acceptance, responsibility, entitlement and evidence.｜首次英中商業規格：價值、部署、範圍、交付、驗收、責任、權益及證據。|
