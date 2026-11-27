# OAI-RES-001 v0.1

## Runtime Reliability Intelligence

## 運行可靠性智能研究計劃

文件性質：Research Program｜研究計劃

研究對象：OceanAI Runtime · ArtiOS Runtime · Artibird

工程承接：OceanAI Operations Agent

## 1. Research Objective｜研究目標

Develop evidence-driven intelligence that enables distributed physical systems to understand their operational conditions, identify faults, explain causes, anticipate risks, and support reliable recovery.

發展以證據驅動的智能能力，使分散式物理系統能夠理解自身運行狀況、識別故障、解釋原因、預判風險，並支援可靠恢復。

研究最終服務於 OceanAI 的核心運行目標：

Keep Running. Act as One.

持續運行，協同如一。

## 2. Research Principles｜研究原則

- **Problem-Driven｜問題驅動：**以 Artibird 真實工程問題作為研究起點。
- **Evidence-Driven｜證據驅動：**所有診斷結論均須具備可追溯證據。
- **Validation First｜驗證優先：**先驗證工程價值，再選擇算法與開源工具。
- **Progressive Intelligence｜漸進式智能：**從規則、統計及拓撲分析逐步發展至機器學習。
- **Knowledge Accumulation｜知識積累：**將已驗證成果轉化為案例、知識及可重用 Skills。
- **Human Governance｜人工治理：**保留工程師覆核、修復決策及安全審批權限。

## 3. Six Research Tracks｜六大研究主線

### RES-01 · P2 · Meta-Learning Fault Diagnosis｜元學習故障診斷

如何利用少量已確認案例診斷新設備的故障？

預期研究成果：小樣本診斷能力

### RES-02 · P2 · Cross-Domain Fault Diagnosis｜跨域故障診斷

如何將一個場域的診斷知識應用至其他場域及設備？

預期研究成果：跨設備診斷知識遷移

### RES-03 · P0 · Knowledge Graph & Evidence Fusion｜知識圖譜與證據融合

如何整合日誌、程式碼、韌體、硬體及人工診斷證據？

預期研究成果：Runtime Knowledge Graph

### RES-04 · P1 · Digital Twin & Fault Simulation｜數位孿生與故障模擬

如何在不影響生產環境的情況下復現及驗證故障？

預期研究成果：Runtime Fault Simulator

### RES-05 · P0 · System-Level Fault Propagation｜系統級故障傳播

如何判斷故障來源、傳播路徑及影響範圍？

預期研究成果：Fault Propagation Engine

### RES-06 · P0 · Causal Root Cause Analysis｜因果根因分析

如何從相關性分析進入可驗證的根因推斷？

預期研究成果：Causal Diagnosis Engine

P0 代表優先研究及基礎工程驗證，不代表立即開發完整的 AI 算法系統。

## 4. Real-World Research Cases｜真實研究案例

首批研究案例直接採用 Artibird 已經發生的運行問題。

### OAI-FAULT-CASE-001 · 單火開關反覆離線

鴻觀寰宇／總經辦／dbfc

| 454 | 437 | 6.8s |
|---|---|---|
| 離線次數 | Hub 上報 | 時長中位數 |

核心研究問題

- BLE Mesh Friendship 為什麼反覆中斷？
- 是否與供電、燈具負載、韌體或射頻環境有關？
- 11 月 21 日以後離線次數為什麼顯著下降？

對應研究：RES-03、RES-04、RES-06

Root Cause：UNKNOWN｜根因尚未確認

### OAI-FAULT-CASE-002 · 網關斷線與衍生故障

日月光／客廳／04d0

| 46 | 91 | 17–20s |
|---|---|---|
| 網關斷線 | 衍生離線 | 40 次恢復時長 |

核心研究問題

- 網關 MQTT 連線為什麼反覆中斷？
- 恢復時間為什麼高度集中？
- 如何自動識別下游設備的衍生離線？
- 如何區分網關通訊中斷與下游設備實際運行故障？

