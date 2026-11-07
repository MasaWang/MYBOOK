# Chapter 3 — Artibird Hub

# 第三章｜Artibird Hub

---

## 3.1 Product Positioning

## 3.1 產品定位

**EN**  
Artibird Hub is the **local runtime center** of the Artibird product system. It hosts the local services required for coordinated device behavior, state management, automation, scene execution, command routing, and local system operation.

Within the OceanAI architecture, Artibird Hub is the primary local component that allows supported Artibird devices to operate as a coordinated intelligent environment rather than isolated endpoints.

**ZH-TW**  
Artibird Hub 是 Artibird 產品系統中的**本地 Runtime 中樞**。它承載協同設備行為、狀態管理、自動化、場景執行、指令路由與本地系統運作所需的本地服務。

在 OceanAI 架構中，Artibird Hub 是主要本地組件，使受支援 Artibird 設備能夠作為協同智慧空間運作，而不是作為孤立終端設備存在。

---

## 3.2 System Role

## 3.2 系統角色

**EN**  
Artibird Hub belongs primarily to the **Local Runtime Layer** of the OceanAI architecture. It works with ArtiOS to maintain local system behavior and coordinate supported devices, scenes, automations, and state changes.

It may interact with Artibird Gate for device access, Artibird App for user control, OceanAI Cloud for remote access and synchronization, and OceanAI Edge for AI-assisted context where deployed.

**ZH-TW**  
Artibird Hub 主要屬於 OceanAI 架構中的**本地 Runtime 層**。它與 ArtiOS 配合，用於維持本地系統行為，並協同受支援設備、場景、自動化與狀態變化。

它可與 Artibird Gate 進行設備接入協同，與 Artibird App 進行用戶控制協同，與 OceanAI Cloud 進行遠端存取與同步協同，並在已部署條件下與 OceanAI Edge 進行 AI 輔助上下文協同。

---

## English Table

|System Layer|Hub Participation|
|---|---|
|Local Runtime Layer|Hosts local runtime services and ArtiOS modules|
|Device Access Layer|Works with Gate for supported device access|
|Interaction Layer|Receives commands from App, Panel, and Switch|
|Sensing Layer|Receives context from Sense and Vision where supported|
|Execution Layer|Routes commands to Act, Sync, and supported Switch relay variants|
|Cloud Layer|Synchronizes selected state, configuration, logs, and lifecycle data|
|Edge Intelligence Layer|Receives AI-assisted interpretation or context where deployed|

## 中文表

|系統層級|Hub 參與方式|
|---|---|
|本地 Runtime 層|承載本地 Runtime 服務與 ArtiOS 模組|
|設備接入層|與 Gate 配合支援設備接入|
|互動層|接收來自 App、Panel 與 Switch 的指令|
|感知層|在支援條件下接收來自 Sense 與 Vision 的上下文|
|執行層|將指令路由至 Act、Sync 與受支援 Switch 繼電器版本|
|雲端層|同步特定狀態、配置、日誌與生命週期數據|
|邊緣智慧層|在部署條件下接收 AI 輔助解讀或上下文|

---

## 3.3 Core Functions

## 3.3 核心功能

**EN**  
Artibird Hub provides the local foundation for coordinated operation. Its function is not limited to device connection. It maintains the local runtime environment in which devices, events, commands, scenes, automations, and state changes are processed.

**ZH-TW**  
Artibird Hub 為協同運作提供本地基礎。它的功能不僅是設備連接，而是維護一個本地 Runtime 環境，使設備、事件、指令、場景、自動化與狀態變化能夠被處理。

---

## English Table

|Core Function|Description|
|---|---|
|Local runtime hosting|Hosts ArtiOS modules and local services|
|State management|Maintains device, scene, automation, and system state|
|Command routing|Routes supported commands to target devices or services|
|Scene execution|Executes defined multi-device scene behavior|
|Automation execution|Executes supported conditional logic based on time, event, state, or sensor input|
|Local MQTT service|May host local MQTT broker or message communication services where implemented|
|Web service interface|May provide local web service interface where implemented|
|Cloud synchronization|Synchronizes selected data with OceanAI Cloud where configured|
|Edge coordination|Receives Edge-assisted input where OceanAI Edge is deployed|
|Failure behavior support|Supports defined local behavior during cloud or Internet unavailability|

## 中文表

|核心功能|說明|
|---|---|
|本地 Runtime 承載|承載 ArtiOS 模組與本地服務|
|狀態管理|維護設備、場景、自動化與系統狀態|
|指令路由|將受支援指令路由至目標設備或服務|
|場景執行|執行已定義多設備場景行為|
|自動化執行|基於時間、事件、狀態或感測輸入執行受支援條件邏輯|
|本地 MQTT 服務|在已實作條件下承載本地 MQTT Broker 或消息通訊服務|
|Web 服務介面|在已實作條件下提供本地 Web 服務介面|
|雲端同步|在已配置條件下與 OceanAI Cloud 同步特定數據|
|Edge 協同|在 OceanAI Edge 已部署條件下接收 Edge 輔助輸入|
|故障行為支持|在 Cloud 或 Internet 不可用時支援已定義本地行為|

