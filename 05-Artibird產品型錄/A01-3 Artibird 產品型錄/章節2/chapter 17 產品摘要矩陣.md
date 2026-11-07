# Chapter 17 — Product Summary Matrix

# 第十七章｜產品摘要矩陣

---

## 17.1 Purpose

## 17.1 目的

**EN**  
This chapter provides a consolidated product summary matrix for the Artibird product family. It is intended to help customers, channel partners, system integrators, sales teams, deployment partners, and internal teams quickly understand each product category, system role, primary function, typical deployment value, and claim boundary.

The Product Summary Matrix does not replace individual product pages or engineering specifications. It provides a high-level reference that summarizes the Artibird product layer within the OceanAI coordinated intelligent environment system.

**ZH-TW**  
本章提供 Artibird 產品家族的整合產品摘要矩陣。其目的，是幫助客戶、渠道合作夥伴、系統整合商、銷售團隊、部署合作夥伴與內部團隊快速理解每個產品類別、系統角色、主要功能、典型部署價值與宣稱邊界。

產品摘要矩陣不取代各產品頁或工程規格書。它提供高層級參考，用於總結 OceanAI 協同智慧空間系統中的 Artibird 產品層。

---

## 17.2 Product Family Summary

## 17.2 產品家族總覽

**EN**  
The Artibird product family is organized around the core functions required for coordinated intelligent environments: local runtime, device access, synchronization, interaction, execution, sensing, visual perception, and user control.

Each product category has a defined role within the OceanAI architecture. Together, they form a product layer that allows spaces to sense, respond, execute, synchronize, and remain visible through local, cloud, and Edge-supported system behavior.

**ZH-TW**  
Artibird 產品家族圍繞協同智慧空間所需的核心功能組織，包括本地 Runtime、設備接入、同步、互動、執行、感知、視覺感知與用戶控制。

每個產品類別在 OceanAI 架構中都有明確角色。它們共同形成產品層，使空間能夠透過本地、雲端與 Edge 支持的系統行為進行感知、回應、執行、同步與可視化運行。

---

## English Table

|Product|Category|Primary System Layer|Core Role|Main Use|
|---|---|---|---|---|
|Artibird Hub|Runtime|Local Runtime Layer|Local runtime center|Local coordination, state, scenes, automation, command routing|
|Artibird Gate|Gateway|Device Access Layer|Device access gateway|Device onboarding, gateway communication, local network participation|
|Artibird Sync|Synchronization|Execution / Synchronization Layer|IR / RF appliance synchronization node|Appliance control, scene participation, climate and AV coordination|
|Artibird Switch|Interaction / Execution|Interaction Layer / Execution Layer|Smart switch and event node|Touch input, scene trigger, local control, relay behavior by variant|
|Artibird Panel|Interaction|Interaction Layer|Room-level interaction interface|Shared room control, scene selection, group control, status display|
|Artibird Act|Execution|Execution Layer|Electrical execution node|Relay, plug, load control, optional energy measurement|
|Artibird Sense|Sensing|Sensing Layer|Environmental sensing node|Temperature, humidity, light, occupancy, environmental context|
|Artibird Vision|Sensing / Edge Context|Sensing / Edge Context Layer|Visual perception node|Visual events, security awareness, AI-assisted visual context|
|Artibird App|Interface|Interaction / Cloud Access Layer|User control and configuration interface|Setup, control, remote access, status viewing, configuration|

## 中文表

