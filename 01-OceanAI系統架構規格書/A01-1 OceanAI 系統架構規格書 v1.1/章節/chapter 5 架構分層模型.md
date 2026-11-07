# 5. Architecture Layer Model

# 5. 架構分層模型

---

## 5.1 Purpose

## 5.1 目的

## EN

This chapter defines the architecture layer model of OceanAI. The layer model explains how OceanAI organizes cloud services, edge intelligence, local runtime, device access, user interaction, sensing, execution, and device participation into one coordinated system architecture.

The purpose of the layer model is to prevent architectural confusion. Each layer has a defined responsibility, boundary, runtime role, data relationship, and validation requirement. A component may participate in more than one layer, but its primary architectural role must remain clear.

## ZH-TW

本章定義 OceanAI 的架構分層模型。分層模型說明 OceanAI 如何將雲端服務、邊緣智慧、本地 Runtime、設備接入、用戶互動、感知、執行與設備參與組織為一套協同系統架構。

分層模型的目的，是避免架構混淆。每一層都具有明確責任、邊界、Runtime 角色、數據關係與驗證要求。一個組件可以參與多個層級，但其主要架構角色必須保持清楚。

---

## English Table

|Layer|Primary Role|
|---|---|
|Cloud Layer|Remote access, synchronization, lifecycle, analytics, account, and multi-site services|
|Edge Intelligence Layer|Local AI-assisted inference, interpretation, vision analysis, sensor fusion, and optimization|
|Local Runtime Layer|Local coordination, state management, scenes, automation, command routing, and runtime services|
|Device Access Layer|Device onboarding, gateway communication, protocol access, and local network participation|
|Interaction Layer|User intention, interface control, scene selection, configuration, and feedback|
|Sensing Layer|Environmental, visual, device, and contextual input|
|Execution Layer|Controlled physical action, relay behavior, load control, appliance synchronization, and output execution|
|Device Participation Layer|Supported physical devices participating in the runtime system|

## 中文表

|層級|主要角色|
|---|---|
|雲端層|遠端存取、同步、生命週期、分析、帳號與多站點服務|
|邊緣智慧層|本地 AI 輔助推理、解讀、視覺分析、感測融合與優化|
|本地 Runtime 層|本地協同、狀態管理、場景、自動化、指令路由與 Runtime 服務|
|設備接入層|設備入網、網關通訊、協議接入與本地網路參與|
|互動層|用戶意圖、介面控制、場景選擇、配置與回饋|
|感知層|環境、視覺、設備與上下文輸入|
|執行層|受控物理動作、繼電器行為、負載控制、家電同步與輸出執行|
|設備參與層|參與 Runtime 系統的受支援實體設備|

---

## 5.2 Layered Architecture Definition

## 5.2 分層架構定義

## EN

The OceanAI layered architecture defines how different responsibilities are separated and coordinated within the system. Each layer represents a distinct architectural responsibility, but the system operates through coordination across layers rather than isolation between layers.

The layer model is not a hierarchy of importance. It is a hierarchy of responsibility. Cloud services do not replace local runtime. Edge intelligence does not replace deterministic control. Device access does not replace runtime logic. Interaction does not directly define execution without permission, priority, and routing rules.

The architecture layer model ensures that every component has a clear role in system operation.

## ZH-TW

OceanAI 分層架構定義系統中不同責任如何被分離與協同。每一層代表一種不同的架構責任，但系統是透過跨層協同運作，而不是透過層級之間的隔離運作。

分層模型不是重要性的層級，而是責任的層級。雲端服務不取代本地 Runtime。Edge 智慧不取代確定性控制。設備接入不取代 Runtime 邏輯。互動不在缺少權限、優先級與路由規則的情況下直接定義執行。

架構分層模型確保每個組件在系統運作中都具有清楚角色。

---

## English Table

|Layer Principle|Description|
|---|---|
|Responsibility separation|Each layer has a defined architectural responsibility|
|Cross-layer coordination|Layers operate together through runtime, data flow, and governance rules|
|Boundary clarity|Each layer has defined limits and dependencies|
|Runtime alignment|Layer behavior must support runtime operation|
|Validation requirement|Layer claims must be validated under defined conditions|
|No layer replacement|One layer should not be assumed to replace another layer without defined design|

## 中文表

