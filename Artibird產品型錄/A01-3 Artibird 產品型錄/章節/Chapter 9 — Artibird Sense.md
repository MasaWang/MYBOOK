# Chapter 9 — Artibird Sense

# 第九章｜Artibird Sense

---

## 9.1 Product Positioning

## 9.1 產品定位

**EN**  
Artibird Sense is the **environmental sensing node** of the Artibird product system. It provides environmental context such as temperature, humidity, light, occupancy, and other supported sensing inputs for automation, comfort, energy workflows, and spatial awareness.

Within the OceanAI architecture, Artibird Sense belongs primarily to the **Sensing Layer**. Its role is to help the system understand environmental conditions so that scenes, automation, execution, synchronization, and AI-assisted interpretation can respond to real spatial context.

**ZH-TW**  
Artibird Sense 是 Artibird 產品系統中的**環境感知節點**。它提供溫度、濕度、光照、人在與其他受支援感測輸入，用於自動化、舒適度、能源工作流與空間感知。

在 OceanAI 架構中，Artibird Sense 主要屬於**感知層**。它的角色，是幫助系統理解環境條件，使場景、自動化、執行、同步與 AI 輔助解讀能夠回應真實空間上下文。

---

## 9.2 System Role

## 9.2 系統角色

**EN**  
Artibird Sense provides contextual input to the OceanAI runtime system. It allows the system to respond not only to user commands, but also to changing environmental conditions.

A Sense device may report temperature, humidity, light level, occupancy, motion, or other supported environmental signals depending on model and implementation. These signals can be used by Hub / ArtiOS, App, Cloud, Edge, automation rules, energy workflows, and supported product combinations.

**ZH-TW**  
Artibird Sense 為 OceanAI Runtime 系統提供上下文輸入。它使系統不只回應用戶指令，也能回應不斷變化的環境條件。

Sense 設備可依型號與實作回報溫度、濕度、光照、人在、移動或其他受支援環境信號。這些信號可被 Hub / ArtiOS、App、Cloud、Edge、自動化規則、能源工作流與受支援產品組合使用。

---

## English Table

|System Layer|Sense Participation|
|---|---|
|Sensing Layer|Provides environmental data and spatial context|
|Local Runtime Layer|Sends sensor events and telemetry to Hub / ArtiOS where configured|
|Automation Layer|Provides trigger or condition input for supported automations|
|Interaction Layer|May provide environmental status to App or Panel|
|Execution Layer|May influence Act, Sync, Switch relay variants, or other execution nodes through runtime logic|
|Cloud Layer|May synchronize selected sensor data, history, alerts, or analytics where configured|
|Edge Intelligence Layer|May provide environmental context for AI-assisted interpretation or optimization|
|Device Participation Layer|Operates as a physical sensing participant within coordinated environments|

## 中文表

|系統層級|Sense 參與方式|
|---|---|
|感知層|提供環境數據與空間上下文|
|本地 Runtime 層|在已配置條件下向 Hub / ArtiOS 發送感測事件與遙測數據|
|自動化層|為受支援自動化提供觸發或條件輸入|
|互動層|可向 App 或 Panel 提供環境狀態|
|執行層|可透過 Runtime 邏輯影響 Act、Sync、Switch 繼電器版本或其他執行節點|
|雲端層|在已配置條件下同步特定感測數據、歷史、警報或分析|
|邊緣智慧層|可為 AI 輔助解讀或優化提供環境上下文|
|設備參與層|作為協同空間中的實體感知參與者運作|

---

## 9.3 Core Functions

## 9.3 核心功能

**EN**  
Artibird Sense provides measurable environmental input. Its functions may include sensing, reporting, threshold events, automation triggers, environmental status display, and data input for comfort, energy, safety, or operational workflows.

The exact sensing capability must always be described according to product model, sensor type, firmware version, installation condition, calibration status, sampling behavior, communication path, and validation status.

**ZH-TW**  
Artibird Sense 提供可量測的環境輸入。其功能可包括感測、回報、閾值事件、自動化觸發、環境狀態顯示，以及為舒適度、能源、安全或運行工作流提供數據輸入。

具體感知能力必須始終依產品型號、感測器類型、韌體版本、安裝條件、校準狀態、取樣行為、通訊路徑與驗證狀態描述。

---

## English Table

