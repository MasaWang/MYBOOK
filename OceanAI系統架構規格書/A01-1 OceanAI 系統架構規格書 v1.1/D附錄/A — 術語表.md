# Appendix A — Terminology

# Appendix A — 術語表

---

## A.1 Purpose

## A.1 目的

## EN

This appendix defines the core terminology used in the OceanAI System Architecture Specification. The purpose of the terminology appendix is to maintain consistent meaning across architecture documents, product specifications, commercial specifications, deployment documents, validation records, and future system evolution.

These terms should be used as the official reference vocabulary for the OceanAI / Artibird coordinated intelligent environment system. Each term is defined according to its architectural role, not only according to its product name or commercial description.

## ZH-TW

本附錄定義《OceanAI 系統架構規格書》中使用的核心術語。術語表的目的，是在架構文件、產品規格書、商業規格書、部署文件、驗證記錄與未來系統演進中維持一致語義。

這些術語應作為 OceanAI / Artibird 協同智慧空間系統的正式參考詞彙。每一個術語均依其架構角色定義，而不僅依產品名稱或商業描述定義。

---

## A.2 Core Architecture Terms

## A.2 核心架構術語

## English Table

|Term|Definition|
|---|---|
|OceanAI|A system-level coordinated intelligence architecture for physical environments, organizing local runtime, cloud services, Edge intelligence, data models, devices, security, privacy, validation, and governance into one coherent system.|
|Artibird|The product and physical device layer that allows the OceanAI architecture to take form in real environments through devices, interfaces, gateways, sensing nodes, execution nodes, and synchronization nodes.|
|Coordinated Intelligent Environment|A physical environment in which devices, data, users, services, sensing, execution, cloud, Edge, and runtime behavior operate as a coordinated system rather than isolated components.|
|System-Level Intelligence Architecture|An architecture that defines how intelligence is distributed, coordinated, bounded, validated, and governed across devices, data, services, and physical spaces.|
|Architecture Layer|A defined responsibility layer within the system, such as Cloud Layer, Edge Intelligence Layer, Local Runtime Layer, Device Access Layer, Interaction Layer, Sensing Layer, Execution Layer, or Device Participation Layer.|
|Runtime|The active operating layer where events, commands, states, scenes, automations, priorities, synchronization, and failure behavior are processed.|
|Local Runtime|The runtime behavior hosted within the local environment, responsible for supported local control, state management, scenes, automation, command routing, and failure behavior.|
|ArtiOS|The local runtime platform of the OceanAI / Artibird system, responsible for local coordination, state management, rules, scenes, automation, command routing, and service orchestration.|
|Architecture Boundary|The defined limit of what a system layer, function, service, product, or claim may support under validated conditions.|
|Governance|The architectural discipline that keeps system behavior, data handling, AI-assisted functions, security, privacy, capacity, deployment, and claims within defined and validated boundaries.|

## 中文表

|術語|定義|
|---|---|
|OceanAI|面向物理環境的系統級協同智慧架構，將本地 Runtime、雲端服務、Edge 智慧、數據模型、設備、安全、隱私、驗證與治理組織為一個連貫系統。|
|Artibird|OceanAI 架構中的產品與實體設備層，透過設備、介面、網關、感知節點、執行節點與同步節點，使 OceanAI 架構在真實環境中形成實體形態。|
|協同智慧空間|設備、數據、用戶、服務、感知、執行、雲端、Edge 與 Runtime 行為作為協同系統共同運作的物理環境，而非孤立組件集合。|
|系統級智慧架構|定義智慧如何在設備、數據、服務與物理空間之間被分布、協同、約束、驗證與治理的架構。|
|架構層|系統中具有已定義責任的層級，例如雲端層、邊緣智慧層、本地 Runtime 層、設備接入層、互動層、感知層、執行層或設備參與層。|
|Runtime|處理事件、指令、狀態、場景、自動化、優先級、同步與故障行為的主動運行層。|
|本地 Runtime|承載於本地環境中的 Runtime 行為，負責受支援本地控制、狀態管理、場景、自動化、指令路由與故障行為。|
|ArtiOS|OceanAI / Artibird 系統的本地 Runtime 平台，負責本地協同、狀態管理、規則、場景、自動化、指令路由與服務編排。|
|架構邊界|系統層級、功能、服務、產品或宣稱在已驗證條件下可支援內容的已定義限制。|
|治理|使系統行為、數據處理、AI 輔助功能、安全、隱私、容量、部署與宣稱保持在已定義且已驗證邊界內的架構紀律。|