|層級原則|說明|
|---|---|
|責任分離|每一層都有已定義架構責任|
|跨層協同|各層透過 Runtime、數據流與治理規則共同運作|
|邊界清晰|每一層都有已定義限制與依賴|
|Runtime 對齊|層級行為必須支援 Runtime 運作|
|驗證要求|層級宣稱必須在明確條件下完成驗證|
|不互相取代|未經明確設計時，一層不應被假設為取代另一層|

---

## 5.3 Cloud Layer

## 5.3 雲端層

## EN

The Cloud Layer provides remote and extended system services. It may include account management, identity services, remote access, synchronization, lifecycle management, historical data, analytics, alerts, multi-site management, and service plan support where implemented.

The Cloud Layer extends the system beyond the local environment. It supports remote visibility, remote control where permitted, cross-site management, long-term records, and system lifecycle operations. However, the Cloud Layer should not be treated as the only foundation for every local physical action.

Cloud behavior must be described according to implemented service scope, account rules, network availability, permission structure, synchronization policy, data policy, and validation evidence.

## ZH-TW

雲端層提供遠端與擴展型系統服務。它可在已實作條件下包含帳號管理、身份服務、遠端存取、同步、生命週期管理、歷史數據、分析、警報、多站點管理與服務方案支援。

雲端層將系統能力擴展至本地環境之外。它支援遠端可視化、權限允許條件下的遠端控制、跨站點管理、長期記錄與系統生命週期操作。然而，雲端層不應被視為所有本地物理動作的唯一基礎。

雲端行為必須依據已實作服務範圍、帳號規則、網路可用性、權限結構、同步政策、數據政策與驗證證據進行描述。

---

## English Table

|Cloud Layer Responsibility|Description|
|---|---|
|Account services|User identity, account binding, organization, site, and role relationship|
|Remote access|Off-site access to supported control, monitoring, and configuration functions|
|Synchronization|Selected state, configuration, logs, lifecycle, and historical data synchronization|
|Lifecycle management|Firmware, software, configuration, and device lifecycle support where implemented|
|Alerts and notifications|Delivery of selected alerts beyond the local environment|
|Historical data|Storage and access to long-term records where enabled|
|Analytics|Reporting, trends, and multi-site insight where supported|
|Multi-site management|Management of multiple homes, buildings, classrooms, campuses, or locations|

## 中文表

|雲端層責任|說明|
|---|---|
|帳號服務|用戶身份、帳號綁定、組織、站點與角色關係|
|遠端存取|對受支援控制、監測與配置功能進行場外存取|
|同步|特定狀態、配置、日誌、生命週期與歷史數據同步|
|生命週期管理|支援條件下韌體、軟體、配置與設備生命週期支援|
|警報與通知|將特定警報傳送至本地環境之外|
|歷史數據|啟用條件下長期記錄的儲存與存取|
|分析|支援條件下報告、趨勢與多站點洞察|
|多站點管理|管理多住宅、建築、教室、校園或地點|

---

## 5.4 Edge Intelligence Layer

## 5.4 邊緣智慧層

## EN

The Edge Intelligence Layer provides local AI-assisted processing and interpretation where deployed. It may support local AI inference, SLM-assisted reasoning, VLM-assisted understanding, visual analysis, sensor fusion, contextual interpretation, and optimization support.

The Edge Intelligence Layer does not replace deterministic runtime behavior. It assists the runtime system by providing interpretation, recommendations, classifications, predictions, or contextual signals within defined boundaries.

Edge intelligence must operate under model constraints, input constraints, hardware constraints, privacy rules, runtime priority rules, and validation requirements. When Edge is unavailable, the system should fall back to supported non-edge runtime behavior where applicable.

## ZH-TW

邊緣智慧層在部署條件下提供本地 AI 輔助處理與解讀。它可支援本地 AI 推理、SLM 輔助推理、VLM 輔助理解、視覺分析、感測融合、上下文解讀與優化支援。

邊緣智慧層不取代確定性 Runtime 行為，而是在已定義邊界內，透過提供解讀、建議、分類、預測或上下文信號來輔助 Runtime 系統。

Edge 智慧必須在模型限制、輸入限制、硬體限制、隱私規則、Runtime 優先級規則與驗證要求之下運作。當 Edge 不可用時，系統應在適用條件下回退至受支援非 Edge Runtime 行為。

---

## English Table