|產品|類別|主要系統層級|核心角色|主要用途|
|---|---|---|---|---|
|Artibird Hub|Runtime|本地 Runtime 層|本地 Runtime 中樞|本地協同、狀態、場景、自動化、指令路由|
|Artibird Gate|Gateway|設備接入層|設備接入網關|設備入網、網關通訊、本地網路參與|
|Artibird Sync|Synchronization|執行 / 同步層|IR / RF 家電同步節點|家電控制、場景參與、空調與影音協同|
|Artibird Switch|Interaction / Execution|互動層 / 執行層|智慧開關與事件節點|觸控輸入、場景觸發、本地控制、依版本支援繼電器行為|
|Artibird Panel|Interaction|互動層|房間級互動介面|共享房間控制、場景選擇、群組控制、狀態顯示|
|Artibird Act|Execution|執行層|電力執行節點|繼電器、插座、負載控制、可選電能量測|
|Artibird Sense|Sensing|感知層|環境感知節點|溫度、濕度、光照、人在、環境上下文|
|Artibird Vision|Sensing / Edge Context|感知 / Edge 上下文層|視覺感知節點|視覺事件、安全感知、AI 輔助視覺上下文|
|Artibird App|Interface|互動 / 雲端存取層|用戶控制與配置介面|設定、控制、遠端存取、狀態查看、配置|

---

## 17.3 Product Role Matrix

## 17.3 產品角色矩陣

**EN**  
This matrix summarizes the architectural role of each Artibird product. Some products serve one primary role, while others may participate in multiple roles depending on product model, configuration, deployment condition, and validation status.

**ZH-TW**  
本矩陣總結每一個 Artibird 產品的架構角色。有些產品服務於單一主要角色，有些產品則可依產品型號、配置、部署條件與驗證狀態參與多個角色。

---

## English Table

|Product|Runtime|Access|Interaction|Sensing|Execution|Synchronization|Cloud|Edge Context|
|---|---|---|---|---|---|---|---|---|
|Artibird Hub|Primary|Support|Support|Support|Support|Support|Support|Support|
|Artibird Gate|Support|Primary|Support|Support|Support|Support|Support|Support|
|Artibird Sync|Support|Support|Support|No|Support|Primary|Support|Support|
|Artibird Switch|Support|Support|Primary|Limited|Variant-dependent|Support|Support|Limited|
|Artibird Panel|Support|Support|Primary|Display|Support|Support|Support|Support|
|Artibird Act|Support|Support|Support|Energy variant|Primary|Support|Support|Support|
|Artibird Sense|Support|Support|Display|Primary|Support through automation|Support|Support|Support|
|Artibird Vision|Support|Support|Display|Primary|Support through automation|Support|Support|Primary|
|Artibird App|Support|Support|Primary|Display|Support|Support|Primary access|Display|

## 中文表

|產品|Runtime|接入|互動|感知|執行|同步|雲端|Edge 上下文|
|---|---|---|---|---|---|---|---|---|
|Artibird Hub|主要|支持|支持|支持|支持|支持|支持|支持|
|Artibird Gate|支持|主要|支持|支持|支持|支持|支持|支持|
|Artibird Sync|支持|支持|支持|無|支持|主要|支持|支持|
|Artibird Switch|支持|支持|主要|有限|依版本而定|支持|支持|有限|
|Artibird Panel|支持|支持|主要|顯示|支持|支持|支持|支持|
|Artibird Act|支持|支持|支持|能源版本|主要|支持|支持|支持|
|Artibird Sense|支持|支持|顯示|主要|透過自動化支持|支持|支持|支持|
|Artibird Vision|支持|支持|顯示|主要|透過自動化支持|支持|支持|主要|
|Artibird App|支持|支持|主要|顯示|支持|支持|主要存取|顯示|

---

## 17.4 Product Value Matrix

## 17.4 產品價值矩陣

**EN**  
The following matrix summarizes the customer-facing value of each product category. It is intended for catalog, sales, website, and channel communication.

**ZH-TW**  
以下矩陣總結每個產品類別面向客戶的價值。它可用於型錄、銷售、網站與渠道溝通。

---

## English Table

|Product|Customer-Facing Value|
|---|---|
|Artibird Hub|Keeps supported devices coordinated locally through runtime behavior|
|Artibird Gate|Helps supported devices join the system through defined access paths|
|Artibird Sync|Brings supported IR / RF appliances into scenes, automation, and coordinated control|
|Artibird Switch|Provides familiar wall-based control and scene triggering|
|Artibird Panel|Gives rooms a shared control point for scenes, groups, and status|
|Artibird Act|Turns system commands into supported electrical actions|
|Artibird Sense|Helps the system understand environmental conditions|
|Artibird Vision|Provides visual events, security awareness, and AI-assisted visual context where supported|
|Artibird App|Gives users a software interface for setup, control, status, and configuration|