---

## A.3 System Layer Terms

## A.3 系統層級術語

## English Table

|Term|Definition|
|---|---|
|Cloud Layer|The architecture layer responsible for remote access, account services, synchronization, lifecycle management, historical data, analytics, alerts, and multi-site management.|
|Edge Intelligence Layer|The architecture layer responsible for local AI-assisted inference, interpretation, visual analysis, sensor fusion, contextual understanding, and optimization support.|
|Local Runtime Layer|The architecture layer responsible for local coordination, state management, scenes, automation, command routing, priority handling, and supported offline behavior.|
|Device Access Layer|The architecture layer responsible for device discovery, onboarding, authentication, gateway communication, protocol access, and local network participation.|
|Interaction Layer|The architecture layer responsible for user intention, control interfaces, scene selection, configuration, feedback, App interaction, Panel interaction, and Switch input.|
|Sensing Layer|The architecture layer responsible for environmental, visual, device, energy, and contextual input.|
|Execution Layer|The architecture layer responsible for controlled physical actions, including relay control, load control, plug control, appliance synchronization, and other supported output actions.|
|Device Participation Layer|The architecture layer representing supported physical devices participating in the runtime system as interaction, sensing, execution, access, synchronization, or service participants.|
|Cross-Layer Coordination|The process by which multiple architecture layers cooperate through runtime behavior, data flow, command routing, synchronization, security rules, privacy boundaries, and validation evidence.|
|Layer Boundary|The defined responsibility and limit of an architecture layer, preventing one layer from claiming or replacing the role of another without validated design.|

## 中文表

|術語|定義|
|---|---|
|雲端層|負責遠端存取、帳號服務、同步、生命週期管理、歷史數據、分析、警報與多站點管理的架構層。|
|邊緣智慧層|負責本地 AI 輔助推理、解讀、視覺分析、感測融合、上下文理解與優化支持的架構層。|
|本地 Runtime 層|負責本地協同、狀態管理、場景、自動化、指令路由、優先級處理與受支援離線行為的架構層。|
|設備接入層|負責設備發現、入網、身份認證、網關通訊、協議接入與本地網路參與的架構層。|
|互動層|負責用戶意圖、控制介面、場景選擇、配置、回饋、App 互動、Panel 互動與 Switch 輸入的架構層。|
|感知層|負責環境、視覺、設備、能源與上下文輸入的架構層。|
|執行層|負責受控物理動作的架構層，包括繼電器控制、負載控制、插座控制、家電同步與其他受支援輸出動作。|
|設備參與層|表示受支援實體設備作為互動、感知、執行、接入、同步或服務參與者加入 Runtime 系統的架構層。|
|跨層協同|多個架構層透過 Runtime 行為、數據流、指令路由、同步、安全規則、隱私邊界與驗證證據共同運作的過程。|
|層級邊界|架構層的已定義責任與限制，用於防止某一層在未經驗證設計下宣稱或取代另一層的角色。|

---

## A.4 OceanAI Platform Terms

## A.4 OceanAI 平台術語

## English Table

|Term|Definition|
|---|---|
|OceanAI Cloud|The cloud service layer of OceanAI, responsible for account management, remote access, synchronization, lifecycle services, historical data, analytics, alerts, and multi-site management.|
|OceanAI Edge|The Edge intelligence layer of OceanAI, typically deployed on local AI-capable hardware, responsible for AI-assisted inference, visual understanding, sensor fusion, contextual interpretation, and optimization support.|
|OceanAI System Architecture|The architecture-level reference that defines OceanAI’s system identity, layer model, runtime behavior, local-cloud-edge coordination, security, privacy, governance, capacity, deployment, validation, and evolution strategy.|
|OceanAI Runtime|The active operating structure through which events, commands, states, scenes, automations, priorities, and failure behavior are processed.|
|OceanAI Data Model|The structured representation of devices, spaces, users, roles, services, configurations, capabilities, health states, events, commands, and validation records.|
|OceanAI Governance Model|The system of rules and boundaries that controls AI behavior, runtime decisions, data handling, security, privacy, engineering claims, commercial claims, certification language, and traceability.|
|OceanAI Validation Framework|The evidence-based framework used to test and validate architecture behavior, runtime behavior, connectivity, security, privacy, capacity, reliability, deployment, and claims.|
|OceanAI Deployment Architecture|The architecture discipline that defines how OceanAI is applied to specific physical environments such as homes, classrooms, offices, buildings, campuses, energy systems, vision-aware spaces, agriculture, and infrastructure.|

## 中文表