|Edge Intelligence Responsibility|Description|
|---|---|
|Local AI inference|Runs supported AI models locally where deployed|
|SLM-assisted reasoning|Supports limited reasoning or interpretation under defined conditions|
|VLM-assisted understanding|Supports vision-language interpretation where validated|
|Vision analysis|Interprets visual signals within privacy and validation boundaries|
|Sensor fusion|Combines supported sensor, state, and visual data|
|Contextual interpretation|Provides context signals to runtime logic|
|Optimization support|Supports energy, comfort, security, or automation optimization where validated|
|Failure fallback|Falls back to supported non-edge runtime behavior when unavailable|

## 中文表

|邊緣智慧責任|說明|
|---|---|
|本地 AI 推理|在部署條件下本地運行受支援 AI 模型|
|SLM 輔助推理|在明確條件下支援有限推理或解讀|
|VLM 輔助理解|在已驗證條件下支援視覺—語言解讀|
|視覺分析|在隱私與驗證邊界內解讀視覺信號|
|感測融合|融合受支援感測、狀態與視覺數據|
|上下文解讀|向 Runtime 邏輯提供上下文信號|
|優化支援|在已驗證條件下支援能源、舒適度、安全或自動化優化|
|故障回退|不可用時回退至受支援非 Edge Runtime 行為|

---

## 5.5 Local Runtime Layer

## 5.5 本地 Runtime 層

## EN

The Local Runtime Layer is the core operational layer of OceanAI. It is responsible for processing events, routing commands, maintaining state, executing scenes, evaluating automations, applying runtime priorities, coordinating local devices, supporting offline behavior, and handling defined failure conditions.

The Local Runtime Layer is the primary layer where coordinated intelligence becomes operational. It should be designed to support local continuity when required local components are present. Cloud services may enhance it, and Edge intelligence may inform it, but neither should remove the need for clear local runtime responsibility.

The Local Runtime Layer should remain deterministic, governable, testable, and traceable.

## ZH-TW

本地 Runtime 層是 OceanAI 的核心運行層。它負責處理事件、路由指令、維護狀態、執行場景、判斷自動化、套用 Runtime 優先級、協同本地設備、支援離線行為，以及處理已定義故障條件。

本地 Runtime 層是協同智慧真正進入運行狀態的主要層級。當所需本地組件具備時，它應被設計為支援本地延續。雲端服務可以增強它，Edge 智慧可以影響它，但兩者都不應取消清楚本地 Runtime 責任的必要性。

本地 Runtime 層應保持確定性、可治理、可測試與可追溯。

---

## English Table

|Local Runtime Responsibility|Description|
|---|---|
|Event processing|Receives and processes supported events from devices, users, cloud, edge, and services|
|Command routing|Routes commands to appropriate targets according to permissions and priority|
|State management|Maintains current state of devices, rooms, scenes, services, and system components|
|Scene execution|Executes predefined multi-device behavior|
|Automation evaluation|Evaluates rules based on time, events, state, sensor data, or supported context|
|Priority handling|Resolves conflicts between safety, local, automation, edge, cloud, and background actions|
|Offline behavior|Maintains supported local functions without Internet or cloud where possible|
|Failure handling|Defines degraded and recovery behavior when components are unavailable|

## 中文表

|本地 Runtime 責任|說明|
|---|---|
|事件處理|接收並處理來自設備、用戶、雲端、Edge 與服務的受支援事件|
|指令路由|依權限與優先級將指令路由至適當目標|
|狀態管理|維護設備、房間、場景、服務與系統組件的當前狀態|
|場景執行|執行預定義多設備行為|
|自動化判斷|基於時間、事件、狀態、感測數據或受支援上下文判斷規則|
|優先級處理|處理安全、本地、自動化、Edge、雲端與背景動作之間的衝突|
|離線行為|在可能條件下，無 Internet 或雲端時維持受支援本地功能|
|故障處理|定義組件不可用時的降級與恢復行為|

---

## 5.6 Device Access Layer

## 5.6 設備接入層

## EN

The Device Access Layer provides the communication and onboarding structure through which supported devices enter and participate in the OceanAI architecture.

This layer may include gateway behavior, protocol access, device discovery, device authentication, device binding, network participation, local communication, protocol translation where supported, and connection capacity management.

The Device Access Layer should not be confused with the Local Runtime Layer. Device access enables participation, but runtime determines how events, commands, states, scenes, and automations are processed.

