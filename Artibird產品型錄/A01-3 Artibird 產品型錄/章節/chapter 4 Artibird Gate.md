# Chapter 4 — Artibird Gate

# 第四章｜Artibird Gate

---

## 4.1 Product Positioning

## 4.1 產品定位

**EN**  
Artibird Gate is the **device access gateway** of the Artibird product system. It connects supported devices to the local runtime environment and allows device-side networks to participate in the OceanAI coordinated intelligent environment system.

Within the OceanAI architecture, Artibird Gate belongs primarily to the **Device Access Layer**. Its role is to support device onboarding, gateway communication, local network participation, and protocol access under defined models, versions, and deployment conditions.

**ZH-TW**  
Artibird Gate 是 Artibird 產品系統中的**設備接入網關**。它將受支援設備連接至本地 Runtime 環境，使設備側網路能夠參與 OceanAI 協同智慧空間系統。

在 OceanAI 架構中，Artibird Gate 主要屬於**設備接入層**。它的角色是在明確型號、版本與部署條件下，支援設備入網、網關通訊、本地網路參與與協議接入。

---

## 4.2 System Role

## 4.2 系統角色

**EN**  
Artibird Gate provides the access path between supported Artibird devices and the local runtime system. It does not replace Artibird Hub or ArtiOS. Instead, it works with Hub and ArtiOS to bring supported devices into the runtime environment.

Artibird Gate may support Wi-Fi, Ethernet, BLE Mesh, Wi-Fi Mesh, or other supported communication paths depending on model and implementation. Its system role is to make device access structured, manageable, and aligned with the OceanAI runtime architecture.

**ZH-TW**  
Artibird Gate 提供受支援 Artibird 設備與本地 Runtime 系統之間的接入路徑。它不取代 Artibird Hub 或 ArtiOS，而是與 Hub 和 ArtiOS 配合，將受支援設備帶入 Runtime 環境。

Artibird Gate 可依型號與實作支援 Wi-Fi、Ethernet、BLE Mesh、Wi-Fi Mesh 或其他受支援通訊路徑。它的系統角色，是使設備接入變得結構化、可管理，並與 OceanAI Runtime 架構保持一致。

---

## English Table

|System Layer|Gate Participation|
|---|---|
|Device Access Layer|Provides supported device onboarding and gateway communication|
|Local Runtime Layer|Connects supported devices to Hub / ArtiOS runtime behavior|
|Connectivity Layer|Participates in Wi-Fi, Ethernet, BLE Mesh, Wi-Fi Mesh, or supported network paths depending on variant|
|Interaction Layer|Transports events from Switch, Panel, App-related paths, or supported control devices where applicable|
|Sensing Layer|Transports sensing data from Sense or supported sensing nodes|
|Execution Layer|Transports commands to Act, Switch relay variants, Sync, or supported execution nodes|
|Cloud Layer|May support cloud-connected access flows through Hub or configured service paths|
|Device Participation Layer|Enables supported devices to participate in the system through defined access paths|

## 中文表

|系統層級|Gate 參與方式|
|---|---|
|設備接入層|提供受支援設備入網與網關通訊|
|本地 Runtime 層|將受支援設備連接至 Hub / ArtiOS Runtime 行為|
|連接層|依版本參與 Wi-Fi、Ethernet、BLE Mesh、Wi-Fi Mesh 或受支援網路路徑|
|互動層|在適用條件下傳輸來自 Switch、Panel、App 相關路徑或受支援控制設備的事件|
|感知層|傳輸來自 Sense 或受支援感知節點的感測數據|
|執行層|將指令傳輸至 Act、Switch 繼電器版本、Sync 或受支援執行節點|
|雲端層|可透過 Hub 或已配置服務路徑支援雲端連接接入流程|
|設備參與層|透過已定義接入路徑，使受支援設備參與系統|

---

## 4.3 Core Functions

