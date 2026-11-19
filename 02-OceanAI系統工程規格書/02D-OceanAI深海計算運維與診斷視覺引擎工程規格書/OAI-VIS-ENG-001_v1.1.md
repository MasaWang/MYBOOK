# OAI-VIS-ENG-001 — OceanAI Deep Ocean Computing Engineering Specification

# OceanAI 深海計算——運維與診斷視覺引擎工程規格書

**Document ID｜文件編號：** OAI-VIS-ENG-001  
**Version｜版本：** v1.1  
**Date｜日期：** 2026-11-17  
**Status｜狀態：** Draft for Author Review｜待負責人審閱  
**Target Project｜目標專案：** emqxMP  
**Target Page｜目標頁面：** `/ops/board`  
**Integration Policy｜整合原則：** Additive Integration Only｜僅允許增量整合  
**Repository Policy｜儲存庫政策：** Read-Only Until Approved｜未經批准僅供唯讀

## 1. Executive Summary｜執行摘要

**English**

OceanAI Deep Ocean Computing is a three-dimensional visualization engine for Runtime observability, operational analysis, and fault diagnostics.

The engine shall be integrated into the existing emqxMP Operations Dashboard as an optional, isolated visual module.

The existing dashboard, its six information areas, visual styling, APIs, operational reports, authentication mechanisms, and runtime behavior shall remain unchanged.

The implementation shall reuse the first animated visual field in `emqxMP/src/main/resources/dist` where technically feasible.

**繁體中文**

OceanAI Deep Ocean Computing｜深海計算是一套面向 Runtime 運行可觀測、運維分析與故障診斷的三維視覺引擎。

引擎應作為獨立、可選的視覺模組，增量整合至現行 emqxMP 運維看板。

現行看板的六個資訊區域、視覺樣式、API、運維報告、身份驗證機制與運行行為均應保持不變。

工程實作應優先繼承 `emqxMP/src/main/resources/dist` 第一塊動態視覺場中技術上可重用的能力。

**Primary Engineering Principle｜首要工程原則**

Preserve the existing Operations Dashboard. Extend it with Deep Ocean Computing.

保留現行運維看板，以 Deep Ocean Computing 擴展其運維與診斷視覺能力。

## 2. Existing System Baseline｜現行系統基準

### 2.1 Existing Operations Dashboard｜現行運維看板

**Repository：**  
`https://github.com/KristampsWong/emqxMP`

**Dashboard：**  
`http://ioti.viewksky100.com:5059/ops/board`

**Source Files｜來源檔案：**

- `src/main/resources/static/ops/board.html`
- `src/main/resources/static/ops/board.js`
- `src/main/resources/static/ops/core.js`
- `src/main/resources/static/ops/tailwind.css`

現行看板已由儲存庫程式核實，包含六個既有資訊區域：

1. Device Health｜設備健康
2. KPI Summary｜KPI 摘要
3. Fault Distribution｜故障分布
4. Success Rate Trend｜成功率趨勢
5. Attention Required｜需要處理
6. Major Incidents｜主要故障

現行大屏採用 1920 × 1080 畫布與自適應縮放機制。

原有頁面使用既有 Tailwind 主題、卡片結構、圖表繪製、資料輪詢及狀態顯示。

上述內容全部列入 Preservation Baseline｜保留基準。

### 2.2 Existing Animation Reference｜現有動畫參考

**Source Directory：**  
`src/main/resources/dist`

**Target Visual Section：**  
`SPREAD FIELD`

**Relevant Assets：**

- `dist/index.html`
- `dist/assets/spread-canvas.js`
- `dist/assets/spread-webgl.js`
- `dist/assets/spread-field.css`
- `dist/assets/tokens.css`

目前已確認 `spread-canvas.js` 包含：

- `project()` — Perspective Projection｜透視投影
- `rowGeometry()` — Historical Layer Geometry｜歷史層幾何
- `drawWaves()` — Data Curve Rendering｜資料曲線渲染
- `drawScan()` — Digital Scanning｜數位掃描
- `drawMarkers()` — Event Marker Rendering｜事件標記渲染
- `render()` — Animation Rendering Loop｜動畫渲染循環

