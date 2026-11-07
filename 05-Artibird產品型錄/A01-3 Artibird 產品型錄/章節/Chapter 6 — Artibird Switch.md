# Chapter 6 — Artibird Switch

# 第六章｜Artibird Switch

---

## 6.1 Product Positioning

## 6.1 產品定位

**EN**  
Artibird Switch is the **smart switch and event-node product family** of the Artibird product system. It provides wall-based user interaction, scene triggering, local manual control, and relay-based electrical execution depending on product variant.

Within the OceanAI architecture, Artibird Switch participates primarily in the **Interaction Layer** and, depending on variant, may also participate in the **Execution Layer**. Some Switch models function as event-only scene transmitters, while others support powered relay control for lighting or supported electrical loads.

**ZH-TW**  
Artibird Switch 是 Artibird 產品系統中的**智慧開關與事件節點產品族**。它依產品版本提供牆面用戶互動、場景觸發、本地手動控制，以及基於繼電器的電力執行能力。

在 OceanAI 架構中，Artibird Switch 主要參與**互動層**，並依版本可能同時參與**執行層**。部分 Switch 型號作為僅事件型場景發射節點運作，另一些型號則支援市電供電的繼電器控制，用於照明或受支援電力負載。

---

## 6.2 System Role

## 6.2 系統角色

**EN**  
Artibird Switch captures user intention from the physical environment. A touch, press, or configured switch action may become a runtime event, a scene trigger, a local manual command, or a relay execution request depending on the product variant and system configuration.

Artibird Switch should be understood as more than a wall switch. It is a user intention node inside the OceanAI runtime system. When connected with Hub / ArtiOS, Switch actions can participate in scenes, automations, local control, room interaction, and coordinated device behavior.

**ZH-TW**  
Artibird Switch 從物理環境中捕捉用戶意圖。一次觸控、按壓或已配置的開關動作，依產品版本與系統配置，可能成為 Runtime 事件、場景觸發、本地手動指令或繼電器執行請求。

Artibird Switch 不應只被理解為牆面開關。它是 OceanAI Runtime 系統中的用戶意圖節點。當它與 Hub / ArtiOS 連接時，Switch 動作可以參與場景、自動化、本地控制、房間互動與協同設備行為。

---

## English Table

|System Layer|Switch Participation|
|---|---|
|Interaction Layer|Captures touch, press, scene, and user intention events|
|Execution Layer|Supports relay-based execution where the product variant includes relay control|
|Local Runtime Layer|Sends events or control requests to Hub / ArtiOS where configured|
|Device Access Layer|Connects through supported Wi-Fi, BLE Mesh, or other defined access paths depending on model|
|Sensing / Context Layer|May provide basic device state, battery status, touch events, or control context|
|Cloud Layer|May support remote configuration or status visibility through cloud-connected runtime paths|
|Device Participation Layer|Participates as a physical wall device within coordinated runtime behavior|

## 中文表

|系統層級|Switch 參與方式|
|---|---|
|互動層|捕捉觸控、按壓、場景與用戶意圖事件|
|執行層|在產品版本包含繼電器控制時支援基於繼電器的執行|
|本地 Runtime 層|在已配置條件下向 Hub / ArtiOS 發送事件或控制請求|
|設備接入層|依型號透過受支援 Wi-Fi、BLE Mesh 或其他已定義接入路徑連接|
|感知 / 上下文層|可提供基本設備狀態、電池狀態、觸控事件或控制上下文|
|雲端層|可透過雲端連接 Runtime 路徑支援遠端配置或狀態可視化|
|設備參與層|作為實體牆面設備參與協同 Runtime 行為|

---

## 6.3 Product Variants

## 6.3 產品版本

**EN**  
Artibird Switch should be presented as a product family rather than a single product type. Different variants may have different power sources, communication methods, runtime roles, and execution capabilities.

The catalog should clearly distinguish between **event-only scene switch variants** and **relay-control smart switch variants**.

**ZH-TW**  
Artibird Switch 應被呈現為一個產品族，而不是單一產品類型。不同版本可能具有不同供電方式、通訊方式、Runtime 角色與執行能力。

型錄應清楚區分**僅事件型場景開關版本**與**支援繼電器控制的智慧開關版本**。

---

## English Table

