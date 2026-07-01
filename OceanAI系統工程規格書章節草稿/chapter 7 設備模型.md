# 7. Device Model

# 7. 設備模型

## 7.1 Purpose

## 7.1 目的

**EN**  
This section defines how devices are represented inside the OceanAI / Artibird system.

**ZH-TW**  
本章定義設備在 OceanAI / Artibird 系統中如何被表示。

---

## 7.2 Device Model Definition

## 7.2 設備模型定義

**EN**  
The device model defines the standard representation of supported devices within the OceanAI / Artibird system. It describes how each device is identified, classified, connected, managed, monitored, and used by the runtime system.

A device model should include device identity, product type, model number, firmware version, hardware version, room or space assignment, current state, supported capabilities, connectivity status, security identity, last communication time, and health status.

**ZH-TW**  
設備模型定義受支援設備在 OceanAI / Artibird 系統中的標準表示方式。它描述每個設備如何被識別、分類、連接、管理、監測，並被 Runtime 系統使用。

設備模型應包含設備身份、產品類型、型號、韌體版本、硬體版本、房間或空間分配、當前狀態、受支援能力、連接狀態、安全身份、最近通訊時間與健康狀態。

---

## 7.3 Device Representation

## 7.3 設備表示方式

**EN**  
Each supported device should be represented as a structured system object. This object allows ArtiOS, Artibird Hub, Artibird Gate, OceanAI Cloud, OceanAI Edge, Artibird App, and other supported components to understand the device role, capability, state, and communication condition.

The device representation must remain consistent across local runtime services, cloud synchronization, App display, automation logic, and validation documents.

**ZH-TW**  
每個受支援設備都應被表示為一個結構化系統對象。此對象使 ArtiOS、Artibird Hub、Artibird Gate、OceanAI Cloud、OceanAI Edge、Artibird App 與其他受支援組件能夠理解設備角色、能力、狀態與通訊條件。

設備表示方式必須在本地 Runtime 服務、雲端同步、App 顯示、自動化邏輯與驗證文件中保持一致。

---

## 7.4 Device Model Fields

## 7.4 設備模型欄位

## English Table

|Field|Description|
|---|---|
|Device ID|Unique device identifier|
|Product Type|Hub, Gate, Switch, Panel, Act, Sense, Sync, Vision|
|Model Number|Product model number|
|Firmware Version|Current firmware version|
|Hardware Version|Hardware revision|
|Room / Space|Assigned room or area|
|State|Current device state|
|Capability|Supported functions|
|Connectivity|Network path and status|
|Security Identity|Authentication and authorization identity|
|Last Seen|Last communication timestamp|
|Health Status|Online, offline, degraded, error|

## 中文表

|欄位|說明|
|---|---|
|Device ID|唯一設備識別碼|
|Product Type|Hub、Gate、Switch、Panel、Act、Sense、Sync、Vision|
|Model Number|產品型號|
|Firmware Version|當前韌體版本|
|Hardware Version|硬體版本|
|Room / Space|所屬房間或區域|
|State|當前設備狀態|
|Capability|受支援功能|
|Connectivity|網路路徑與狀態|
|Security Identity|身份認證與授權身份|
|Last Seen|最近通訊時間戳|
|Health Status|在線、離線、降級、錯誤|

---

## 7.5 Device ID

## 7.5 設備識別碼

**EN**  
Device ID is the unique identifier used to distinguish one supported device from another within the OceanAI / Artibird system. It should be used by local runtime services, cloud services, App interfaces, automation logic, logs, and validation records.

Device ID must remain stable during normal system operation. If a device is reset, replaced, re-bound, or migrated to another system, the device identity handling must follow defined binding and security rules.

**ZH-TW**  
Device ID 是 OceanAI / Artibird 系統中用於區分不同受支援設備的唯一識別碼。它應被本地 Runtime 服務、雲端服務、App 介面、自動化邏輯、日誌與驗證記錄使用。

Device ID 在正常系統運作期間應保持穩定。如果設備被重置、更換、重新綁定或遷移至另一系統，其設備身份處理必須遵循已定義的綁定與安全規則。

---

## 7.6 Product Type

## 7.6 產品類型

**EN**  
Product Type defines the category of the device within the Artibird product family. The product type determines the device role, supported capabilities, runtime participation, connectivity path, and validation requirements.

Supported product types include Hub, Gate, Switch, Panel, Act, Sense, Sync, and Vision.

**ZH-TW**  
Product Type 定義設備在 Artibird 產品家族中的類別。產品類型決定設備角色、受支援能力、Runtime 參與方式、連接路徑與驗證要求。

受支援產品類型包括 Hub、Gate、Switch、Panel、Act、Sense、Sync 與 Vision。

---

## English Table

|Product Type|Device Role|
|---|---|
|Hub|Local runtime center|
|Gate|Device access gateway|
|Switch|Interaction and event node|
|Panel|Room interaction interface|
|Act|Electrical execution node|
|Sense|Environmental context node|
|Sync|Appliance synchronization node|
|Vision|Visual perception node|

