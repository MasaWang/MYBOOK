# Chapter 8 — Artibird Act

# 第八章｜Artibird Act

---

## 8.1 Product Positioning

## 8.1 產品定位

**EN**  
Artibird Act is the **electrical execution node** of the Artibird product system. It performs supported relay behavior, plug control, load control, and optional energy measurement within the OceanAI coordinated intelligent environment system.

Within the OceanAI architecture, Artibird Act belongs primarily to the **Execution Layer**. Its role is to convert runtime commands, automation decisions, scene instructions, or user actions into controlled electrical behavior under defined product, installation, load, and validation conditions.

**ZH-TW**  
Artibird Act 是 Artibird 產品系統中的**電力執行節點**。它在 OceanAI 協同智慧空間系統中執行受支援繼電器行為、插座控制、負載控制與可選電能量測。

在 OceanAI 架構中，Artibird Act 主要屬於**執行層**。它的角色，是在明確產品、安裝、負載與驗證條件下，將 Runtime 指令、自動化決策、場景指令或用戶動作轉化為受控電力行為。

---

## 8.2 System Role

## 8.2 系統角色

**EN**  
Artibird Act is the product category that allows the OceanAI runtime system to affect physical electrical loads. It may operate as a smart plug, relay module, load controller, or energy-aware execution node depending on variant.

Artibird Act should not be described only as a smart plug or relay. It is an execution participant in the system. When connected with Hub / ArtiOS, Act can respond to scenes, automations, App commands, Panel commands, Switch events, sensor conditions, cloud-connected requests, or Edge-assisted context where supported.

**ZH-TW**  
Artibird Act 是使 OceanAI Runtime 系統能夠影響實體電力負載的產品類別。它可依版本作為智慧插座、繼電器模組、負載控制器或能源感知執行節點運作。

Artibird Act 不應只被描述為智慧插座或繼電器。它是系統中的執行參與者。當它與 Hub / ArtiOS 連接時，Act 可在支援條件下回應場景、自動化、App 指令、Panel 指令、Switch 事件、感測條件、雲端連接請求或 Edge 輔助上下文。

---

## English Table

|System Layer|Act Participation|
|---|---|
|Execution Layer|Performs relay, plug, load control, and supported electrical execution|
|Local Runtime Layer|Receives commands from Hub / ArtiOS and participates in scenes and automation|
|Interaction Layer|Responds to App, Panel, Switch, or user-triggered commands through runtime|
|Sensing Layer|May respond to Sense input through automation logic|
|Energy Layer|May provide energy measurement or load data where Act-E variant is implemented|
|Cloud Layer|May support remote control, state visibility, history, or analytics where configured|
|Edge Intelligence Layer|May respond to Edge-assisted recommendations or optimization inputs through runtime governance|
|Device Participation Layer|Operates as a physical execution device within coordinated environments|

## 中文表

|系統層級|Act 參與方式|
|---|---|
|執行層|執行繼電器、插座、負載控制與受支援電力執行|
|本地 Runtime 層|接收來自 Hub / ArtiOS 的指令，參與場景與自動化|
|互動層|透過 Runtime 回應 App、Panel、Switch 或用戶觸發指令|
|感知層|可透過自動化邏輯回應 Sense 輸入|
|能源層|在 Act-E 版本已實作條件下，可提供電能量測或負載數據|
|雲端層|在已配置條件下支援遠端控制、狀態可視化、歷史或分析|
|邊緣智慧層|可透過 Runtime 治理回應 Edge 輔助建議或優化輸入|
|設備參與層|作為協同空間中的實體執行設備運作|

---

## 8.3 Product Variants

## 8.3 產品版本

**EN**  
Artibird Act should be presented as an execution product family rather than a single device. Different variants may support different installation forms, electrical ratings, load types, energy measurement functions, and deployment scenarios.

The catalog should clearly distinguish between basic execution variants and energy-aware variants.