## ZH-TW

設備接入層提供受支援設備進入並參與 OceanAI 架構所需的通訊與入網結構。

此層可包含網關行為、協議接入、設備發現、設備身份認證、設備綁定、網路參與、本地通訊、支援條件下協議轉換，以及連接容量管理。

設備接入層不應與本地 Runtime 層混淆。設備接入使設備能夠參與系統，但 Runtime 決定事件、指令、狀態、場景與自動化如何被處理。

---

## English Table

|Device Access Responsibility|Description|
|---|---|
|Device discovery|Enables supported devices to be found by the system|
|Device onboarding|Registers devices into supported local or cloud-linked structures|
|Device authentication|Verifies supported device identity before participation|
|Gateway communication|Passes supported device events and commands through defined paths|
|Protocol access|Supports defined communication protocols and variants|
|Network participation|Maintains device participation in supported local networks|
|Capacity management|Defines connection limits and overload behavior|
|Failure behavior|Defines device access degradation when gateway or network conditions fail|

## 中文表

|設備接入責任|說明|
|---|---|
|設備發現|使受支援設備可被系統發現|
|設備入網|將設備註冊至受支援本地或雲端關聯結構|
|設備身份認證|在設備參與前驗證受支援設備身份|
|網關通訊|透過已定義路徑傳遞受支援設備事件與指令|
|協議接入|支援已定義通訊協議與版本|
|網路參與|維持設備在受支援本地網路中的參與|
|容量管理|定義連接限制與過載行為|
|故障行為|定義網關或網路條件故障時的設備接入降級|

---

## 5.7 Interaction Layer

## 5.7 互動層

## EN

The Interaction Layer captures user intention and system feedback. It may include App interaction, Panel interaction, Switch input, room-level control, scene selection, configuration behavior, status display, and remote or local access.

Interaction does not automatically equal execution. User intention must pass through permission rules, runtime priority, command routing, state logic, safety rules, and validation boundaries before becoming a physical action.

The Interaction Layer allows users to express intention, observe system status, configure system behavior, and participate in coordinated environments.

## ZH-TW

互動層捕捉用戶意圖與系統回饋。它可包含 App 互動、Panel 互動、Switch 輸入、房間級控制、場景選擇、配置行為、狀態顯示，以及本地或遠端存取。

互動不自動等於執行。用戶意圖在轉化為物理動作之前，必須經過權限規則、Runtime 優先級、指令路由、狀態邏輯、安全規則與驗證邊界。

互動層使用戶能夠表達意圖、觀察系統狀態、配置系統行為，並參與協同空間。

---

## English Table

|Interaction Responsibility|Description|
|---|---|
|User intention|Captures control, configuration, scene, automation, or status requests|
|Local control interface|Provides local interaction through supported App, Panel, or Switch paths|
|Remote interface|Provides cloud-supported access where implemented|
|Room-level control|Supports interaction within defined rooms or spaces|
|Scene selection|Allows users to trigger predefined runtime behavior|
|Configuration|Allows setup and modification of supported system settings|
|Status feedback|Displays device, room, system, or alert status|
|Permission enforcement|Interaction must follow role and access rules|

## 中文表

|互動責任|說明|
|---|---|
|用戶意圖|捕捉控制、配置、場景、自動化或狀態請求|
|本地控制介面|透過受支援 App、Panel 或 Switch 路徑提供本地互動|
|遠端介面|在已實作條件下提供雲端支援存取|
|房間級控制|支援已定義房間或空間內的互動|
|場景選擇|允許用戶觸發預定義 Runtime 行為|
|配置|允許設定與修改受支援系統配置|
|狀態回饋|顯示設備、房間、系統或警報狀態|
|權限執行|互動必須遵循角色與存取規則|

---

## 5.8 Sensing Layer

## 5.8 感知層

## EN

The Sensing Layer provides environmental, visual, device, and contextual input to the OceanAI architecture. It may include temperature, humidity, light, occupancy, motion, visual events, device state, energy data, and other supported signals.

Sensing data does not automatically become action. It must be interpreted through runtime rules, automation logic, state context, Edge-assisted models where deployed, privacy rules, and validation boundaries.

The Sensing Layer allows the system to understand changing environmental conditions and support coordinated behavior based on context.

## ZH-TW