## 4.3 核心功能

**EN**  
Artibird Gate provides the structured access layer required for device participation. It helps supported devices join the system, communicate with local runtime services, and exchange events, commands, state, and telemetry through defined communication paths.

Its role is especially important in deployments where multiple devices, protocols, rooms, classrooms, buildings, or distributed zones need to be connected into one coordinated system.

**ZH-TW**  
Artibird Gate 提供設備參與所需的結構化接入層。它幫助受支援設備加入系統，與本地 Runtime 服務通訊，並透過已定義通訊路徑交換事件、指令、狀態與遙測數據。

在多設備、多協議、多房間、教室、建築或分布式區域需要接入同一協同系統的部署中，Artibird Gate 尤其重要。

---

## English Table

|Core Function|Description|
|---|---|
|Device onboarding|Supports discovery, access, binding, and assignment of supported devices|
|Gateway communication|Provides communication between device-side networks and local runtime services|
|Network participation|Participates in supported Wi-Fi, Ethernet, BLE Mesh, Wi-Fi Mesh, or variant-specific paths|
|Protocol access|Provides access for supported communication protocols where implemented|
|Event transport|Transports events from supported devices toward Hub / ArtiOS|
|Command delivery|Delivers runtime commands from Hub / ArtiOS to supported target devices|
|State reporting|Supports state and health reporting from connected devices|
|Local deployment support|Helps organize device access in homes, classrooms, buildings, campuses, and infrastructure sites|
|Failure visibility|Helps identify access, connectivity, or device reachability issues where supported|
|Capacity boundary support|Supports defined device count and communication limits under validated conditions|

## 中文表

|核心功能|說明|
|---|---|
|設備入網|支援受支援設備的發現、接入、綁定與分配|
|網關通訊|在設備側網路與本地 Runtime 服務之間提供通訊|
|網路參與|參與受支援 Wi-Fi、Ethernet、BLE Mesh、Wi-Fi Mesh 或依版本定義的路徑|
|協議接入|在已實作條件下提供受支援通訊協議接入|
|事件傳輸|將受支援設備事件傳輸至 Hub / ArtiOS|
|指令下發|將來自 Hub / ArtiOS 的 Runtime 指令下發至受支援目標設備|
|狀態回報|支援已連接設備的狀態與健康狀態回報|
|本地部署支持|幫助住宅、教室、建築、校園與基礎設施站點組織設備接入|
|故障可視化|在支援條件下幫助識別接入、連接或設備可達性問題|
|容量邊界支持|在已驗證條件下支援已定義設備數與通訊限制|

---

## 4.4 Key Product Value

## 4.4 核心產品價值

**EN**  
Artibird Gate gives the Artibird system a structured device access layer. Without a defined access gateway, supported devices may remain fragmented across different communication paths or isolated from the local runtime system.

With Artibird Gate, device onboarding, gateway communication, network participation, and local access can be organized through a consistent system role.

**ZH-TW**  
Artibird Gate 為 Artibird 系統提供結構化設備接入層。如果沒有明確的接入網關，受支援設備可能分散在不同通訊路徑中，或與本地 Runtime 系統保持割裂。

透過 Artibird Gate，設備入網、網關通訊、網路參與與本地接入能夠透過一致的系統角色被組織起來。

---

## English Table

|Product Value|Description|
|---|---|
|Structured device access|Provides a defined gateway role for supported devices|
|Protocol organization|Helps organize supported communication paths under one access role|
|Local runtime participation|Allows supported devices to participate in Hub / ArtiOS runtime behavior|
|Deployment flexibility|Supports different site conditions through supported connectivity variants|
|Reduced fragmentation|Helps reduce isolated device behavior by connecting devices through defined access paths|
|System scalability|Supports larger homes, classrooms, buildings, campuses, and distributed deployments under validated capacity|
|Better device visibility|Helps provide visibility into device reachability and access status where supported|
|Gateway-based integration|Provides a foundation for local device integration and coordinated operation|

