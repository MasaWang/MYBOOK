# Chapter 11 — Artibird App

# 第十一章｜Artibird App

---

## 11.1 Product Positioning

## 11.1 產品定位

**EN**  
Artibird App is the **user control and configuration interface** of the Artibird product system. It provides user-facing access for device setup, local control, remote control, scene management, automation configuration, status viewing, and account-connected system interaction where supported.

Within the OceanAI architecture, Artibird App belongs primarily to the **Interaction / Cloud Access Layer**. It allows users to configure and operate supported Artibird products while connecting local runtime behavior, cloud services, device status, and user permissions into one accessible interface.

**ZH-TW**  
Artibird App 是 Artibird 產品系統中的**用戶控制與配置介面**。它為用戶提供設備設定、本地控制、遠端控制、場景管理、自動化配置、狀態查看，以及在支援條件下基於帳號的系統互動入口。

在 OceanAI 架構中，Artibird App 主要屬於**互動 / 雲端存取層**。它使用戶能夠配置與操作受支援 Artibird 產品，並將本地 Runtime 行為、雲端服務、設備狀態與用戶權限整合到一個可存取介面中。

---

## 11.2 System Role

## 11.2 系統角色

**EN**  
Artibird App acts as the primary user-facing software interface for the Artibird product family. It connects the user to supported devices, rooms, scenes, automations, account services, local access paths, and cloud-connected services.

The App does not replace Hub, Gate, Cloud, Edge, or device-level firmware. Instead, it provides a control and configuration interface that interacts with those components according to supported system paths, user permissions, network availability, and validation status.

**ZH-TW**  
Artibird App 作為 Artibird 產品家族主要面向用戶的軟體介面。它將用戶與受支援設備、房間、場景、自動化、帳號服務、本地存取路徑與雲端連接服務連接起來。

App 不取代 Hub、Gate、Cloud、Edge 或設備端韌體，而是依受支援系統路徑、用戶權限、網路可用性與驗證狀態，與這些組件互動的控制與配置介面。

---

## English Table

|System Layer|App Participation|
|---|---|
|Interaction Layer|Provides user-facing control, setup, configuration, and status viewing|
|Local Runtime Layer|May connect to Hub / ArtiOS for local control where supported|
|Cloud Layer|Supports account services, remote access, synchronization, notifications, and lifecycle functions where implemented|
|Device Access Layer|Supports onboarding, binding, device discovery, and configuration where implemented|
|Sensing Layer|Displays supported Sense and Vision data where configured|
|Execution Layer|Sends supported commands to Act, Sync, Switch relay variants, and other execution nodes through runtime paths|
|Edge Intelligence Layer|May display AI-assisted alerts, recommendations, or visual context where supported|
|Governance Layer|Applies user roles, permissions, privacy settings, and claim-controlled feature visibility|

## 中文表

|系統層級|App 參與方式|
|---|---|
|互動層|提供面向用戶的控制、設定、配置與狀態查看|
|本地 Runtime 層|在支援條件下可連接 Hub / ArtiOS 進行本地控制|
|雲端層|在已實作條件下支援帳號服務、遠端存取、同步、通知與生命週期功能|
|設備接入層|在已實作條件下支援入網、綁定、設備發現與配置|
|感知層|在已配置條件下顯示受支援 Sense 與 Vision 數據|
|執行層|透過 Runtime 路徑向 Act、Sync、Switch 繼電器版本與其他執行節點發送受支援指令|
|邊緣智慧層|在支援條件下可顯示 AI 輔助警報、建議或視覺上下文|
|治理層|套用用戶角色、權限、隱私設定與受宣稱管控的功能可視性|

---

## 11.3 Core Functions

## 11.3 核心功能

**EN**  
Artibird App provides the software interface through which users configure devices, organize spaces, control supported products, manage scenes, view status, and access cloud-connected functions where available.

Its functions should be described according to implementation status, platform version, account condition, local network availability, cloud service availability, device compatibility, and validation status.

**ZH-TW**  
Artibird App 提供軟體介面，使用戶能夠配置設備、組織空間、控制受支援產品、管理場景、查看狀態，並在可用條件下存取雲端連接功能。

其功能應依實作狀態、平台版本、帳號條件、本地網路可用性、雲端服務可用性、設備相容性與驗證狀態進行描述。

---

## English Table