感知層向 OceanAI 架構提供環境、視覺、設備與上下文輸入。它可包含溫度、濕度、光照、人在、移動、視覺事件、設備狀態、能源數據與其他受支援信號。

感知數據不會自動成為動作。它必須透過 Runtime 規則、自動化邏輯、狀態上下文、部署條件下 Edge 輔助模型、隱私規則與驗證邊界進行解讀。

感知層使系統能夠理解變化中的環境條件，並基於上下文支援協同行為。

---

## English Table

|Sensing Responsibility|Description|
|---|---|
|Environmental sensing|Provides temperature, humidity, light, occupancy, and related signals where supported|
|Visual sensing|Provides visual events, visual context, recording status, or metadata where supported|
|Device state sensing|Reports state, health, connectivity, or error information|
|Energy sensing|Provides energy-related data where supported|
|Context input|Provides input for runtime, automation, Edge interpretation, or cloud reporting|
|Privacy enforcement|Sensing data must follow privacy and data handling rules|
|Validation requirement|Sensor behavior and claims must be validated under defined conditions|

## 中文表

|感知責任|說明|
|---|---|
|環境感知|在支援條件下提供溫度、濕度、光照、人在與相關信號|
|視覺感知|在支援條件下提供視覺事件、視覺上下文、錄影狀態或元數據|
|設備狀態感知|回報狀態、健康、連接或錯誤資訊|
|能源感知|在支援條件下提供能源相關數據|
|上下文輸入|為 Runtime、自動化、Edge 解讀或雲端報告提供輸入|
|隱私執行|感知數據必須遵循隱私與數據處理規則|
|驗證要求|感測行為與宣稱必須在明確條件下驗證|

---

## 5.9 Execution Layer

## 5.9 執行層

## EN

The Execution Layer performs controlled physical actions. It may include relay control, plug control, load control, appliance synchronization, IR / RF command execution, lighting control, power control, climate-related execution, irrigation control, or other supported output actions.

Execution is the physical outcome of runtime decisions. It must follow command routing, permission rules, runtime priority, safety behavior, device capability, load limits, and validation evidence.

The Execution Layer is where architecture touches the physical environment. For this reason, it must be especially bounded by safety, reliability, capacity, and certification requirements where applicable.

## ZH-TW

執行層完成受控物理動作。它可包含繼電器控制、插座控制、負載控制、家電同步、IR / RF 指令執行、照明控制、電力控制、空調相關執行、灌溉控制或其他受支援輸出動作。

執行是 Runtime 決策的物理結果。它必須遵循指令路由、權限規則、Runtime 優先級、安全行為、設備能力、負載限制與驗證證據。

執行層是架構接觸物理環境的位置。因此，它尤其必須受到安全、可靠性、容量與適用認證要求的邊界約束。

---

## English Table

|Execution Responsibility|Description|
|---|---|
|Relay control|Executes supported on / off behavior|
|Plug control|Controls supported plug or outlet behavior|
|Load control|Controls supported electrical loads within defined ratings|
|Appliance synchronization|Sends IR / RF or related appliance commands where supported|
|Scene output|Executes multi-device scene actions|
|Automation output|Executes rule-based actions|
|Safety behavior|Follows fail-safe, overload, priority, and protection rules|
|Validation requirement|Execution claims must be validated under defined load and deployment conditions|

## 中文表

|執行責任|說明|
|---|---|
|繼電器控制|執行受支援開 / 關行為|
|插座控制|控制受支援插座或插孔行為|
|負載控制|在已定義額定範圍內控制受支援電氣負載|
|家電同步|在支援條件下發送 IR / RF 或相關家電指令|
|場景輸出|執行多設備場景動作|
|自動化輸出|執行基於規則的動作|
|安全行為|遵循故障安全、過載、優先級與保護規則|
|驗證要求|執行宣稱必須在明確負載與部署條件下完成驗證|

---

## 5.10 Device Participation Layer

## 5.10 設備參與層

## EN

The Device Participation Layer represents supported physical devices that participate in the OceanAI architecture. Devices are not treated as isolated endpoints. They are runtime participants that may provide interaction, sensing, execution, synchronization, network access, local services, or visual context.

A device’s participation depends on its product type, hardware version, firmware version, supported protocol, connectivity condition, capability model, assigned space, security identity, runtime role, and validation status.