---

## 3.4 Key Product Value

## 3.4 核心產品價值

**EN**  
Artibird Hub gives the Artibird product family a local center of coordination. Without a local runtime center, devices may remain dependent on direct control, cloud communication, or isolated product behavior. With Hub, supported devices can participate in coordinated local behavior.

The value of Artibird Hub is reflected in four areas: local continuity, coordinated operation, system state management, and deployment scalability.

**ZH-TW**  
Artibird Hub 為 Artibird 產品家族提供本地協同中心。如果沒有本地 Runtime 中樞，設備可能仍依賴直接控制、雲端通訊或孤立產品行為。有了 Hub，受支援設備可以參與協同本地行為。

Artibird Hub 的價值主要體現在四個方面：本地延續、協同運作、系統狀態管理與部署擴展性。

---

## English Table

|Product Value|Description|
|---|---|
|Local continuity|Supports defined local functions when required local components are present|
|Coordinated operation|Allows multiple devices to work together through scenes, automation, and command routing|
|State awareness|Maintains system and device states for more consistent control|
|Deployment scalability|Provides a local center for homes, classrooms, buildings, campuses, and infrastructure deployments|
|Reduced cloud dependency|Keeps supported local behavior from depending entirely on cloud availability|
|System integration|Connects device access, interaction, sensing, execution, cloud, and Edge participation|

## 中文表

|產品價值|說明|
|---|---|
|本地延續|當所需本地組件具備時，支援已定義本地功能|
|協同運作|使多個設備可透過場景、自動化與指令路由共同運作|
|狀態感知|維護系統與設備狀態，使控制更一致|
|部署擴展性|為住宅、教室、建築、校園與基礎設施部署提供本地中心|
|降低雲端依賴|使受支援本地行為不完全依賴雲端可用性|
|系統整合|連接設備接入、互動、感知、執行、雲端與 Edge 參與|

---

## 3.5 Typical Use Cases

## 3.5 典型應用場景

**EN**  
Artibird Hub can be used in different deployment scenarios where local coordination, device state, automation, and system control are required.

**ZH-TW**  
Artibird Hub 可用於需要本地協同、設備狀態、自動化與系統控制的不同部署場景。

---

## English Table

|Use Case|Description|
|---|---|
|Smart Home|Provides local coordination for lighting, scenes, appliances, sensing, and App control|
|Smart Classroom|Coordinates lighting, climate, energy, AV devices, teacher interface, and automation|
|Smart Office|Supports meeting room, workspace, shared area, and facility coordination|
|Smart Building|Supports multi-room or multi-zone local coordination|
|Smart Campus|Serves as part of distributed local runtime deployment across multiple spaces|
|Energy Management|Coordinates Act, Sense, Cloud, and automation for energy-aware workflows|
|Vision-Aware Security|Works with Vision, Edge, Cloud, and local alerts where supported|
|Agriculture / Infrastructure|Supports local automation and gateway-based distributed sensing and execution|

## 中文表

|應用場景|說明|
|---|---|
|智慧住宅|為照明、場景、家電、感知與 App 控制提供本地協同|
|智慧教室|協同照明、空調、能源、影音設備、教師介面與自動化|
|智慧辦公|支援會議室、工位區、共享區域與設施協同|
|智慧建築|支援多房間或多區域本地協同|
|智慧校園|作為多空間分布式本地 Runtime 部署的一部分|
|能源管理|協同 Act、Sense、Cloud 與自動化，形成能源感知工作流|
|視覺感知安全|在支援條件下與 Vision、Edge、Cloud 與本地警報協同|
|農業 / 基礎設施|支援本地自動化與基於網關的分布式感知與執行|

---

## 3.6 Recommended Product Combinations

## 3.6 建議產品組合

**EN**  
Artibird Hub is most valuable when used with other Artibird products. It provides the local runtime foundation for product combinations across different scenarios.

**ZH-TW**  
Artibird Hub 與其他 Artibird 產品配合使用時最能體現價值。它為不同場景中的產品組合提供本地 Runtime 基礎。

---

## English Table

|Product Combination|Typical Purpose|
|---|---|
|Hub + App|Basic setup, local access, configuration, and status viewing|
|Hub + Gate|Device onboarding, gateway communication, and local network participation|
|Hub + Switch|Local manual control and scene triggering|
|Hub + Panel|Room-level shared control and scene selection|
|Hub + Act|Electrical execution, load control, and supported automation|
|Hub + Sense|Sensor-based automation and environmental context|
|Hub + Sync|IR / RF appliance coordination|
|Hub + Vision|Visual event input and security awareness|
|Hub + Cloud|Remote access, synchronization, lifecycle, and multi-site management|
|Hub + Edge|AI-assisted interpretation, visual understanding, and optimization support|