**ZH-TW**  
Artibird Act 應被呈現為一個執行產品族，而不是單一設備。不同版本可支援不同安裝形態、電氣額定、負載類型、電能量測功能與部署場景。

型錄應清楚區分基礎執行版本與能源感知版本。

---

## English Table

|Variant|Positioning|Typical Role|
|---|---|---|
|Smart Plug Variant|Plug-based execution node|Controls supported plug-in loads|
|Relay Module Variant|Embedded relay execution node|Controls supported electrical circuits or equipment|
|Load Control Variant|Controlled electrical execution product|Turns supported loads on or off under runtime control|
|Act-E Energy Variant|Energy-aware execution node|Provides load control and optional energy measurement|
|Commercial / Facility Variant|Deployment-oriented execution node|Supports selected building, classroom, energy, or infrastructure workflows|
|Outdoor / Infrastructure Variant|Environment-specific execution node|Supports outdoor or infrastructure execution where rating and validation allow|

## 中文表

|版本|定位|典型角色|
|---|---|---|
|智慧插座版本|基於插座的執行節點|控制受支援插入式負載|
|繼電器模組版本|嵌入式繼電器執行節點|控制受支援電路或設備|
|負載控制版本|受控電力執行產品|在 Runtime 控制下開關受支援負載|
|Act-E 能源版本|能源感知執行節點|提供負載控制與可選電能量測|
|商業 / 設施版本|面向部署的執行節點|支援特定建築、教室、能源或基礎設施工作流|
|戶外 / 基礎設施版本|特定環境執行節點|在額定與驗證允許條件下支援戶外或基礎設施執行|

---

## 8.4 Core Functions

## 8.4 核心功能

**EN**  
Artibird Act converts system intent into physical electrical action. Its functions may include relay switching, plug control, load control, energy measurement, state reporting, automation participation, and failure-safe behavior depending on model and validation status.

Because Act interacts with electrical loads, its claims must remain strictly bounded by electrical rating, installation condition, supported load type, safety design, firmware behavior, certification status, and validation evidence.

**ZH-TW**  
Artibird Act 將系統意圖轉化為實體電力動作。依型號與驗證狀態不同，其功能可包括繼電器開關、插座控制、負載控制、電能量測、狀態回報、自動化參與與故障安全行為。

由於 Act 與電力負載互動，其宣稱必須嚴格受電氣額定、安裝條件、受支援負載類型、安全設計、韌體行為、認證狀態與驗證證據約束。

---

## English Table

|Core Function|Description|
|---|---|
|Relay execution|Switches supported electrical circuits where relay variant is implemented|
|Plug control|Controls supported plug-in appliances or loads where plug variant is implemented|
|Load control|Performs on / off control for supported loads under defined ratings|
|Energy measurement|Provides voltage, current, power, or energy data where Act-E variant is implemented|
|State reporting|Reports on / off state, device health, or load-related status where supported|
|Automation participation|Responds to runtime automation based on time, sensor, state, or event conditions|
|Scene participation|Executes electrical actions as part of coordinated multi-device scenes|
|Local manual control|May support local control behavior depending on variant|
|Cloud-connected control|May support remote control or visibility through cloud where configured|
|Failure behavior|Supports defined safe state, recovery, or degraded behavior where implemented|

## 中文表

|核心功能|說明|
|---|---|
|繼電器執行|在繼電器版本已實作條件下開關受支援電路|
|插座控制|在插座版本已實作條件下控制受支援插入式家電或負載|
|負載控制|在明確額定條件下對受支援負載執行開 / 關控制|
|電能量測|在 Act-E 版本已實作條件下提供電壓、電流、功率或電能數據|
|狀態回報|在支援條件下回報開 / 關狀態、設備健康或負載相關狀態|
|自動化參與|基於時間、感測、狀態或事件條件回應 Runtime 自動化|
|場景參與|作為協同多設備場景的一部分執行電力動作|
|本地手動控制|依版本可支援本地控制行為|
|雲端連接控制|在已配置條件下可支援遠端控制或可視化|
|故障行為|在已實作條件下支援已定義安全狀態、恢復或降級行為|