## 中文表

|產品|面向客戶的價值|
|---|---|
|Artibird Hub|透過 Runtime 行為使受支援設備在本地保持協同|
|Artibird Gate|幫助受支援設備透過已定義接入路徑加入系統|
|Artibird Sync|將受支援 IR / RF 家電納入場景、自動化與協同控制|
|Artibird Switch|提供熟悉的牆面控制與場景觸發|
|Artibird Panel|為房間提供共享控制點，用於場景、群組與狀態查看|
|Artibird Act|將系統指令轉化為受支援電力動作|
|Artibird Sense|幫助系統理解環境條件|
|Artibird Vision|在支援條件下提供視覺事件、安全感知與 AI 輔助視覺上下文|
|Artibird App|為用戶提供設定、控制、狀態與配置的軟體介面|

---

## 17.5 Deployment Fit Matrix

## 17.5 部署適用矩陣

**EN**  
Different products may be required for different deployment scenarios. The following matrix provides a reference for common deployment types. Final deployment should always be based on site survey, wiring condition, network condition, device model, validation status, and customer requirements.

**ZH-TW**  
不同部署場景可能需要不同產品。以下矩陣提供常見部署類型的參考。最終部署應始終基於站點勘察、接線條件、網路條件、設備型號、驗證狀態與客戶需求。

---

## English Table

|Product|Smart Home|Classroom|Building|Campus|Energy|Vision-Aware Security|Agriculture / Infrastructure|
|---|---|---|---|---|---|---|---|
|Hub|Recommended|Recommended|Recommended|Recommended|Recommended|Recommended|Recommended where local runtime is required|
|Gate|Recommended|Recommended|Recommended|Recommended|Recommended where distributed devices exist|Recommended where access is required|Recommended|
|Sync|Recommended for appliances|Recommended for AV / climate|Optional|Optional|Optional|Limited|Limited|
|Switch|Recommended|Recommended|Recommended|Recommended|Optional|Optional|Limited|
|Panel|Optional / Recommended|Recommended|Recommended|Recommended for shared spaces|Optional|Optional|Optional where deployed|
|Act|Recommended|Recommended|Recommended|Recommended|Recommended|Optional|Recommended|
|Sense|Recommended|Recommended|Recommended|Recommended|Recommended|Recommended|Recommended|
|Vision|Optional|Optional / Recommended|Recommended where visual awareness is required|Recommended where visual awareness is required|Optional|Recommended|Optional where deployed|
|App|Recommended|Recommended|Recommended|Recommended|Recommended|Recommended|Recommended|
|Cloud|Optional / Recommended|Recommended|Recommended|Recommended|Recommended|Recommended|Recommended where remote visibility is required|
|Edge|Optional|Optional / Recommended|Optional / Recommended|Recommended where AI-assisted analysis is required|Optional / Recommended|Recommended|Optional where deployed|

## 中文表

|產品|智慧住宅|教室|建築|校園|能源|視覺感知安全|農業 / 基礎設施|
|---|---|---|---|---|---|---|---|
|Hub|建議|建議|建議|建議|建議|建議|需要本地 Runtime 時建議|
|Gate|建議|建議|建議|建議|有分布式設備時建議|需要接入時建議|建議|
|Sync|家電場景建議|影音 / 空調建議|可選|可選|可選|有限|有限|
|Switch|建議|建議|建議|建議|可選|可選|有限|
|Panel|可選 / 建議|建議|建議|共享空間建議|可選|可選|已部署條件下可選|
|Act|建議|建議|建議|建議|建議|可選|建議|
|Sense|建議|建議|建議|建議|建議|建議|建議|
|Vision|可選|可選 / 建議|需要視覺感知時建議|需要視覺感知時建議|可選|建議|已部署條件下可選|
|App|建議|建議|建議|建議|建議|建議|建議|
|Cloud|可選 / 建議|建議|建議|建議|建議|建議|需要遠端可視化時建議|
|Edge|可選|可選 / 建議|需要 AI 輔助分析時可選 / 建議|需要 AI 輔助分析時建議|可選 / 建議|建議|已部署條件下可選|

