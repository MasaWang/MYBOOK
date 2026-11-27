# MYBOOK｜OceanAI / Artibird 文件庫

<br>

本庫收錄 OceanAI / Artibird 相關文件，各自獨立成資料夾。資料夾以編號排列，順序就是閱讀與約束順序：架構規格 → 工程規格 → 產品規格 → 敘事書稿。

<br>

OceanAI 是系統名。Artibird 是硬體產品名。

<br>

## 四份 OceanAI 系統文件的關係

上面兩份是規格，由上往下約束。下面兩份是敘事書稿，沿用同一套概念；修訂書稿不改規格條文。

<br>

```text
架構規格書 v1.1          工程規格書 v1.0
01-OceanAI系統架構規格書  →  02-OceanAI系統工程規格書
        │ 概念同源，書稿不改規格
        ▼
07-OceanAI系統架構（章節書稿） → 08-OceanAI系統（整合單檔）
```

<br>

| 順序 | 資料夾 | 類型 | 內容 |
|------|--------|------|------|
| 01 | [OceanAI系統架構規格書](01-OceanAI系統架構規格書/README.md) | L1 架構規格 v1.1 | 19 章加附錄。定義架構哲學、設計原則、分層、Runtime、數據模型、事件／指令／狀態、本地優先、雲端、邊緣、協同、安全、治理與宣稱邊界、容量、部署、版本演進、測試框架 |
| 02 | [OceanAI系統工程規格書](02-OceanAI系統工程規格書/README.md) | L2 工程規格 v1.0 | 19 章。正式標題是《OceanAI / Artibird 系統規格書 v1.0》。寫系統如何把 Artibird 產品接進 OceanAI：系統範圍、組件、Runtime、設備模型、數據與事件流、連接、故障行為、容量邊界、測試與商業宣稱 |
| 07 | [OceanAI系統架構](07-OceanAI系統架構/README.md) | L4 敘事書稿 | 兩套章節稿：書稿版、新書稿版。新書稿用群島式群集 Runtime、ORT、ART 來講架構 |
| 08 | [OceanAI系統](08-OceanAI系統/README.md) | L4 敘事整合 | 單檔《讓空間協同為一》。把系統講成一篇中英對照的工程敘事。OceanAI 是系統級智慧架構，Artibird 是實體產品層 |

<br>

兩本規格書題目會重疊，分工不同。架構規格書定原則、模型和治理邊界；工程規格書定這些原則如何落到 Hub、Gate、設備、Runtime 和測試。產品工程規格書再往下，才寫單品硬體和韌體。

<br>

兩本書稿講同一套架構故事。`07-OceanAI系統架構` 是分冊章節，`08-OceanAI系統` 是把書稿收成一篇的整合正本。它們可以解釋系統，規格條文以 01 與 02 為準。

<br>

工程規格書標題裡的「OceanAI / Artibird」表示 OceanAI 系統如何整合 Artibird 硬體產品。這份仍是 OceanAI 系統工程規格。Artibird 只有產品規格書。

<br>