---

## 8.5 Key Product Value

## 8.5 核心產品價值

**EN**  
Artibird Act gives the OceanAI system the ability to execute physical electrical behavior. It allows lights, outlets, appliances, equipment, energy loads, or selected infrastructure devices to participate in coordinated scenes and automation where supported.

Its value is strongest when Act is used not as a standalone switch, but as part of a runtime-governed execution layer that connects user intention, sensor context, energy workflows, and system logic.

**ZH-TW**  
Artibird Act 使 OceanAI 系統具備執行實體電力行為的能力。它使照明、插座、家電、設備、能源負載或特定基礎設施設備能夠在支援條件下參與協同場景與自動化。

Act 的最大價值不在於作為獨立開關使用，而是在於作為受 Runtime 治理的執行層一部分，連接用戶意圖、感測上下文、能源工作流與系統邏輯。

---

## English Table

|Product Value|Description|
|---|---|
|Physical execution|Converts system commands into controlled electrical action|
|Scene participation|Allows electrical loads to participate in coordinated scenes|
|Automation execution|Enables sensor, time, event, or state-based electrical behavior|
|Energy awareness|Provides energy data where Act-E variant is implemented|
|Existing equipment integration|Allows selected existing loads or appliances to participate without full replacement|
|Local control continuity|Supports defined local execution when required local components are present|
|Facility coordination|Supports classroom, building, campus, energy, and infrastructure workflows|
|Runtime governance|Ensures execution is processed through permission, priority, safety, and validation logic|

## 中文表

|產品價值|說明|
|---|---|
|實體執行|將系統指令轉化為受控電力動作|
|場景參與|使電力負載參與協同場景|
|自動化執行|支援基於感測、時間、事件或狀態的電力行為|
|能源感知|在 Act-E 版本已實作條件下提供能源數據|
|既有設備整合|使特定既有負載或家電無需完整替換即可參與系統|
|本地控制延續|當所需本地組件具備時，支援已定義本地執行|
|設施協同|支援教室、建築、校園、能源與基礎設施工作流|
|Runtime 治理|確保執行經過權限、優先級、安全與驗證邏輯處理|

---

## 8.6 Electrical Execution Model

## 8.6 電力執行模型

**EN**  
Artibird Act operates as a runtime command target. A command may originate from App, Panel, Switch, automation, scene execution, Cloud request, or Edge-assisted input where configured. Hub / ArtiOS evaluates the command according to permission, priority, capability, safety, and current state before routing it to Act.

For electrical products, execution must always remain bounded by supported load type, electrical rating, wiring condition, installation environment, certification status, and validation evidence.

**ZH-TW**  
Artibird Act 作為 Runtime 指令目標運作。指令可來自 App、Panel、Switch、自動化、場景執行、Cloud 請求，或在已配置條件下來自 Edge 輔助輸入。Hub / ArtiOS 會依權限、優先級、能力、安全與當前狀態判斷該指令，再將其路由至 Act。

對於電力產品，執行必須始終受到受支援負載類型、電氣額定、接線條件、安裝環境、認證狀態與驗證證據約束。

---

## English Table

|Flow Stage|Description|
|---|---|
|Command source|App, Panel, Switch, scene, automation, Cloud, Edge, or runtime process|
|Runtime evaluation|Hub / ArtiOS checks permission, priority, capability, safety, and target state|
|Command routing|Runtime routes supported command to Act|
|Electrical execution|Act performs supported relay, plug, or load control action|
|State reporting|Act reports execution result, state, health, or energy data where supported|
|Feedback display|App, Panel, Cloud, or runtime displays result or status where implemented|
|Failure behavior|Act enters defined safe, rejected, degraded, or recovery behavior where supported|