以上為可研究及繼承的既有實作。

`spread-webgl.js` 仍須完成完整程式審閱，確認其渲染技術、相依套件、可拆分性與維護成本。

### 2.3 Integration Boundary｜整合邊界

僅整合 `SPREAD FIELD` 第一塊動畫的核心視覺能力。

不納入原交易終端的交易業務、訂單、交易決策、下單及風險控制介面。

## 3. Product Positioning｜產品定位

**OceanAI Deep Ocean Computing**

A visual intelligence engine for continuous runtime observability, historical event analysis, and fault diagnostics.

面向持續運行觀測、歷史事件分析與故障診斷的智能視覺引擎。

### 3.1 Supported Capabilities｜支援能力

- Runtime Observability｜Runtime 運行可觀測
- Log Visualization｜日誌可視化
- Event Correlation｜事件關聯
- Fault Diagnostics｜故障診斷
- Runtime Health Analysis｜運行健康分析
- Historical Replay｜歷史回放
- Diagnostic Evidence Inspection｜診斷證據檢視

### 3.2 Excluded Capabilities｜排除能力

- Device Control｜設備控制
- Command Execution｜命令執行
- Scene Control｜場景控制
- Automation Execution｜自動化執行
- Autonomous Recovery｜自主恢復操作

Deep Ocean Computing 僅負責運維與診斷資料的視覺呈現，不參與設備控制及 Runtime 狀態裁決。

## 4. Mandatory Integration Requirements｜強制整合要求

| ID | Component｜項目 | Engineering Requirement｜工程要求 |
| --- | --- | --- |
| INT-001 | Existing Dashboard｜現行看板 | 保留全部既有頁面、佈局、操作及運行行為 |
| INT-002 | Existing APIs｜現有 API | 不修改既有 API 請求方式、端點及回應格式 |
| INT-003 | Existing Charts｜現有圖表 | 不刪除、不取代、不改變現有圖表 |
| INT-004 | AI Reports｜AI 報告 | 保留現有分析、報告生成及存檔能力 |
| INT-005 | Deep Ocean Computing｜深海計算 | 作為新增的獨立三維視覺模組 |
| INT-006 | Data Integration｜資料整合 | 優先使用現有唯讀運維 API 與審計日誌 |
| INT-007 | Rendering Isolation｜渲染隔離 | 動畫異常不得影響原有看板 |
| INT-008 | Feature Switch｜功能開關 | 可以獨立啟用、停用及快速回退 |

**Compliance Level｜符合性要求：P0 Mandatory｜P0 強制。**

所有八項必須通過驗收。

## 5. Additive Integration Architecture｜增量整合架構

```text
Existing emqxMP Operations Dashboard
現行 emqxMP 運維看板
│
├── Existing Dashboard Core
│   原有看板核心——全部保留
│
│   ├── Device Health
│   ├── KPI Summary
│   ├── Fault Distribution
│   ├── Success Rate Trend
│   ├── Attention Required
│   └── Major Incidents
│
└── OceanAI Deep Ocean Computing
    新增深海計算視覺模組
    │
    ├── Feature Switch
    │   功能開關
    │
    ├── Isolated Rendering Host
    │   隔離渲染主機
    │
    ├── Data Curves
    │   資料曲線
    │
    ├── Continuous Depth Recession
    │   連續縱深退移
    │
    ├── Digital Scanning
    │   數位掃描
    │
    ├── Descending Event Pillars
    │   下落式事件光柱
    │
    ├── Oceanic Perspective
    │   海洋式透視
    │
    ├── Runtime Data Adapter
    │   Runtime 資料適配器
    │
    └── Renderer Fallback
        渲染降級
```

### 5.1 Separation of Responsibilities｜職責分離

Existing Dashboard Core 保持現有職責。

Deep Ocean Computing 僅負責資料視覺化、事件標記、診斷聚焦及歷史資料呈現。

兩者可共享經授權的唯讀資料，但不得共享會改變既有業務行為的可變控制狀態。

### 5.2 Deployment Scope｜部署範圍

第一階段以現行 `emqxMP` 為目標，不要求同時改造 `iot-backend`、`hubServer`、ART 或 ORT 的核心服務。

