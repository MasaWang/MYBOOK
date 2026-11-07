# MYBOOK｜OceanAI / Artibird 文件庫

本庫收錄 OceanAI / Artibird 相關文件，各自獨立成資料夾。資料夾以編號排列，順序就是閱讀與約束順序：架構規格 → 工程規格 → 產品規格 → 敘事書稿。

OceanAI 是系統名。Artibird 是硬體產品名。

## 四份 OceanAI 系統文件的關係

上面兩份是規格，由上往下約束。下面兩份是敘事書稿，沿用同一套概念；修訂書稿不改規格條文。

```text
架構規格書 v1.1          工程規格書 v1.0
01-OceanAI系統架構規格書  →  02-OceanAI系統工程規格書
        │ 概念同源，書稿不改規格
        ▼
07-OceanAI系統架構（章節書稿） → 08-OceanAI系統（整合單檔）
```

| 順序 | 資料夾 | 類型 | 內容 |
|------|--------|------|------|
| 01 | [OceanAI系統架構規格書](01-OceanAI系統架構規格書/README.md) | L1 架構規格 v1.1 | 19 章加附錄。定義架構哲學、設計原則、分層、Runtime、數據模型、事件／指令／狀態、本地優先、雲端、邊緣、協同、安全、治理與宣稱邊界、容量、部署、版本演進、測試框架 |
| 02 | [OceanAI系統工程規格書](02-OceanAI系統工程規格書/README.md) | L2 工程規格 v1.0 | 19 章。正式標題是《OceanAI / Artibird 系統規格書 v1.0》。寫系統如何把 Artibird 產品接進 OceanAI：系統範圍、組件、Runtime、設備模型、數據與事件流、連接、故障行為、容量邊界、測試與商業宣稱 |
| 07 | [OceanAI系統架構](07-OceanAI系統架構/README.md) | L4 敘事書稿 | 兩套章節稿：書稿版、新書稿版。新書稿用群島式群集 Runtime、ORT、ART 來講架構 |
| 08 | [OceanAI系統](08-OceanAI系統/README.md) | L4 敘事整合 | 單檔《讓空間協同為一》。把系統講成一篇中英對照的工程敘事。OceanAI 是系統級智慧架構，Artibird 是實體產品層 |

兩本規格書題目會重疊，分工不同。架構規格書定原則、模型和治理邊界；工程規格書定這些原則如何落到 Hub、Gate、設備、Runtime 和測試。產品工程規格書再往下，才寫單品硬體和韌體。

兩本書稿講同一套架構故事。`07-OceanAI系統架構` 是分冊章節，`08-OceanAI系統` 是把書稿收成一篇的整合正本。它們可以解釋系統，規格條文以 01 與 02 為準。

工程規格書標題裡的「OceanAI / Artibird」表示 OceanAI 系統如何整合 Artibird 硬體產品。這份仍是 OceanAI 系統工程規格。Artibird 只有產品規格書。

## 📂 文件總覽

### 01｜架構層

| 文件 | 說明 | 入口 |
|------|------|------|
| **OceanAI系統架構規格書** | 系統架構、Runtime 與治理規格書 v1.1，架構層，中英對照 | [01-OceanAI系統架構規格書/README.md](01-OceanAI系統架構規格書/README.md) |

### 02｜工程層

| 文件 | 說明 | 入口 |
|------|------|------|
| **OceanAI系統工程規格書** | 系統工程規格書 v1.0，系統架構 + Runtime + 整合，19 章，中英對照 | [02-OceanAI系統工程規格書/README.md](02-OceanAI系統工程規格書/README.md) |

### 03–06｜產品層（Artibird｜僅產品規格書）

| 順序 | 文件 | 說明 | 入口 |
|------|------|------|------|
| 03 | **Artibird產品工程規格書** | Artibird 全系列產品工程規格書（Gate–Vision），中英對照 | [03-Artibird產品工程規格書/README.md](03-Artibird產品工程規格書/README.md) |
| 04 | **Artibird產品商業規格書** | Artibird 全系列產品商業規格書（Gate–Vision），中英對照 | [04-Artibird產品商業規格書/README.md](04-Artibird產品商業規格書/README.md) |
| 05 | **Artibird產品型錄** | Artibird 產品型錄 v1.0，產品層與應用組合，中英對照 | [05-Artibird產品型錄/README.md](05-Artibird產品型錄/README.md) |
| 06 | **Artibird SKU與型號命名規範** | SKU 結構、型號命名與治理規範 v1.0，中英對照 | [06-Artibird SKU與型號命名規範/README.md](06-Artibird%20SKU與型號命名規範/README.md) |

### 07–09｜書稿