The Device Participation Layer ensures that physical products are interpreted according to their system role rather than only their standalone function.

## ZH-TW

設備參與層代表參與 OceanAI 架構的受支援實體設備。設備不被視為孤立端點，而是 Runtime 參與者，可提供互動、感知、執行、同步、網路接入、本地服務或視覺上下文。

設備的參與取決於其產品類型、硬體版本、韌體版本、受支援協議、連接條件、能力模型、所屬空間、安全身份、Runtime 角色與驗證狀態。

設備參與層確保實體產品根據其系統角色被理解，而不只是根據其單品功能被理解。

---

## English Table

|Device Participation Role|Description|
|---|---|
|Interaction participant|Provides user input or control interface|
|Sensing participant|Provides environmental, visual, state, or energy input|
|Execution participant|Performs controlled physical actions|
|Synchronization participant|Coordinates appliance or cross-device behavior|
|Access participant|Provides device access, gateway, or network participation|
|Runtime participant|Generates events, receives commands, reports state, or participates in automation|
|Security participant|Holds identity, permission, and authentication relationship|
|Validation participant|Must be tested within defined product and system conditions|

## 中文表

|設備參與角色|說明|
|---|---|
|互動參與者|提供用戶輸入或控制介面|
|感知參與者|提供環境、視覺、狀態或能源輸入|
|執行參與者|完成受控物理動作|
|同步參與者|協調家電或跨設備行為|
|接入參與者|提供設備接入、網關或網路參與|
|Runtime 參與者|產生事件、接收指令、回報狀態或參與自動化|
|安全參與者|持有身份、權限與認證關係|
|驗證參與者|必須在明確產品與系統條件下完成測試|

---

## 5.11 Cross-Layer Coordination

## 5.11 跨層協同

## EN

OceanAI operates through cross-layer coordination. No single layer alone defines system intelligence. Intelligence appears when layers cooperate through runtime behavior, data flow, state management, command routing, cloud synchronization, edge-assisted interpretation, security rules, privacy boundaries, and validation evidence.

For example, a sensing event may originate in the Sensing Layer, pass through the Device Access Layer, be processed by the Local Runtime Layer, be informed by the Edge Intelligence Layer, update a state model, trigger an automation, route a command to the Execution Layer, and optionally synchronize selected results with the Cloud Layer.

Cross-layer coordination must follow defined responsibility and boundary rules. A layer may provide input, but runtime determines whether and how the input becomes action.

## ZH-TW

OceanAI 透過跨層協同運作。沒有任何單一層級能單獨定義系統智慧。智慧出現在各層透過 Runtime 行為、數據流、狀態管理、指令路由、雲端同步、Edge 輔助解讀、安全規則、隱私邊界與驗證證據共同運作時。

例如，一個感知事件可能起源於感知層，經由設備接入層進入系統，由本地 Runtime 層處理，受到 Edge 智慧層輔助解讀，更新狀態模型，觸發自動化，將指令路由至執行層，並可選擇性地將特定結果同步至雲端層。

跨層協同必須遵循已定義責任與邊界規則。某一層可以提供輸入，但 Runtime 決定該輸入是否以及如何成為動作。

---

## English Table

|Cross-Layer Flow|Description|
|---|---|
|Sensing → Runtime|Sensor or visual input is processed by runtime logic|
|Interaction → Runtime|User intention is evaluated by permission, priority, and command routing|
|Runtime → Execution|Runtime decisions become controlled physical actions|
|Runtime → Cloud|Selected state, configuration, logs, or lifecycle data synchronize|
|Sensing / Vision → Edge|Supported input may be interpreted by Edge intelligence|
|Edge → Runtime|Edge-assisted output may inform runtime behavior within defined boundaries|
|Device Access → Runtime|Device events and commands move through supported access paths|
|Security / Privacy → All Layers|Identity, permission, data, and privacy rules constrain all layer behavior|

## 中文表

|跨層流程|說明|
|---|---|
|感知 → Runtime|感測或視覺輸入由 Runtime 邏輯處理|
|互動 → Runtime|用戶意圖透過權限、優先級與指令路由被判斷|
|Runtime → 執行|Runtime 決策轉化為受控物理動作|
|Runtime → 雲端|特定狀態、配置、日誌或生命週期數據進行同步|
|感知 / Vision → Edge|受支援輸入可由 Edge 智慧解讀|
|Edge → Runtime|Edge 輔助輸出可在已定義邊界內影響 Runtime 行為|
|設備接入 → Runtime|設備事件與指令透過受支援接入路徑流動|
|安全 / 隱私 → 所有層|身份、權限、數據與隱私規則約束所有層級行為|