## 6. Layout Preservation｜現行版面保留

### 6.1 Existing Dashboard｜原有看板

下列項目不得改變：

- 六卡排列與原始比例
- 現有背景、字體、色彩及邊框
- KPI、圖表與列表的顯示方式
- 現有資料更新機制
- 原有時間窗口切換
- 現有狀態與故障提示
- 原有身份驗證及訪問流程

### 6.2 Ocean Visual Extension｜深海視覺擴展

新增動畫應使用獨立顯示區域，不覆蓋任何原有卡片。

由於現行大屏為固定 1920 × 1080 畫布，完整保留六卡又加入大型動畫，必須處理額外空間。

**推薦 P0 方案：**

- `/ops/board`：維持現有預設畫面。
- `/ops/board?ocean=1`：候選擴展模式，在完整原看板下方加入深海視覺場。

擴展模式可採用額外縱向顯示空間，或另行評估第二監控畫面。

此 URL 參數為新增功能建議，尚非現有介面。

### 6.3 Visual Consistency｜視覺一致性

原有卡片必須繼承既有 `tailwind.css` 的色彩及樣式。

Deep Ocean Computing 內部可維持深海藍、青藍曲線及暖色事件光柱，但其外部容器、標題、邊框與間距須遵守現行看板的視覺規範。

## 7. Deep Ocean Computing Visual Engine｜深海計算視覺引擎

### 7.1 Visual Principles｜視覺原則

**Deep Ocean Computing｜深海計算**

建立深邃、寧靜、具空間深度的資料視覺場。

**Data Curves｜資料曲線**

利用分層曲線展示 Runtime 運行指標及其歷史變化。

**Continuous Depth Recession｜連續縱深退移**

新資料曲線在前景生成，歷史曲線向後堆疊、逐步遠去。

**Digital Scanning｜數位掃描**

將資料生成、時間演進及可核對的診斷掃描活動視覺化。

**Descending Event Pillars｜下落式事件光柱**

重要事件以光柱從上方下落的形式出現，並隨歷史曲線向遠處退移。

**Oceanic Perspective｜海洋式透視**

遠處曲線更加密集、深藍、低亮度；前景曲線更寬、明亮且具有較高細節。

### 7.2 Perspective Rendering Matrix｜透視渲染矩陣

| Visual Element｜視覺元素 | Foreground｜近景 | Background｜遠景 |
| --- | --- | --- |
| Data Curves｜資料曲線 | 寬、清晰、青藍色 | 窄、密集、深藍色 |
| Curve Brightness｜曲線亮度 | 柔和發光 | 逐漸衰減 |
| Data Detail｜資料細節 | 可辨識獨立數值 | 保留輪廓、降低細節 |
| Light Pillars｜光柱 | 較明亮、較長 | 更細、更暗 |
| Scan Effect｜掃描效果 | 清晰呈現生成過程 | 逐步融入深度霧化 |

### 7.3 Curve Lifecycle｜曲線生命週期

```text
Create → Scan → Recede → Fade → Retire
生成 → 掃描 → 退移 → 衰減 → 退出可視區
```

曲線退出 GPU 可視區，不代表刪除原始歷史資料。

### 7.4 Event Pillar Lifecycle｜事件光柱生命週期

```text
Appear → Descend → Impact → Residue → Recede
出現 → 下落 → 命中 → 殘留 → 退移
```

事件標記必須保留事件 ID、時間戳及來源參照，以支援診斷證據追蹤。

## 8. Runtime Data Integration｜Runtime 資料整合

### 8.1 Existing API Sources｜現有 API 來源

優先評估：

| Endpoint | Function｜功能 |
| --- | --- |
| `GET /api/ops/overview` | 設備與運行概覽 |
| `GET /api/ops/log-analysis?window=1h` | 一小時日誌分析 |
| `GET /api/ops/log-analysis?window=24h` | 24 小時日誌分析 |
| `GET /api/ops/log-analysis?window=7d` | 七日日誌分析 |
| `GET /api/ops/traces/{traceId}` | 命令事件證據追蹤 |
| `GET /api/ops/ai-report/latest` | 最新 AI 日報 |

這些現有接口保持不變。

