# Chapter 5 — Artibird Sync

# 第五章｜Artibird Sync

---

## 5.1 Product Positioning

## 5.1 產品定位

**EN**  
Artibird Sync is the **appliance synchronization node** of the Artibird product system. It brings supported IR / RF appliances into the OceanAI coordinated intelligent environment system by allowing them to participate in scenes, automation, local control, and runtime command flows.

Within the OceanAI architecture, Artibird Sync belongs primarily to the **Execution / Synchronization Layer**. Its role is to extend coordinated system behavior to appliances that are traditionally controlled through infrared or radio-frequency remote commands.

**ZH-TW**  
Artibird Sync 是 Artibird 產品系統中的**家電同步節點**。它透過讓受支援 IR / RF 家電參與場景、自動化、本地控制與 Runtime 指令流，將這些家電納入 OceanAI 協同智慧空間系統。

在 OceanAI 架構中，Artibird Sync 主要屬於**執行 / 同步層**。它的角色，是將協同系統行為延伸至傳統上透過紅外線或射頻遙控指令控制的家電。

---

## 5.2 System Role

## 5.2 系統角色

**EN**  
Artibird Sync acts as a synchronization bridge between the OceanAI runtime environment and supported appliances controlled by IR / RF signals. It receives supported commands from Hub / ArtiOS, sends IR or RF control signals where implemented, and allows appliances to participate in defined runtime behavior.

Artibird Sync does not replace the appliance itself, and it does not guarantee full appliance state awareness in all conditions. Its role is to provide supported command synchronization and appliance participation under defined device, protocol, model, and validation conditions.

**ZH-TW**  
Artibird Sync 作為 OceanAI Runtime 環境與受支援 IR / RF 家電之間的同步節點。它接收來自 Hub / ArtiOS 的受支援指令，在已實作條件下發送 IR 或 RF 控制信號，並使家電參與已定義 Runtime 行為。

Artibird Sync 不取代家電本身，也不保證在所有條件下完整掌握家電狀態。它的角色，是在明確設備、協議、型號與驗證條件下，提供受支援指令同步與家電參與能力。

---

## English Table

|System Layer|Sync Participation|
|---|---|
|Execution / Synchronization Layer|Sends supported IR / RF commands to compatible appliances|
|Local Runtime Layer|Receives commands from Hub / ArtiOS and participates in local scene and automation execution|
|Interaction Layer|Executes commands triggered by App, Panel, Switch, or scene selection|
|Sensing Layer|May use Sense data as automation input when coordinated through Hub / ArtiOS|
|Cloud Layer|May receive remote command requests through cloud-connected runtime paths|
|Edge Intelligence Layer|May receive AI-assisted recommendations or context through runtime governance where deployed|
|Device Participation Layer|Allows supported appliances to participate indirectly in coordinated runtime behavior|

## 中文表

|系統層級|Sync 參與方式|
|---|---|
|執行 / 同步層|向相容家電發送受支援 IR / RF 指令|
|本地 Runtime 層|接收來自 Hub / ArtiOS 的指令，參與本地場景與自動化執行|
|互動層|執行由 App、Panel、Switch 或場景選擇觸發的指令|
|感知層|經 Hub / ArtiOS 協同時，可使用 Sense 數據作為自動化輸入|
|雲端層|可透過雲端連接 Runtime 路徑接收遠端指令請求|
|邊緣智慧層|在已部署條件下，可透過 Runtime 治理接收 AI 輔助建議或上下文|
|設備參與層|使受支援家電以間接方式參與協同 Runtime 行為|

---

## 5.3 Core Functions

## 5.3 核心功能

**EN**  
Artibird Sync enables supported appliances to become part of coordinated scenes and automation. It is especially useful for devices such as air conditioners, televisions, fans, set-top boxes, projectors, audio equipment, curtain motors, or RF-controlled appliances where supported.

Its core value is not only remote control replacement. Its value is synchronization: allowing appliances to respond together with lighting, sensing, room control, energy workflows, and runtime behavior.

**ZH-TW**  
Artibird Sync 使受支援家電能夠成為協同場景與自動化的一部分。它尤其適用於空調、電視、風扇、機頂盒、投影機、音響設備、窗簾電機，或在支援條件下使用 RF 控制的家電。