## 中文表

|產品價值|說明|
|---|---|
|結構化設備接入|為受支援設備提供明確網關角色|
|協議組織|幫助將受支援通訊路徑組織在一個接入角色下|
|本地 Runtime 參與|使受支援設備能夠參與 Hub / ArtiOS Runtime 行為|
|部署彈性|透過受支援連接版本適應不同站點條件|
|降低碎片化|透過已定義接入路徑連接設備，減少孤立設備行為|
|系統擴展性|在已驗證容量下支援更大住宅、教室、建築、校園與分布式部署|
|更好的設備可視性|在支援條件下提供設備可達性與接入狀態可視化|
|基於網關的整合|為本地設備整合與協同運作提供基礎|

---

## 4.5 Connectivity and Supported Access Paths

## 4.5 連接方式與受支援接入路徑

**EN**  
Artibird Gate may support different communication paths depending on model, hardware version, firmware version, and deployment design. The catalog should describe supported paths clearly and avoid implying universal protocol compatibility.

Connectivity should always be stated according to model and validation status.

**ZH-TW**  
Artibird Gate 可依型號、硬體版本、韌體版本與部署設計支援不同通訊路徑。型錄應清楚描述受支援路徑，並避免暗示通用協議相容。

連接方式應始終依型號與驗證狀態描述。

---

## English Table

|Connectivity / Access Path|Catalog Description|
|---|---|
|Wi-Fi|Supports Wi-Fi-based gateway communication where implemented|
|Ethernet|Supports wired backhaul or wired local connection where supported by model|
|BLE Mesh|Supports BLE Mesh access for supported device categories where implemented|
|Wi-Fi Mesh|Supports Wi-Fi Mesh participation only where implemented and validated|
|Local MQTT|May participate in local message flows through Hub / ArtiOS where configured|
|App-related access|May support device setup or local discovery paths depending on implementation|
|Cloud-related access|May support cloud-connected access through Hub or defined service path|
|Offline local access|Supports defined local access behavior only when required local components are present|

## 中文表

|連接 / 接入路徑|型錄描述|
|---|---|
|Wi-Fi|在已實作條件下支援基於 Wi-Fi 的網關通訊|
|Ethernet|在型號支援條件下支援有線回程或有線本地連接|
|BLE Mesh|在已實作條件下支援特定設備類別的 BLE Mesh 接入|
|Wi-Fi Mesh|僅在已實作並完成驗證條件下支援 Wi-Fi Mesh 參與|
|本地 MQTT|在已配置條件下可透過 Hub / ArtiOS 參與本地消息流|
|App 相關接入|依實作支援設備設定或本地發現路徑|
|Cloud 相關接入|可透過 Hub 或已定義服務路徑支援雲端連接接入|
|離線本地接入|僅在所需本地組件具備時支援已定義本地接入行為|

---

## 4.6 Typical Use Cases

## 4.6 典型應用場景

**EN**  
Artibird Gate is used in scenarios where supported devices must be connected, organized, and coordinated through a defined local access path.

It is especially useful in distributed environments such as classrooms, buildings, campuses, agriculture sites, infrastructure zones, and homes with multiple device categories.

**ZH-TW**  
Artibird Gate 用於需要透過明確本地接入路徑連接受支援設備、組織設備並協同設備的場景。

它尤其適用於教室、建築、校園、農業站點、基礎設施區域，以及包含多類設備的住宅等分布式環境。

---

## English Table

|Use Case|Description|
|---|---|
|Smart Home Device Access|Connects supported switches, sensors, execution nodes, and other devices to local runtime|
|BLE Mesh Access|Provides access path for supported BLE Mesh devices where implemented|
|Classroom Deployment|Supports multiple classroom devices through a defined gateway role|
|Smart Building|Helps organize device access across rooms, zones, or floors|
|Smart Campus|Supports distributed gateway deployment across buildings or spaces|
|Agriculture / Irrigation|Supports distributed sensing and execution access where deployment conditions allow|
|Infrastructure Monitoring|Provides gateway access for supported distributed devices|
|Offline Local System|Supports defined local device access when Hub, Gate, and required devices are available|

