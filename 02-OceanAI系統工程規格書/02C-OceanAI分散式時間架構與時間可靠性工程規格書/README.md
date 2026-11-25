# OAI-RUNTIME-ENG-004
# Distributed Temporal Architecture & Time Reliability
# OceanAI 分散式時間架構與時間可靠性工程規格書

Version｜版本：v1.0  
Date｜日期：2026-11-24  
Status｜狀態：Engineering review draft｜工程審閱稿  
Approval｜批准：Open for engineering sign-off｜待工程審定。實作與實機驗收待執行。

|Document｜文件|Purpose｜用途|
|---|---|
|[Specification v1.0｜規格正文](OAI-RUNTIME-ENG-004_v1.0.md)|工程審閱稿。Cloud 與 Hub 共用時間契約，含暫定 P0 指標與八項整合測試。|
|[Specification v0.1｜先前候選](OAI-RUNTIME-ENG-004_v0.1.md)|2026-11-11 候選稿，保留。|

本規格排在 [02B 雲端共用基礎服務](../02B-OceanAI雲端共用基礎服務規格書/README.md) 之後、[03 產品工程規格](../../03-Artibird產品工程規格書/README.md) 之前。它不取代 [架構規格書 v1.1](../../01-OceanAI系統架構規格書/README.md)、[工程規格書 v1.0](../README.md) 或 [Runtime 規格 v1.0](../02A-OceanAI%20Runtime系統規格書/README.md)。

v1.0 的精度、有效期與驗收目標是首輪台架測試的設計選值，尚未實測。各板型容差、硬體斷電守時、正常測試負載與 P0 實測精度待工程審定。現有程式碼沒有修改。

v0.1 正文第 3.2 節把 Hub 寫成 Raspberry Pi 5。那句留在 v0.1。v1.0 不指定 Hub 硬體，也不改變 artibird-engineering 的規劃編號：`HUB-G1` 仍是 Raspberry Pi 4 Model B，`HUB-G1-PRO` 仍是 Raspberry Pi 5。Plug-A、Flow-I 維持原寫法，尚未分配產品編號。