## 中文表

|產品類型|設備角色|
|---|---|
|Hub|本地 Runtime 中心|
|Gate|設備接入網關|
|Switch|互動與事件節點|
|Panel|房間互動介面|
|Act|電力執行節點|
|Sense|環境上下文節點|
|Sync|家電同步節點|
|Vision|視覺感知節點|

---

## 7.7 Model Number, Firmware Version, and Hardware Version

## 7.7 型號、韌體版本與硬體版本

**EN**  
Model Number identifies the specific product model. Firmware Version identifies the current firmware running on the device. Hardware Version identifies the hardware revision of the device.

These fields are required for compatibility management, troubleshooting, firmware update planning, testing, certification, support, and validation.

**ZH-TW**  
Model Number 用於識別具體產品型號。Firmware Version 用於識別設備當前運行的韌體版本。Hardware Version 用於識別設備的硬體修訂版本。

這些欄位對於相容性管理、故障排查、韌體更新規劃、測試、認證、支援與驗證都是必要的。

---

## 7.8 Room / Space Assignment

## 7.8 房間 / 空間分配

**EN**  
Room / Space defines where the device is assigned within the system. A device may belong to a home, site, building, floor, room, area, classroom, office, zone, or other supported spatial structure.

Room / Space assignment allows the runtime system to organize scenes, automation, user control, deployment models, monitoring, and reporting according to physical or logical space.

**ZH-TW**  
Room / Space 定義設備在系統中被分配到的位置。設備可屬於住宅、站點、建築、樓層、房間、區域、教室、辦公室、分區或其他受支援空間結構。

Room / Space 分配使 Runtime 系統能夠依據實體或邏輯空間組織場景、自動化、用戶控制、部署模型、監測與報告。

---

## 7.9 Device State

## 7.9 設備狀態

**EN**  
Device State represents the current condition or value of a device. Depending on product type, state may include on/off status, relay status, plug status, sensor reading, connection status, scene status, execution result, visual event status, or synchronization result.

Device state should be maintained locally where required components are present. Selected state data may synchronize with OceanAI Cloud where supported.

**ZH-TW**  
Device State 表示設備當前條件或數值。依產品類型不同，狀態可包括開 / 關狀態、繼電器狀態、插座狀態、感測讀數、連接狀態、場景狀態、執行結果、視覺事件狀態或同步結果。

在所需元件具備時，設備狀態應在本地維護。特定狀態數據可在支援條件下與 OceanAI Cloud 同步。

---

## English Table

|Product Type|Example State|
|---|---|
|Hub|Online, service running, degraded, error|
|Gate|Online, connected devices, onboarding status|
|Switch|Touch event, relay state, battery status depending on variant|
|Panel|Active screen, selected scene, room control status|
|Act|Relay state, plug state, load status, energy data where supported|
|Sense|Temperature, humidity, light, occupancy, environmental data|
|Sync|IR command status, RF command status, appliance control result|
|Vision|Motion event, recording status, visual alert, device health|

## 中文表

|產品類型|狀態示例|
|---|---|
|Hub|在線、服務運行中、降級、錯誤|
|Gate|在線、已連接設備、入網狀態|
|Switch|觸控事件、繼電器狀態、依版本支援電池狀態|
|Panel|當前畫面、已選場景、房間控制狀態|
|Act|繼電器狀態、插座狀態、負載狀態、支援條件下能源數據|
|Sense|溫度、濕度、光照、人在、環境數據|
|Sync|IR 指令狀態、RF 指令狀態、家電控制結果|
|Vision|移動事件、錄影狀態、視覺警報、設備健康|

---

## 7.10 Capability

## 7.10 設備能力

**EN**  
Capability defines the supported functions of a device. Device capabilities should be described according to product type, model number, hardware version, firmware version, connectivity path, installation condition, and validation status.

Capability definitions must not imply support for functions that have not been implemented, configured, tested, or validated.

**ZH-TW**  
Capability 定義設備受支援功能。設備能力應依產品類型、型號、硬體版本、韌體版本、連接路徑、安裝條件與驗證狀態進行描述。

設備能力定義不得暗示支援尚未實作、配置、測試或驗證的功能。

---

## English Table

|Capability Type|Example|
|---|---|
|Control capability|Relay control, plug control, appliance command|
|Sensing capability|Temperature, humidity, light, occupancy, visual event|
|Interaction capability|Touch input, panel operation, App command|
|Connectivity capability|Wi-Fi, Ethernet, BLE Mesh, local network, cloud access|
|Runtime capability|Scene trigger, automation input, local state participation|
|Security capability|Device identity, access control, secure communication|
|Update capability|Firmware update, configuration update where supported|

## 中文表