|Core Function|Description|
|---|---|
|Temperature sensing|Reports temperature where supported|
|Humidity sensing|Reports humidity where supported|
|Light sensing|Reports ambient light level where supported|
|Occupancy sensing|Reports presence or occupancy where implemented|
|Motion sensing|Reports movement or motion where implemented|
|Threshold events|Generates events when defined thresholds are reached|
|Sensor telemetry|Reports measured values to Hub / ArtiOS, App, Cloud, or Edge where configured|
|Automation input|Provides trigger or condition input for supported automation|
|Environmental display|Provides data for App, Panel, dashboard, or reports where implemented|
|Edge context input|Provides sensor context for AI-assisted interpretation where deployed|

## 中文表

|核心功能|說明|
|---|---|
|溫度感知|在支援條件下回報溫度|
|濕度感知|在支援條件下回報濕度|
|光照感知|在支援條件下回報環境光照|
|人在感知|在已實作條件下回報人在或佔用狀態|
|移動感知|在已實作條件下回報移動或動作|
|閾值事件|當達到已定義閾值時生成事件|
|感測遙測|在已配置條件下向 Hub / ArtiOS、App、Cloud 或 Edge 回報量測值|
|自動化輸入|為受支援自動化提供觸發或條件輸入|
|環境顯示|在已實作條件下為 App、Panel、儀表板或報告提供數據|
|Edge 上下文輸入|在已部署條件下為 AI 輔助解讀提供感測上下文|

---

## 9.4 Key Product Value

## 9.4 核心產品價值

**EN**  
Artibird Sense gives the OceanAI system environmental awareness. Without sensing input, automation may rely only on time, user actions, or static rules. With Sense, the system can respond to real conditions such as light, temperature, humidity, occupancy, or environmental change.

The value of Sense is strongest when it is connected with Hub / ArtiOS, Act, Sync, Panel, App, Cloud, and Edge. In these combinations, sensor data can support automation, comfort control, energy awareness, security awareness, and AI-assisted optimization.

**ZH-TW**  
Artibird Sense 為 OceanAI 系統提供環境感知能力。如果沒有感測輸入，自動化可能只能依賴時間、用戶動作或靜態規則。透過 Sense，系統可以回應光照、溫度、濕度、人在或環境變化等真實條件。

Sense 與 Hub / ArtiOS、Act、Sync、Panel、App、Cloud 與 Edge 連接時價值最強。在這些組合中，感測數據可支持自動化、舒適度控制、能源感知、安全感知與 AI 輔助優化。

---

## English Table

|Product Value|Description|
|---|---|
|Environmental awareness|Allows the system to understand real space conditions|
|Automation intelligence|Provides condition-based input for more relevant automation|
|Comfort support|Supports temperature, humidity, light, and occupancy-aware behavior|
|Energy awareness|Supports energy-related workflows when combined with Act-E, Cloud, or Edge|
|Better scene behavior|Allows scenes to respond to environmental context|
|Reduced manual control|Helps reduce the need for repeated user adjustment|
|Edge context|Provides sensor input for AI-assisted analysis or optimization|
|Deployment visibility|Helps homes, classrooms, buildings, and campuses understand environmental status|

## 中文表

|產品價值|說明|
|---|---|
|環境感知|使系統能理解真實空間條件|
|自動化智慧|為更貼近實際的自動化提供條件輸入|
|舒適度支持|支援基於溫度、濕度、光照與人在狀態的行為|
|能源感知|與 Act-E、Cloud 或 Edge 配合時支持能源相關工作流|
|更好的場景行為|使場景能回應環境上下文|
|減少手動控制|幫助降低用戶反覆調整需求|
|Edge 上下文|為 AI 輔助分析或優化提供感測輸入|
|部署可視化|幫助住宅、教室、建築與校園理解環境狀態|

---

## 9.5 Supported Sensing Directions

## 9.5 支援感知方向

**EN**  
Artibird Sense may include different sensing directions depending on product model and deployment purpose. The catalog should avoid implying that every Sense model supports every sensor type.

Each sensing direction should be described as model-dependent and validation-dependent.

**ZH-TW**  
Artibird Sense 可依產品型號與部署目的包含不同感知方向。型錄應避免暗示每一個 Sense 型號都支援所有感測類型。

每一種感知方向都應被描述為依型號與驗證狀態而定。