它的核心價值不只是取代遙控器，而是同步：讓家電能夠與照明、感知、房間控制、能源工作流與 Runtime 行為一起協同回應。

---

## English Table

|Core Function|Description|
|---|---|
|IR appliance control|Sends supported infrared commands to compatible appliances|
|RF appliance control|Sends supported RF commands where implemented and validated|
|Appliance synchronization|Brings supported appliances into scenes, automation, and coordinated runtime behavior|
|Scene participation|Allows appliances to respond as part of predefined multi-device scenes|
|Automation participation|Allows supported appliances to respond to time, sensor, state, or event-based rules|
|App control|Allows supported appliance control through Artibird App where configured|
|Panel / Switch trigger|Allows supported appliance actions to be triggered by Panel or Switch behavior|
|Runtime command target|Receives supported runtime commands from Hub / ArtiOS|
|Status inference|May support appliance state estimation where implemented|
|Local-first participation|Supports defined local appliance control when required local components are present|

## 中文表

|核心功能|說明|
|---|---|
|IR 家電控制|向相容家電發送受支援紅外線指令|
|RF 家電控制|在已實作並驗證條件下發送受支援 RF 指令|
|家電同步|將受支援家電納入場景、自動化與協同 Runtime 行為|
|場景參與|使家電作為預定義多設備場景的一部分回應|
|自動化參與|使受支援家電基於時間、感測、狀態或事件規則回應|
|App 控制|在已配置條件下支援透過 Artibird App 控制家電|
|Panel / Switch 觸發|支援由 Panel 或 Switch 行為觸發受支援家電動作|
|Runtime 指令目標|接收來自 Hub / ArtiOS 的受支援 Runtime 指令|
|狀態推定|在已實作條件下可支持家電狀態推定|
|本地優先參與|當所需本地組件具備時，支援已定義本地家電控制|

---

## 5.4 Key Product Value

## 5.4 核心產品價值

**EN**  
Artibird Sync extends the OceanAI system to appliances that may not have native smart connectivity. It allows traditional remote-controlled appliances to participate in intelligent scenes, local automation, room coordination, and energy-aware workflows where supported.

This makes Artibird Sync an important product for both residential and commercial deployments, especially where existing appliances need to be integrated without replacing them.

**ZH-TW**  
Artibird Sync 將 OceanAI 系統延伸至可能不具備原生智慧連接能力的家電。它使傳統遙控家電能夠在支援條件下參與智慧場景、本地自動化、房間協同與能源感知工作流。

這使 Artibird Sync 成為住宅與商業部署中的重要產品，尤其適用於需要整合既有家電，而不是直接替換家電的場景。

---

## English Table

|Product Value|Description|
|---|---|
|Appliance integration|Brings supported IR / RF appliances into the Artibird system|
|Reduced replacement cost|Allows existing appliances to participate without immediate replacement|
|Scene coordination|Enables appliances to act together with lighting, panels, switches, and sensors|
|Climate coordination|Supports air conditioner control and climate-related automation where validated|
|Room-level convenience|Allows appliances to be controlled through App, Panel, Switch, or scenes|
|Local automation|Supports defined local appliance behavior through Hub / ArtiOS|
|Energy-aware workflows|May work with Sense and Act-E for energy and comfort workflows where supported|
|System expansion|Extends coordinated intelligence beyond native smart devices|

## 中文表

|產品價值|說明|
|---|---|
|家電整合|將受支援 IR / RF 家電納入 Artibird 系統|
|降低替換成本|使既有家電可參與系統，而不必立即更換|
|場景協同|使家電可與照明、面板、開關與感測器共同動作|
|空調協同|在已驗證條件下支援空調控制與空調相關自動化|
|房間級便利性|支援透過 App、Panel、Switch 或場景控制家電|
|本地自動化|透過 Hub / ArtiOS 支援已定義本地家電行為|
|能源感知工作流|在支援條件下可與 Sense、Act-E 配合形成能源與舒適度工作流|
|系統擴展|將協同智慧延伸至非原生智慧設備之外|

---

## 5.5 Supported Appliance Directions

## 5.5 支援家電方向

**EN**  
Artibird Sync may support different appliance categories depending on IR / RF protocol support, model database, learning capability, firmware version, and validation status.