|Variant|Positioning|Typical Role|
|---|---|---|
|Battery Scene Switch|Event-only scene transmitter|Sends user events or scene triggers without directly controlling load|
|Single-Live Battery Switch|Low-power wall event node|Captures touch events and participates through BLE Mesh or supported low-power path|
|Zero-Neutral Smart Switch|Powered wall switch with relay control|Supports local manual control and relay-based electrical execution|
|Relay-Control Switch Variant|Interaction and execution node|Combines user input with supported electrical switching|
|Multi-Gang Switch Variant|Multi-channel interaction or relay control|Supports multiple touch zones, scenes, or relay channels depending on model|
|Scene / Control Switch Variant|Configurable wall control point|Triggers scenes, devices, or automation under defined configuration|

## 中文表

|版本|定位|典型角色|
|---|---|---|
|電池場景開關|僅事件型場景發射節點|發送用戶事件或場景觸發，不直接控制負載|
|單火電池開關|低功耗牆面事件節點|捕捉觸控事件，透過 BLE Mesh 或受支援低功耗路徑參與系統|
|零火智慧開關|市電供電且支援繼電器控制的牆面開關|支援本地手動控制與基於繼電器的電力執行|
|繼電器控制開關版本|互動與執行節點|將用戶輸入與受支援電力開關結合|
|多鍵開關版本|多通道互動或繼電器控制|依型號支援多個觸控區、場景或繼電器通道|
|場景 / 控制開關版本|可配置牆面控制點|在明確配置下觸發場景、設備或自動化|

---

## 6.4 Core Functions

## 6.4 核心功能

**EN**  
Artibird Switch provides physical user interaction and, depending on product variant, electrical execution. Its primary function is to translate local user intent into system events, scene actions, automation triggers, or relay behavior.

The exact function must always be described according to product variant, power type, firmware version, communication path, installation condition, and validation status.

**ZH-TW**  
Artibird Switch 提供實體用戶互動，並依產品版本提供電力執行能力。它的主要功能，是將本地用戶意圖轉換為系統事件、場景動作、自動化觸發或繼電器行為。

具體功能必須始終依產品版本、供電方式、韌體版本、通訊路徑、安裝條件與驗證狀態描述。

---

## English Table

|Core Function|Description|
|---|---|
|Touch / press input|Captures user interaction from wall-based switch interface|
|Scene triggering|Triggers predefined scenes where configured|
|Local manual control|Provides direct local control behavior under supported conditions|
|Relay control|Controls supported electrical loads where relay variant is implemented|
|Event transmission|Sends switch events to Hub / ArtiOS through supported paths|
|Multi-gang control|Supports multiple touch zones or channels depending on model|
|Status feedback|May provide LED, App, or runtime feedback where implemented|
|Battery operation|Supports low-power event-node behavior where battery variant is implemented|
|BLE Mesh participation|Supports BLE Mesh behavior where implemented and validated|
|Wi-Fi participation|Supports Wi-Fi communication where implemented and validated|
|Runtime participation|Acts as interaction or execution participant within OceanAI runtime|

## 中文表

|核心功能|說明|
|---|---|
|觸控 / 按壓輸入|從牆面開關介面捕捉用戶互動|
|場景觸發|在已配置條件下觸發預定義場景|
|本地手動控制|在受支援條件下提供直接本地控制行為|
|繼電器控制|在繼電器版本已實作條件下控制受支援電力負載|
|事件傳輸|透過受支援路徑向 Hub / ArtiOS 發送開關事件|
|多鍵控制|依型號支援多個觸控區或通道|
|狀態回饋|在已實作條件下可提供 LED、App 或 Runtime 回饋|
|電池運作|在電池版本已實作條件下支援低功耗事件節點行為|
|BLE Mesh 參與|在已實作並驗證條件下支援 BLE Mesh 行為|
|Wi-Fi 參與|在已實作並驗證條件下支援 Wi-Fi 通訊|
|Runtime 參與|作為互動或執行參與者加入 OceanAI Runtime|

---

## 6.5 Key Product Value

## 6.5 核心產品價值

**EN**  
Artibird Switch gives users a familiar physical control point while allowing the system to interpret that action as part of a coordinated runtime environment.

A traditional switch controls a single circuit. Artibird Switch can represent a richer form of interaction: it may trigger scenes, coordinate with sensors, participate in automations, communicate with Hub / ArtiOS, or execute relay behavior depending on variant.

**ZH-TW**  
Artibird Switch 為用戶提供熟悉的實體控制點，同時使系統能將該動作解讀為協同 Runtime 環境中的一部分。

傳統開關控制單一路線。Artibird Switch 可以代表更豐富的互動形式：它可依版本觸發場景、與感測器協同、參與自動化、與 Hub / ArtiOS 通訊，或執行繼電器行為。

---

## English Table