對應研究：RES-03、RES-05、RES-06

Root Cause：UNKNOWN｜根因尚未確認

## 5. Research Methodology｜研究方法

所有研究案例採用統一的研究流程。

1. Real Fault Case｜真實故障案例。取得現象、時間、設備及影響範圍。
2. Evidence Collection｜證據收集。日誌、程式碼、拓撲、韌體及物理測試。
3. Fault Modeling｜故障建模。建立事件關係、依賴關係及候選根因。
4. Baseline Diagnosis｜基準診斷。先採用規則、統計及工程分析。
5. Algorithm Research｜算法研究。研究候選算法及開源工具。
6. Controlled Experiment｜受控實驗。故障復現、對照實驗及算法比較。
7. Engineering Validation｜工程驗證。評估準確率、誤報率、成本及可靠性。
8. Knowledge & Skill Evolution｜知識與技能演進。將已驗證成果轉化為可重用資產。
9. Runtime Integration｜運行系統整合。經過審查後接入 Operations Agent。

## 6. Engineering Architecture｜研究與工程架構

OceanAI

**Runtime Reliability Intelligence**

運行可靠性智能研究體系

- Meta-Learning｜元學習
- Domain Adaptation｜域自適應
- Knowledge Graph｜知識圖譜
- Digital Twin｜數位孿生
- Fault Propagation｜故障傳播
- Causal Analysis｜因果分析

**OceanAI Fault Research Lab**

故障研究與驗證實驗環境

- Case Library｜案例庫
- Evidence Store｜證據庫
- Fault Simulator｜故障模擬
- Benchmark｜基準測試

**Validated Diagnostic Assets**

經驗證的診斷資產

Rules · Skills · Models · Knowledge

規則、技能、模型、知識

**OceanAI Operations Agent**

運維智能體

**ORT**

OceanAI Runtime

**ART**

ArtiOS Runtime

**Artibird Device System**

真實設備與物理環境

Hub · Gate · Sync · Switch · Panel · Sense · Plug · Vision · Flow

## 7. Algorithm Selection Policy｜算法選型政策

目前不鎖定任何具體算法或開源框架，將以下技術列為候選研究範圍。

| 研究方向 | 基準技術 | 進階候選技術 |
|---|---|---|
| 元學習 | 案例檢索、相似度匹配 | MAML、Prototypical Networks |
| 跨域診斷 | 特徵標準化、規則遷移 | DANN、Transfer Learning |
| 知識圖譜 | 結構化證據、關係圖 | GAT、Graph Reasoning |
| 故障模擬 | 事件重放、故障注入 | Hybrid Digital Twin |
| 故障傳播 | 拓撲遍歷、時間關聯 | GNN、ST-GCN |
| 因果分析 | 故障樹、受控實驗 | SCM、Temporal Causal Discovery |

選型時必須比較進階算法與簡單基準方法的實際效果。若規則及拓撲分析已能可靠解決問題，則沒有必要增加模型訓練及維護成本。

## 8. Research Evaluation｜研究成果評估

| 評估指標 | 評估內容 |
|---|---|
| Diagnostic Accuracy | 診斷準確率 |
| Root Cause Accuracy | 根因識別準確率 |
| False Positive Rate | 誤報率 |
| Evidence Traceability | 證據可追溯性 |
| Unknown Handling | 未知故障處理能力 |
| Cross-Device Generalization | 跨設備泛化能力 |
| Diagnostic Latency | 診斷耗時 |
| Engineering Cost | 工程實施與維護成本 |
| Knowledge Reusability | 診斷知識重用能力 |
| Safety & Reliability | 安全性與可靠性 |

特別要求：不得為了提高診斷覆蓋率，強行將 UNKNOWN 分類為某個已知故障。根因準確率應以人工或受控實驗確認的案例作為驗證基準。

## 9. Research Repository｜研究儲存庫

建議今後建立獨立的 GitHub 研究儲存庫，與生產系統程式碼分開管理。