---

## 17.6 Product Combination Summary Matrix

## 17.6 產品組合摘要矩陣

**EN**  
The following matrix summarizes common product combinations and their typical purpose.

**ZH-TW**  
以下矩陣總結常見產品組合與其典型用途。

---

## English Table

|Product Combination|Typical Purpose|
|---|---|
|Hub + App|Basic local system access, setup, control, and status viewing|
|Hub + Gate|Device onboarding and gateway-based runtime participation|
|Hub + Switch + Act|Wall-based control and electrical execution|
|Hub + Panel + Switch|Room-level shared control and quick interaction|
|Hub + Sense + Act|Sensor-based automation and environmental response|
|Hub + Sense + Sync|Climate or appliance coordination|
|Hub + Vision + Edge|AI-assisted visual context and alerts where deployed|
|Hub + Act-E + Cloud|Energy reporting, history, and energy-aware workflows|
|Hub + Gate + Sense + Act|Distributed sensing and execution deployment|
|Full Product Set|Complete coordinated intelligent environment deployment|

## 中文表

|產品組合|典型用途|
|---|---|
|Hub + App|基礎本地系統存取、設定、控制與狀態查看|
|Hub + Gate|設備入網與基於網關的 Runtime 參與|
|Hub + Switch + Act|牆面控制與電力執行|
|Hub + Panel + Switch|房間級共享控制與快速互動|
|Hub + Sense + Act|基於感測的自動化與環境回應|
|Hub + Sense + Sync|空調或家電協同|
|Hub + Vision + Edge|在已部署條件下提供 AI 輔助視覺上下文與警報|
|Hub + Act-E + Cloud|能源報告、歷史與能源感知工作流|
|Hub + Gate + Sense + Act|分布式感知與執行部署|
|完整產品組合|完整協同智慧空間部署|

---

## 17.7 Specification Summary Matrix

## 17.7 規格摘要矩陣

**EN**  
This matrix summarizes specification fields that should be completed for each product in later engineering, commercial, or SKU documents. The catalog may include only high-level information, while detailed values should be controlled through product-specific specifications.

**ZH-TW**  
本矩陣總結後續工程、商業或 SKU 文件中應為每個產品補充的規格欄位。型錄可只包含高層資訊，詳細數值應透過產品專用規格書進行管控。

---

## English Table

|Specification Field|Description|
|---|---|
|Product name|Official Artibird product name|
|Product category|Runtime, Gateway, Synchronization, Interaction, Execution, Sensing, Vision, Interface|
|Model number|Product model or SKU model|
|Hardware version|Hardware revision|
|Firmware version|Supported firmware version|
|Connectivity|Wi-Fi, Ethernet, BLE Mesh, RF, IR, local network, cloud-connected paths|
|Power type|Battery, AC, DC, USB-C, PoE, solar, or other supported type|
|Installation type|Wall-mounted, plug-in, embedded, desktop, ceiling, outdoor enclosure, or other form|
|Supported functions|Defined supported product capabilities|
|Capacity boundary|Validated device, scene, load, message, stream, or storage limits where applicable|
|Certification status|FCC, UL, ETL, CE, or other model-specific status where applicable|
|Validation status|Defined, prototype, tested, validated, approved, or final status|
|Claim boundary|Approved product description limits|

## 中文表

