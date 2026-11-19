# OAI-AI-ENG-002
# OceanAI Operations Agent Engineering Specification
# OceanAI 運行智能體工程規格書

Document ID｜文件編號：OAI-AI-ENG-002  
Version｜版本：v1.0  
Date｜日期：2026-11-19  
Status｜狀態：Engineering Draft｜工程草案  
Approval｜批准：Author Review Required｜須經負責人審閱  
Priority｜優先級：MVP P0  
Deployment｜部署：Cloud Mode｜雲端模式  
Implementation｜實施：Incremental Integration｜增量整合

|Document｜文件|Purpose｜用途|
|---|---|
|[Specification｜規格正文](OAI-AI-ENG-002_v1.0.md)|Operations Agent 的四個邏輯角色、診斷契約、唯讀工具與 MVP 驗收。|

本規格放在 [工程規格書](../README.md) 內，作為二級文件。它繼承 [OAI-AI-ARCH-001 v0.2](../02E-OceanAI智能系統架構規格書/README.md) 與 [OAI-RUNTIME-CLOUD-001 v1.0](../02F-OceanAI雲端運行服務架構與可觀測性整合工程規格書/README.md)，不取代這兩份，也不取代 [架構規格書 v1.1](../../01-OceanAI系統架構規格書/README.md)、[工程規格書 v1.0](../README.md) 或 [Runtime 規格 v1.0](../02A-OceanAI%20Runtime系統規格書/README.md)。

封面狀態是 Engineering Draft｜待審閱。正文狀態是 Engineering Draft｜工程草案。P0–P5 尚未執行。本版不改 `iot-backend`、`emqxMP`、EMQX、IOTControl 或設備韌體。Recovery Planner 在 MVP 沒有恢復執行工具。`execution_enabled` 固定為 false。

Figure 1 依提交圖上的名稱重繪。Mermaid 原文沒有附上。設備列中的 Gate、Sync、Switch、Plug、Sense、Flow 依原文保留；Plug 與 Act 仍是不同產品線，Flow 尚未在此分配產品編號。

第五節的完整 Codex 任務指令沒有附在這次提交裡，沒有另寫，也沒有執行。第六節的審閱表留在規格正文，沒有另建 REVIEW.md。

起草對話沒有附在這次提交裡。若之後提供，另存在本資料夾，不併入規格章節，也不改條文。