|Product Value|Description|
|---|---|
|Familiar interaction|Provides a wall-based control experience users already understand|
|Scene-based control|Allows one action to trigger multiple coordinated behaviors|
|Local manual priority|Supports direct local user intention within runtime priority rules|
|Distributed control|Allows control points to be placed across rooms, classrooms, buildings, or zones|
|Low-power options|Battery event-node variants support flexible placement where applicable|
|Relay execution options|Powered relay variants support direct electrical control where validated|
|System participation|Converts switch behavior into runtime events and coordinated system action|
|Flexible configuration|Supports scene, device, group, or automation behavior depending on configuration|

## 中文表

|產品價值|說明|
|---|---|
|熟悉互動|提供用戶已熟悉的牆面控制體驗|
|基於場景的控制|允許一次動作觸發多個協同行為|
|本地手動優先|在 Runtime 優先級規則內支持直接本地用戶意圖|
|分布式控制|允許控制點分布於房間、教室、建築或區域|
|低功耗選項|電池事件節點版本在適用條件下支持靈活安裝|
|繼電器執行選項|市電繼電器版本在已驗證條件下支持直接電力控制|
|系統參與|將開關行為轉換為 Runtime 事件與協同系統動作|
|靈活配置|依配置支持場景、設備、群組或自動化行為|

---

## 6.6 Interaction and Execution Model

## 6.6 互動與執行模型

**EN**  
Artibird Switch may act as an interaction node, an execution node, or both depending on variant.

An **event-only switch** sends user events to the runtime system. It does not directly control electrical load. A **relay-control switch** may both capture user input and execute electrical switching for supported loads.

This distinction is important for product safety, installation guidance, battery strategy, system configuration, and customer communication.

**ZH-TW**  
Artibird Switch 可依版本作為互動節點、執行節點，或同時具備兩種角色。

**僅事件型開關**向 Runtime 系統發送用戶事件，不直接控制電力負載。**繼電器控制開關**則可同時捕捉用戶輸入，並對受支援負載執行電力開關。

這一區分對產品安全、安裝指引、電池策略、系統配置與客戶溝通都非常重要。

---

## English Table

|Switch Type|Interaction Role|Execution Role|Catalog Description|
|---|---|---|---|
|Event-only Scene Switch|Yes|No direct load control|Sends user events or scene triggers to the runtime system|
|Battery Single-Live Switch|Yes|No direct load control unless separately designed and validated|Low-power event node for scene or control input|
|Zero-Neutral Smart Switch|Yes|Yes, where relay is implemented|Powered smart switch for local control and relay-based execution|
|Relay Switch Variant|Yes|Yes|Combines wall interaction and supported electrical execution|
|Multi-Gang Switch|Yes|Variant-dependent|Supports multiple configured controls or relay channels depending on model|

## 中文表

|開關類型|互動角色|執行角色|型錄描述|
|---|---|---|---|
|僅事件型場景開關|是|不直接控制負載|向 Runtime 系統發送用戶事件或場景觸發|
|電池單火開關|是|除非另行設計與驗證，否則不直接控制負載|用於場景或控制輸入的低功耗事件節點|
|零火智慧開關|是|在繼電器已實作條件下是|用於本地控制與繼電器執行的市電智慧開關|
|繼電器開關版本|是|是|結合牆面互動與受支援電力執行|
|多鍵開關|是|依版本而定|依型號支援多個已配置控制或繼電器通道|

---

## 6.7 Connectivity and Power Directions

## 6.7 連接與供電方向

**EN**  
Artibird Switch variants may use different communication and power designs. The catalog should clearly separate battery-powered event-node switches from AC-powered relay-control switches.

Connectivity and power claims should always be described according to product variant and validation status.

**ZH-TW**  
Artibird Switch 各版本可能使用不同通訊與供電設計。型錄應清楚區分電池供電事件節點開關與市電供電繼電器控制開關。

連接與供電宣稱應始終依產品版本與驗證狀態描述。

---

## English Table

|Direction|Catalog Description|
|---|---|
|Battery power|Used for low-power event-node or scene switch variants where implemented|
|AC power|Used for powered relay-control switch variants where implemented|
|Single-live configuration|May refer to low-power or market-specific wall-switch design where supported|
|Zero-neutral configuration|Supports powered switch behavior where neutral and live wiring are available|
|BLE Mesh|Supports low-power mesh participation where implemented and validated|
|Wi-Fi|Supports powered Wi-Fi communication where implemented and validated|
|Local runtime path|Switch events or commands may pass through Hub / ArtiOS where configured|
|Cloud-connected path|Status or configuration may synchronize through cloud where supported|

## 中文表