|Core Function|Description|
|---|---|
|Account access|Supports user account access, login, binding, and permission behavior where implemented|
|Device onboarding|Supports discovery, pairing, binding, and configuration of supported devices|
|Room / space management|Allows devices to be assigned to rooms, zones, homes, classrooms, or sites where supported|
|Local control|Supports defined local control where local access paths are available|
|Remote control|Supports cloud-connected remote control where implemented and configured|
|Scene management|Allows users to create, edit, or trigger supported scenes|
|Automation configuration|Allows users to configure supported automation rules where implemented|
|Status viewing|Displays device, room, scene, automation, and system status where supported|
|Notification / alerts|Provides event alerts or system notifications where implemented|
|Firmware / lifecycle access|May support update prompts, device lifecycle status, or maintenance functions where implemented|
|Privacy settings|May provide privacy-related settings for data, Vision, notifications, or account behavior|
|User role management|Supports owner, admin, user, installer, guest, or other roles where implemented|

## 中文表

|核心功能|說明|
|---|---|
|帳號存取|在已實作條件下支援用戶帳號存取、登入、綁定與權限行為|
|設備入網|支援受支援設備的發現、配對、綁定與配置|
|房間 / 空間管理|在支援條件下允許設備分配至房間、區域、住宅、教室或站點|
|本地控制|在本地存取路徑可用條件下支援已定義本地控制|
|遠端控制|在已實作並配置條件下支援雲端連接遠端控制|
|場景管理|允許用戶建立、編輯或觸發受支援場景|
|自動化配置|在已實作條件下允許用戶配置受支援自動化規則|
|狀態查看|在支援條件下顯示設備、房間、場景、自動化與系統狀態|
|通知 / 警報|在已實作條件下提供事件警報或系統通知|
|韌體 / 生命週期存取|在已實作條件下可支援更新提示、設備生命週期狀態或維護功能|
|隱私設定|可提供數據、Vision、通知或帳號行為相關隱私設定|
|用戶角色管理|在已實作條件下支援 Owner、Admin、User、Installer、Guest 或其他角色|

---

## 11.4 Key Product Value

## 11.4 核心產品價值

**EN**  
Artibird App makes the Artibird product system accessible to users. It turns system architecture into everyday interaction by allowing users to set up devices, control spaces, view status, manage scenes, and access supported local or remote functions.

Its value is strongest when it works together with Hub, Gate, Cloud, Edge, and Artibird devices. In that configuration, the App becomes the user-facing layer through which coordinated intelligent environments can be configured, operated, and understood.

**ZH-TW**  
Artibird App 使 Artibird 產品系統能夠被用戶存取。它將系統架構轉化為日常互動，使用戶能夠設定設備、控制空間、查看狀態、管理場景，並存取受支援本地或遠端功能。

當 App 與 Hub、Gate、Cloud、Edge 及 Artibird 設備共同運作時，其價值最強。在這種配置下，App 成為用戶面向的層級，使協同智慧空間能夠被配置、操作與理解。

---

## English Table

|Product Value|Description|
|---|---|
|User accessibility|Provides the main software interface for supported users|
|Easier setup|Helps users onboard and configure supported devices|
|Space organization|Allows users to organize devices by rooms, zones, homes, classrooms, or sites|
|Daily control|Provides access to supported device, scene, and room control|
|Local and remote access|Supports defined local and cloud-connected access paths where implemented|
|System visibility|Displays supported device, room, automation, alert, and system status|
|Scenario management|Allows scenes and automations to be configured where supported|
|Privacy and permission visibility|Provides access to supported settings, roles, and privacy controls|
|Sales and customer clarity|Gives customers a clear way to experience the Artibird system|

## 中文表

|產品價值|說明|
|---|---|
|用戶可達性|為受支援用戶提供主要軟體介面|
|更容易設定|幫助用戶入網與配置受支援設備|
|空間組織|允許用戶依房間、區域、住宅、教室或站點組織設備|
|日常控制|提供受支援設備、場景與房間控制入口|
|本地與遠端存取|在已實作條件下支援已定義本地與雲端連接存取路徑|
|系統可視化|顯示受支援設備、房間、自動化、警報與系統狀態|
|場景管理|在支援條件下允許配置場景與自動化|
|隱私與權限可視化|提供受支援設定、角色與隱私控制入口|
|銷售與客戶清晰度|為客戶提供體驗 Artibird 系統的清晰方式|

---

## 11.5 App Access Model

## 11.5 App 存取模型

**EN**  
Artibird App may support multiple access modes depending on implementation: local access through supported local network paths, remote access through OceanAI Cloud, account-connected access through user identity, and configuration access during onboarding or maintenance.

The catalog should clearly distinguish local control, remote control, setup, cloud synchronization, and account-based functions.