[02](02-OceanAI系統工程規格書/README.md) 採兩級。一級是系統工程規格書 v1.0。二級是 [02A](02-OceanAI系統工程規格書/02A-OceanAI%20Runtime系統規格書/README.md)、[02B](02-OceanAI系統工程規格書/02B-OceanAI雲端共用基礎服務規格書/README.md)、[02C](02-OceanAI系統工程規格書/02C-OceanAI分散式時間架構與時間可靠性工程規格書/README.md)、[02D](02-OceanAI系統工程規格書/02D-OceanAI深海計算運維與診斷視覺引擎工程規格書/README.md)、[02E](02-OceanAI系統工程規格書/02E-OceanAI智能系統架構規格書/README.md)、[02F](02-OceanAI系統工程規格書/02F-OceanAI雲端運行服務架構與可觀測性整合工程規格書/README.md)、[02G](02-OceanAI系統工程規格書/02G-OceanAI運行智能體工程規格書/README.md)、[02H](02-OceanAI系統工程規格書/02H-OceanAI運行可靠性智能研究計劃/README.md)。條目見 [02｜工程層](#02工程層)。

<br>

## 三個倉庫的對應

這三個倉庫記不同的事，用連結對照，不把內容合併。

<br>

### 三個倉庫

| 倉庫 | 記什麼 |
|------|--------|
| [MYBOOK](README.md) | OceanAI 架構規格、工程規格、Runtime 規格，以及 Artibird 產品規格和書稿 |
| [artibird-engineering](https://github.com/MasaWang/artibird-engineering) | Hub、Gate、Sync 等硬體工程資料 |
| [iot-docs](https://github.com/KristampsWong/iot-docs) | 現網軟體由哪些專案組成、怎麼配合、文件寫到哪一次提交 |

<br>

### 目前的對應

| 現網軟體（iot-docs） | OceanAI 文件（MYBOOK） | 硬體（artibird-engineering） | 目前的對應 |
|----------------------|------------------------|------------------------------|------------|
| 系統總覽 | 01 架構規格、02 工程規格 | — | 現網行為說明，不是這兩份規格的採用版 |
| iot-backend | OceanAI Cloud | — | 現網業務 API 與主數據 |
| emqxMP | ORT Cloud Runtime | — | 現網雲端 Runtime。ORT 的雲端 Runtime 實現。不是 EMQX Broker |
| EMQX | — | — | 雲端 MQTT Broker 和本地 MQTT Broker，只轉發訊息 |
| Hub（hubServer） | ART。02A 裡的 Hub／ArtiOS 本地 Runtime | `HUB-G1`、`HUB-G1-PRO` | 角色相同。hubServer 的程式不在 iot-docs 的五個專案裡，倉庫仍未知。現網這台樹莓派對上哪一個編號，待確認 |
| 網關 | 03 Gate 產品規格 | `GATE-G1-STD` 只對應已記錄的配置 1 | 角色相近。現網網關與 `GATE-G1-STD` 的對應待確認 |
| 紅外和射頻遙控 | 03 Sync 產品規格 | `SYNC-G1-IRRF` | 待確認 |
| IOTControl、artibird-app | 書稿和型錄裡的互動層 | 無硬體產品編號 | 兩個軟體專案。artibird-app 又名 Artibird 極光版。App 裡的 `typeId`、`productId` 不是硬體產品編號 |
| 設備韌體 | 產品工程規格裡的韌體要求 | 韌體倉庫與相容性仍是 unknown | 韌體倉庫位置待確認 |

<br>

iot-docs 的系統總覽採用架構規格書第 4.2 節：OceanAI 是一套面向物理環境的系統級協同智慧架構。Artibird 仍是硬體產品名。書稿 07–09 不約束工程中心，也不約束 iot-docs。

<br>

## 📂 文件總覽

<br>

### 01｜架構層

| 文件 | 說明 | 入口 |
|------|------|------|
| **OceanAI系統架構規格書** | 系統架構、Runtime 與治理規格書 v1.1，架構層，中英對照 | [01-OceanAI系統架構規格書/README.md](01-OceanAI系統架構規格書/README.md) |

<br>

### 02｜工程層

兩級。一級是系統工程規格書。二級掛在它下面，不取代一級。

<br>

一級

| 文件 | 說明 | 入口 |
|------|------|------|
| **OceanAI系統工程規格書** | 系統工程規格書 v1.0，系統架構 + Runtime + 整合，19 章，中英對照 | [02-OceanAI系統工程規格書/README.md](02-OceanAI系統工程規格書/README.md) |

<br>

二級

| 順序 | 文件 | 說明 | 入口 |
|------|------|------|------|
| 02A | **OceanAI Runtime系統規格書** | 工程規格與商業規格各一份，中英對照。繼承 [01 第六章](01-OceanAI系統架構規格書/A01-1%20OceanAI%20系統架構規格書%20v1.1/章節/chapter%206%20Runtime%20架構.md) 與 [02 第六章](02-OceanAI系統工程規格書/chapters/06_Runtime架構.md)。不取代這兩章，也不修改 Gate 套件。D01 尚未採用。實作與商業供應尚未驗證 | [02-OceanAI系統工程規格書/02A-OceanAI Runtime系統規格書/README.md](02-OceanAI系統工程規格書/02A-OceanAI%20Runtime系統規格書/README.md) |
| 02B | **OceanAI 雲端共用基礎服務工程規格** | 16 項共用基礎服務。v0.2 是目前候選，v0.1 保留。尚未批准、尚未鎖定。只讀盤點固定於 2026-11-09 的提交；正式 Diff 與硬體驗收未完成。不取代 01、02 或 02A | [02-OceanAI系統工程規格書/02B-OceanAI雲端共用基礎服務規格書/README.md](02-OceanAI系統工程規格書/02B-OceanAI雲端共用基礎服務規格書/README.md) |
| 02C | **OceanAI 分散式時間架構與時間可靠性工程規格** | Cloud、Hub、Gate 與設備的時間契約。工程審閱稿 v1.0，v0.1 保留，OAI-RUNTIME-ENG-004。暫定指標尚未實測，尚未批准，也尚未與現有程式碼核對。不取代 01、02 或 02A | [02-OceanAI系統工程規格書/02C-OceanAI分散式時間架構與時間可靠性工程規格書/README.md](02-OceanAI系統工程規格書/02C-OceanAI分散式時間架構與時間可靠性工程規格書/README.md) |
| 02D | **OceanAI 深海計算運維與診斷視覺引擎工程規格** | 在現行 emqxMP 運維看板上增量加入視覺模組。審閱稿 v1.1，OAI-VIS-ENG-001。尚未批准，不改 emqxMP 程式或線上看板。不取代 01、02 或 02A | [02-OceanAI系統工程規格書/02D-OceanAI深海計算運維與診斷視覺引擎工程規格書/README.md](02-OceanAI系統工程規格書/02D-OceanAI深海計算運維與診斷視覺引擎工程規格書/README.md) |
| 02E | **OceanAI 智能系統架構規格書** | 架構草案 v0.2，OAI-AI-ARCH-001。四個核心模組、Figure 1 總體架構圖，以及 Figure 2 現有正式環境與增量整合圖。候選 API 尚未與現網核對。不改現網程式，也不取代 01、02 或 02A | [02-OceanAI系統工程規格書/02E-OceanAI智能系統架構規格書/README.md](02-OceanAI系統工程規格書/02E-OceanAI智能系統架構規格書/README.md) |
| 02F | **OceanAI 雲端運行服務架構與可觀測性整合工程規格** | 工程草案 v1.0，OAI-RUNTIME-CLOUD-001。以現有 Cloud Production 為起點，增量、唯讀優先。P0–P5 尚未執行。不改現網程式，也不取代 01、02、02A 或 02E | [02-OceanAI系統工程規格書/02F-OceanAI雲端運行服務架構與可觀測性整合工程規格書/README.md](02-OceanAI系統工程規格書/02F-OceanAI雲端運行服務架構與可觀測性整合工程規格書/README.md) |
| 02G | **OceanAI 運行智能體工程規格** | 工程草案 v1.0，OAI-AI-ENG-002。繼承 02E 與 02F。MVP 只讀診斷與恢復建議。P0–P5 尚未執行。不改現網程式 | [02-OceanAI系統工程規格書/02G-OceanAI運行智能體工程規格書/README.md](02-OceanAI系統工程規格書/02G-OceanAI運行智能體工程規格書/README.md) |
| 02H | **OceanAI 運行可靠性智能研究計劃** | 研究計劃 v0.1，OAI-RES-001。六條研究主線。兩個案例根因仍是 UNKNOWN。不改 Operations Agent MVP 順序，也不改現網程式 | [02-OceanAI系統工程規格書/02H-OceanAI運行可靠性智能研究計劃/README.md](02-OceanAI系統工程規格書/02H-OceanAI運行可靠性智能研究計劃/README.md) |

<br>

### 03–06｜產品層（Artibird｜僅產品規格書）

| 順序 | 文件 | 說明 | 入口 |
|------|------|------|------|
| 03 | **Artibird產品工程規格書** | Artibird 全系列產品工程規格書（Gate–Vision），中英對照。另有 Hub 系列、Gate 與 Sync 工程審閱草案 v0.1 | [03-Artibird產品工程規格書/README.md](03-Artibird產品工程規格書/README.md) |
| 04 | **Artibird產品商業規格書** | Artibird 全系列產品商業規格書（Gate–Vision），中英對照。另有 Hub 系列商業審閱草案 v2.0 與彙整稿 v2.3 | [04-Artibird產品商業規格書/README.md](04-Artibird產品商業規格書/README.md) |
| 05 | **Artibird產品型錄** | Artibird 產品型錄 v1.0，產品層與應用組合，中英對照 | [05-Artibird產品型錄/README.md](05-Artibird產品型錄/README.md) |
| 06 | **Artibird SKU與型號命名規範** | SKU 結構、型號命名與治理規範 v1.0，中英對照 | [06-Artibird SKU與型號命名規範/README.md](06-Artibird%20SKU與型號命名規範/README.md) |

<br>

### 07–09｜書稿

| 順序 | 文件 | 說明 | 入口 |
|------|------|------|------|
| 07 | **OceanAI系統架構** | 《OceanAI 系統架構》敘事書稿（書稿版 + 新書稿版），中英對照 | [07-OceanAI系統架構/README.md](07-OceanAI系統架構/README.md) |
| 08 | **OceanAI系統** | 《OceanAI 系統》工程敘事整合版《讓空間協同為一 / Make spaces work as one》 | [08-OceanAI系統/README.md](08-OceanAI系統/README.md) |
| 09 | **智慧之海** | 哲學與架構專書《The Architecture of Intelligence》，六篇 ~20 章，中英對照 | [09-智慧之海/README.md](09-智慧之海/README.md) |

<br>

## 跨冊文件關係矩陣

文件金字塔（規格由上而下約束；書稿沿用概念，不改規格條文）：

<br>

```
L1  架構規格        01   OceanAI系統架構規格書 v1.1
L2  工程規格 一級   02   OceanAI系統工程規格書 v1.0
    工程規格 二級   02A  OceanAI Runtime 系統工程／商業規格書 v1.0
    工程規格 二級   02B  OceanAI 雲端共用基礎服務工程規格 v0.2（v0.1 保留）
    工程規格 二級   02C  OceanAI 分散式時間架構與時間可靠性工程規格 v1.0（v0.1 保留）
    工程規格 二級   02D  OceanAI 深海計算運維與診斷視覺引擎工程規格 v1.1
    工程規格 二級   02E  OceanAI 智能系統架構規格書 v0.2
    工程規格 二級   02F  OceanAI 雲端運行服務架構與可觀測性整合工程規格 v1.0
    工程規格 二級   02G  OceanAI 運行智能體工程規格 v1.0
    研究計劃 二級   02H  OceanAI 運行可靠性智能研究計劃 v0.1
L3  產品規格        03–06  Artibird 產品工程／商業規格書、型錄、SKU 規範
L4  敘事書稿        07   OceanAI系統架構、08  OceanAI系統、09  智慧之海
```

<br>

### 文件線分工

| 名稱 | 定位 | 系統規格書 | 產品規格書 |
|------|------|-----------|-----------|
| **OceanAI** | 系統名 | 架構規格書 v1.1、工程規格書 v1.0、Runtime 規格書 v1.0、雲端共用服務候選 v0.1 與 v0.2、時間架構工程審閱稿 v1.0、深海計算視覺引擎審閱稿 v1.1、智能系統架構草案 v0.2、雲端運行可觀測性整合工程草案 v1.0、運行智能體工程草案 v1.0、運行可靠性智能研究計劃 v0.1 | — |
| **Artibird** | 硬體產品名 | 無 | 產品工程規格書、產品商業規格書、型錄、SKU 規範 |

<br>

| 資料夾 | 正式名稱 | 層級 | 類型 | 版本 | 上游依賴 | 下游／關聯 | 用途 |
|--------|----------|------|------|------|----------|------------|------|
| [01-OceanAI系統架構規格書](01-OceanAI系統架構規格書/README.md) | OceanAI 系統架構規格書 | L1 架構 | 規格書 | v1.1 | — | L2 工程規格、L3 產品規格 | 架構原則、模型、治理、驗證框架 |
| [02-OceanAI系統工程規格書](02-OceanAI系統工程規格書/README.md) | OceanAI 系統工程規格書（正式標題含 Artibird 整合語意） | L2 工程 · 一級 | 規格書 | v1.0 | L1 v1.1 | L3 產品工程規格、02A–02H | 系統—產品整合、Runtime、設備模型、測試 |
| [02A-OceanAI Runtime系統規格書](02-OceanAI系統工程規格書/02A-OceanAI%20Runtime系統規格書/README.md) | OceanAI Runtime 系統規格書 | L2 工程 · 二級 | 規格書 | v1.0 | 01 第六章、02 第六章 | 商業規格同夾 | Cloud 與 Hub／ArtiOS 部署的運行契約；不取代 01／02 原章 |
| [02B-OceanAI雲端共用基礎服務規格書](02-OceanAI系統工程規格書/02B-OceanAI雲端共用基礎服務規格書/README.md) | OceanAI 雲端共用基礎服務工程規格 | L2 工程 · 二級 | 候選規格 | v0.2；v0.1 保留 | 01、02、02A | — | 16 項共用服務的候選契約。v0.2 含 2026-11-09 靜態盤點；尚未批准，不取代既有規格 |
| [02C-OceanAI分散式時間架構與時間可靠性工程規格書](02-OceanAI系統工程規格書/02C-OceanAI分散式時間架構與時間可靠性工程規格書/README.md) | OceanAI 分散式時間架構與時間可靠性工程規格 | L2 工程 · 二級 | 工程審閱稿 | v1.0；v0.1 保留 | 01、02、02A | Hub、Gate、Sync 工程草案 | OAI-RUNTIME-ENG-004；尚未批准，不取代既有規格，也不改 HUB-G1／HUB-G1-PRO |
| [02D-OceanAI深海計算運維與診斷視覺引擎工程規格書](02-OceanAI系統工程規格書/02D-OceanAI深海計算運維與診斷視覺引擎工程規格書/README.md) | OceanAI 深海計算運維與診斷視覺引擎工程規格 | L2 工程 · 二級 | 審閱稿 | v1.1 | 現行 emqxMP `/ops/board` | — | OAI-VIS-ENG-001；僅增量整合，尚未批准，不改 emqxMP 程式或線上看板 |
| [02E-OceanAI智能系統架構規格書](02-OceanAI系統工程規格書/02E-OceanAI智能系統架構規格書/README.md) | OceanAI 智能系統架構規格書 | L2 工程 · 二級 | 架構草案 | v0.2 | 01、02、02A | Operations Agent、Cloud Runtime | OAI-AI-ARCH-001；Figure 1 為智能系統總體架構圖，Figure 2 為現有正式環境與增量整合圖。尚未批准，不改現網程式，也不取代既有規格 |
| [02F-OceanAI雲端運行服務架構與可觀測性整合工程規格書](02-OceanAI系統工程規格書/02F-OceanAI雲端運行服務架構與可觀測性整合工程規格書/README.md) | OceanAI 雲端運行服務架構與可觀測性整合工程規格 | L2 工程 · 二級 | 工程草案 | v1.0 | 01、02、02A、02E | Operations Agent、Cloud Runtime | OAI-RUNTIME-CLOUD-001；尚未批准，不改現網程式，也不取代既有規格 |
| [02G-OceanAI運行智能體工程規格書](02-OceanAI系統工程規格書/02G-OceanAI運行智能體工程規格書/README.md) | OceanAI 運行智能體工程規格 | L2 工程 · 二級 | 工程草案 | v1.0 | 02E、02F | Operations Console | OAI-AI-ENG-002；尚未批准，不改現網程式，也不取代既有規格 |
| [02H-OceanAI運行可靠性智能研究計劃](02-OceanAI系統工程規格書/02H-OceanAI運行可靠性智能研究計劃/README.md) | OceanAI 運行可靠性智能研究計劃 | L2 研究 · 二級 | 研究計劃 | v0.1 | 02G | Operations Agent、ORT、ART | OAI-RES-001；根因仍是 UNKNOWN，尚未執行，不改現網程式，也不新增第四大架構理論 |
| [03-Artibird產品工程規格書](03-Artibird產品工程規格書/README.md) | Artibird 產品工程規格書 | L3 產品 | 規格書 | 各產品 v1.0；Hub 系列、Gate 與 Sync 草案 v0.1 | L1、L2 | 型錄、商業規格 | 單品硬體／韌體／連接／測試。三份草案不取代 A01，也不改 HUB-G1／HUB-G1-PRO／GATE-G1-STD／SYNC-G1-IRRF |
| [04-Artibird產品商業規格書](04-Artibird產品商業規格書/README.md) | Artibird 產品商業規格書 | L3 產品 | 規格書 | 各產品 v1.0；Hub 系列草案 v2.0、v2.3 | L2、L3 工程 | 型錄、對外文案 | 面向客戶語言（受宣稱邊界約束）。v2.3 不取代 v1.0-Final 或 v2.0，價格與 SKU 未核准 |
| [05-Artibird產品型錄](05-Artibird產品型錄/README.md) | Artibird 產品型錄 | L3 產品 | 型錄 | v1.0 | L3 工程／商業 | 銷售、渠道 | 產品組合與應用場景 |
| [06-Artibird SKU與型號命名規範](06-Artibird%20SKU與型號命名規範/README.md) | SKU 與型號命名規範 | L3 產品 | 治理 | v1.0 | L3 工程規格 | 全產品線 | SKU／型號命名治理 |
| [07-OceanAI系統架構](07-OceanAI系統架構/README.md) | OceanAI 系統架構 | L4 書稿 | 敘事章節 | 書稿版＋新書稿版 | L1 概念同源 | [08-OceanAI系統](08-OceanAI系統/README.md) 整合單檔 | 架構敘事書稿 |
| [08-OceanAI系統](08-OceanAI系統/README.md) | OceanAI 系統（讓空間協同為一） | L4 書稿 | 敘事整合 | Prose | L1/L2 概念同源 | 書稿版章節 | 對外白皮書／工程敘事單檔 |
| [09-智慧之海](09-智慧之海/README.md) | The Architecture of Intelligence | L4 書稿 | 哲學專書 | — | OceanAI 思想脈絡 | — | 智慧架構哲學；不替代 L1–L3 規格 |

<br>

### 對照

| A | B | 關係 |
|---|---|------|
| 01 OceanAI系統架構規格書 | 07 OceanAI系統架構 | 規格 v1.1，與敘事書稿分開 |
| 02 OceanAI系統工程規格書 | 08 OceanAI系統 | 工程規格 v1.0，與敘事整合版分開 |
| 01 OceanAI系統架構規格書 v1.1 | 02 OceanAI系統工程規格書 v1.0 | 架構層在上；工程層展開整合與 Runtime |
| 02 第六章、01 第六章 | 02A OceanAI Runtime系統規格書 | 正式規格 v1.0 繼承這兩章；不取代原文，D01 尚未採用 |
| iot-docs | 01、02、02A、02B、02C、02D、02E、02F、02G、03–06 | 現網軟體概覽。硬體編號以 artibird-engineering 為準，未確認的現網設備不對上編號。02B v0.2 的盤點固定於 2026-11-09 提交，正式 Diff 與硬體尚未核對。02C 尚未與現網程式核對。02D 不改 emqxMP。02E 不改現網程式。02F 不改現網程式。02G 不改現網程式 |
| Artibird | 系統規格書 | Artibird 的規格在 03–06，屬產品規格 |

<br>

## 結構說明

- 每份文件都拆分為易讀的章節 Markdown，並各自附章節目錄 `README.md`。
- 各資料夾同時保留 `完整版.md`（單一大檔）與原始 `.docx` 來源。