## 中文表

|應用場景|說明|
|---|---|
|智慧住宅設備接入|將受支援開關、感測器、執行節點與其他設備接入本地 Runtime|
|BLE Mesh 接入|在已實作條件下為受支援 BLE Mesh 設備提供接入路徑|
|教室部署|透過明確網關角色支援多個教室設備|
|智慧建築|幫助組織跨房間、區域或樓層的設備接入|
|智慧校園|支援跨建築或空間的分布式網關部署|
|農業 / 灌溉|在部署條件允許時支援分布式感知與執行接入|
|基礎設施監測|為受支援分布式設備提供網關接入|
|離線本地系統|當 Hub、Gate 與所需設備可用時，支援已定義本地設備接入|

---

## 4.7 Recommended Product Combinations

## 4.7 建議產品組合

**EN**  
Artibird Gate is usually deployed together with Artibird Hub and supported endpoint devices. Its value increases when it connects multiple categories of devices into the local runtime environment.

**ZH-TW**  
Artibird Gate 通常與 Artibird Hub 及受支援終端設備一起部署。當它將多類設備接入本地 Runtime 環境時，其價值會更明顯。

---

## English Table

|Product Combination|Typical Purpose|
|---|---|
|Gate + Hub|Basic gateway-to-runtime access|
|Gate + Hub + Switch|Switch access, scene trigger transport, and local control|
|Gate + Hub + Sense|Sensor data transport and automation input|
|Gate + Hub + Act|Execution command delivery and load control coordination|
|Gate + Hub + Panel|Room interaction and gateway-connected system behavior|
|Gate + Hub + Sync|Appliance synchronization through local runtime path|
|Gate + Hub + Vision|Visual device access where supported|
|Gate + Cloud|Gateway-supported access visibility through cloud-connected system paths|
|Gate + Edge|Sensor or device context may support Edge-assisted analysis where deployed|
|Gate + Full Product Set|Complete access layer for coordinated intelligent environments|

## 中文表

|產品組合|典型用途|
|---|---|
|Gate + Hub|基礎網關至 Runtime 接入|
|Gate + Hub + Switch|開關接入、場景觸發傳輸與本地控制|
|Gate + Hub + Sense|感測數據傳輸與自動化輸入|
|Gate + Hub + Act|執行指令下發與負載控制協同|
|Gate + Hub + Panel|房間互動與基於網關接入的系統行為|
|Gate + Hub + Sync|透過本地 Runtime 路徑進行家電同步|
|Gate + Hub + Vision|在支援條件下提供視覺設備接入|
|Gate + Cloud|透過雲端連接系統路徑提供網關接入可視化|
|Gate + Edge|在已部署條件下，感測或設備上下文可支持 Edge 輔助分析|
|Gate + 完整產品組合|為協同智慧空間提供完整接入層|

---

## 4.8 Customer-Readable Description

## 4.8 客戶可讀描述

**EN**  
Artibird Gate is the gateway that helps supported Artibird devices join the system. It connects device-side communication paths to the local runtime environment, allowing devices to send events, report status, receive commands, and participate in coordinated scenes and automation.

With Artibird Gate, supported devices can be organized as part of a larger intelligent environment rather than operating as disconnected individual products.

**ZH-TW**  
Artibird Gate 是幫助受支援 Artibird 設備加入系統的網關。它將設備側通訊路徑連接至本地 Runtime 環境，使設備能夠發送事件、回報狀態、接收指令，並參與協同場景與自動化。