## 中文表

|流程階段|說明|
|---|---|
|指令來源|App、Panel、Switch、場景、自動化、Cloud、Edge 或 Runtime 流程|
|Runtime 判斷|Hub / ArtiOS 檢查權限、優先級、能力、安全與目標狀態|
|指令路由|Runtime 將受支援指令路由至 Act|
|電力執行|Act 執行受支援繼電器、插座或負載控制動作|
|狀態回報|Act 在支援條件下回報執行結果、狀態、健康或能源數據|
|回饋顯示|App、Panel、Cloud 或 Runtime 在已實作條件下顯示結果或狀態|
|故障行為|Act 在支援條件下進入已定義安全、拒絕、降級或恢復行為|

---

## 8.7 Energy-Aware Act Variant

## 8.7 能源感知 Act 版本

**EN**  
The energy-aware Act variant, referred to as **Act-E** where applicable, extends electrical execution with energy measurement or energy-related telemetry. It may provide voltage, current, power, energy consumption, load state, or usage-related data depending on model and implementation.

Act-E should be presented carefully. Energy data can support monitoring, reporting, automation, awareness, and optimization workflows, but it should not be used to guarantee energy savings unless supported by measured evidence and defined comparison conditions.

**ZH-TW**  
能源感知 Act 版本在適用時可稱為 **Act-E**，它在電力執行基礎上增加電能量測或能源相關遙測。依型號與實作不同，它可提供電壓、電流、功率、電能消耗、負載狀態或使用相關數據。

Act-E 應謹慎呈現。能源數據可以支持監測、報告、自動化、感知與優化工作流，但除非具備量測證據與明確比較條件，不應用於保證節能宣稱。

---

## English Table

|Energy-Aware Function|Description|
|---|---|
|Voltage measurement|Measures voltage where supported|
|Current measurement|Measures current where supported|
|Power measurement|Measures real-time power where supported|
|Energy consumption|Reports accumulated energy data where implemented|
|Load status|Helps identify load operation state where supported|
|Energy automation|Supports automation based on energy or load conditions where validated|
|Energy reporting|Provides data for cloud or local reports where configured|
|Optimization support|May support energy-aware recommendations or workflows where validated|

## 中文表

|能源感知功能|說明|
|---|---|
|電壓量測|在支援條件下量測電壓|
|電流量測|在支援條件下量測電流|
|功率量測|在支援條件下量測即時功率|
|電能消耗|在已實作條件下回報累積電能數據|
|負載狀態|在支援條件下幫助識別負載運行狀態|
|能源自動化|在已驗證條件下支援基於能源或負載條件的自動化|
|能源報告|在已配置條件下為雲端或本地報告提供數據|
|優化支持|在已驗證條件下可支持能源感知建議或工作流|

---

## 8.8 Typical Use Cases

## 8.8 典型應用場景

**EN**  
Artibird Act is useful wherever electrical behavior needs to participate in the coordinated intelligent environment. It is especially important for lighting, plug loads, classroom equipment, HVAC-related equipment, energy management, facility control, and infrastructure automation.

**ZH-TW**  
凡是電力行為需要參與協同智慧空間的場景，都可以使用 Artibird Act。它尤其適用於照明、插座負載、教室設備、空調相關設備、能源管理、設施控制與基礎設施自動化。

---

## English Table

|Use Case|Description|
|---|---|
|Smart Home Load Control|Controls supported lights, plugs, or appliances under defined ratings|
|Classroom Energy Control|Controls classroom equipment, lighting, outlets, or selected energy loads|
|Building Automation|Supports selected loads across rooms, floors, or zones|
|Smart Plug Use|Provides plug-based control for supported appliances|
|Relay-Based Equipment Control|Provides relay execution for supported electrical equipment|
|Energy Monitoring|Provides energy data where Act-E variant is implemented|
|Sensor-Based Automation|Responds to Sense input for lighting, climate, or equipment workflows|
|Scene-Based Execution|Executes electrical actions as part of predefined scenes|
|Infrastructure Control|Supports selected irrigation, equipment, or infrastructure loads where validated|