|術語|定義|
|---|---|
|OceanAI Cloud|OceanAI 的雲端服務層，負責帳號管理、遠端存取、同步、生命週期服務、歷史數據、分析、警報與多站點管理。|
|OceanAI Edge|OceanAI 的 Edge 智慧層，通常部署於具備本地 AI 能力的硬體上，負責 AI 輔助推理、視覺理解、感測融合、上下文解讀與優化支持。|
|OceanAI 系統架構|定義 OceanAI 系統身份、分層模型、Runtime 行為、本地—雲端—Edge 協同、安全、隱私、治理、容量、部署、驗證與演進策略的架構級參考。|
|OceanAI Runtime|處理事件、指令、狀態、場景、自動化、優先級與故障行為的主動運行結構。|
|OceanAI 數據模型|設備、空間、用戶、角色、服務、配置、能力、健康狀態、事件、指令與驗證記錄的結構化表示。|
|OceanAI 治理模型|控制 AI 行為、Runtime 決策、數據處理、安全、隱私、工程宣稱、商業宣稱、認證語言與可追溯性的規則與邊界體系。|
|OceanAI 驗證框架|用於測試與驗證架構行為、Runtime 行為、連接、安全、隱私、容量、可靠性、部署與宣稱的證據型框架。|
|OceanAI 部署架構|定義 OceanAI 如何應用於住宅、教室、辦公、建築、校園、能源系統、視覺感知空間、農業與基礎設施等特定物理環境的架構紀律。|

---

## A.5 Artibird Product Terms

## A.5 Artibird 產品術語

## English Table

|Term|Definition|
|---|---|
|Artibird Hub|The local runtime center that hosts local services, MQTT broker, state management, automation, web services, and ArtiOS modules.|
|Artibird Gate|The device access gateway responsible for device onboarding, gateway communication, local network participation, and supported Wi-Fi, Ethernet, BLE Mesh, or Wi-Fi Mesh access depending on variant.|
|Artibird Sync|The appliance synchronization node responsible for IR / RF appliance control and synchronization within the runtime system.|
|Artibird Switch|The smart switch and event node family, supporting touch input, scene triggering, and relay control depending on variant.|
|Artibird Panel|The room-level interaction interface for shared control, scene selection, device groups, status feedback, and room-level user interaction.|
|Artibird Act|The electrical execution node responsible for relay behavior, plug behavior, load control, and optional energy measurement depending on variant.|
|Artibird Sense|The environmental sensing and context node responsible for temperature, humidity, light, occupancy, environmental signals, and other supported sensing inputs.|
|Artibird Vision|The visual context and AI vision node responsible for visual events, local recording where supported, security awareness, and AI-assisted visual context.|
|Artibird App|The user-facing mobile or software interface for setup, local control, remote access, configuration, status viewing, and supported system interaction.|
|Artibird Device|Any supported physical device in the Artibird product layer that participates in the OceanAI runtime system.|

## 中文表

|術語|定義|
|---|---|
|Artibird Hub|本地 Runtime 中心，承載本地服務、MQTT Broker、狀態管理、自動化、Web 服務與 ArtiOS 模組。|
|Artibird Gate|設備接入網關，負責設備入網、網關通訊、本地網路參與，以及依版本支援 Wi-Fi、Ethernet、BLE Mesh 或 Wi-Fi Mesh 接入。|
|Artibird Sync|家電同步節點，負責 Runtime 系統中的 IR / RF 家電控制與同步。|
|Artibird Switch|智慧開關與事件節點產品族，依版本支援觸控輸入、場景觸發與繼電器控制。|
|Artibird Panel|房間級互動介面，用於共享控制、場景選擇、設備群組、狀態回饋與房間級用戶互動。|
|Artibird Act|電力執行節點，依版本負責繼電器行為、插座行為、負載控制與可選能源量測。|
|Artibird Sense|環境感知與上下文節點，負責溫度、濕度、光照、人在、環境信號與其他受支援感測輸入。|
|Artibird Vision|視覺上下文與 AI 視覺節點，負責視覺事件、支援條件下本地錄影、安全感知與 AI 輔助視覺上下文。|
|Artibird App|面向用戶的行動或軟體介面，用於設定、本地控制、遠端存取、配置、狀態查看與受支援系統互動。|
|Artibird 設備|Artibird 產品層中任何參與 OceanAI Runtime 系統的受支援實體設備。|

---

## A.6 Runtime Terms

## A.6 Runtime 術語

## English Table