**ZH-TW**  
Artibird App 可依實作支援多種存取模式：透過受支援本地網路路徑進行本地存取、透過 OceanAI Cloud 進行遠端存取、透過用戶身份進行帳號連接存取，以及在入網或維護期間進行配置存取。

型錄應清楚區分本地控制、遠端控制、設定、雲端同步與基於帳號的功能。

---

## English Table

|Access Mode|Description|
|---|---|
|Local access|App connects to supported local runtime or device paths where configured|
|Remote access|App accesses supported devices or sites through OceanAI Cloud where implemented|
|Account access|App uses user identity, account binding, role, and permission rules|
|Onboarding access|App supports device discovery, binding, and initial configuration where implemented|
|Configuration access|App allows supported settings, rooms, scenes, automations, and device parameters to be configured|
|Status access|App displays supported device, room, system, alert, or telemetry status|
|Privacy access|App may expose privacy settings, Vision settings, notification preferences, or data controls|
|Maintenance access|App may provide firmware update, device health, lifecycle, or support-related information|

## 中文表

|存取模式|說明|
|---|---|
|本地存取|App 在已配置條件下連接受支援本地 Runtime 或設備路徑|
|遠端存取|App 在已實作條件下透過 OceanAI Cloud 存取受支援設備或站點|
|帳號存取|App 使用用戶身份、帳號綁定、角色與權限規則|
|入網存取|App 在已實作條件下支援設備發現、綁定與初始配置|
|配置存取|App 允許配置受支援設定、房間、場景、自動化與設備參數|
|狀態存取|App 顯示受支援設備、房間、系統、警報或遙測狀態|
|隱私存取|App 可提供隱私設定、Vision 設定、通知偏好或數據控制入口|
|維護存取|App 可提供韌體更新、設備健康、生命週期或支援相關資訊|

---

## 11.6 App-to-Runtime Model

## 11.6 App 至 Runtime 模型

**EN**  
Artibird App converts user actions into system requests. A user may tap a device control, select a scene, edit an automation, view environmental data, change configuration, or access remote services. These actions are processed through local runtime paths, cloud service paths, or configured device access paths depending on system state and implementation.

For any action that affects physical execution, the runtime system should evaluate permission, priority, capability, safety, target state, and validation boundaries before execution.

**ZH-TW**  
Artibird App 將用戶動作轉換為系統請求。用戶可以點擊設備控制、選擇場景、編輯自動化、查看環境數據、變更配置或存取遠端服務。這些動作依系統狀態與實作，透過本地 Runtime 路徑、雲端服務路徑或已配置設備接入路徑處理。

對於任何會影響物理執行的動作，Runtime 系統應在執行前判斷權限、優先級、能力、安全、目標狀態與驗證邊界。

---

## English Table

|Flow Stage|Description|
|---|---|
|User action|User selects device, scene, automation, room, setting, or service|
|App request|App generates a control, configuration, status, or service request|
|Access path selection|Request uses local, cloud, or configured access path depending on availability|
|Permission check|System evaluates user identity, role, and permission|
|Runtime processing|Hub / ArtiOS or cloud-connected service processes supported request|
|Command routing|Runtime routes command to supported target where required|
|State update|Device, room, scene, automation, or system state is updated where supported|
|Feedback display|App displays result, status, error, alert, or updated data|
|Sync behavior|Selected configuration, state, logs, or lifecycle data may synchronize where configured|

## 中文表

|流程階段|說明|
|---|---|
|用戶動作|用戶選擇設備、場景、自動化、房間、設定或服務|
|App 請求|App 生成控制、配置、狀態或服務請求|
|存取路徑選擇|請求依可用性使用本地、雲端或已配置接入路徑|
|權限檢查|系統判斷用戶身份、角色與權限|
|Runtime 處理|Hub / ArtiOS 或雲端連接服務處理受支援請求|
|指令路由|Runtime 在需要時將指令路由至受支援目標|
|狀態更新|支援條件下更新設備、房間、場景、自動化或系統狀態|
|回饋顯示|App 顯示結果、狀態、錯誤、警報或更新數據|
|同步行為|在已配置條件下同步特定配置、狀態、日誌或生命週期數據|

---

## 11.7 Typical Use Cases

## 11.7 典型應用場景

**EN**  
Artibird App is used wherever users need to configure, operate, monitor, or manage supported Artibird products and OceanAI-connected spaces. It is suitable for homes, classrooms, offices, buildings, campuses, energy systems, vision-aware spaces, agriculture, and infrastructure environments.