## 中文表

|應用場景|說明|
|---|---|
|智慧住宅負載控制|在明確額定條件下控制受支援照明、插座或家電|
|教室能源控制|控制教室設備、照明、插座或特定能源負載|
|建築自動化|支援跨房間、樓層或區域的特定負載|
|智慧插座使用|為受支援家電提供基於插座的控制|
|基於繼電器的設備控制|為受支援電力設備提供繼電器執行|
|能源監測|在 Act-E 版本已實作條件下提供能源數據|
|基於感測的自動化|回應 Sense 輸入，支援照明、空調或設備工作流|
|基於場景的執行|作為預定義場景的一部分執行電力動作|
|基礎設施控制|在已驗證條件下支援特定灌溉、設備或基礎設施負載|

---

## 8.9 Recommended Product Combinations

## 8.9 建議產品組合

**EN**  
Artibird Act becomes more valuable when connected to the runtime system and combined with interaction, sensing, synchronization, cloud, and Edge components. It is the execution endpoint that allows system decisions to become physical electrical action.

**ZH-TW**  
Artibird Act 連接至 Runtime 系統，並與互動、感知、同步、雲端與 Edge 組件組合時，價值更加明顯。它是使系統決策轉化為實體電力動作的執行端點。

---

## English Table

|Product Combination|Typical Purpose|
|---|---|
|Act + Hub|Basic runtime-controlled electrical execution|
|Act + Hub + App|App-based load control and status visibility|
|Act + Hub + Switch|Wall-control-triggered electrical execution|
|Act + Hub + Panel|Room-level electrical control and group execution|
|Act + Hub + Sense|Sensor-based electrical automation|
|Act + Hub + Sync|Appliance and load coordination|
|Act-E + Hub + Cloud|Energy reporting, history, and remote visibility where supported|
|Act-E + Hub + Edge|Energy-aware optimization support where deployed and validated|
|Act + Gate + Hub|Gateway-connected execution for distributed devices|
|Act + Full Product Set|Complete electrical participation in coordinated intelligent environments|

## 中文表

|產品組合|典型用途|
|---|---|
|Act + Hub|基礎 Runtime 控制電力執行|
|Act + Hub + App|基於 App 的負載控制與狀態可視化|
|Act + Hub + Switch|由牆面控制觸發的電力執行|
|Act + Hub + Panel|房間級電力控制與群組執行|
|Act + Hub + Sense|基於感測的電力自動化|
|Act + Hub + Sync|家電與負載協同|
|Act-E + Hub + Cloud|在支援條件下提供能源報告、歷史與遠端可視化|
|Act-E + Hub + Edge|在已部署並驗證條件下提供能源感知優化支持|
|Act + Gate + Hub|用於分布式設備的網關連接執行|
|Act + 完整產品組合|使電力完整參與協同智慧空間|

---

## 8.10 Customer-Readable Description

## 8.10 客戶可讀描述

**EN**  
Artibird Act is the product that turns system commands into real electrical action. It can help supported lights, plugs, appliances, or equipment respond to scenes, automation, user control, and system logic.

With Artibird Act, an intelligent environment can do more than sense and display information. It can act: switching loads, controlling outlets, participating in energy workflows, and supporting coordinated electrical behavior.

**ZH-TW**  
Artibird Act 是將系統指令轉化為真實電力動作的產品。它可以幫助受支援照明、插座、家電或設備回應場景、自動化、用戶控制與系統邏輯。

透過 Artibird Act，智慧空間不只是感知與顯示資訊。它可以行動：開關負載、控制插座、參與能源工作流，並支援協同電力行為。

---

## 8.11 Product Page Summary

## 8.11 產品頁摘要

## EN