|Term|Definition|
|---|---|
|Event|A signal or change generated by a device, user, sensor, cloud service, Edge function, or system process that may be processed by the runtime.|
|Command|An actionable instruction sent to a device, service, runtime process, or execution target under permission, priority, capability, and validation rules.|
|State|The current condition of a device, service, scene, automation, user context, space, or system component.|
|Scene|A predefined multi-device behavior executed by the runtime under defined configuration and conditions.|
|Automation|A conditional runtime rule based on time, event, state, sensor input, user condition, or supported context.|
|Command Routing|The process of directing commands from their source to the correct target through permitted runtime paths.|
|State Management|The process of maintaining and updating the current condition of devices, spaces, scenes, automations, services, and the system.|
|Runtime Priority|The precedence model that determines which actions override others, including safety, local manual control, local automation, Edge-assisted logic, cloud commands, and background synchronization.|
|Failure Behavior|The defined system response when a device, service, layer, network path, cloud service, Edge service, or runtime component becomes unavailable or degraded.|
|Recovery Behavior|The defined process by which the system returns from failure or degraded state to supported operation.|

## 中文表

|術語|定義|
|---|---|
|事件|由設備、用戶、感測器、雲端服務、Edge 功能或系統流程產生，可被 Runtime 處理的信號或變化。|
|指令|在權限、優先級、能力與驗證規則下，傳送至設備、服務、Runtime 流程或執行目標的可執行指示。|
|狀態|設備、服務、場景、自動化、用戶上下文、空間或系統組件的當前條件。|
|場景|由 Runtime 在已定義配置與條件下執行的預定義多設備行為。|
|自動化|基於時間、事件、狀態、感測輸入、用戶條件或受支援上下文的條件性 Runtime 規則。|
|指令路由|將指令從來源透過被允許 Runtime 路徑導向正確目標的過程。|
|狀態管理|維護並更新設備、空間、場景、自動化、服務與系統當前條件的過程。|
|Runtime 優先級|決定不同動作優先順序的模型，包括安全、本地手動控制、本地自動化、Edge 輔助邏輯、雲端指令與背景同步。|
|故障行為|當設備、服務、層級、網路路徑、雲端服務、Edge 服務或 Runtime 組件不可用或降級時，系統的已定義回應。|
|恢復行為|系統從故障或降級狀態恢復至受支援運作的已定義流程。|

---

## A.7 Local, Cloud, and Edge Terms

## A.7 本地、雲端與 Edge 術語

## English Table

|Term|Definition|
|---|---|
|Local-First|An architecture principle in which supported core runtime behavior can operate locally when required local components are present.|
|Cloud-Enhanced|A system model in which cloud services extend remote access, synchronization, lifecycle, analytics, alerts, and multi-site capability without replacing local runtime by default.|
|Edge-Assisted|A system model in which Edge intelligence provides AI-assisted interpretation, recommendation, detection, context, or optimization support within defined boundaries.|
|Local Behavior|System behavior that operates within the local environment through local runtime, local network, local state, and supported local devices.|
|Cloud-Required Behavior|System behavior that requires cloud service availability, account service, remote access path, or cloud-side processing.|
|Edge-Required Behavior|System behavior that requires deployed Edge hardware, AI models, supported input data, and Edge processing availability.|
|Offline Operation|Supported local behavior that continues without Internet or cloud availability under defined local conditions.|
|Synchronization|The process of aligning selected data between local runtime, cloud services, App interfaces, Edge services, or other supported components.|
|Data Residency|The defined location where data is stored, processed, retained, accessed, or synchronized.|
|Decision Boundary|The rule defining which layer may influence decisions and under what conditions a decision may become physical action.|

## 中文表

|術語|定義|
|---|---|
|本地優先|當所需本地組件具備時，受支援核心 Runtime 行為可在本地運作的架構原則。|
|雲端增強|雲端服務在預設不取代本地 Runtime 的前提下，擴展遠端存取、同步、生命週期、分析、警報與多站點能力的系統模型。|
|Edge 輔助|Edge 智慧在已定義邊界內提供 AI 輔助解讀、建議、偵測、上下文或優化支持的系統模型。|
|本地行為|透過本地 Runtime、本地網路、本地狀態與受支援本地設備在本地環境中運作的系統行為。|
|必須雲端行為|需要雲端服務可用性、帳號服務、遠端存取路徑或雲端側處理的系統行為。|
|必須 Edge 行為|需要已部署 Edge 硬體、AI 模型、受支援輸入數據與 Edge 處理可用性的系統行為。|
|離線運作|在明確本地條件下，無 Internet 或雲端可用性時仍可延續的受支援本地行為。|
|同步|在本地 Runtime、雲端服務、App 介面、Edge 服務或其他受支援組件之間對齊特定數據的過程。|
|數據駐留|數據被儲存、處理、保留、存取或同步的已定義位置。|
|決策邊界|定義哪一層可以影響決策，以及在什麼條件下決策可轉化為物理動作的規則。|