---

## 5.12 Layer Boundary

## 5.12 層級邊界

## EN

Layer boundaries define what each layer may and may not claim, control, replace, or assume. Boundaries prevent the architecture from becoming ambiguous or overextended.

The Cloud Layer may extend remote capability, but it should not be assumed to replace local runtime. The Edge Intelligence Layer may assist interpretation, but it should not be assumed to override deterministic runtime behavior. The Interaction Layer may express intention, but it does not automatically execute action. The Sensing Layer may provide input, but input must be interpreted through rules and validation. The Execution Layer performs physical action, but only within device capability, safety, and validation boundaries.

Layer boundaries must be maintained in architecture documents, product specifications, commercial specifications, deployment plans, and validation reports.

## ZH-TW

層級邊界定義每一層可以或不可以宣稱、控制、取代或假設的內容。邊界防止架構變得模糊或過度擴張。

雲端層可以擴展遠端能力，但不應被假設為取代本地 Runtime。邊緣智慧層可以輔助解讀，但不應被假設為覆蓋確定性 Runtime 行為。互動層可以表達意圖，但不會自動執行動作。感知層可以提供輸入，但輸入必須透過規則與驗證被解讀。執行層完成物理動作，但只能在設備能力、安全與驗證邊界內執行。

層級邊界必須在架構文件、產品規格書、商業規格書、部署方案與驗證報告中保持一致。

---

## English Table

|Layer|Boundary|
|---|---|
|Cloud Layer|Enhances remote and lifecycle capability; does not replace local runtime by default|
|Edge Intelligence Layer|Assists interpretation; does not override runtime without validated design|
|Local Runtime Layer|Coordinates behavior; must follow safety, permission, and validation rules|
|Device Access Layer|Enables participation; does not define runtime decisions alone|
|Interaction Layer|Captures user intention; does not automatically execute physical action|
|Sensing Layer|Provides input; does not automatically trigger execution without rules|
|Execution Layer|Performs physical action; must follow capability, safety, and load limits|
|Device Participation Layer|Represents supported devices; does not imply universal compatibility|

## 中文表

|層級|邊界|
|---|---|
|雲端層|增強遠端與生命週期能力；預設不取代本地 Runtime|
|邊緣智慧層|輔助解讀；未經驗證設計不覆蓋 Runtime|
|本地 Runtime 層|協同行為；必須遵循安全、權限與驗證規則|
|設備接入層|使設備能夠參與；不單獨定義 Runtime 決策|
|互動層|捕捉用戶意圖；不自動執行物理動作|
|感知層|提供輸入；沒有規則時不自動觸發執行|
|執行層|完成物理動作；必須遵循能力、安全與負載限制|
|設備參與層|表示受支援設備；不表示通用相容|

---

## 5.13 Chapter Conclusion

## 5.13 章節結論

## EN

This chapter defines the OceanAI architecture layer model. It explains the responsibility of the Cloud Layer, Edge Intelligence Layer, Local Runtime Layer, Device Access Layer, Interaction Layer, Sensing Layer, Execution Layer, and Device Participation Layer.

The layer model establishes a clear architectural structure for coordinated intelligent environments. It ensures that cloud services, edge intelligence, local runtime, device access, interaction, sensing, execution, and device participation remain distinct but coordinated.

The following chapter defines the Runtime Architecture in greater depth, including runtime services, event processing, command routing, state management, scene execution, automation execution, runtime priority, continuity, degraded behavior, and runtime boundaries.

## ZH-TW

本章定義 OceanAI 的架構分層模型，說明雲端層、邊緣智慧層、本地 Runtime 層、設備接入層、互動層、感知層、執行層與設備參與層的責任。

分層模型為協同智慧空間建立清楚的架構結構，確保雲端服務、Edge 智慧、本地 Runtime、設備接入、互動、感知、執行與設備參與彼此區分但保持協同。

下一章將更深入定義 Runtime 架構，包括 Runtime 服務、事件處理、指令路由、狀態管理、場景執行、自動化執行、Runtime 優先級、延續性、降級行為與 Runtime 邊界。