|方向|型錄描述|
|---|---|
|電池供電|用於已實作的低功耗事件節點或場景開關版本|
|市電供電|用於已實作的繼電器控制開關版本|
|單火配置|可指受支援的低功耗或特定市場牆面開關設計|
|零火配置|在具備火線與零線條件下支持市電開關行為|
|BLE Mesh|在已實作並驗證條件下支援低功耗 Mesh 參與|
|Wi-Fi|在已實作並驗證條件下支援市電 Wi-Fi 通訊|
|本地 Runtime 路徑|在已配置條件下，開關事件或指令可經 Hub / ArtiOS 處理|
|雲端連接路徑|在支援條件下，狀態或配置可透過雲端同步|

---

## 6.8 Typical Use Cases

## 6.8 典型應用場景

**EN**  
Artibird Switch is used wherever physical user control, scene triggering, local interaction, or relay-based switching is needed. It is especially important in homes, classrooms, offices, buildings, and shared spaces where users need immediate and familiar control points.

**ZH-TW**  
凡是需要實體用戶控制、場景觸發、本地互動或基於繼電器的開關控制時，都可以使用 Artibird Switch。它尤其適用於住宅、教室、辦公室、建築與共享空間，讓用戶擁有即時且熟悉的控制點。

---

## English Table

|Use Case|Description|
|---|---|
|Lighting control|Supports wall-based lighting control where relay variant is implemented|
|Scene triggering|Triggers predefined room, home, classroom, or building scenes|
|Classroom control|Allows teachers or staff to trigger lighting, climate, AV, or energy-related scenes|
|Room-level control|Provides a simple control point for daily room use|
|Distributed scene control|Places control points in multiple locations without relying only on App access|
|Low-power event input|Battery variants support event transmission with low-power operation|
|Local manual override|Supports direct local user intention within runtime priority rules|
|Automation trigger|Switch events may trigger configured automation where supported|

## 中文表

|應用場景|說明|
|---|---|
|照明控制|在繼電器版本已實作條件下支持牆面照明控制|
|場景觸發|觸發預定義房間、住宅、教室或建築場景|
|教室控制|允許教師或管理人員觸發照明、空調、影音或能源相關場景|
|房間級控制|為日常房間使用提供簡單控制點|
|分布式場景控制|在多個位置提供控制點，不只依賴 App 存取|
|低功耗事件輸入|電池版本支援低功耗事件傳輸|
|本地手動覆蓋|在 Runtime 優先級規則下支持直接本地用戶意圖|
|自動化觸發|在支援條件下，開關事件可觸發已配置自動化|

---

## 6.9 Recommended Product Combinations

## 6.9 建議產品組合

**EN**  
Artibird Switch becomes more valuable when paired with Hub / ArtiOS, Panel, Act, Sense, Sync, Cloud, and Edge. Through these combinations, a simple wall action can trigger coordinated system behavior.

**ZH-TW**  
Artibird Switch 與 Hub / ArtiOS、Panel、Act、Sense、Sync、Cloud 與 Edge 配合時，價值更加明顯。透過這些組合，一個簡單牆面動作可以觸發協同系統行為。

---

## English Table

|Product Combination|Typical Purpose|
|---|---|
|Switch + Hub|Sends switch events to local runtime|
|Switch + Hub + Act|Supports local control and electrical execution workflows|
|Switch + Hub + Panel|Provides shared room interaction and scene selection|
|Switch + Hub + Sense|Triggers or adjusts automation based on environmental context|
|Switch + Hub + Sync|Controls supported appliances through scene or command behavior|
|Switch + Gate + Hub|Connects switch events through supported gateway path|
|Switch + Cloud|Supports remote visibility or configuration where supported|
|Switch + Edge|May participate in AI-assisted context or recommendation workflows where deployed|
|Switch + Full Product Set|Enables physical control as part of a complete coordinated intelligent environment|

## 中文表

|產品組合|典型用途|
|---|---|
|Switch + Hub|將開關事件發送至本地 Runtime|
|Switch + Hub + Act|支援本地控制與電力執行工作流|
|Switch + Hub + Panel|提供共享房間互動與場景選擇|
|Switch + Hub + Sense|基於環境上下文觸發或調整自動化|
|Switch + Hub + Sync|透過場景或指令行為控制受支援家電|
|Switch + Gate + Hub|透過受支援網關路徑連接開關事件|
|Switch + Cloud|在支援條件下支持遠端可視化或配置|
|Switch + Edge|在已部署條件下可參與 AI 輔助上下文或建議工作流|
|Switch + 完整產品組合|使實體控制成為完整協同智慧空間的一部分|

---

## 6.10 Customer-Readable Description

## 6.10 客戶可讀描述