---

## A.8 AI and Edge Terms

## A.8 AI 與 Edge 術語

## English Table

|Term|Definition|
|---|---|
|AI-Assisted|A behavior in which AI provides interpretation, recommendation, detection, classification, summary, or optimization support without unrestricted control authority.|
|Local AI Inference|AI model execution performed within a local or Edge environment rather than relying exclusively on cloud processing.|
|SLM|Small Language Model, used for limited reasoning, explanation, user guidance, troubleshooting support, context summarization, or configuration assistance under defined boundaries.|
|VLM|Vision-Language Model, used for supported visual and language-based interpretation of scenes, objects, spatial context, or multimodal input.|
|Vision Analysis|The process of analyzing visual input for supported events, context, occupancy, object presence, appliance indicators, visual anomalies, or security awareness.|
|Sensor Fusion|The process of combining multiple data sources, such as temperature, humidity, light, occupancy, energy, device state, visual data, and runtime state, to form richer context.|
|AI Recommendation|An AI-generated suggestion that does not become action unless approved by user, runtime rule, permission, priority, and validation boundary.|
|AI Control Input|An AI output that may influence physical execution only after explicit implementation, validation, permission, safety, and runtime governance.|
|AI Governance|The set of rules that bounds AI interpretation, recommendations, alerts, optimization, privacy behavior, and runtime influence.|
|Model Boundary|The defined scope of a model’s supported task, input condition, output category, hardware requirement, validation evidence, and claim limit.|

## 中文表

|術語|定義|
|---|---|
|AI 輔助|AI 提供解讀、建議、偵測、分類、摘要或優化支持，但不具備不受限制控制權威的行為。|
|本地 AI 推理|在本地或 Edge 環境中執行 AI 模型，而不是完全依賴雲端處理。|
|SLM|小型語言模型，用於在已定義邊界下支援有限推理、解釋、用戶引導、故障排查支持、上下文摘要或配置輔助。|
|VLM|視覺語言模型，用於對場景、物體、空間上下文或多模態輸入進行受支援視覺與語言解讀。|
|視覺分析|對視覺輸入進行分析，以支援事件、上下文、人在、物體存在、家電指示、視覺異常或安全感知。|
|感測融合|將溫度、濕度、光照、人在、能源、設備狀態、視覺數據與 Runtime 狀態等多種數據來源融合，以形成更豐富上下文的過程。|
|AI 建議|AI 生成的建議，在未經用戶、Runtime 規則、權限、優先級與驗證邊界核准前，不會成為動作。|
|AI 控制輸入|AI 輸出在經過明確實作、驗證、權限、安全與 Runtime 治理後，才可影響物理執行。|
|AI 治理|約束 AI 解讀、建議、警報、優化、隱私行為與 Runtime 影響的規則體系。|
|模型邊界|模型受支援任務、輸入條件、輸出類別、硬體要求、驗證證據與宣稱限制的已定義範圍。|

---

## A.9 Data and Validation Terms

## A.9 數據與驗證術語

## English Table

|Term|Definition|
|---|---|
|System Data Model|The structured representation of devices, spaces, users, roles, services, configurations, capabilities, health states, events, commands, telemetry, and validation records.|
|Device Model|The representation of a device through identity, product type, version, capability, state, connectivity, security identity, health status, and validation status.|
|Space Model|The representation of physical environments such as rooms, zones, floors, buildings, campuses, sites, fields, facilities, and infrastructure areas.|
|User and Role Model|The representation of users, roles, permissions, access scope, ownership, organization, and site relationships.|
|Capability Model|The representation of what a device, service, layer, or deployment can support under defined version, condition, permission, and validation boundaries.|
|Health Model|The representation of component condition, such as Online, Offline, Degraded, Error, Updating, Unbound, Disabled, Unsupported, or Unknown.|
|Validation|The process of confirming that a tested behavior supports an intended capability, requirement, boundary, or claim.|
|Validation Evidence|Recorded proof that a behavior, capability, boundary, or claim has been tested under defined conditions.|
|Claim Validation|The process of confirming that engineering, commercial, deployment, security, privacy, AI, capacity, reliability, or certification-related claims are supported by evidence.|
|Validation Boundary|The limit defining where a validation result applies, including version, hardware, software, network, load, deployment, privacy, security, and claim conditions.|