|能力類型|示例|
|---|---|
|控制能力|繼電器控制、插座控制、家電指令|
|感知能力|溫度、濕度、光照、人在、視覺事件|
|互動能力|觸控輸入、面板操作、App 指令|
|連接能力|Wi-Fi、Ethernet、BLE Mesh、本地網路、雲端存取|
|Runtime 能力|場景觸發、自動化輸入、本地狀態參與|
|安全能力|設備身份、存取控制、安全通訊|
|更新能力|支援條件下韌體更新、配置更新|

---

## 7.11 Connectivity

## 7.11 連接狀態

**EN**  
Connectivity defines the network path and communication condition of a device. A device may connect through Wi-Fi, Ethernet, BLE Mesh, Wi-Fi Mesh where supported, local network path, gateway path, cloud path, or other validated communication method.

Connectivity status should include whether the device is online, offline, degraded, reconnecting, or unavailable.

**ZH-TW**  
Connectivity 定義設備的網路路徑與通訊條件。設備可透過 Wi-Fi、Ethernet、BLE Mesh、支援條件下的 Wi-Fi Mesh、本地網路路徑、網關路徑、雲端路徑或其他已驗證通訊方式連接。

連接狀態應包含設備是否在線、離線、降級、重新連接中或不可用。

---

## 7.12 Security Identity

## 7.12 安全身份

**EN**  
Security Identity defines how a device is authenticated and authorized within the system. It may include device identity, account binding, local access permission, cloud binding, role-based access control, and secure communication status where supported.

Security identity is required for preventing unauthorized device access, invalid control commands, unsafe re-binding, and unsupported system participation.

**ZH-TW**  
Security Identity 定義設備如何在系統中完成身份認證與授權。它可包括設備身份、帳號綁定、本地存取權限、雲端綁定、角色權限控制，以及支援條件下的安全通訊狀態。

安全身份對於防止未授權設備存取、無效控制指令、不安全重新綁定與未支援系統參與是必要的。

---

## 7.13 Last Seen

## 7.13 最近通訊時間

**EN**  
Last Seen records the most recent communication timestamp between the device and the system. It may be used to determine online status, offline status, connectivity health, delayed reporting, or device availability.

Last Seen accuracy depends on device reporting behavior, local network condition, gateway status, Hub availability, and synchronization behavior.

**ZH-TW**  
Last Seen 記錄設備與系統之間最近一次通訊時間戳。它可用於判斷在線狀態、離線狀態、連接健康、延遲上報或設備可用性。

Last Seen 準確性取決於設備上報行為、本地網路條件、網關狀態、Hub 可用性與同步行為。

---

## 7.14 Health Status

## 7.14 健康狀態

**EN**  
Health Status describes whether the device is operating normally, unavailable, degraded, updating, unbound, disabled, or in error condition.

Health status should be used by runtime services, App interfaces, cloud services, testing tools, and support processes to identify device condition and expected behavior.

**ZH-TW**  
Health Status 描述設備是否正常運行、不可用、降級、更新中、未綁定、已停用或處於錯誤狀態。

健康狀態應被 Runtime 服務、App 介面、雲端服務、測試工具與支援流程使用，以識別設備條件與預期行為。

---

## 7.15 Device Health States

## 7.15 設備健康狀態

## English Table

|Health State|Description|
|---|---|
|Online|Device is reachable and operating normally|
|Offline|Device is not reachable|
|Degraded|Device is reachable but has limited capability|
|Error|Device reports a fault or abnormal condition|
|Updating|Device is undergoing firmware or configuration update|
|Unbound|Device has not been assigned to an account or system|
|Disabled|Device is intentionally disabled by system policy or user action|

## 中文表

|健康狀態|說明|
|---|---|
|在線|設備可達且正常運行|
|離線|設備不可達|
|降級|設備可達，但能力受限|
|錯誤|設備回報故障或異常狀態|
|更新中|設備正在進行韌體或配置更新|
|未綁定|設備尚未分配至帳號或系統|
|已停用|設備因系統策略或用戶操作被停用|

---

## 7.16 Device Model Boundary

## 7.16 設備模型邊界

**EN**  
The device model defines how supported devices are represented within the system. It does not imply that all possible device types, all third-party devices, all protocols, all appliances, or all electrical loads are supported.

Any device capability, connectivity mode, security behavior, state reporting, or health status must be defined according to supported product type, model number, firmware version, hardware version, deployment condition, and validation evidence.

**ZH-TW**  
設備模型定義受支援設備如何在系統中被表示。它不表示支援所有可能設備類型、所有第三方設備、所有協議、所有家電或所有電氣負載。

任何設備能力、連接模式、安全行為、狀態上報或健康狀態，都必須依受支援產品類型、型號、韌體版本、硬體版本、部署條件與驗證證據進行定義。

---

## 7.17 Chapter Conclusion

## 7.17 章節結論

**EN**  
This chapter defines the device model of the OceanAI / Artibird system. It explains how supported devices are identified, classified, assigned, connected, monitored, secured, and represented within the runtime system.

**ZH-TW**  
本章定義了 OceanAI / Artibird 系統的設備模型。它說明受支援設備如何在 Runtime 系統中被識別、分類、分配、連接、監測、保護與表示。