| 順序 | 文件 | 說明 | 入口 |
|------|------|------|------|
| 07 | **OceanAI系統架構** | 《OceanAI 系統架構》敘事書稿（書稿版 + 新書稿版），中英對照 | [07-OceanAI系統架構/README.md](07-OceanAI系統架構/README.md) |
| 08 | **OceanAI系統** | 《OceanAI 系統》工程敘事整合版《讓空間協同為一 / Make spaces work as one》 | [08-OceanAI系統/README.md](08-OceanAI系統/README.md) |
| 09 | **智慧之海** | 哲學與架構專書《The Architecture of Intelligence》，六篇 ~20 章，中英對照 | [09-智慧之海/README.md](09-智慧之海/README.md) |

## 跨冊文件關係矩陣

文件金字塔（規格由上而下約束；書稿沿用概念，不改規格條文）：

```
L1  架構規格    01  OceanAI系統架構規格書 v1.1
L2  工程規格    02  OceanAI系統工程規格書 v1.0
L3  產品規格    03–06  Artibird 產品工程／商業規格書、型錄、SKU 規範
L4  敘事書稿    07  OceanAI系統架構、08  OceanAI系統、09  智慧之海
```

**文件線分工**

| 名稱 | 定位 | 系統規格書 | 產品規格書 |
|------|------|-----------|-----------|
| **OceanAI** | 系統名 | 架構規格書 v1.1、工程規格書 v1.0 | — |
| **Artibird** | 硬體產品名 | 無 | 產品工程規格書、產品商業規格書、型錄、SKU 規範 |

| 資料夾 | 正式名稱 | 層級 | 類型 | 版本 | 上游依賴 | 下游／關聯 | 用途 |
|--------|----------|------|------|------|----------|------------|------|
| [01-OceanAI系統架構規格書](01-OceanAI系統架構規格書/README.md) | OceanAI 系統架構規格書 | L1 架構 | 規格書 | v1.1 | — | L2 工程規格、L3 產品規格 | 架構原則、模型、治理、驗證框架 |
| [02-OceanAI系統工程規格書](02-OceanAI系統工程規格書/README.md) | OceanAI 系統工程規格書（正式標題含 Artibird 整合語意） | L2 工程 | 規格書 | v1.0 | L1 v1.1 | L3 產品工程規格 | 系統—產品整合、Runtime、設備模型、測試 |
| [03-Artibird產品工程規格書](03-Artibird產品工程規格書/README.md) | Artibird 產品工程規格書 | L3 產品 | 規格書 | 各產品 v1.0 | L1、L2 | 型錄、商業規格 | 單品硬體／韌體／連接／測試 |
| [04-Artibird產品商業規格書](04-Artibird產品商業規格書/README.md) | Artibird 產品商業規格書 | L3 產品 | 規格書 | 各產品 v1.0 | L2、L3 工程 | 型錄、對外文案 | 面向客戶語言（受宣稱邊界約束） |
| [05-Artibird產品型錄](05-Artibird產品型錄/README.md) | Artibird 產品型錄 | L3 產品 | 型錄 | v1.0 | L3 工程／商業 | 銷售、渠道 | 產品組合與應用場景 |
| [06-Artibird SKU與型號命名規範](06-Artibird%20SKU與型號命名規範/README.md) | SKU 與型號命名規範 | L3 產品 | 治理 | v1.0 | L3 工程規格 | 全產品線 | SKU／型號命名治理 |
| [07-OceanAI系統架構](07-OceanAI系統架構/README.md) | OceanAI 系統架構 | L4 書稿 | 敘事章節 | 書稿版＋新書稿版 | L1 概念同源 | [08-OceanAI系統](08-OceanAI系統/README.md) 整合單檔 | 架構敘事書稿 |
| [08-OceanAI系統](08-OceanAI系統/README.md) | OceanAI 系統（讓空間協同為一） | L4 書稿 | 敘事整合 | Prose | L1/L2 概念同源 | 書稿版章節 | 對外白皮書／工程敘事單檔 |
| [09-智慧之海](09-智慧之海/README.md) | The Architecture of Intelligence | L4 書稿 | 哲學專書 | — | OceanAI 思想脈絡 | — | 智慧架構哲學；不替代 L1–L3 規格 |

**對照**

| A | B | 關係 |
|---|---|------|
| 01 OceanAI系統架構規格書 | 07 OceanAI系統架構 | 規格 v1.1，與敘事書稿分開 |
| 02 OceanAI系統工程規格書 | 08 OceanAI系統 | 工程規格 v1.0，與敘事整合版分開 |
| 01 OceanAI系統架構規格書 v1.1 | 02 OceanAI系統工程規格書 v1.0 | 架構層在上；工程層展開整合與 Runtime |
| Artibird | 系統規格書 | Artibird 的規格在 03–06，屬產品規格 |

## 結構說明

- 每份文件都拆分為易讀的章節 Markdown，並各自附章節目錄 `README.md`。
- 各資料夾同時保留 `完整版.md`（單一大檔）與原始 `.docx` 來源。