### 8.2 Data Adapter｜資料適配器

新增獨立唯讀適配器，負責：

- Normalization｜資料標準化
- Time Alignment｜時間對齊
- Metric Mapping｜指標映射
- Event Correlation｜事件關聯
- Data Quality Validation｜資料品質核驗
- Visual Frame Generation｜視覺影格資料生成

如既有 API 未提供足夠的原始時間序列，應先評估能否使用現有真實聚合資料。需要新增歷史查詢能力時，應另列工作任務及批准範圍。

### 8.3 Data Reliability｜資料可靠性

正式 LIVE 模式不得使用隨機資料冒充真實 Runtime 指標。

原 `dist` 的交易模擬資料只能用於清楚標示的 DEMO 模式。

必須區分：

- LIVE｜真實資料
- REPLAY｜歷史回放
- DEMO｜演示資料
- STALE｜資料過期
- UNKNOWN｜狀態未知

資料接收節奏與視覺動畫幀率必須解耦。

### 8.4 Event Evidence｜事件證據

部分現有命令審計使用時間窗口關聯設備回報。視覺引擎應保留證據可信度，避免把命令發布視為設備執行成功。

異常光柱的顯示不得超出來源資料實際支持的結論。

## 9. Rendering Isolation｜渲染隔離

### 9.1 Functional Isolation｜功能隔離

新增模組必須具備獨立初始化、渲染及卸載流程。

不得直接改寫原有 `homeCards()`、`render()`、既有輪詢與資料狀態裁決。

### 9.2 CSS Isolation｜CSS 隔離

必須避免新模組的 CSS 污染既有頁面。

不得以新增的全域 `canvas`、`body`、`section` 等樣式影響原看板。

可評估 Shadow DOM、獨立作用域樣式或 iframe；具體方法須根據現有 WebGL 程式相依性選定。

### 9.3 Runtime Failure Isolation｜運行故障隔離

以下故障不得中斷現有看板：

- WebGL Context Lost
- Canvas Rendering Error
- Shader Compilation Failure
- Animation Loop Exception
- Telemetry Adapter Failure
- Visual Module Initialization Failure

必須提供模組局部錯誤提示及資源回收機制。

## 10. Feature Switch and Rollback｜功能開關與回退

### 10.1 Default State｜預設狀態

初始整合版本預設為 Disabled｜停用。

啟用需經配置或明確的擴展模式入口。

### 10.2 Required States｜必要狀態

- DISABLED｜停用
- INITIALIZING｜初始化
- ACTIVE｜運行中
- DEGRADED｜降級運行
- FAILED｜失效

### 10.3 Rollback Rules｜回退規則

關閉新模組時：

1. 停止動畫循環。
2. 關閉獨立資料請求及訂閱。
3. 釋放 GPU 與事件監聽資源。
4. 移除新增視覺容器。
5. 維持原有看板及資料刷新。

回退不得要求修改現有 MQTT 路由、Runtime 核心或原有 API。

## 11. Performance Requirements｜效能要求

**PERF-001**

新模組不得改變現有運維資料的刷新週期。

**PERF-002**

三維動畫採用獨立 Render Loop｜渲染循環。

**PERF-003**

可見時優先追求 60 FPS，低效能設備允許降級。

**PERF-004**

提供 Canvas 2D 或簡化場景作為 WebGL 降級方案。

**PERF-005**

支援 Reduced Motion｜低動態模式。

**PERF-006**

頁面不可見或功能關閉時，停止非必要渲染。

**PERF-007**

GPU、記憶體和長時間運行穩定性必須經目標監控設備實測。

效能結果須以實際測試記錄為準。

## 12. Security Requirements｜安全要求

現行運維 API 的 `Ops-Token` 身份驗證必須保留。

新模組不得：

- 將運維 Token 寫死於公開前端資產。
- 繞過運維 API 的身份驗證。
- 以視覺功能觸發控制 API。
- 修改設備資料、Runtime 狀態或審計日誌。
- 自動觸發 AI 分析或恢復行動。
- 將敏感設備資料傳送至未批准的第三方服務。

身份驗證與資料取得應透過已授權的唯讀介接流程處理。

## 13. Implementation Strategy｜工程實施策略

