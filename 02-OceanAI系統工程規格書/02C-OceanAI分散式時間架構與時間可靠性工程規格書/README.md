# OAI-RUNTIME-ENG-004
# Distributed Temporal Architecture & Time Reliability
# OceanAI 分散式時間架構與時間可靠性工程規格書

Version｜版本：v0.1  
Date｜日期：2026-11-11  
Status｜狀態：Candidate｜待工程審核  
Approval｜批准：Author Review Required｜須經審閱

|Document｜文件|Purpose｜用途|
|---|---|
|[Specification｜規格正文](OAI-RUNTIME-ENG-004_v0.1.md)|Cloud、Hub、Gate 與設備的時間架構候選規格。|

本規格排在 [02B 雲端共用基礎服務](../02B-OceanAI雲端共用基礎服務規格書/README.md) 之後、[03 產品工程規格](../../03-Artibird產品工程規格書/README.md) 之前。它不取代 [架構規格書 v1.1](../../01-OceanAI系統架構規格書/README.md)、[工程規格書 v1.0](../README.md) 或 [Runtime 規格 v1.0](../02A-OceanAI%20Runtime系統規格書/README.md)。

精度數值與安全時限是初始工程驗證目標，尚未實測。TASK-TIME-001 至 TASK-TIME-007 尚未執行。現有程式碼與已批准架構沒有修改。

正文第 3.2 節把 Hub 寫成 Raspberry Pi 5。這項留在草案裡，不改變 artibird-engineering 的規劃編號：`HUB-G1` 仍是 Raspberry Pi 4 Model B，`HUB-G1-PRO` 仍是 Raspberry Pi 5。Plug-A、Flow-I 維持原寫法，尚未分配產品編號。
