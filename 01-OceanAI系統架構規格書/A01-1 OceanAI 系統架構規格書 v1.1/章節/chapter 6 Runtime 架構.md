# 6. Runtime Architecture

# 6. Runtime 架構

---

## 6.1 Purpose

## 6.1 目的

## EN

This chapter defines the Runtime Architecture of OceanAI. It describes how runtime behavior is structured to process events, route commands, maintain state, execute scenes, evaluate automations, enforce priorities, support local continuity, integrate with cloud services, incorporate Edge-assisted interpretation, and handle failure conditions.

The purpose is to provide a detailed blueprint for system intelligence operation within coordinated environments, ensuring predictability, governability, and traceability.

## ZH-TW

本章定義 OceanAI 的 Runtime 架構，說明如何透過 Runtime 組織事件處理、指令路由、狀態維護、場景執行、自動化判斷、優先級套用、本地延續、雲端整合、Edge 輔助解讀與故障處理。

其目的是提供系統智慧在協同環境中運作的詳細藍圖，確保可預測性、可治理性與可追溯性。

---

## 6.2 Runtime Functions

## 6.2 Runtime 功能

## EN

Runtime functions define what the system actively performs during operation. These functions include:

- **Local service hosting:** Hosting runtime services and ArtiOS modules within Hub.
    
- **Event handling:** Processing device, sensor, interaction, and cloud/Edge events.
    
- **State management:** Maintaining device, scene, and system states.
    
- **Command routing:** Delivering commands from App, Panel, Switch, Cloud, Edge, or automation logic to devices.
    
- **Scene execution:** Running pre-defined multi-device coordinated behaviors.
    
- **Automation execution:** Evaluating conditional rules based on time, state, events, and sensor data.
    
- **Data synchronization:** Syncing state, configuration, logs, and lifecycle data with Cloud.
    
- **Offline behavior:** Ensuring supported local functions operate even when cloud is unavailable.
    
- **Edge participation:** Receiving AI-assisted insights for local decision-making where deployed.
    

## ZH-TW

Runtime 功能定義系統在運作期間的主動行為，包括：

- **本地服務承載：** 在 Hub 中承載 Runtime 服務與 ArtiOS 模組。
    
- **事件處理：** 處理來自設備、感測器、互動、雲端與 Edge 的事件。
    
- **狀態管理：** 維護設備、場景與系統狀態。
    
- **指令路由：** 將 App、Panel、Switch、Cloud、Edge 或自動化邏輯的指令傳送至設備。
    
- **場景執行：** 執行預定義的多設備協同行為。
    
- **自動化執行：** 根據時間、狀態、事件與感測數據判斷條件規則。
    
- **數據同步：** 將狀態、配置、日誌與生命週期數據同步至雲端。
    
- **離線行為：** 確保受支援本地功能在雲端不可用時仍能運作。
    
- **Edge 參與：** 在部署條件下接收 AI 輔助洞察，用於本地決策。
    

---

## English Table

|Runtime Function|Description|
|---|---|
|Local service hosting|Hosts runtime services and ArtiOS modules|
|Event handling|Processes events from devices, sensors, panels, switches, cloud, and Edge|
|State management|Maintains device, scene, and system states|
|Command routing|Routes commands from all sources to target devices|
|Scene execution|Executes multi-device coordinated behaviors|
|Automation execution|Evaluates rules and triggers conditional actions|
|Data synchronization|Syncs states, configurations, logs, and lifecycle data|
|Offline behavior|Supports local functions without Internet or cloud|
|Edge participation|Provides AI-assisted input for local runtime decision-making|

## 中文表

|Runtime 功能|說明|
|---|---|
|本地服務承載|承載 Runtime 服務與 ArtiOS 模組|
|事件處理|處理來自設備、感測器、Panel、Switch、雲端與 Edge 的事件|
|狀態管理|維護設備、場景與系統狀態|
|指令路由|將各來源指令路由至目標設備|
|場景執行|執行多設備協同行為|
|自動化執行|評估規則並觸發條件性動作|
|數據同步|同步狀態、配置、日誌與生命週期數據|
|離線行為|支援無 Internet 或雲端時的本地功能|
|Edge 參與|提供 AI 輔助輸入以支援本地 Runtime 決策|