### Phase 0 — Baseline Preservation｜基準保留

- 核對現行 `board.html`、`board.js` 及 `core.js`。
- 保存原始看板截圖與版面測試基準。
- 記錄六卡順序、尺寸、CSS 與 API。
- 建立不允許改動的功能清單。

### Phase 1 — Renderer Extraction｜渲染器提取

- 審閱原 `SPREAD FIELD` 的 Canvas 與 WebGL 程式。
- 提取可重用的曲線、透視、掃描及光柱能力。
- 分離交易模擬資料與渲染邏輯。
- 建立獨立視覺模組。

### Phase 2 — Read-Only Data Integration｜唯讀資料整合

- 介接現有運維 API。
- 建立資料標準化與事件映射。
- 加入資料品質、時間戳及來源標示。
- 驗證光柱與事件證據的一致性。

### Phase 3 — Additive Dashboard Integration｜增量看板整合

- 在獨立區域掛載視覺模組。
- 建立 Feature Switch。
- 保持原六卡與全部原有功能不變。
- 驗證啟用、停用及回退。

### Phase 4 — Validation｜整合驗證

- 視覺回歸測試
- API 相容性測試
- 資料正確性測試
- 故障隔離測試
- 效能與穩定性測試
- 安全與權限測試

## 14. Engineering Work Packages｜工程工作包

| Task ID | Task｜任務 | Priority |
| --- | --- | --- |
| VIS-P0-01 | Existing Dashboard Baseline｜現有看板基準保存 | P0 |
| VIS-P0-02 | SPREAD FIELD Source Audit｜來源動畫程式審閱 | P0 |
| VIS-P0-03 | Isolated Visual Module｜隔離視覺模組 | P0 |
| VIS-P0-04 | Continuous Depth Recession｜連續縱深退移 | P0 |
| VIS-P0-05 | Digital Scanning｜數位掃描 | P0 |
| VIS-P0-06 | Descending Event Pillars｜下落式事件光柱 | P0 |
| VIS-P0-07 | Read-Only Runtime Adapter｜唯讀 Runtime 適配器 | P0 |
| VIS-P0-08 | Feature Switch & Rollback｜功能開關與回退 | P0 |
| VIS-P0-09 | Regression & Isolation Tests｜回歸及隔離測試 | P0 |
| VIS-P0-10 | REVIEW.md & Acceptance｜成果報告與驗收 | P0 |

## 15. Acceptance Criteria｜驗收標準

| Test ID | Requirement｜驗收要求 |
| --- | --- |
| ACC-001 | 原 `/ops/board` 預設畫面保持原狀 |
| ACC-002 | 原六卡排列、尺寸、字體、顏色及樣式不變 |
| ACC-003 | 原有圖表、KPI、日誌分析及 AI 報告正常 |
| ACC-004 | 現有 API 契約不變 |
| ACC-005 | 新模組可獨立啟用、停用、卸載 |
| ACC-006 | 深海資料曲線具備連續縱深退移效果 |
| ACC-007 | 數位掃描符合資料及動畫時間契約 |
| ACC-008 | 事件光柱可正確下落、錨定、退移 |
| ACC-009 | 前景與遠景符合透視渲染矩陣 |
| ACC-010 | 真實資料與 DEMO 資料明確區分 |
| ACC-011 | 動畫異常不影響原有看板 |
| ACC-012 | WebGL 故障時可正常降級 |
| ACC-013 | 關閉模組後原有功能正常，資源已釋放 |
| ACC-014 | 無新增控制或未授權資料寫入 |
| ACC-015 | 效能、安全與視覺回歸測試通過 |
| ACC-016 | 提交完整 REVIEW.md 與驗收證據 |

所有 P0 驗收項目均須通過。

## 16. Codex Development Instructions｜Codex 開發指令

### Instruction 1 — Preserve the Dashboard

Inspect and preserve the current emqxMP Operations Dashboard. Do not alter its six-card layout, visual styles, API contracts, polling behavior, authentication, or AI report functionality.

**中文說明：** 檢查並保留現行看板，禁止修改六卡佈局、視覺樣式、API、資料輪詢、身份驗證及 AI 報告功能。

