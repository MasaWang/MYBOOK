# MYBOOK｜OceanAI / Artibird 文件庫

本庫收錄 OceanAI / Artibird 相關文件,各自獨立成資料夾。以下依**文件層級**排列：架構 → 工程 → 產品 → 書稿。

## 📂 文件總覽

### 架構層

| 文件 | 說明 | 入口 |
|------|------|------|
| **OceanAI系統架構規格書** | 系統架構、Runtime 與治理規格書 v1.1,架構層,中英對照 | [OceanAI系統架構規格書/README.md](OceanAI系統架構規格書/README.md) |

### 工程層

| 文件 | 說明 | 入口 |
|------|------|------|
| **OceanAI系統工程規格書** | 系統工程規格書 v1.0,系統架構 + Runtime + 整合,19 章,中英對照 | [OceanAI系統工程規格書/README.md](OceanAI系統工程規格書/README.md) |
| **Artibird系統規格書** | Artibird 系統規格書章節稿（第 1–8 章 + 前置文件套件）,中英對照 | [Artibird系統規格書/README.md](Artibird系統規格書/README.md) |

### 產品層

| 文件 | 說明 | 入口 |
|------|------|------|
| **Artibird產品工程規格書** | Artibird 全系列產品工程規格書（Gate–Vision）,中英對照 | [Artibird產品工程規格書/README.md](Artibird產品工程規格書/README.md) |
| **Artibird產品商業規格書** | Artibird 全系列產品商業規格書（Gate–Vision）,中英對照 | [Artibird產品商業規格書/README.md](Artibird產品商業規格書/README.md) |
| **Artibird產品型錄** | Artibird 產品型錄 v1.0,產品層與應用組合,中英對照 | [Artibird產品型錄/README.md](Artibird產品型錄/README.md) |
| **Artibird SKU與型號命名規範** | SKU 結構、型號命名與治理規範 v1.0,中英對照 | [Artibird SKU與型號命名規範/README.md](Artibird%20SKU與型號命名規範/README.md) |

### 書稿

| 文件 | 說明 | 入口 |
|------|------|------|
| **OceanAI系統** | 《OceanAI 系統》工程敘事整合版《讓空間協同為一 / Make spaces work as one》 | [OceanAI系統/README.md](OceanAI系統/README.md) |
| **OceanAI系統架構** | 《OceanAI 系統架構》敘事書稿（書稿版 + 新書稿版）,中英對照 | [OceanAI系統架構/README.md](OceanAI系統架構/README.md) |
| **智慧之海** | 哲學與架構專書《The Architecture of Intelligence》,六篇 ~20 章,中英對照 | [智慧之海/README.md](智慧之海/README.md) |

## 跨冊文件關係矩陣

文件金字塔（規格由上而下約束；書稿不反向約束規格）：

```
L1  架構規格    OceanAI系統架構規格書 v1.1
L2  工程規格    OceanAI系統工程規格書 v1.0  ← Artibird系統規格書（章節草稿 1–8）
L3  產品規格    Artibird產品工程／商業規格書、型錄、SKU 規範
L4  敘事書稿    OceanAI系統、OceanAI系統架構、智慧之海
```

| 資料夾 | 正式名稱 | 層級 | 類型 | 版本 | 上游依賴 | 下游／關聯 | 用途 |
|--------|----------|------|------|------|----------|------------|------|
| [OceanAI系統架構規格書](OceanAI系統架構規格書/README.md) | OceanAI 系統架構規格書 | L1 架構 | 規格書 | v1.1 | — | L2 工程規格、L3 產品規格 | 架構原則、模型、治理、驗證框架 |
| [OceanAI系統工程規格書](OceanAI系統工程規格書/README.md) | OceanAI / Artibird 系統規格書 | L2 工程 | 規格書 | v1.0 | L1 v1.1 | L3 產品工程規格 | 系統—產品整合、Runtime、設備模型、測試 |
| [Artibird系統規格書](Artibird系統規格書/README.md) | （章節草稿） | L2 工程 | 草稿 | 1–8 章 | L2 v1.0 同源 | 已被工程規格書 v1.0 取代 | 早期章節稿；**非正本** |
| [Artibird產品工程規格書](Artibird產品工程規格書/README.md) | Artibird 產品工程規格書 | L3 產品 | 規格書 | 各產品 v1.0 | L1、L2 | 型錄、商業規格 | 單品硬體／韌體／連接／測試 |
| [Artibird產品商業規格書](Artibird產品商業規格書/README.md) | Artibird 產品商業規格書 | L3 產品 | 規格書 | 各產品 v1.0 | L2、L3 工程 | 型錄、對外文案 | 面向客戶語言（受宣稱邊界約束） |
| [Artibird產品型錄](Artibird產品型錄/README.md) | Artibird 產品型錄 | L3 產品 | 型錄 | v1.0 | L3 工程／商業 | 銷售、渠道 | 產品組合與應用場景 |
| [Artibird SKU與型號命名規範](Artibird%20SKU與型號命名規範/README.md) | SKU 與型號命名規範 | L3 產品 | 治理 | v1.0 | L3 工程規格 | 全產品線 | SKU／型號命名治理 |
| [OceanAI系統](OceanAI系統/README.md) | OceanAI 系統（讓空間協同為一） | L4 書稿 | 敘事整合 | Prose | L1/L2 概念同源 | 書稿版章節 | 對外白皮書／工程敘事單檔 |
| [OceanAI系統架構](OceanAI系統架構/README.md) | OceanAI 系統架構 | L4 書稿 | 敘事章節 | 書稿版＋新書稿版 | L1 概念同源 | [OceanAI系統](OceanAI系統/README.md) 整合單檔 | 架構敘事書稿；**不是規格書** |
| [智慧之海](智慧之海/README.md) | The Architecture of Intelligence | L4 書稿 | 哲學專書 | — | OceanAI 思想脈絡 | — | 智慧架構哲學；不替代 L1–L3 規格 |

**易混淆對照（勿合併）**

| A | B | 關係 |
|---|---|------|
| OceanAI系統架構規格書 | OceanAI系統架構 | 規格 v1.1 ≠ 敘事書稿 |
| OceanAI系統工程規格書 | OceanAI系統 | 工程規格 v1.0 ≠ 敘事整合版 |
| OceanAI系統架構規格書 v1.1 | OceanAI系統工程規格書 v1.0 | 架構層在上；工程層展開整合與 Runtime |
| Artibird系統規格書 | OceanAI系統工程規格書 | 草稿 1–8 章；正本為工程規格書 19 章 |

## 結構說明

- 每份文件都拆分為易讀的章節 Markdown,並各自附章節目錄 `README.md`。
- 各資料夾同時保留 `完整版.md`(單一大檔)與原始 `.docx` 來源。