**ZH-TW**  
凡是用戶需要配置、操作、監測或管理受支援 Artibird 產品與 OceanAI 連接空間的場景，都可以使用 Artibird App。它適用於住宅、教室、辦公室、建築、校園、能源系統、視覺感知空間、農業與基礎設施環境。

---

## English Table

|Use Case|Description|
|---|---|
|Smart Home Setup|Onboards devices, organizes rooms, and configures scenes|
|Daily Home Control|Controls supported lights, plugs, appliances, scenes, and room functions|
|Classroom Control|Allows teachers or staff to access supported classroom functions where configured|
|Building / Campus Management|Provides visibility and selected control for multiple rooms, zones, or sites where supported|
|Energy Monitoring|Displays energy-related data where Act-E, Cloud, or reporting functions are available|
|Vision-Aware Alerts|Displays supported Vision events, alerts, or visual status where configured|
|Remote Access|Supports off-site control and monitoring through cloud-connected paths|
|Installer Setup|Supports setup, binding, and configuration workflows where installer role is implemented|
|Maintenance / Device Health|Displays device status, firmware, health, or lifecycle information where supported|

## 中文表

|應用場景|說明|
|---|---|
|智慧住宅設定|設備入網、房間組織與場景配置|
|日常住宅控制|控制受支援照明、插座、家電、場景與房間功能|
|教室控制|在已配置條件下允許教師或管理人員存取受支援教室功能|
|建築 / 校園管理|在支援條件下為多房間、區域或站點提供可視化與特定控制|
|能源監測|在 Act-E、Cloud 或報告功能可用時顯示能源相關數據|
|視覺感知警報|在已配置條件下顯示受支援 Vision 事件、警報或視覺狀態|
|遠端存取|透過雲端連接路徑支援場外控制與監測|
|安裝人員設定|在 Installer 角色已實作條件下支援設定、綁定與配置工作流|
|維護 / 設備健康|在支援條件下顯示設備狀態、韌體、健康或生命週期資訊|

---

## 11.8 Recommended Product Combinations

## 11.8 建議產品組合

**EN**  
Artibird App is valuable across nearly all Artibird product combinations because it provides the user-facing setup, control, and monitoring layer. Its value increases when combined with Hub, Cloud, and supported devices.

**ZH-TW**  
Artibird App 在幾乎所有 Artibird 產品組合中都具有價值，因為它提供面向用戶的設定、控制與監測層。當它與 Hub、Cloud 與受支援設備結合時，價值更加明顯。

---

## English Table

|Product Combination|Typical Purpose|
|---|---|
|App + Hub|Local control, room organization, scenes, and runtime interaction|
|App + Gate|Device onboarding, binding, and supported access configuration|
|App + Switch|Switch configuration, scene assignment, and status viewing|
|App + Panel|Shared room control configuration and scene management|
|App + Act|Load control, plug control, state viewing, and energy data where supported|
|App + Sense|Sensor data viewing, threshold settings, and automation input|
|App + Sync|Appliance setup, IR / RF command configuration, and scene participation|
|App + Vision|Visual event viewing, alerts, privacy settings, and recording access where supported|
|App + Cloud|Remote access, account services, synchronization, notifications, and lifecycle management|
|App + Edge|AI-assisted alerts, recommendations, visual context, or optimization display where supported|
|App + Full Product Set|Complete user-facing control layer for coordinated intelligent environments|

## 中文表

|產品組合|典型用途|
|---|---|
|App + Hub|本地控制、房間組織、場景與 Runtime 互動|
|App + Gate|設備入網、綁定與受支援接入配置|
|App + Switch|開關配置、場景分配與狀態查看|
|App + Panel|共享房間控制配置與場景管理|
|App + Act|負載控制、插座控制、狀態查看與支援條件下的能源數據|
|App + Sense|感測數據查看、閾值設定與自動化輸入|
|App + Sync|家電設定、IR / RF 指令配置與場景參與|
|App + Vision|在支援條件下提供視覺事件查看、警報、隱私設定與錄影存取|
|App + Cloud|遠端存取、帳號服務、同步、通知與生命週期管理|
|App + Edge|在支援條件下顯示 AI 輔助警報、建議、視覺上下文或優化結果|
|App + 完整產品組合|為協同智慧空間提供完整用戶控制層|

---

## 11.9 Customer-Readable Description

## 11.9 客戶可讀描述

**EN**  
Artibird App helps users set up, control, and understand their intelligent space. It allows supported devices to be organized by rooms, scenes to be created, automations to be configured, and system status to be viewed from one interface.