## 中文表

|術語|定義|
|---|---|
|系統數據模型|設備、空間、用戶、角色、服務、配置、能力、健康狀態、事件、指令、遙測與驗證記錄的結構化表示。|
|設備模型|透過身份、產品類型、版本、能力、狀態、連接方式、安全身份、健康狀態與驗證狀態對設備進行表示。|
|空間模型|對房間、分區、樓層、建築、校園、站點、田地、設施與基礎設施區域等物理環境的表示。|
|用戶與角色模型|對用戶、角色、權限、存取範圍、所有權、組織與站點關係的表示。|
|能力模型|對設備、服務、層級或部署在已定義版本、條件、權限與驗證邊界下可支援內容的表示。|
|健康狀態模型|對組件狀態的表示，例如在線、離線、降級、錯誤、更新中、未綁定、已停用、不支援或未知。|
|驗證|確認已測行為是否支持某一預期能力、要求、邊界或宣稱的過程。|
|驗證證據|行為、能力、邊界或宣稱已在明確條件下完成測試的記錄證明。|
|宣稱驗證|確認工程、商業、部署、安全、隱私、AI、容量、可靠性或認證相關宣稱是否由證據支持的過程。|
|驗證邊界|定義驗證結果適用範圍的限制，包括版本、硬體、軟體、網路、負載、部署、隱私、安全與宣稱條件。|

---

## A.10 Security and Privacy Terms

## A.10 安全與隱私術語

## English Table

|Term|Definition|
|---|---|
|Device Trust|The process by which a supported device is identified, authenticated, authorized, bound, and validated before participating in the system.|
|Identity and Access Control|The model defining how users, roles, accounts, organizations, sites, services, and devices are authenticated and authorized.|
|Role-Based Access Control|A permission model that defines what owners, admins, users, installers, guests, support personnel, organization managers, service operators, Edge operators, and auditors may access or control.|
|Secure Communication|Protected communication between devices, gateways, local runtime, App, cloud services, Edge systems, support channels, and lifecycle services where implemented.|
|Firmware Integrity|The requirement that firmware version, update path, compatibility, rollback, and security behavior remain controlled and traceable.|
|Software Integrity|The requirement that runtime, App, cloud, Edge, and service software versions, updates, compatibility, and rollback behavior remain controlled and traceable.|
|Data Protection|The lifecycle control of data collection, processing, storage, synchronization, access, retention, deletion, export, diagnostic use, and audit use.|
|Vision Privacy|The privacy boundary governing visual capture, access, processing, storage, retention, deletion, masking, and synchronization.|
|AI Privacy|The privacy boundary governing AI input, output, processing, model behavior, storage, synchronization, and sharing.|
|Auditability|The ability to record, review, and trace actions, changes, access, commands, updates, failures, validation evidence, and claim approvals.|

## 中文表

|術語|定義|
|---|---|
|設備信任|受支援設備在參與系統前完成識別、認證、授權、綁定與驗證的過程。|
|身份與存取控制|定義用戶、角色、帳號、組織、站點、服務與設備如何被身份認證與授權的模型。|
|角色權限控制|定義 Owner、Admin、User、Installer、Guest、Support、Organization Manager、Service Operator、Edge Operator 與 Auditor 可存取或控制內容的權限模型。|
|安全通訊|在已實作條件下，設備、網關、本地 Runtime、App、雲端服務、Edge 系統、支援通道與生命週期服務之間的受保護通訊。|
|韌體完整性|韌體版本、更新路徑、相容性、回滾與安全行為保持受控且可追溯的要求。|
|軟體完整性|Runtime、App、雲端、Edge 與服務軟體版本、更新、相容性與回滾行為保持受控且可追溯的要求。|
|數據保護|對數據收集、處理、儲存、同步、存取、保留、刪除、匯出、診斷使用與審計使用的生命週期控制。|
|Vision 隱私|治理視覺捕捉、存取、處理、儲存、保留、刪除、遮蔽與同步的隱私邊界。|
|AI 隱私|治理 AI 輸入、輸出、處理、模型行為、儲存、同步與共享的隱私邊界。|
|可審計性|記錄、審查與追蹤動作、變更、存取、指令、更新、故障、驗證證據與宣稱核准的能力。|

---

## A.11 Deployment and Capacity Terms

## A.11 部署與容量術語

## English Table