The catalog should present supported appliance categories carefully and avoid implying that every appliance or remote-control protocol is supported.

**ZH-TW**  
Artibird Sync 可依 IR / RF 協議支援、碼庫、學習能力、韌體版本與驗證狀態，支援不同家電類別。

型錄應謹慎呈現受支援家電類別，並避免暗示支援所有家電或所有遙控協議。

---

## English Table

|Appliance Direction|Catalog Description|
|---|---|
|Air conditioner|Supports selected IR air conditioner control where compatible and validated|
|Television|Supports selected IR TV control where compatible and configured|
|Fan|Supports selected IR / RF fan control where implemented|
|Projector|Supports selected IR projector control where compatible|
|Set-top box|Supports selected IR set-top box control where compatible|
|Audio equipment|Supports selected IR audio device control where compatible|
|Curtain motor|Supports selected RF or IR curtain control where implemented and validated|
|Other appliances|Supported only where protocol, command set, and validation allow|

## 中文表

|家電方向|型錄描述|
|---|---|
|空調|在相容並已驗證條件下支援特定 IR 空調控制|
|電視|在相容並已配置條件下支援特定 IR 電視控制|
|風扇|在已實作條件下支援特定 IR / RF 風扇控制|
|投影機|在相容條件下支援特定 IR 投影機控制|
|機頂盒|在相容條件下支援特定 IR 機頂盒控制|
|音響設備|在相容條件下支援特定 IR 音響設備控制|
|窗簾電機|在已實作並驗證條件下支援特定 RF 或 IR 窗簾控制|
|其他家電|僅在協議、指令集與驗證允許時支援|

---

## 5.6 IR / RF Synchronization Model

## 5.6 IR / RF 同步模型

**EN**  
Artibird Sync can be described as a runtime command target that translates supported system commands into appliance control signals. The command may originate from App, Panel, Switch, automation, scene execution, Cloud request, or Edge-assisted runtime input where configured.

The synchronization process should always remain bounded by supported appliance type, command library, learned command availability, signal reachability, installation position, and validation status.

**ZH-TW**  
Artibird Sync 可被描述為 Runtime 指令目標，將受支援系統指令轉換為家電控制信號。指令可來自 App、Panel、Switch、自動化、場景執行、雲端請求，或在已配置條件下來自 Edge 輔助 Runtime 輸入。

同步過程必須始終受到受支援家電類型、指令碼庫、已學習指令可用性、信號可達性、安裝位置與驗證狀態約束。

---

## English Table

|Flow Stage|Description|
|---|---|
|Command source|App, Panel, Switch, scene, automation, Cloud, or runtime process|
|Runtime processing|Hub / ArtiOS evaluates permission, priority, target, and capability|
|Sync command generation|Runtime generates a supported Sync command|
|IR / RF signal output|Artibird Sync sends supported IR or RF signal where implemented|
|Appliance response|Appliance responds according to its own supported control behavior|
|State handling|Runtime may update command state; actual appliance state may require inference or external sensing|
|Feedback|App, Panel, or runtime may display command result where supported|

## 中文表

|流程階段|說明|
|---|---|
|指令來源|App、Panel、Switch、場景、自動化、Cloud 或 Runtime 流程|
|Runtime 處理|Hub / ArtiOS 判斷權限、優先級、目標與能力|
|Sync 指令生成|Runtime 生成受支援 Sync 指令|
|IR / RF 信號輸出|Artibird Sync 在已實作條件下發送受支援 IR 或 RF 信號|
|家電回應|家電依自身受支援控制行為回應|
|狀態處理|Runtime 可更新指令狀態；實際家電狀態可能需要推定或外部感測|
|回饋|支援條件下 App、Panel 或 Runtime 可顯示指令結果|

---

## 5.7 Typical Use Cases

## 5.7 典型應用場景

**EN**  
Artibird Sync is useful wherever traditional appliances need to participate in a coordinated intelligent environment. It is especially valuable for climate control, classroom equipment, AV control, home appliance coordination, and room-level scenes.

**ZH-TW**  
凡是傳統家電需要參與協同智慧空間的場景，Artibird Sync 都具有價值。它尤其適用於空調控制、教室設備、影音控制、家用電器協同與房間級場景。

---