**EN**  
Artibird Switch gives users a simple and familiar way to control their space. A wall touch can turn on lights, trigger a scene, control a room, or send a command into the OceanAI runtime system.

Depending on the product version, Artibird Switch may work as a low-power scene switch, a smart wall control, or a relay-based electrical switch. It helps make intelligent spaces easier to use without requiring users to rely only on an App.

**ZH-TW**  
Artibird Switch 為用戶提供簡單且熟悉的空間控制方式。一次牆面觸控可以開燈、觸發場景、控制房間，或向 OceanAI Runtime 系統發送指令。

依產品版本不同，Artibird Switch 可作為低功耗場景開關、智慧牆面控制，或基於繼電器的電力開關。它讓智慧空間更容易使用，而不需要用戶完全依賴 App。

---

## 6.11 Product Page Summary

## 6.11 產品頁摘要

## EN

**Artibird Switch**  
Smart Switch and Event Node for Coordinated Intelligent Environments

Artibird Switch captures physical user intention from the wall and turns it into runtime participation. Depending on model and configuration, it may support scene triggering, local manual control, low-power event transmission, relay-based electrical execution, and coordinated behavior through Hub / ArtiOS.

## ZH-TW

**Artibird Switch**  
面向協同智慧空間的智慧開關與事件節點

Artibird Switch 從牆面捕捉實體用戶意圖，並將其轉化為 Runtime 參與。依型號與配置不同，它可支援場景觸發、本地手動控制、低功耗事件傳輸、基於繼電器的電力執行，以及透過 Hub / ArtiOS 實現協同行為。

---

## 6.12 Catalog Claim Boundary

## 6.12 型錄宣稱邊界

**EN**  
Artibird Switch capabilities depend on product variant, power type, firmware version, hardware version, supported protocol, wiring condition, installation requirement, load rating, runtime configuration, and validation status.

Artibird Switch should not be described as supporting all wiring conditions, all loads, all switch types, unlimited scenes, universal compatibility, or guaranteed offline operation unless separately validated and approved.

**ZH-TW**  
Artibird Switch 能力取決於產品版本、供電方式、韌體版本、硬體版本、受支援協議、接線條件、安裝要求、負載額定值、Runtime 配置與驗證狀態。

除非另行完成驗證與核准，Artibird Switch 不應被描述為支援所有接線條件、所有負載、所有開關類型、無限制場景、通用相容或保證離線運作。

---

## English Table

|Avoid Saying|Preferred Catalog Language|
|---|---|
|Switch works with all wiring|Switch supports defined wiring conditions according to product variant|
|Switch controls all lights|Switch controls supported loads within validated ratings where relay variant applies|
|Battery switch controls load directly|Battery scene switch functions as an event-only node unless separately designed and validated|
|Switch always works offline|Switch supports defined local behavior when required local components are present|
|Switch supports unlimited scenes|Switch supports configured scenes within validated system limits|
|Switch is universally compatible|Switch participates with supported devices, protocols, and runtime configuration|
|Switch guarantees automation|Switch may trigger defined automation under supported runtime and device conditions|

## 中文表

|避免使用|建議型錄語言|
|---|---|
|Switch 適用所有接線|Switch 依產品版本支援已定義接線條件|
|Switch 控制所有燈具|在繼電器版本適用時，Switch 在已驗證額定值內控制受支援負載|
|電池開關直接控制負載|除非另行設計並驗證，電池場景開關作為僅事件節點運作|
|Switch 永遠離線可用|當所需本地組件具備時，Switch 支援已定義本地行為|
|Switch 支援無限制場景|Switch 在已驗證系統限制內支援已配置場景|
|Switch 通用相容|Switch 依受支援設備、協議與 Runtime 配置參與系統|
|Switch 保證自動化|Switch 可在受支援 Runtime 與設備條件下觸發已定義自動化|

---

## 6.13 Chapter Conclusion

## 6.13 章節結論

**EN**  
Artibird Switch is the smart switch and event-node product family of Artibird. It provides a familiar physical interface while allowing user actions to participate in OceanAI runtime behavior.

In the Artibird catalog, Switch should be presented as both a wall-based interaction product and, depending on variant, an electrical execution product. Its value is not only switching a circuit, but enabling physical user intention to become part of coordinated intelligent environments.

**ZH-TW**  
Artibird Switch 是 Artibird 的智慧開關與事件節點產品族。它提供熟悉的實體介面，同時使用戶動作能夠參與 OceanAI Runtime 行為。

在 Artibird 型錄中，Switch 應被呈現為牆面互動產品，並依版本作為電力執行產品。它的價值不只是切換一條電路，而是讓實體用戶意圖成為協同智慧空間的一部分。