|Term|Definition|
|---|---|
|Deployment Architecture|The architecture discipline defining how OceanAI is applied to a specific physical environment through component selection, topology, runtime placement, cloud connection, Edge deployment, device access, sensing, execution, privacy, capacity, and validation.|
|Deployment Pattern|A repeatable model for applying OceanAI to a scenario such as residential, classroom, office, building, campus, energy, vision-aware, agriculture, or infrastructure deployment.|
|Deployment Boundary|The defined limit of what a specific deployment may claim based on actual components, versions, site conditions, capacity, privacy settings, network conditions, Edge availability, cloud availability, and validation evidence.|
|Capacity Model|The model defining measurable system limits, including device count, event load, scenes, automations, users, sites, MQTT throughput, latency, storage, cloud synchronization, and Edge processing.|
|Reliability Model|The model defining system behavior under normal, degraded, failed, and recovery conditions.|
|Failure Isolation|The capability or design principle that limits the scope of failure so that one failed component, path, or layer does not unnecessarily stop the entire system.|
|Capacity Validation|Testing used to confirm supported scale, throughput, latency, load, storage, and processing limits under defined conditions.|
|Reliability Validation|Testing used to confirm degraded behavior, fallback, recovery, failure isolation, local continuity, and long-duration stability.|
|Local Continuity|The ability of supported local functions to continue when cloud, Internet, or Edge services are unavailable, provided required local components are present.|
|Degraded Operation|A defined reduced-capability mode when one or more dependencies are unavailable or limited.|

## 中文表

|術語|定義|
|---|---|
|部署架構|定義 OceanAI 如何透過組件選擇、拓撲、Runtime 位置、雲端連接、Edge 部署、設備接入、感知、執行、隱私、容量與驗證應用於特定物理環境的架構紀律。|
|部署模式|將 OceanAI 應用於住宅、教室、辦公、建築、校園、能源、視覺感知、農業或基礎設施等場景的可重複模型。|
|部署邊界|基於實際組件、版本、場地條件、容量、隱私設定、網路條件、Edge 可用性、雲端可用性與驗證證據，定義特定部署可宣稱內容的限制。|
|容量模型|定義可量測系統限制的模型，包括設備數、事件負載、場景、自動化、用戶、站點、MQTT 吞吐量、延遲、儲存、雲端同步與 Edge 處理。|
|可靠性模型|定義系統在正常、降級、故障與恢復條件下行為的模型。|
|故障隔離|限制故障範圍的能力或設計原則，使單一組件、路徑或層級故障不會不必要地停止整個系統。|
|容量驗證|用於確認明確條件下受支援規模、吞吐量、延遲、負載、儲存與處理限制的測試。|
|可靠性驗證|用於確認降級行為、回退、恢復、故障隔離、本地延續與長時間穩定性的測試。|
|本地延續|在所需本地組件具備時，雲端、Internet 或 Edge 服務不可用情況下，受支援本地功能仍可繼續的能力。|
|降級運作|當一個或多個依賴不可用或受限時，系統進入已定義的能力降低模式。|

---

## A.12 Versioning and Claim Terms

## A.12 版本與宣稱術語

## English Table

|Term|Definition|
|---|---|
|Versioning|The controlled process of identifying, classifying, documenting, reviewing, and approving changes across architecture, runtime, data models, products, services, deployments, and documents.|
|Architecture Version|A version identifier controlling changes to architecture principles, layers, models, boundaries, governance, capacity, deployment, and validation framework.|
|Runtime Version|A version identifier controlling changes to event handling, command routing, state behavior, scene execution, automation logic, priority handling, and failure behavior.|
|Product Compatibility|The documented relationship between a product model, hardware version, firmware version, protocol, capability model, runtime role, data model, cloud support, Edge interaction, and validation status.|
|Backward Compatibility|The ability of newer versions to continue supporting earlier products, runtime configurations, data models, services, deployments, or user records under defined conditions.|
|Migration Strategy|The defined process for moving users, devices, configurations, data, services, runtime behavior, cloud records, Edge models, or deployments from one version to another.|
|Roadmap Boundary|The boundary separating current validated capability from beta, prototype, planned, research, partner-specific, deprecated, retired, or speculative capability.|
|Engineering Claim|A technical statement about system behavior, capability, performance, security, privacy, capacity, reliability, deployment, or compatibility.|
|Commercial Claim|A customer-facing, sales-facing, channel-facing, or website-facing statement derived from validated engineering capability and approved boundary language.|
|Certification Claim Boundary|The rule that certification, listing, compliance, safety, or standards-related language may be used only when supported by valid evidence for the relevant model, version, market, and scope.|