## English Table

|Use Case|Description|
|---|---|
|Smart Home Appliance Control|Controls supported IR / RF appliances through App, scenes, or automation|
|Climate Coordination|Coordinates air conditioner behavior with Sense, Panel, App, and automation|
|Classroom AV Control|Supports projector, audio, display, or other supported AV device control|
|Meeting Room Control|Supports room-level appliance and AV synchronization|
|Energy-Aware Climate Workflow|May coordinate with Sense and Act-E for temperature and energy-related workflows|
|Scene-Based Appliance Control|Allows appliances to participate in predefined scenes|
|Remote Appliance Access|Allows supported appliance control through cloud-connected paths where configured|
|Local Control Continuity|Supports defined local appliance commands when required local components are present|

## 中文表

|應用場景|說明|
|---|---|
|智慧住宅家電控制|透過 App、場景或自動化控制受支援 IR / RF 家電|
|空調協同|將空調行為與 Sense、Panel、App 與自動化協同|
|教室影音控制|支援投影機、音響、顯示設備或其他受支援影音設備控制|
|會議室控制|支援房間級家電與影音同步|
|能源感知空調工作流|可與 Sense、Act-E 配合形成溫度與能源相關工作流|
|基於場景的家電控制|使家電參與預定義場景|
|遠端家電存取|在已配置條件下，透過雲端連接路徑控制受支援家電|
|本地控制延續|當所需本地組件具備時，支援已定義本地家電指令|

---

## 5.8 Recommended Product Combinations

## 5.8 建議產品組合

**EN**  
Artibird Sync is most useful when deployed with Hub / ArtiOS and other interaction or sensing products. It works as part of a broader product combination rather than as a standalone remote-control accessory.

**ZH-TW**  
Artibird Sync 與 Hub / ArtiOS 以及其他互動或感知產品一起部署時最具價值。它應作為更大產品組合的一部分，而不是單純獨立遙控配件。

---

## English Table

|Product Combination|Typical Purpose|
|---|---|
|Sync + Hub|Basic local runtime command path for supported appliance control|
|Sync + Hub + App|App-based appliance setup and control where configured|
|Sync + Hub + Panel|Room-level appliance and scene control|
|Sync + Hub + Switch|Wall-control-triggered appliance behavior|
|Sync + Hub + Sense|Sensor-based climate or appliance automation|
|Sync + Hub + Act-E|Energy-aware appliance workflow where supported|
|Sync + Hub + Cloud|Remote appliance access and synchronization where configured|
|Sync + Hub + Edge|AI-assisted comfort, visual, or context-aware appliance behavior where deployed|
|Sync + Full Product Set|Complete appliance participation in coordinated intelligent environments|

## 中文表

|產品組合|典型用途|
|---|---|
|Sync + Hub|受支援家電控制的基礎本地 Runtime 指令路徑|
|Sync + Hub + App|在已配置條件下基於 App 的家電設定與控制|
|Sync + Hub + Panel|房間級家電與場景控制|
|Sync + Hub + Switch|由牆面控制觸發的家電行為|
|Sync + Hub + Sense|基於感測的空調或家電自動化|
|Sync + Hub + Act-E|在支援條件下形成能源感知家電工作流|
|Sync + Hub + Cloud|在已配置條件下提供遠端家電存取與同步|
|Sync + Hub + Edge|在已部署條件下提供 AI 輔助舒適度、視覺或上下文家電行為|
|Sync + 完整產品組合|使家電完整參與協同智慧空間|

---

## 5.9 Customer-Readable Description

## 5.9 客戶可讀描述

**EN**  
Artibird Sync helps supported appliances become part of your intelligent environment. Instead of controlling air conditioners, TVs, fans, or other remote-controlled devices separately, Artibird Sync allows them to participate in scenes, automation, and room-level control.

With Artibird Sync, supported appliances can respond together with lights, sensors, switches, panels, and the Artibird App, creating a more coordinated and comfortable space.

**ZH-TW**  
Artibird Sync 幫助受支援家電成為智慧空間的一部分。使用者不必再將空調、電視、風扇或其他遙控設備分開控制，Artibird Sync 可讓它們參與場景、自動化與房間級控制。

