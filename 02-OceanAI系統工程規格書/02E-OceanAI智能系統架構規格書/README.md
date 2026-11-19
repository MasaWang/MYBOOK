# OAI-AI-ARCH-001

<br>

# OceanAI AI Architecture Specification

<br>

# OceanAI 智能系統架構規格書

<br>

Document ID｜文件編號：OAI-AI-ARCH-001  

<br>

Version｜版本：v0.2  

<br>

Date｜日期：2026-11-19  

<br>

Status｜狀態：Architecture Draft｜架構草案  

<br>

Approval｜批准：Author Review Required｜須經負責人審閱  

<br>

Initial Deployment｜初期部署：OceanAI Cloud Mode｜雲端模式

<br>

|Document｜文件|Purpose｜用途|
|---|---|
|[Specification｜規格正文](OAI-AI-ARCH-001_v0.2.md)|OceanAI AI 的四個核心模組、總體架構圖、責任矩陣與跨層資料流。|

<br>

本規格放在 [工程規格書](../README.md) 內，作為二級文件。它不取代 [架構規格書 v1.1](../../01-OceanAI系統架構規格書/README.md)、[工程規格書 v1.0](../README.md)、[Runtime 規格 v1.0](../02A-OceanAI%20Runtime系統規格書/README.md) 或 [雲端共用基礎服務 v0.2](../02B-OceanAI雲端共用基礎服務規格書/README.md)。MYBOOK 沒有更早的 OAI-AI-ARCH-001 檔案；本 v0.2 是這次收錄的架構草案。

<br>

第一章是 Executive Architecture｜總體架構。Figure 1 使用收錄的總體架構圖。圖中的虛線是授權即時查詢。各方框是邏輯模組，不代表必須獨立部署。Runtime Observability｜運行可觀測性在圖中是獨立資料層。Operations Agent 經 Runtime Interface 讀取運行證據；設備控制與狀態的權威留在 Runtime。

<br>

第八章 Figure 2 表示現有正式環境、增量觀測整合、智能架構與可視化報告的關係。圖內的 iot-backend、emqxMP、EMQX MQTT 與 MySQL 依原圖保留。

<br>

提交說明建議後續 Operations Agent、Cloud Runtime、School Domain 與其他 AI 應用規格引用這張 Figure 1。本次沒有改那些文件。

<br>

候選 API、資料欄位與工具名稱尚未與現有 Cloud Runtime 程式核對。P0–P5 尚未執行。本版不改 `iot-backend`、`emqxMP`、EMQX、IOTControl 或設備韌體。

<br>

正文裡的 ORT Cloud Runtime、ART Hub Runtime 句子留在本草案，不改 01、02、02A。架構圖設備列中的 Switch、Plug、Sense、Flow 依原文保留；Plug 與 Act 仍是不同產品線，Flow 尚未在此分配產品編號。