---

## English Table

|Sensing Direction|Catalog Description|
|---|---|
|Temperature|Supports temperature sensing where the product model includes temperature sensor|
|Humidity|Supports humidity sensing where the product model includes humidity sensor|
|Light|Supports ambient light sensing where implemented|
|Occupancy|Supports occupancy or presence sensing where implemented and validated|
|Motion|Supports motion detection where implemented|
|Air quality|May support selected air-quality metrics where product variant includes related sensors|
|Energy-related context|May support energy-related workflows when combined with Act-E or Cloud|
|Security-related context|May support security workflows when combined with Vision, Cloud, or Edge|
|Outdoor environment|May support outdoor sensing only where environmental rating and validation allow|

## 中文表

|感知方向|型錄描述|
|---|---|
|溫度|當產品型號包含溫度感測器時支援溫度感知|
|濕度|當產品型號包含濕度感測器時支援濕度感知|
|光照|在已實作條件下支援環境光照感知|
|人在|在已實作並驗證條件下支援人在或佔用感知|
|移動|在已實作條件下支援移動偵測|
|空氣品質|當產品版本包含相關感測器時，可支援特定空氣品質指標|
|能源相關上下文|與 Act-E 或 Cloud 配合時可支持能源相關工作流|
|安全相關上下文|與 Vision、Cloud 或 Edge 配合時可支持安全工作流|
|戶外環境|僅在環境等級與驗證允許條件下支援戶外感知|

---

## 9.6 Sensing-to-Runtime Model

## 9.6 感知至 Runtime 模型

**EN**  
Artibird Sense converts environmental changes into measurable data, events, or automation inputs. These inputs may be processed locally by Hub / ArtiOS, displayed through App or Panel, synchronized with Cloud where configured, or used by OceanAI Edge where deployed.

Sensing data should not automatically trigger physical execution unless runtime rules, permissions, priorities, safety checks, and validation conditions allow it.

**ZH-TW**  
Artibird Sense 將環境變化轉化為可量測數據、事件或自動化輸入。這些輸入可由 Hub / ArtiOS 在本地處理，可透過 App 或 Panel 顯示，可在已配置條件下與 Cloud 同步，也可在 OceanAI Edge 已部署條件下使用。

感測數據不應自動觸發物理執行，除非 Runtime 規則、權限、優先級、安全檢查與驗證條件允許。

---

## English Table

|Flow Stage|Description|
|---|---|
|Environmental condition|Temperature, humidity, light, occupancy, motion, or other supported condition changes|
|Sensor measurement|Sense records or samples supported measurement|
|Event / telemetry generation|Sense generates telemetry or event according to configuration|
|Runtime processing|Hub / ArtiOS evaluates threshold, rule, permission, priority, and target|
|Automation decision|Runtime determines whether a scene, action, alert, or state update should occur|
|Execution or display|Act, Sync, Switch, Panel, App, Cloud, or Edge may respond through supported paths|
|State update|System updates sensor state, room context, automation status, or related device state|
|Feedback|App, Panel, Cloud, or dashboard displays result where supported|

## 中文表

|流程階段|說明|
|---|---|
|環境條件|溫度、濕度、光照、人在、移動或其他受支援條件發生變化|
|感測量測|Sense 記錄或取樣受支援量測值|
|事件 / 遙測生成|Sense 依配置生成遙測數據或事件|
|Runtime 處理|Hub / ArtiOS 判斷閾值、規則、權限、優先級與目標|
|自動化決策|Runtime 判斷是否執行場景、動作、警報或狀態更新|
|執行或顯示|Act、Sync、Switch、Panel、App、Cloud 或 Edge 可透過受支援路徑回應|
|狀態更新|系統更新感測器狀態、房間上下文、自動化狀態或關聯設備狀態|
|回饋|App、Panel、Cloud 或儀表板在支援條件下顯示結果|

---

## 9.7 Typical Use Cases

## 9.7 典型應用場景

**EN**  
Artibird Sense is used where environmental awareness is required for automation, comfort, energy, safety, or operational visibility. It is suitable for homes, classrooms, offices, buildings, campuses, agriculture, and infrastructure environments.

**ZH-TW**  
Artibird Sense 適用於自動化、舒適度、能源、安全或運行可視化需要環境感知的場景。它適用於住宅、教室、辦公室、建築、校園、農業與基礎設施環境。