With Artibird App, users can interact with Artibird products at home or remotely where supported, making coordinated intelligent environments easier to manage and easier to use.

**ZH-TW**  
Artibird App 幫助用戶設定、控制並理解自己的智慧空間。它允許受支援設備按房間組織、建立場景、配置自動化，並在一個介面中查看系統狀態。

透過 Artibird App，用戶可以在家中或支援條件下遠端與 Artibird 產品互動，使協同智慧空間更容易管理，也更容易使用。

---

## 11.10 Product Page Summary

## 11.10 產品頁摘要

## EN

**Artibird App**  
User Control and Configuration Interface for Coordinated Intelligent Environments

Artibird App provides the user-facing interface for supported Artibird products. It supports device setup, room organization, local control, remote access where implemented, scene management, automation configuration, status viewing, notifications, and selected privacy or account settings.

## ZH-TW

**Artibird App**  
面向協同智慧空間的用戶控制與配置介面

Artibird App 為受支援 Artibird 產品提供面向用戶的介面。它支援設備設定、房間組織、本地控制、在已實作條件下的遠端存取、場景管理、自動化配置、狀態查看、通知，以及特定隱私或帳號設定。

---

## 11.11 Catalog Claim Boundary

## 11.11 型錄宣稱邊界

**EN**  
Artibird App capabilities depend on App version, operating system support, account status, cloud availability, local network condition, Hub availability, device model, firmware version, supported feature set, user role, privacy settings, and validation status.

Artibird App should not be described as controlling all devices, replacing all physical interfaces, guaranteeing offline operation, supporting all automations, providing unlimited remote access, or ensuring legal compliance unless separately implemented, validated, and approved.

**ZH-TW**  
Artibird App 能力取決於 App 版本、作業系統支援、帳號狀態、雲端可用性、本地網路條件、Hub 可用性、設備型號、韌體版本、受支援功能集、用戶角色、隱私設定與驗證狀態。

除非另行實作、驗證與核准，Artibird App 不應被描述為控制所有設備、取代所有實體介面、保證離線運作、支援所有自動化、提供無限制遠端存取或確保法律合規。

---

## English Table

|Avoid Saying|Preferred Catalog Language|
|---|---|
|App controls everything|App controls supported devices and functions under defined configuration|
|App works fully offline|App supports defined local access where required local components and network paths are available|
|App replaces all wall controls|App complements Switch and Panel as a software control interface|
|App supports all automations|App supports configured automations within validated system limits|
|App provides unlimited remote access|Remote access depends on cloud service, account, permissions, and network availability|
|App guarantees security|App supports implemented access control and privacy settings where validated|
|App works on every phone|App support depends on operating system version, device compatibility, and release scope|
|App gives every user full access|App access depends on role, permission, account status, and configuration|

## 中文表

|避免使用|建議型錄語言|
|---|---|
|App 控制一切|App 在明確配置下控制受支援設備與功能|
|App 完全離線可用|當所需本地組件與網路路徑可用時，App 支援已定義本地存取|
|App 取代所有牆面控制|App 作為軟體控制介面，與 Switch 和 Panel 互補|
|App 支援所有自動化|App 在已驗證系統限制內支援已配置自動化|
|App 提供無限制遠端存取|遠端存取取決於雲端服務、帳號、權限與網路可用性|
|App 保證安全|App 在已驗證條件下支援已實作存取控制與隱私設定|
|App 適用所有手機|App 支援取決於作業系統版本、設備相容性與發布範圍|
|App 給所有用戶完整權限|App 存取取決於角色、權限、帳號狀態與配置|

---

## 11.12 Chapter Conclusion

## 11.12 章節結論

**EN**  
Artibird App is the user control and configuration interface of the Artibird product family. It provides the primary software layer through which users set up devices, organize spaces, manage scenes, configure automation, view status, and access supported local or cloud-connected functions.

In the Artibird catalog, App should be presented as the interface that makes the product system usable and understandable for customers. It complements Hub, Gate, Cloud, Edge, Switch, Panel, and all supported Artibird devices by connecting system capability to everyday user interaction.

**ZH-TW**  
Artibird App 是 Artibird 產品家族中的用戶控制與配置介面。它提供主要軟體層，使使用者能夠設定設備、組織空間、管理場景、配置自動化、查看狀態，並存取受支援本地或雲端連接功能。

在 Artibird 型錄中，App 應被呈現為使產品系統對客戶可用、可理解的介面。它與 Hub、Gate、Cloud、Edge、Switch、Panel 及所有受支援 Artibird 設備互補，將系統能力連接至日常用戶互動。