## 中文表

|產品組合|典型用途|
|---|---|
|Hub + App|基礎設定、本地存取、配置與狀態查看|
|Hub + Gate|設備入網、網關通訊與本地網路參與|
|Hub + Switch|本地手動控制與場景觸發|
|Hub + Panel|房間級共享控制與場景選擇|
|Hub + Act|電力執行、負載控制與受支援自動化|
|Hub + Sense|基於感測的自動化與環境上下文|
|Hub + Sync|IR / RF 家電協同|
|Hub + Vision|視覺事件輸入與安全感知|
|Hub + Cloud|遠端存取、同步、生命週期與多站點管理|
|Hub + Edge|AI 輔助解讀、視覺理解與優化支持|

---

## 3.7 Customer-Readable Description

## 3.7 客戶可讀描述

**EN**  
Artibird Hub is the local center that keeps supported Artibird devices working together. It helps your space respond as a system instead of relying on individual devices acting alone.

With Artibird Hub, supported devices can share state, execute scenes, run local automation, respond to user control, and continue defined local functions when required local components are available.

**ZH-TW**  
Artibird Hub 是讓受支援 Artibird 設備共同運作的本地中心。它使空間能夠以系統方式回應，而不是依賴單一設備各自獨立動作。

透過 Artibird Hub，受支援設備可以共享狀態、執行場景、運行本地自動化、回應用戶控制，並在所需本地組件可用時延續已定義本地功能。

---

## 3.8 Product Page Summary

## 3.8 產品頁摘要

## EN

**Artibird Hub**  
Local Runtime Center for Coordinated Intelligent Environments

Artibird Hub hosts the local runtime services that allow supported Artibird devices to operate together. It manages state, scenes, automation, command routing, local service behavior, and selected cloud or Edge coordination where configured.

## ZH-TW

**Artibird Hub**  
面向協同智慧空間的本地 Runtime 中樞

Artibird Hub 承載本地 Runtime 服務，使受支援 Artibird 設備能夠共同運作。它管理狀態、場景、自動化、指令路由、本地服務行為，以及在配置條件下的特定雲端或 Edge 協同。

---

## 3.9 Catalog Claim Boundary

## 3.9 型錄宣稱邊界

**EN**  
Artibird Hub supports defined local runtime functions when required local components, supported devices, firmware versions, network conditions, and configuration requirements are present.

Artibird Hub should not be described as guaranteeing universal offline operation, unlimited device capacity, full autonomous control, or support for all third-party devices unless separately validated and approved.

**ZH-TW**  
當所需本地組件、受支援設備、韌體版本、網路條件與配置要求具備時，Artibird Hub 支援已定義本地 Runtime 功能。

除非另行完成驗證與核准，Artibird Hub 不應被描述為保證通用離線運作、無限制設備容量、完全自主控制或支援所有第三方設備。

---

## English Table

|Avoid Saying|Preferred Catalog Language|
|---|---|
|Hub makes everything work offline|Hub supports defined local functions when required local components are present|
|Hub supports unlimited devices|Hub supports validated capacity under defined device, network, and runtime conditions|
|Hub controls all devices|Hub coordinates supported devices and services under defined conditions|
|Hub replaces cloud completely|Hub supports local runtime behavior; cloud services remain required for remote, account, lifecycle, and multi-site functions|
|Hub guarantees automation in all conditions|Hub supports defined automations under supported device, input, and runtime conditions|

## 中文表

|避免使用|建議型錄語言|
|---|---|
|Hub 讓所有功能都離線可用|當所需本地組件具備時，Hub 支援已定義本地功能|
|Hub 支援無限制設備|Hub 在明確設備、網路與 Runtime 條件下支援已驗證容量|
|Hub 控制所有設備|Hub 在明確條件下協同受支援設備與服務|
|Hub 完全取代雲端|Hub 支援本地 Runtime 行為；遠端、帳號、生命週期與多站點功能仍需要雲端服務|
|Hub 保證所有條件下自動化|Hub 在受支援設備、輸入與 Runtime 條件下支援已定義自動化|

---

## 3.10 Chapter Conclusion

## 3.10 章節結論

**EN**  
Artibird Hub is the local runtime center of the Artibird product family. It provides the foundation for local coordination, state management, automation, scenes, command routing, and system participation.

In the Artibird catalog, Hub should be presented as the product that enables coordinated local behavior across supported devices. It is the local center that allows the Artibird product layer to operate as part of the OceanAI system architecture.

**ZH-TW**  
Artibird Hub 是 Artibird 產品家族的本地 Runtime 中樞。它為本地協同、狀態管理、自動化、場景、指令路由與系統參與提供基礎。

在 Artibird 型錄中，Hub 應被呈現為使受支援設備能夠形成協同本地行為的產品。它是讓 Artibird 產品層作為 OceanAI 系統架構一部分運作的本地中心。