```
oceanai-reliability-research/
│
├── AGENTS.md
├── README.md
│
├── research/          # 研究主線
│   ├── meta-learning/
│   ├── domain-adaptation/
│   ├── knowledge-graph/
│   ├── digital-twin/
│   ├── fault-propagation/
│   └── causal-analysis/
│
├── cases/             # 真實故障案例
├── datasets/          # 脫敏研究資料集
├── evidence/          # 工程證據
├── algorithms/        # 候選算法
├── tools/             # 開源工具研究
├── experiments/       # 實驗
├── benchmarks/        # 基準測試
├── skills/            # 經驗證的診斷技能
├── reports/           # 研究報告
└── reviews/           # REVIEW.md 審查報告
```

研究儲存庫預設採用唯讀生產資料來源，禁止未經批准直接修改生產環境、設備韌體及 Runtime 控制策略。

## 10. Research Roadmap｜研究路線圖

**Phase 1 · 優先開展 · Evidence & Baseline｜證據與基準**

完成兩個真實故障案例的資料收集、拓撲關聯與基準診斷。

**Phase 2 · 後續建設 · Knowledge & Skills｜知識與技能**

建立案例庫、證據關係圖及可驗證的診斷 Skills。

**Phase 3 · 研究階段 · Causality & Simulation｜因果與模擬**

建立故障注入、因果假設及受控實驗環境。

**Phase 4 · 長期研究 · Learning & Prediction｜學習與預測**

引入圖神經網路、元學習、跨域遷移及故障預測。

**Phase 5 · 通過驗證後 · Runtime Integration｜運行整合**

將成熟的研究成果逐步接入 Operations Agent、ORT 與 ART。

研究路線圖獨立於 Operations Agent MVP 的工程交付計劃，不改變此前已確立的 Phase 1 日誌診斷、Phase 2 Skill 演進的實施順序。

## 11. 第一個正式研究任務

**OAI-RES-TASK-001**

Evidence-Based Connectivity Fault Diagnosis

基於證據的連線故障診斷研究

| 項目 | 要求 |
|---|---|
| 研究對象 | dbfc、04d0、8d48、9f5a |
| 研究範圍 | BLE Mesh、Wi-Fi、MQTT、EMQX、韌體、供電 |
| 資料來源 | 真實運行日誌、原始碼、工程測試 |
| 執行工具 | Codex、Operations Agent、工程分析工具 |
| 人工參與 | 硬體測量、現場排查、故障復現、結果覆核 |
| 研究限制 | 不提前鎖定算法，不修改生產系統 |
| 交付成果 | 研究報告、證據鏈、候選根因、實驗方案 |
| 品質審查 | REVIEW.md |

目前尚未取得完整原始日誌、韌體版本變更紀錄及物理測試資料，因此首期研究的任務是補齊證據及建立診斷基準，不能預先承諾確認根因。

## 12. OceanAI 的長期技術價值

這個研究專項可以與 OceanAI 現有三大架構理論形成互補關係。

| OceanAI Architecture｜架構理論 | 研究關係 |
|---|---|
| Archipelago Architecture｜群島架構 | 故障隔離、依賴分析、影響邊界 |
| Liquid Runtime｜流動運行 | 動態適應、故障恢復、持續運行 |
| Spatial Orchestration｜空間協同 | 跨設備狀態協同、故障傳播分析 |
| Runtime Reliability Intelligence｜運行可靠性智能 | 運行理解、故障診斷、風險預測、知識演進 |

前三項維持既有的架構理論地位。Runtime Reliability Intelligence 建議作為獨立的可靠性研究與工程能力體系，暫不新增為第四大架構理論。

讓每一次真實故障成為研究案例，讓每一次有效診斷成為知識資產，讓每一次工程驗證成為 OceanAI 智能能力演進的基礎。

這應當成為 OceanAI 今後故障診斷與可靠性智能研究的基本方法。
