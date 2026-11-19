# OAI-RUNTIME-CLOUD-001
# Cloud Runtime Service Architecture & Observability Integration
# OceanAI 雲端運行服務架構與可觀測性整合工程規格書

Document ID｜文件編號：OAI-RUNTIME-CLOUD-001  
Version｜版本：v1.0  
Date｜日期：2026-11-18  
Status｜狀態：Engineering Draft｜工程草案  
Deployment｜部署：OceanAI Cloud Production  
Integration Target｜整合對象：OceanAI Operations Agent MVP  
Principle｜原則：Production-Compatible · Additive · Read-Only First  
Approval｜批准：Author Review Required｜須經負責人審閱

|Document｜文件|Purpose｜用途|
|---|---|
|[Specification｜規格正文](OAI-RUNTIME-CLOUD-001_v1.0.md)|以現有 Cloud Production 為起點，定義增量、唯讀優先的運行可觀測與 Operations Agent 資料介面。|

本規格放在 [工程規格書](../README.md) 內，作為二級文件。它不取代 [架構規格書 v1.1](../../01-OceanAI系統架構規格書/README.md)、[工程規格書 v1.0](../README.md)、[Runtime 規格 v1.0](../02A-OceanAI%20Runtime系統規格書/README.md) 或 [智能系統架構草案 v0.2](../02E-OceanAI智能系統架構規格書/README.md)。MYBOOK 沒有更早的 OAI-RUNTIME-CLOUD-001 檔案；本 v1.0 是這次收錄的工程草案。

正文把 `emqxMP` / `emqx-java` 寫成 Cloud Runtime 的主要接入點，並說明完整目標 Cloud Runtime Service 不假定已集中在同一個程序。這句留在本草案，不改 01、02、02A 或首頁的 ORT 句子。

iot-docs 的核對是這次提交所述的唯讀閱讀，不是程式 Diff。`t4g.small` 與 2 GiB 是文件中的部署基準，線上資源仍待核實。P0–P5 尚未執行。本版不改 `iot-backend`、`emqxMP`、EMQX、IOTControl、`artibird-app` 或設備韌體。

第五節兩條路徑的 `{id}` 依第六章表格補回。第六節的完整 Codex 任務指令沒有附在這次提交裡，沒有另寫，也沒有執行。