---

## English Table

|Use Case|Description|
|---|---|
|Smart Home Comfort|Supports temperature, humidity, light, and occupancy-aware automation|
|Lighting Automation|Uses light or occupancy conditions to support lighting workflows|
|Climate Automation|Uses temperature or humidity data to support climate-related control|
|Classroom Environment|Provides environmental context for classrooms, comfort, and energy management|
|Energy Management|Supports energy-aware automation when combined with Act-E, Cloud, or Edge|
|Building Monitoring|Provides environmental visibility for rooms, zones, or floors|
|Campus Deployment|Supports distributed sensing across classrooms, buildings, or shared areas|
|Agriculture / Irrigation|Provides environmental input for irrigation or equipment automation where supported|
|Security Awareness|May support security workflows when combined with Vision, Cloud, or Edge|

## 中文表

|應用場景|說明|
|---|---|
|智慧住宅舒適度|支援基於溫度、濕度、光照與人在狀態的自動化|
|照明自動化|使用光照或人在條件支援照明工作流|
|空調自動化|使用溫度或濕度數據支援空調相關控制|
|教室環境|為教室舒適度與能源管理提供環境上下文|
|能源管理|與 Act-E、Cloud 或 Edge 配合時支持能源感知自動化|
|建築監測|為房間、區域或樓層提供環境可視化|
|校園部署|支持跨教室、建築或共享區域的分布式感知|
|農業 / 灌溉|在支援條件下為灌溉或設備自動化提供環境輸入|
|安全感知|與 Vision、Cloud 或 Edge 配合時可支持安全工作流|

---

## 9.8 Recommended Product Combinations

## 9.8 建議產品組合

**EN**  
Artibird Sense becomes more valuable when combined with runtime, execution, synchronization, interaction, cloud, and Edge components. Sensor data becomes useful when it can influence scenes, automation, reports, alerts, or optimization under defined runtime rules.

**ZH-TW**  
Artibird Sense 與 Runtime、執行、同步、互動、雲端與 Edge 組件配合時價值更高。當感測數據能在明確 Runtime 規則下影響場景、自動化、報告、警報或優化時，其價值才真正發揮。

---

## English Table

|Product Combination|Typical Purpose|
|---|---|
|Sense + Hub|Local sensor data processing and automation input|
|Sense + Hub + Act|Sensor-based electrical execution|
|Sense + Hub + Sync|Climate or appliance automation|
|Sense + Hub + Switch|Manual control combined with environmental context|
|Sense + Hub + Panel|Room status display and shared environmental visibility|
|Sense + Hub + App|Sensor status viewing and configuration|
|Sense + Hub + Cloud|History, reporting, alerts, and remote visibility|
|Sense + Hub + Edge|AI-assisted context, optimization, and sensor fusion|
|Sense + Act-E + Cloud|Energy-aware reporting and automation|
|Sense + Full Product Set|Complete environmental context for coordinated intelligent environments|

## 中文表

|產品組合|典型用途|
|---|---|
|Sense + Hub|本地感測數據處理與自動化輸入|
|Sense + Hub + Act|基於感測的電力執行|
|Sense + Hub + Sync|空調或家電自動化|
|Sense + Hub + Switch|手動控制與環境上下文結合|
|Sense + Hub + Panel|房間狀態顯示與共享環境可視化|
|Sense + Hub + App|感測狀態查看與配置|
|Sense + Hub + Cloud|歷史、報告、警報與遠端可視化|
|Sense + Hub + Edge|AI 輔助上下文、優化與感測融合|
|Sense + Act-E + Cloud|能源感知報告與自動化|
|Sense + 完整產品組合|為協同智慧空間提供完整環境上下文|

---

## 9.9 Customer-Readable Description

## 9.9 客戶可讀描述

**EN**  
Artibird Sense helps your space understand what is happening around it. It can provide environmental signals such as temperature, humidity, light, or occupancy so that the system can respond more appropriately.

With Artibird Sense, supported scenes and automation can become more responsive to real conditions. Lights can respond to brightness, climate workflows can respond to temperature, and energy behavior can be informed by actual space usage.

**ZH-TW**  
Artibird Sense 幫助空間理解周圍正在發生什麼。它可以提供溫度、濕度、光照或人在等環境信號，使系統能夠更適切地回應。