透過 Artibird Gate，受支援設備可以被組織為更大智慧空間的一部分，而不是作為互不相連的單一產品運作。

---

## 4.9 Product Page Summary

## 4.9 產品頁摘要

## EN

**Artibird Gate**  
Device Access Gateway for Coordinated Intelligent Environments

Artibird Gate provides the access layer that connects supported devices to the OceanAI local runtime environment. It supports defined device onboarding, gateway communication, network participation, event transport, command delivery, and device state reporting under supported models and deployment conditions.

## ZH-TW

**Artibird Gate**  
面向協同智慧空間的設備接入網關

Artibird Gate 提供設備接入層，將受支援設備連接至 OceanAI 本地 Runtime 環境。它在受支援型號與部署條件下支援已定義設備入網、網關通訊、網路參與、事件傳輸、指令下發與設備狀態回報。

---

## 4.10 Catalog Claim Boundary

## 4.10 型錄宣稱邊界

**EN**  
Artibird Gate supports defined device access and gateway communication functions under supported model, firmware, hardware, network, protocol, deployment, and validation conditions.

Artibird Gate should not be described as supporting all devices, all protocols, unlimited device access, universal mesh networking, or guaranteed connectivity in all environments unless separately validated and approved.

**ZH-TW**  
Artibird Gate 在受支援型號、韌體、硬體、網路、協議、部署與驗證條件下，支援已定義設備接入與網關通訊功能。

除非另行完成驗證與核准，Artibird Gate 不應被描述為支援所有設備、所有協議、無限制設備接入、通用 Mesh 組網，或在所有環境中保證連接。

---

## English Table

|Avoid Saying|Preferred Catalog Language|
|---|---|
|Gate supports all devices|Gate supports supported and validated devices|
|Gate supports every protocol|Gate supports defined protocols where implemented and validated|
|Gate guarantees connectivity everywhere|Gate supports connectivity under defined network and deployment conditions|
|Gate supports unlimited devices|Gate supports validated device capacity under defined conditions|
|Gate creates universal mesh networking|Gate supports specific mesh or gateway functions where implemented and validated|
|Gate replaces Hub|Gate provides device access; Hub / ArtiOS provides local runtime behavior|
|Gate makes every device local-first|Gate supports local access paths for supported devices when required local components are present|

## 中文表

|避免使用|建議型錄語言|
|---|---|
|Gate 支援所有設備|Gate 支援受支援且已驗證設備|
|Gate 支援所有協議|Gate 在已實作並驗證條件下支援已定義協議|
|Gate 在所有地方保證連接|Gate 在明確網路與部署條件下支援連接|
|Gate 支援無限制設備|Gate 在明確條件下支援已驗證設備容量|
|Gate 建立通用 Mesh 組網|Gate 在已實作並驗證條件下支援特定 Mesh 或網關功能|
|Gate 取代 Hub|Gate 提供設備接入；Hub / ArtiOS 提供本地 Runtime 行為|
|Gate 讓所有設備都本地優先|當所需本地組件具備時，Gate 為受支援設備提供本地接入路徑|

---

## 4.11 Chapter Conclusion

## 4.11 章節結論

**EN**  
Artibird Gate is the device access gateway of the Artibird product family. It gives supported devices a structured way to join the OceanAI local runtime environment and participate in coordinated system behavior.

In the Artibird catalog, Gate should be presented as the product that organizes device access, gateway communication, supported network paths, and protocol participation. It is the access layer that allows devices to become runtime participants within the OceanAI system architecture.

**ZH-TW**  
Artibird Gate 是 Artibird 產品家族中的設備接入網關。它為受支援設備提供結構化方式，使其加入 OceanAI 本地 Runtime 環境並參與協同系統行為。

在 Artibird 型錄中，Gate 應被呈現為組織設備接入、網關通訊、受支援網路路徑與協議參與的產品。它是使設備成為 OceanAI 系統架構中 Runtime 參與者的接入層。