### Instruction 2 — Reuse the Existing Animation

Inspect the first SPREAD FIELD visualization under `src/main/resources/dist`. Extract reusable rendering capabilities while excluding trading-specific data and business logic.

**中文說明：** 審閱 dist 第一塊動態資料場，提取可重用渲染能力，排除交易資料與業務邏輯。

### Instruction 3 — Build an Isolated Module

Implement OceanAI Deep Ocean Computing as a standalone optional visualization module that can be mounted, disabled, and removed without affecting the existing dashboard.

**中文說明：** 將深海計算實作為可獨立掛載、停用及卸載的視覺模組，不影響現有看板。

### Instruction 4 — Connect Read-Only Runtime Data

Use verified read-only operations data. Preserve event timestamps, metric provenance, trace identifiers, and evidence confidence. Do not simulate live telemetry in production mode.

**中文說明：** 使用可核對的唯讀運維資料，保留時間戳、指標來源、Trace 與證據可信度。正式模式不得模擬即時遙測。

### Instruction 5 — Protect Existing Behavior

Implement independent error handling, feature switching, renderer fallback, and rollback. Verify that the original dashboard remains operational when the visualization fails.

**中文說明：** 實作錯誤隔離、功能開關、渲染降級與回退，驗證動畫失效時原看板仍能正常運行。

### Instruction 6 — Validate and Report

Run regression, integration, visual, performance, and security tests. Deliver screenshots, test evidence, and REVIEW.md. Do not deploy or modify production systems without explicit approval.

**中文說明：** 執行回歸、整合、視覺、效能及安全測試，交付截圖、測試證據與 REVIEW.md。未經批准不得部署或修改生產系統。

## 17. REVIEW.md Requirements｜成果審閱要求

每項工程任務應提交 REVIEW.md，內容涵蓋：

1. Summary｜摘要
2. Completion｜完成度
3. Quality｜品質
4. Problems｜問題
5. Evidence｜成果證據
6. Inheritance｜繼承成果
7. Improvements｜改進事項
8. Acceptance Results｜驗收結果
9. Pending Approval｜待審閱事項

必須明確記錄原有看板保留情況，以及從 `dist` 繼承的視覺能力和所有新增程式。

## 18. Final Engineering Baseline｜最終工程基準

**OceanAI Deep Ocean Computing shall extend the existing emqxMP Operations Dashboard through an independent, optional visualization module derived from the first animated field in emqxMP/dist. The existing dashboard shall retain its current layout, styling, operational functions, API contracts, authentication, and AI reporting capabilities. The new module shall provide three-dimensional runtime observability and diagnostics through continuous depth recession, digital scanning, layered data curves, descending event pillars, and oceanic perspective.**

**OceanAI Deep Ocean Computing 應以獨立、可選的視覺模組擴展現行 emqxMP 運維看板，並優先繼承 emqxMP/dist 第一塊動態資料場的相關能力。現行看板的佈局、樣式、運維功能、API 契約、身份驗證及 AI 報告全部保留。新增模組以連續縱深退移、數位掃描、分層資料曲線、下落式事件光柱及海洋式透視，提供三維 Runtime 運行可觀測與故障診斷能力。**

**Document Status｜文件狀態：Draft for Author Review｜待負責人審閱。**

## v1.1 修訂摘要

| 修訂項目 | v1.1 處理結果 |
| --- | --- |
| 產品定位 | 聚焦運維、日誌分析與故障診斷 |
| 現行看板 | 完全保留，不重新設計 |
| 動畫來源 | 明確指定 `emqxMP/dist` 第一塊 SPREAD FIELD |
| 版面 | 原六卡不變；新增獨立區域 |
| 視覺語言 | 保留深海計算、曲線退移、數位掃描及光柱 |
| 資料整合 | 重用現有唯讀運維 API |
| 工程隔離 | 加入故障隔離、功能開關、降級與回退 |
| 驗收 | 加入 16 項可驗證標準 |

本版作為 OAI-VIS-ENG-001 v1.1 的審閱基準。原有 `/ops/board` 在新增模組關閉時，必須保持與修改前一致；啟用後也不得改變原六卡的佈局與運行行為。