透過 Artibird Sense，受支援場景與自動化可以更貼近真實條件。照明可以回應亮度，空調工作流可以回應溫度，能源行為也可以基於實際空間使用情況進行調整。

---

## 9.10 Product Page Summary

## 9.10 產品頁摘要

## EN

**Artibird Sense**  
Environmental Sensing Node for Coordinated Intelligent Environments

Artibird Sense provides environmental context for the OceanAI runtime system. Depending on model and configuration, it may support temperature, humidity, light, occupancy, motion, or other sensing inputs for automation, comfort, energy, alerts, reporting, and AI-assisted analysis.

## ZH-TW

**Artibird Sense**  
面向協同智慧空間的環境感知節點

Artibird Sense 為 OceanAI Runtime 系統提供環境上下文。依型號與配置不同，它可支援溫度、濕度、光照、人在、移動或其他感測輸入，用於自動化、舒適度、能源、警報、報告與 AI 輔助分析。

---

## 9.11 Catalog Claim Boundary

## 9.11 型錄宣稱邊界

**EN**  
Artibird Sense capabilities depend on product model, sensor type, firmware version, installation location, calibration, sampling behavior, network path, environment condition, runtime configuration, cloud availability, Edge availability, validation status, and data privacy settings.

Artibird Sense should not be described as supporting all sensing types, perfect accuracy, universal occupancy detection, guaranteed automation, certified environmental measurement, or unrestricted AI analysis unless separately validated and approved.

**ZH-TW**  
Artibird Sense 能力取決於產品型號、感測器類型、韌體版本、安裝位置、校準、取樣行為、網路路徑、環境條件、Runtime 配置、雲端可用性、Edge 可用性、驗證狀態與數據隱私設定。

除非另行完成驗證與核准，Artibird Sense 不應被描述為支援所有感測類型、具備完美準確度、通用人在偵測、保證自動化、已認證環境量測或不受限制的 AI 分析。

---

## English Table

|Avoid Saying|Preferred Catalog Language|
|---|---|
|Sense detects everything|Sense provides supported environmental sensing according to product model|
|Sense is perfectly accurate|Sense reports measurements within validated conditions and sensor capability|
|Sense always detects occupancy|Occupancy sensing is supported only where implemented and validated|
|Sense guarantees automation|Sense may provide automation input under supported runtime conditions|
|Sense works anywhere|Sense operates under supported installation and environmental conditions|
|Sense data is always non-sensitive|Sensor data may reveal usage patterns and should follow privacy settings|
|Sense supports all AI analysis|Sense may provide context for AI-assisted analysis where Edge is deployed and configured|

## 中文表

|避免使用|建議型錄語言|
|---|---|
|Sense 偵測一切|Sense 依產品型號提供受支援環境感知|
|Sense 完全準確|Sense 在已驗證條件與感測器能力範圍內回報量測值|
|Sense 永遠能偵測人在|人在感知僅在已實作並驗證條件下支援|
|Sense 保證自動化|Sense 可在受支援 Runtime 條件下提供自動化輸入|
|Sense 適用任何地方|Sense 在受支援安裝與環境條件下運作|
|Sense 數據永遠不敏感|感測數據可能揭示使用模式，應遵循隱私設定|
|Sense 支援所有 AI 分析|在 Edge 已部署並配置條件下，Sense 可為 AI 輔助分析提供上下文|

---

## 9.12 Chapter Conclusion

## 9.12 章節結論

**EN**  
Artibird Sense is the environmental sensing node of the Artibird product family. It provides the contextual input that allows the OceanAI runtime system to respond to real environmental conditions.

In the Artibird catalog, Sense should be presented as the product that helps coordinated intelligent environments become aware of space conditions. Its value is strongest when sensing data participates in local automation, comfort workflows, energy awareness, cloud reporting, and Edge-assisted interpretation.

**ZH-TW**  
Artibird Sense 是 Artibird 產品家族中的環境感知節點。它提供上下文輸入，使 OceanAI Runtime 系統能夠回應真實環境條件。

在 Artibird 型錄中，Sense 應被呈現為幫助協同智慧空間感知空間條件的產品。當感測數據參與本地自動化、舒適度工作流、能源感知、雲端報告與 Edge 輔助解讀時，其價值最為明顯。