透過 Artibird Sync，受支援家電可以與照明、感測器、開關、面板與 Artibird App 一起回應，形成更協同、更舒適的空間。

---

## 5.10 Product Page Summary

## 5.10 產品頁摘要

## EN

**Artibird Sync**  
IR / RF Appliance Synchronization Node for Coordinated Intelligent Environments

Artibird Sync brings supported IR / RF appliances into the OceanAI runtime system. It receives supported commands from Hub / ArtiOS and allows compatible appliances to participate in scenes, automation, App control, room interaction, and local or cloud-connected control paths where configured.

## ZH-TW

**Artibird Sync**  
面向協同智慧空間的 IR / RF 家電同步節點

Artibird Sync 將受支援 IR / RF 家電納入 OceanAI Runtime 系統。它接收來自 Hub / ArtiOS 的受支援指令，使相容家電能夠在已配置條件下參與場景、自動化、App 控制、房間互動，以及本地或雲端連接控制路徑。

---

## 5.11 Catalog Claim Boundary

## 5.11 型錄宣稱邊界

**EN**  
Artibird Sync supports defined IR / RF appliance synchronization functions under supported model, firmware, command library, learned command, signal reachability, installation, appliance compatibility, and validation conditions.

Artibird Sync should not be described as supporting all appliances, all IR protocols, all RF devices, perfect appliance state awareness, guaranteed command success, or universal remote replacement unless separately validated and approved.

**ZH-TW**  
Artibird Sync 在受支援型號、韌體、指令碼庫、已學習指令、信號可達性、安裝、家電相容性與驗證條件下，支援已定義 IR / RF 家電同步功能。

除非另行完成驗證與核准，Artibird Sync 不應被描述為支援所有家電、所有 IR 協議、所有 RF 設備、完美掌握家電狀態、保證指令成功，或通用遙控器完全替代品。

---

## English Table

|Avoid Saying|Preferred Catalog Language|
|---|---|
|Sync controls all appliances|Sync controls supported IR / RF appliances under defined compatibility conditions|
|Sync supports every remote|Sync supports defined command libraries or learned commands where compatible|
|Sync always knows appliance state|Sync may support state estimation where implemented; actual state may require sensing or inference|
|Sync guarantees every command works|Sync sends supported commands under defined signal and installation conditions|
|Sync replaces all remotes|Sync can reduce separate remote-control use for supported appliances|
|Sync supports all RF devices|Sync supports defined RF control where implemented and validated|
|Sync makes all appliances smart|Sync allows supported appliances to participate in coordinated runtime behavior|

## 中文表

|避免使用|建議型錄語言|
|---|---|
|Sync 控制所有家電|Sync 在明確相容條件下控制受支援 IR / RF 家電|
|Sync 支援所有遙控器|Sync 在相容條件下支援已定義碼庫或已學習指令|
|Sync 永遠知道家電狀態|Sync 在已實作條件下可支援狀態推定；實際狀態可能需要感測或推理|
|Sync 保證每個指令都成功|Sync 在明確信號與安裝條件下發送受支援指令|
|Sync 取代所有遙控器|Sync 可減少受支援家電的分散遙控使用|
|Sync 支援所有 RF 設備|Sync 在已實作並驗證條件下支援已定義 RF 控制|
|Sync 讓所有家電變智慧|Sync 使受支援家電能夠參與協同 Runtime 行為|

---

## 5.12 Chapter Conclusion

## 5.12 章節結論

**EN**  
Artibird Sync is the appliance synchronization node of the Artibird product family. It allows supported IR / RF appliances to participate in the OceanAI runtime system through scenes, automation, App control, room interaction, and local or cloud-connected command paths.

In the Artibird catalog, Sync should be presented as the product that extends coordinated intelligence to supported remote-controlled appliances. It helps transform traditional appliance control into synchronized participation within the OceanAI system architecture.

**ZH-TW**  
Artibird Sync 是 Artibird 產品家族中的家電同步節點。它使受支援 IR / RF 家電透過場景、自動化、App 控制、房間互動，以及本地或雲端連接指令路徑，參與 OceanAI Runtime 系統。

在 Artibird 型錄中，Sync 應被呈現為將協同智慧延伸至受支援遙控家電的產品。它幫助將傳統家電控制轉化為 OceanAI 系統架構中的同步參與。