## 中文表

|術語|定義|
|---|---|
|版本管理|對架構、Runtime、數據模型、產品、服務、部署與文件變更進行識別、分類、記錄、審查與核准的受控過程。|
|架構版本|控制架構原則、層級、模型、邊界、治理、容量、部署與驗證框架變更的版本識別。|
|Runtime 版本|控制事件處理、指令路由、狀態行為、場景執行、自動化邏輯、優先級處理與故障行為變更的版本識別。|
|產品相容性|產品型號、硬體版本、韌體版本、協議、能力模型、Runtime 角色、數據模型、雲端支援、Edge 互動與驗證狀態之間的已記錄關係。|
|向後相容性|新版本在明確條件下繼續支援早期產品、Runtime 配置、數據模型、服務、部署或用戶記錄的能力。|
|遷移策略|將用戶、設備、配置、數據、服務、Runtime 行為、雲端記錄、Edge 模型或部署從一個版本移至另一個版本的已定義流程。|
|路線圖邊界|將當前已驗證能力與 Beta、原型、規劃、研究、合作夥伴特定、退役中、已退役或概念性能力區分開的邊界。|
|工程宣稱|關於系統行為、能力、性能、安全、隱私、容量、可靠性、部署或相容性的技術表述。|
|商業宣稱|由已驗證工程能力與已核准邊界語言轉化而來，面向客戶、銷售、渠道或網站的表述。|
|認證宣稱邊界|僅在相關型號、版本、市場與範圍具備有效證據時，才可使用認證、Listed、合規、安全或標準相關語言的規則。|

---

## A.13 Terminology Boundary

## A.13 術語邊界

## EN

The terminology in this appendix defines meaning for architecture and documentation consistency. It does not by itself validate a capability, certify a product, approve a commercial claim, or confirm implementation status.

A term may define an architectural role, but actual product behavior, system behavior, capacity, certification, security, privacy, reliability, and commercial use must still be supported by specifications, implementation records, validation evidence, and approval status.

Terminology should therefore be treated as a controlled language layer, not as technical proof by itself.

## ZH-TW

本附錄中的術語用於定義架構與文件一致性的語義。它本身不驗證能力、不認證產品、不核准商業宣稱，也不確認實作狀態。

某一術語可以定義架構角色，但實際產品行為、系統行為、容量、認證、安全、隱私、可靠性與商業使用，仍必須由規格書、實作記錄、驗證證據與核准狀態支持。

因此，術語應被視為受控語言層，而不是技術證明本身。

---

## English Table

|Terminology Can Define|Terminology Cannot Confirm|
|---|---|
|Architecture meaning|Actual implementation status|
|System role|Product certification|
|Layer responsibility|Capacity validation|
|Data model meaning|Security effectiveness without testing|
|Runtime concept|Privacy compliance without policy and validation|
|Claim boundary language|Commercial approval by itself|
|Product-system relationship|Deployment success without site validation|
|Governance vocabulary|Legal or regulatory compliance by itself|

## 中文表

|術語可以定義|術語不能確認|
|---|---|
|架構語義|實際實作狀態|
|系統角色|產品認證|
|層級責任|容量驗證|
|數據模型意義|未經測試的安全有效性|
|Runtime 概念|缺少政策與驗證的隱私合規|
|宣稱邊界語言|商業核准本身|
|產品—系統關係|未經站點驗證的部署成功|
|治理詞彙|法律或法規合規本身|

---

## A.14 Appendix Conclusion

## A.14 附錄結論

## EN

This appendix defines the terminology foundation for the OceanAI System Architecture Specification. It establishes a controlled vocabulary for architecture, system layers, runtime behavior, local-cloud-edge coordination, Artibird product roles, AI and Edge intelligence, data models, security, privacy, deployment, capacity, validation, versioning, and claim governance.

These terms should be used consistently across OceanAI and Artibird architecture documents, product specifications, commercial specifications, deployment references, validation checklists, and future system evolution documents.

## ZH-TW

本附錄定義《OceanAI 系統架構規格書》的術語基礎，建立一套用於架構、系統層級、Runtime 行為、本地—雲端—Edge 協同、Artibird 產品角色、AI 與 Edge 智慧、數據模型、安全、隱私、部署、容量、驗證、版本管理與宣稱治理的受控詞彙。

這些術語應在 OceanAI 與 Artibird 的架構文件、產品規格書、商業規格書、部署參考、驗證清單與未來系統演進文件中保持一致使用。