**Artibird Act**  
Electrical Execution Node for Coordinated Intelligent Environments

Artibird Act converts runtime commands into supported electrical actions. Depending on product variant, it may support relay behavior, plug control, load control, state reporting, automation participation, and optional energy measurement through Act-E models.

## ZH-TW

**Artibird Act**  
面向協同智慧空間的電力執行節點

Artibird Act 將 Runtime 指令轉化為受支援電力動作。依產品版本不同，它可支援繼電器行為、插座控制、負載控制、狀態回報、自動化參與，以及透過 Act-E 型號提供可選電能量測。

---

## 8.12 Catalog Claim Boundary

## 8.12 型錄宣稱邊界

**EN**  
Artibird Act capabilities depend on product model, hardware version, firmware version, electrical rating, load type, wiring condition, installation environment, safety design, network path, runtime configuration, validation status, and certification status where applicable.

Artibird Act should not be described as supporting all loads, all appliances, all wiring conditions, unlimited power capacity, guaranteed energy savings, certified safety, or universal installation unless separately validated, certified, and approved.

**ZH-TW**  
Artibird Act 能力取決於產品型號、硬體版本、韌體版本、電氣額定、負載類型、接線條件、安裝環境、安全設計、網路路徑、Runtime 配置、驗證狀態，以及適用時的認證狀態。

除非另行完成驗證、認證與核准，Artibird Act 不應被描述為支援所有負載、所有家電、所有接線條件、無限制功率容量、保證節能、已認證安全或通用安裝。

---

## English Table

|Avoid Saying|Preferred Catalog Language|
|---|---|
|Act controls all loads|Act controls supported loads within defined ratings and validation conditions|
|Act works with every appliance|Act works with supported appliances or loads under defined compatibility conditions|
|Act supports unlimited power|Act supports loads within validated electrical ratings|
|Act guarantees energy savings|Act-E may support energy-aware workflows where measured and validated|
|Act is certified safe|Use only when certification is complete for the specific model and market|
|Act works in all wiring conditions|Act supports defined wiring conditions according to product model|
|Act always executes commands|Act executes supported commands under defined runtime, safety, and connectivity conditions|
|Act replaces all electrical controls|Act provides supported electrical execution within defined system and installation boundaries|

## 中文表

|避免使用|建議型錄語言|
|---|---|
|Act 控制所有負載|Act 在明確額定與驗證條件下控制受支援負載|
|Act 適用所有家電|Act 在明確相容條件下適用於受支援家電或負載|
|Act 支援無限制功率|Act 在已驗證電氣額定內支援負載|
|Act 保證節能|Act-E 可在已量測與驗證條件下支援能源感知工作流|
|Act 已認證安全|僅在特定型號與市場完成認證後使用|
|Act 適用所有接線條件|Act 依產品型號支援已定義接線條件|
|Act 永遠執行指令|Act 在明確 Runtime、安全與連接條件下執行受支援指令|
|Act 取代所有電力控制|Act 在明確系統與安裝邊界內提供受支援電力執行|

---

## 8.13 Chapter Conclusion

## 8.13 章節結論

**EN**  
Artibird Act is the electrical execution node of the Artibird product family. It allows the OceanAI runtime system to convert commands, scenes, automation, and user actions into supported electrical behavior.

In the Artibird catalog, Act should be presented as the product that gives coordinated intelligent environments the ability to act physically through controlled electrical execution. Its value is strongest when it participates in runtime-governed scenes, automation, energy workflows, and system-level coordination.

**ZH-TW**  
Artibird Act 是 Artibird 產品家族中的電力執行節點。它使 OceanAI Runtime 系統能夠將指令、場景、自動化與用戶動作轉化為受支援電力行為。

在 Artibird 型錄中，Act 應被呈現為讓協同智慧空間能夠透過受控電力執行進行物理行動的產品。當它參與受 Runtime 治理的場景、自動化、能源工作流與系統級協同時，其價值最為明顯。