|規格欄位|說明|
|---|---|
|產品名稱|官方 Artibird 產品名稱|
|產品類別|Runtime、Gateway、Synchronization、Interaction、Execution、Sensing、Vision、Interface|
|型號|產品型號或 SKU 型號|
|硬體版本|硬體修訂版本|
|韌體版本|受支援韌體版本|
|連接方式|Wi-Fi、Ethernet、BLE Mesh、RF、IR、本地網路、雲端連接路徑|
|供電方式|電池、AC、DC、USB-C、PoE、太陽能或其他受支援方式|
|安裝方式|牆面、插座式、嵌入式、桌面、吸頂、戶外外殼或其他形態|
|受支援功能|已定義受支援產品能力|
|容量邊界|適用時的已驗證設備、場景、負載、消息、串流或儲存限制|
|認證狀態|適用時的 FCC、UL、ETL、CE 或其他特定型號狀態|
|驗證狀態|Defined、Prototype、Tested、Validated、Approved 或 Final 狀態|
|宣稱邊界|已核准產品描述限制|

---

## 17.8 Catalog Claim Boundary

## 17.8 型錄宣稱邊界

**EN**  
The Product Summary Matrix is a high-level catalog reference. It should not be interpreted as proof that every listed product function is implemented, validated, certified, regionally available, commercially released, or supported in every deployment condition.

Product capabilities depend on product model, hardware version, firmware version, connectivity path, power type, installation condition, supported configuration, validation status, certification status, and regional availability.

**ZH-TW**  
產品摘要矩陣是高層級型錄參考。不應將其解讀為每一項列出的產品功能都已實作、已驗證、已認證、已在所有區域上市、已商業發布或在所有部署條件下受支援。

產品能力取決於產品型號、硬體版本、韌體版本、連接路徑、供電方式、安裝條件、受支援配置、驗證狀態、認證狀態與區域可用性。

---

## English Table

|Avoid Saying|Preferred Catalog Language|
|---|---|
|All products support all listed functions|Each product supports defined functions according to model, version, and validation status|
|The matrix proves compatibility|The matrix provides role-level reference; compatibility requires validation|
|All products are commercially available|Product availability depends on release status, region, and commercial approval|
|All products are certified|Certification status must be confirmed per model and market|
|All combinations are guaranteed|Product combinations require supported configuration and deployment validation|
|The full system always works offline|Supported local functions operate when required local components are present|
|Product roles are fixed forever|Product roles may evolve through approved versioning and future product specifications|

## 中文表

|避免使用|建議型錄語言|
|---|---|
|所有產品都支援所有列出功能|每個產品依型號、版本與驗證狀態支援已定義功能|
|該矩陣證明相容性|該矩陣提供角色級參考；相容性需要驗證|
|所有產品都已商業上市|產品可用性取決於發布狀態、區域與商業核准|
|所有產品都已認證|認證狀態必須依型號與市場確認|
|所有組合都保證可用|產品組合需要受支援配置與部署驗證|
|完整系統永遠離線可用|當所需本地組件具備時，受支援本地功能可運作|
|產品角色永遠固定不變|產品角色可透過已核准版本與未來產品規格書演進|

---

## 17.9 Chapter Conclusion

## 17.9 章節結論

**EN**  
The Product Summary Matrix consolidates the Artibird product family into a clear catalog reference. It helps readers understand what each product is, which system layer it belongs to, what role it performs, where it is typically deployed, and how it contributes to coordinated intelligent environments.

In the Artibird catalog, this chapter should function as the quick-reference section for product understanding, product comparison, sales explanation, deployment planning, and future SKU organization. It summarizes the product layer without replacing detailed product specifications or validation records.

**ZH-TW**  
產品摘要矩陣將 Artibird 產品家族整合為清晰的型錄參考。它幫助讀者理解每個產品是什麼、屬於哪個系統層級、執行什麼角色、通常部署在哪些場景，以及如何為協同智慧空間提供價值。

在 Artibird 型錄中，本章應作為產品理解、產品比較、銷售說明、部署規劃與未來 SKU 組織的快速參考章節。它總結產品層，但不取代詳細產品規格書或驗證記錄。