---

## 6.3 Runtime Priority Model

## 6.3 Runtime 優先級模型

## EN

The Runtime Priority Model defines the precedence of actions and commands within OceanAI to ensure safety, responsiveness, and correct coordination.

**Priority Levels:**

1. **Safety / Fail-Safe:** Overrides all other commands.
    
2. **Local Manual Control:** Switch, Panel, App commands executed locally.
    
3. **Local Automation:** Hub / ArtiOS automation and scene rules.
    
4. **Edge-Assisted Logic:** Decisions influenced by Edge AI.
    
5. **Cloud Command:** Remote or cloud-initiated commands.
    
6. **Background Sync / Logging:** Non-critical system updates and analytics.
    

## ZH-TW

Runtime 優先級模型定義 OceanAI 中動作與指令的優先順序，以確保安全、響應速度與正確協同。

**優先級層級：**

1. **安全 / 故障安全：** 覆蓋所有其他指令。
    
2. **本地手動控制：** Switch、Panel、App 的本地執行指令。
    
3. **本地自動化：** Hub / ArtiOS 自動化與場景規則。
    
4. **Edge 輔助邏輯：** Edge AI 影響的決策。
    
5. **雲端指令：** 遠端或雲端發起的指令。
    
6. **背景同步 / 日誌：** 非關鍵系統更新與分析。
    

---

## English Table

|Priority|Source|Description|
|---|---|---|
|1|Safety / Fail-Safe|Safety overrides all other actions|
|2|Local Manual Control|Switch, Panel, App local commands|
|3|Local Automation|Hub / ArtiOS rules and scenes|
|4|Edge-Assisted Logic|Decisions assisted by Edge AI|
|5|Cloud Command|Remote or cloud-initiated commands|
|6|Background Sync|Logging, analytics, non-critical updates|

## 中文表

|優先級|來源|說明|
|---|---|---|
|1|安全 / 故障安全|安全覆蓋所有其他動作|
|2|本地手動控制|Switch、Panel、App 本地指令|
|3|本地自動化|Hub / ArtiOS 規則與場景|
|4|Edge 輔助邏輯|Edge AI 輔助的決策|
|5|雲端指令|遠端或雲端發起指令|
|6|背景同步|日誌、分析與非關鍵更新|

---

## 6.4 Runtime Continuity and Failure Behavior

## 6.4 Runtime 延續性與故障行為

## EN

Runtime continuity ensures that essential local functions continue when components fail or cloud services are unavailable. Degraded behavior must be defined per layer, component, and function. Failures are handled deterministically, maintaining safety, state consistency, and limited functionality where possible.

**Example:**

- Hub unavailable → Local device commands may degrade, essential automations continue where possible.
    
- Edge unavailable → Edge-assisted suggestions stop, runtime continues with basic local logic.
    
- Cloud unavailable → Local scenes, state, and automation continue per local-first design.
    

## ZH-TW

Runtime 延續性確保當組件故障或雲端服務不可用時，關鍵本地功能仍可繼續運作。降級行為必須依層級、組件與功能定義。故障處理必須是確定性的，並在可能條件下維持安全、狀態一致性與有限功能。

**範例：**

- Hub 不可用 → 本地設備指令可能降級，核心自動化在可能條件下繼續。
    
- Edge 不可用 → Edge 輔助建議停止，Runtime 使用基本本地邏輯繼續。
    
- 雲端不可用 → 根據本地優先設計，本地場景、狀態與自動化繼續。
    

---

## 6.5 Chapter Conclusion

## 6.5 章節結論

## EN

This chapter defines the Runtime Architecture of OceanAI. It provides a detailed description of runtime functions, priority handling, continuity, degraded behavior, and failure handling.

The next chapter (Chapter 7) will define the **System Data Model**, explaining how devices, spaces, users, events, commands, states, telemetry, and context are represented and interrelated.

## ZH-TW

本章定義 OceanAI 的 Runtime 架構，詳細描述 Runtime 功能、優先級處理、延續性、降級行為與故障處理。

下一章（第七章）將定義 **系統數據模型**，說明設備、空間、用戶、事件、指令、狀態、遙測與上下文如何被表示與相互關聯。