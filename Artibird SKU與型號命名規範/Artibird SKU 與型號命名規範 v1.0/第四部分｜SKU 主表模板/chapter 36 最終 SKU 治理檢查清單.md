# Artibird SKU & Model Naming Specification v1.0

# Artibird SKU 與型號命名規範 v1.0

## Chapter 36 — Final SKU Governance Checklist

## 第三十六章｜最終 SKU 治理檢查清單

---

## 36.1 Purpose

## 36.1 目的

### EN

This chapter defines the Final SKU Governance Checklist used before any Artibird SKU is approved for certification submission, pilot deployment, manufacturing preparation, packaging production, Amazon listing, channel release, project delivery, public sale, or archival closure.

The purpose of this checklist is to consolidate all previous master tables and record systems into one final review structure.

A SKU should not move forward unless its identity, model records, engineering configuration, certification mapping, packaging status, lifecycle status, release scope, support boundary, and change history are complete and aligned.

### ZH-TW

本章定義最終 SKU 治理檢查清單，用於任何 Artibird SKU 在進入認證提交、試點部署、生產準備、包裝生產、Amazon 上架、渠道發布、專案交付、公開銷售或歸檔關閉之前的最終審查。

本清單的目的，是將前面所有主表與記錄系統整合成一套最終審查結構。

任何 SKU 若其身份、型號記錄、工程配置、認證映射、包裝狀態、生命週期狀態、發布範圍、支持邊界與變更歷史尚未完整且一致，則不應繼續推進。

---

## 36.2 Final Governance Principle

## 36.2 最終治理原則

### EN

The core principle of final SKU governance is:

```text
No SKU moves forward without identity, evidence, approval, and traceability.
```

A SKU is not ready simply because the code looks correct.  
It is ready only when every controlled record behind the code is complete, reviewed, approved, and traceable.

The final checklist confirms four conditions:

|Condition|Meaning|
|---|---|
|Identity Complete|The SKU structure and all code fields are correct|
|Evidence Complete|Engineering, certification, packaging, and release evidence exist|
|Approval Complete|Required owners have reviewed and approved|
|Traceability Complete|All records link to each other through the document index|

### ZH-TW

最終 SKU 治理的核心原則是：

```text
沒有身份、證據、核准與可追蹤性，SKU 不得推進。
```

SKU 並不會因為代碼看起來正確就準備完成。  
只有當代碼背後的每一項受控記錄都完整、已審查、已核准且可追蹤時，它才真正準備完成。

最終檢查清單確認四項條件：

|條件|含義|
|---|---|
|身份完整|SKU 結構與所有代碼欄位正確|
|證據完整|工程、認證、包裝與發布證據存在|
|核准完整|必要負責人已審查並核准|
|可追蹤性完整|所有記錄透過文件索引互相關聯|

---

## 36.3 Final SKU Identity Checklist

## 36.3 最終 SKU 身份檢查清單

### EN

|Check Item|Requirement|Status|
|---|---|---|
|SKU code exists|SKU must follow official structure|Pass / Fail / N/A|
|Brand prefix is correct|ATB or approved system prefix only|Pass / Fail / N/A|
|Product line code is approved|Must match Product Line Master Table|Pass / Fail / N/A|
|Generation code is correct|Must match generation table|Pass / Fail / N/A|
|Region code is approved|Must match Region Master Table|Pass / Fail / N/A|
|Connectivity code is approved|Must match Connectivity Master Table|Pass / Fail / N/A|
|Power code is approved|Must match Power Architecture Master Table|Pass / Fail / N/A|
|Variant code is approved|Must match Variant and Function Master Table|Pass / Fail / N/A|
|Package code is approved|Must match Package Code Master Table|Pass / Fail / N/A|
|SKU code is unique|No duplicate SKU in master table|Pass / Fail / N/A|
|SKU code matches customer-facing name|Name must not conflict with SKU meaning|Pass / Fail / N/A|
|SKU code matches internal model|SKU and internal model must be traceable|Pass / Fail / N/A|

### ZH-TW

|檢查項目|要求|狀態|
|---|---|---|
|SKU 代碼存在|SKU 必須遵循官方結構|Pass / Fail / N/A|
|品牌前綴正確|僅可使用 ATB 或已核准系統前綴|Pass / Fail / N/A|
|產品線代碼已核准|必須匹配產品線主表|Pass / Fail / N/A|
|世代代碼正確|必須匹配世代表|Pass / Fail / N/A|
|區域代碼已核准|必須匹配區域主表|Pass / Fail / N/A|
|連接代碼已核准|必須匹配連接方式主表|Pass / Fail / N/A|
|供電代碼已核准|必須匹配供電架構主表|Pass / Fail / N/A|
|版本代碼已核准|必須匹配版本與功能主表|Pass / Fail / N/A|
|包裝代碼已核准|必須匹配包裝代碼主表|Pass / Fail / N/A|
|SKU 代碼唯一|主表中不得存在重複 SKU|Pass / Fail / N/A|
|SKU 代碼匹配面向客戶名稱|名稱不得與 SKU 含義衝突|Pass / Fail / N/A|
|SKU 代碼匹配內部型號|SKU 與內部型號必須可追蹤|Pass / Fail / N/A|

---

## 36.4 Model Record Checklist

## 36.4 型號記錄檢查清單

### EN

|Check Item|Requirement|Status|
|---|---|---|
|Internal model exists|Internal model must be assigned|Pass / Fail / N/A|
|Engineering model exists|Required for hardware products|Pass / Fail / N/A|
|Certification model exists|Required where certification applies|Pass / Fail / N/A|
|Manufacturing model exists|Required for physical products before production|Pass / Fail / N/A|
|Package model exists|Required for physical or commercial packages|Pass / Fail / N/A|
|Model naming is consistent|Internal, engineering, certification, manufacturing, and package records must align|Pass / Fail / N/A|
|Model version is recorded|HW / FW / PCB / BOM / package version must be recorded where applicable|Pass / Fail / N/A|
|Model status is recorded|Draft, EVT, DVT, PVT, Released, or other lifecycle state must be visible|Pass / Fail / N/A|
|Model owner is assigned|Product, engineering, or operations owner must be listed|Pass / Fail / N/A|
|Model record links are complete|Model records must link to SKU master record|Pass / Fail / N/A|

### ZH-TW

|檢查項目|要求|狀態|
|---|---|---|
|內部型號存在|必須分配內部型號|Pass / Fail / N/A|
|工程型號存在|硬體產品必填|Pass / Fail / N/A|
|認證型號存在|適用認證時必填|Pass / Fail / N/A|
|生產型號存在|實體產品生產前必填|Pass / Fail / N/A|
|包裝型號存在|實體或商業包裝必填|Pass / Fail / N/A|
|型號命名一致|內部、工程、認證、生產與包裝記錄必須一致|Pass / Fail / N/A|
|型號版本已記錄|適用時必須記錄 HW / FW / PCB / BOM / 包裝版本|Pass / Fail / N/A|
|型號狀態已記錄|Draft、EVT、DVT、PVT、Released 或其他生命週期狀態必須可見|Pass / Fail / N/A|
|型號負責人已指定|必須列出產品、工程或運營負責人|Pass / Fail / N/A|
|型號記錄連結完整|型號記錄必須連接至 SKU 主記錄|Pass / Fail / N/A|

---

## 36.5 Engineering Readiness Checklist

## 36.5 工程準備度檢查清單

### EN

|Check Item|Requirement|Status|
|---|---|---|
|Hardware version recorded|HW version must be defined where applicable|Pass / Fail / N/A|
|Firmware version recorded|FW version must be defined where applicable|Pass / Fail / N/A|
|PCB version recorded|PCB version must be defined for hardware products|Pass / Fail / N/A|
|BOM version recorded|BOM must be defined before production or certification|Pass / Fail / N/A|
|Engineering validation status recorded|EVT / DVT / PVT status must be visible|Pass / Fail / N/A|
|Test plan exists|EVT, DVT, or PVT test plan must exist where applicable|Pass / Fail / N/A|
|Test report exists|Required before release or certification claim|Pass / Fail / N/A|
|Issue log exists|Open issues must be visible|Pass / Fail / N/A|
|Critical issues closed|No open critical issue before release|Pass / Fail / N/A|
|Engineering owner approved|Engineering owner must approve technical readiness|Pass / Fail / N/A|

### ZH-TW

|檢查項目|要求|狀態|
|---|---|---|
|硬體版本已記錄|適用時必須定義 HW 版本|Pass / Fail / N/A|
|韌體版本已記錄|適用時必須定義 FW 版本|Pass / Fail / N/A|
|PCB 版本已記錄|硬體產品必須定義 PCB 版本|Pass / Fail / N/A|
|BOM 版本已記錄|生產或認證前必須定義 BOM|Pass / Fail / N/A|
|工程驗證狀態已記錄|EVT / DVT / PVT 狀態必須可見|Pass / Fail / N/A|
|測試計劃存在|適用時必須存在 EVT、DVT 或 PVT 測試計劃|Pass / Fail / N/A|
|測試報告存在|發布或認證宣稱前必須存在|Pass / Fail / N/A|
|問題清單存在|未關閉問題必須可見|Pass / Fail / N/A|
|關鍵問題已關閉|發布前不得存在未關閉關鍵問題|Pass / Fail / N/A|
|工程負責人已核准|工程負責人必須核准技術準備度|Pass / Fail / N/A|

---

## 36.6 Compliance and Certification Checklist

## 36.6 合規與認證檢查清單

### EN

|Check Item|Requirement|Status|
|---|---|---|
|Compliance mapping exists|Required before release or certification submission|Pass / Fail / N/A|
|Applicable frameworks identified|FCC, UL / ETL, CE, UKCA, NCC, PSE, RCM, ISED, or other frameworks must be listed where applicable|Pass / Fail / N/A|
|Safety review decision recorded|Required for AC, ZN, SL, RLY, DIM, load-control, adapter, and battery products|Pass / Fail / N/A|
|Wireless review decision recorded|Required for WF, BLE, RF, IRRF, HYB products|Pass / Fail / N/A|
|EMC review decision recorded|Required for electronic products where applicable|Pass / Fail / N/A|
|Battery review decision recorded|Required for BAT products|Pass / Fail / N/A|
|Privacy review decision recorded|Required for App, Cloud, Camera, Vision, Edge, and account-based services|Pass / Fail / N/A|
|Cybersecurity review decision recorded|Required for connected devices and services|Pass / Fail / N/A|
|Certification status recorded|Not Started, Preparing, Testing, Certified, Listed, N/A, or other approved status|Pass / Fail / N/A|
|Certification claim wording approved|Required before any public certification claim|Pass / Fail / N/A|
|Certification mark use approved|Required before marks appear on label, package, manual, or listing|Pass / Fail / N/A|
|Compliance owner approved|Compliance owner must approve before release|Pass / Fail / N/A|

### ZH-TW

|檢查項目|要求|狀態|
|---|---|---|
|合規映射存在|發布或認證提交前必須存在|Pass / Fail / N/A|
|適用框架已識別|適用時必須列出 FCC、UL / ETL、CE、UKCA、NCC、PSE、RCM、ISED 或其他框架|Pass / Fail / N/A|
|安全審查決策已記錄|AC、ZN、SL、RLY、DIM、負載控制、適配器與電池產品必填|Pass / Fail / N/A|
|無線審查決策已記錄|WF、BLE、RF、IRRF、HYB 產品必填|Pass / Fail / N/A|
|EMC 審查決策已記錄|適用電子產品必填|Pass / Fail / N/A|
|電池審查決策已記錄|BAT 產品必填|Pass / Fail / N/A|
|隱私審查決策已記錄|App、Cloud、Camera、Vision、Edge 與帳號型服務必填|Pass / Fail / N/A|
|網路安全審查決策已記錄|連網設備與服務必填|Pass / Fail / N/A|
|認證狀態已記錄|Not Started、Preparing、Testing、Certified、Listed、N/A 或其他已核准狀態|Pass / Fail / N/A|
|認證宣稱文字已核准|任何公開認證宣稱前必填|Pass / Fail / N/A|
|認證標誌使用已核准|標誌出現在標籤、包裝、手冊或上架前必填|Pass / Fail / N/A|
|合規負責人已核准|發布前合規負責人必須核准|Pass / Fail / N/A|

---

## 36.7 Manufacturing Readiness Checklist

## 36.7 生產準備度檢查清單

### EN

|Check Item|Requirement|Status|
|---|---|---|
|Manufacturing model exists|Required before production planning|Pass / Fail / N/A|
|BOM is frozen or controlled|Required before pilot or mass production|Pass / Fail / N/A|
|Supplier records exist|Required for controlled components|Pass / Fail / N/A|
|Assembly version recorded|Required before factory build|Pass / Fail / N/A|
|QC plan exists|Required before pilot or production|Pass / Fail / N/A|
|Production lot rule exists|Required for traceability|Pass / Fail / N/A|
|Factory test procedure exists|Required for manufactured products|Pass / Fail / N/A|
|Packaging operation defined|Required before packaging production|Pass / Fail / N/A|
|Critical production risks reviewed|Required before PVT or release|Pass / Fail / N/A|
|Operations owner approved|Required before production release|Pass / Fail / N/A|

### ZH-TW

|檢查項目|要求|狀態|
|---|---|---|
|生產型號存在|生產規劃前必填|Pass / Fail / N/A|
|BOM 已凍結或受控|試產或量產前必填|Pass / Fail / N/A|
|供應商記錄存在|受控元件必填|Pass / Fail / N/A|
|組裝版本已記錄|工廠構建前必填|Pass / Fail / N/A|
|QC 計劃存在|試產或生產前必填|Pass / Fail / N/A|
|生產批次規則存在|可追蹤性必填|Pass / Fail / N/A|
|工廠測試流程存在|生產產品必填|Pass / Fail / N/A|
|包裝作業已定義|包裝生產前必填|Pass / Fail / N/A|
|關鍵生產風險已審查|PVT 或發布前必填|Pass / Fail / N/A|
|運營負責人已核准|生產發布前必填|Pass / Fail / N/A|

---

## 36.8 Packaging and Labeling Checklist

## 36.8 包裝與標籤檢查清單

### EN

|Check Item|Requirement|Status|
|---|---|---|
|Package record exists|Required for physical products and kits|Pass / Fail / N/A|
|Package code is correct|S, 2P, 4P, KIT, PROKIT, EDU, PRJ, CH, FBA, BULK, DEMO, SAMPLE, or NA|Pass / Fail / N/A|
|Included product mapping exists|Required for kits, bundles, demo, sample, project, and bulk packages|Pass / Fail / N/A|
|Barcode record exists|Required where retail, channel, or marketplace packaging applies|Pass / Fail / N/A|
|FNSKU exists|Required for FBA packages|Pass / Fail / N/A|
|Package artwork version recorded|Required before package production|Pass / Fail / N/A|
|Product label version recorded|Required before production or release|Pass / Fail / N/A|
|Electrical rating matches engineering record|Required for powered products|Pass / Fail / N/A|
|Safety warning matches power architecture|Required where applicable|Pass / Fail / N/A|
|Certification marks are authorized|Required before use|Pass / Fail / N/A|
|Manual version matches package|Required before release|Pass / Fail / N/A|
|Region language matches region code|Required before market release|Pass / Fail / N/A|
|Packaging owner approved|Required before package production|Pass / Fail / N/A|

### ZH-TW

|檢查項目|要求|狀態|
|---|---|---|
|包裝記錄存在|實體產品與套組必填|Pass / Fail / N/A|
|包裝代碼正確|S、2P、4P、KIT、PROKIT、EDU、PRJ、CH、FBA、BULK、DEMO、SAMPLE 或 NA|Pass / Fail / N/A|
|內含產品映射存在|套組、組合包、展示、樣品、專案與批量包必填|Pass / Fail / N/A|
|條碼記錄存在|零售、渠道或 marketplace 包裝適用時必填|Pass / Fail / N/A|
|FNSKU 存在|FBA 包裝必填|Pass / Fail / N/A|
|包裝 artwork 版本已記錄|包裝生產前必填|Pass / Fail / N/A|
|產品標籤版本已記錄|生產或發布前必填|Pass / Fail / N/A|
|電氣額定匹配工程記錄|供電產品必填|Pass / Fail / N/A|
|安全警告匹配供電架構|適用時必填|Pass / Fail / N/A|
|認證標誌已授權|使用前必填|Pass / Fail / N/A|
|手冊版本匹配包裝|發布前必填|Pass / Fail / N/A|
|區域語言匹配區域代碼|市場發布前必填|Pass / Fail / N/A|
|包裝負責人已核准|包裝生產前必填|Pass / Fail / N/A|

---

## 36.9 Amazon and Marketplace Checklist

## 36.9 Amazon 與 Marketplace 檢查清單

### EN

|Check Item|Requirement|Status|
|---|---|---|
|Marketplace scope defined|Amazon US, Amazon CA, Amazon EU, Amazon JP, or other marketplace must be specified|Pass / Fail / N/A|
|Product category selected|Must match product function and compliance category|Pass / Fail / N/A|
|Product title approved|Must not contain unsupported claims|Pass / Fail / N/A|
|Bullet points approved|Must match approved claim boundary|Pass / Fail / N/A|
|A+ content approved|Must match package, system, and feature records|Pass / Fail / N/A|
|Product images approved|Must show correct product, package, accessories, and warnings where applicable|Pass / Fail / N/A|
|Barcode matches package record|Required before listing|Pass / Fail / N/A|
|FNSKU matches FBA record|Required for FBA|Pass / Fail / N/A|
|Compliance documents uploaded where required|Required if Amazon asks for proof|Pass / Fail / N/A|
|Battery information completed where applicable|Required for battery products|Pass / Fail / N/A|
|Wireless information completed where applicable|Required for connected products|Pass / Fail / N/A|
|Restricted claims removed|Required before submission|Pass / Fail / N/A|
|Marketplace owner approved|Required before listing activation|Pass / Fail / N/A|

### ZH-TW

|檢查項目|要求|狀態|
|---|---|---|
|Marketplace 範圍已定義|必須指定 Amazon US、Amazon CA、Amazon EU、Amazon JP 或其他 marketplace|Pass / Fail / N/A|
|產品類別已選擇|必須匹配產品功能與合規類別|Pass / Fail / N/A|
|產品標題已核准|不得包含未支援宣稱|Pass / Fail / N/A|
|五點描述已核准|必須匹配已核准宣稱邊界|Pass / Fail / N/A|
|A+ 內容已核准|必須匹配包裝、系統與功能記錄|Pass / Fail / N/A|
|產品圖片已核准|適用時必須顯示正確產品、包裝、配件與警告|Pass / Fail / N/A|
|條碼匹配包裝記錄|上架前必填|Pass / Fail / N/A|
|FNSKU 匹配 FBA 記錄|FBA 必填|Pass / Fail / N/A|
|必要時合規文件已上傳|Amazon 要求證明時必填|Pass / Fail / N/A|
|適用時電池資訊已完成|電池產品必填|Pass / Fail / N/A|
|適用時無線資訊已完成|連網產品必填|Pass / Fail / N/A|
|受限宣稱已移除|提交前必填|Pass / Fail / N/A|
|Marketplace 負責人已核准|上架啟用前必填|Pass / Fail / N/A|

---

## 36.10 Commercial Release Checklist

## 36.10 商業發布檢查清單

### EN

|Check Item|Requirement|Status|
|---|---|---|
|Commercial release record exists|Required before sale or public deployment|Pass / Fail / N/A|
|Release scope is defined|Website, Amazon, channel, project, public, or internal|Pass / Fail / N/A|
|Region scope is defined|Must match region code and compliance mapping|Pass / Fail / N/A|
|Channel scope is defined|Direct, Amazon, distributor, project, or institutional|Pass / Fail / N/A|
|Pricing reference exists|Required for commercial sale|Pass / Fail / N/A|
|Sales materials approved|Product catalog, website, Amazon, and channel copy must be approved|Pass / Fail / N/A|
|Claim boundary approved|All public claims must match evidence|Pass / Fail / N/A|
|Support boundary approved|Required before customer release|Pass / Fail / N/A|
|Inventory status confirmed|Required before sale or fulfillment|Pass / Fail / N/A|
|Release owner approved|Required before commercial release|Pass / Fail / N/A|

### ZH-TW

|檢查項目|要求|狀態|
|---|---|---|
|商業發布記錄存在|銷售或公開部署前必填|Pass / Fail / N/A|
|發布範圍已定義|官網、Amazon、渠道、專案、公開或內部|Pass / Fail / N/A|
|區域範圍已定義|必須匹配區域代碼與合規映射|Pass / Fail / N/A|
|渠道範圍已定義|Direct、Amazon、Distributor、Project 或 Institutional|Pass / Fail / N/A|
|價格引用存在|商業銷售必填|Pass / Fail / N/A|
|銷售材料已核准|產品型錄、網站、Amazon 與渠道文案必須核准|Pass / Fail / N/A|
|宣稱邊界已核准|所有公開宣稱必須匹配證據|Pass / Fail / N/A|
|支持邊界已核准|客戶發布前必填|Pass / Fail / N/A|
|庫存狀態已確認|銷售或履約前必填|Pass / Fail / N/A|
|發布負責人已核准|商業發布前必填|Pass / Fail / N/A|

---

## 36.11 Support and Lifecycle Checklist

## 36.11 支持與生命週期檢查清單

### EN

|Check Item|Requirement|Status|
|---|---|---|
|Lifecycle record exists|Required for every SKU|Pass / Fail / N/A|
|Current lifecycle status is recorded|CONCEPT, PROTO, EVT, DVT, PVT, PILOT, CERTIFIED, RELEASED, ACTIVE, HOLD, DEPRECATED, DISCONTINUED, or ARCHIVED|Pass / Fail / N/A|
|Release status matches evidence|Status must not exceed validation and approval records|Pass / Fail / N/A|
|Support record exists|Required before customer release|Pass / Fail / N/A|
|Warranty scope is defined|Required for commercial sale|Pass / Fail / N/A|
|Replacement SKU is defined where applicable|Required for deprecated or discontinued SKUs|Pass / Fail / N/A|
|Support owner assigned|Required before release|Pass / Fail / N/A|
|End-of-life plan exists where applicable|Required for discontinued or archived SKUs|Pass / Fail / N/A|
|Archive record exists where applicable|Required for retired records|Pass / Fail / N/A|
|Lifecycle owner approved|Required before status change|Pass / Fail / N/A|

### ZH-TW

|檢查項目|要求|狀態|
|---|---|---|
|生命週期記錄存在|每個 SKU 必填|Pass / Fail / N/A|
|當前生命週期狀態已記錄|CONCEPT、PROTO、EVT、DVT、PVT、PILOT、CERTIFIED、RELEASED、ACTIVE、HOLD、DEPRECATED、DISCONTINUED 或 ARCHIVED|Pass / Fail / N/A|
|發布狀態匹配證據|狀態不得超出驗證與核准記錄|Pass / Fail / N/A|
|支持記錄存在|客戶發布前必填|Pass / Fail / N/A|
|保固範圍已定義|商業銷售必填|Pass / Fail / N/A|
|適用時替代 SKU 已定義|停用或停產 SKU 必填|Pass / Fail / N/A|
|支持負責人已指定|發布前必填|Pass / Fail / N/A|
|適用時生命週期結束計劃存在|停產或歸檔 SKU 必填|Pass / Fail / N/A|
|適用時歸檔記錄存在|退役記錄必填|Pass / Fail / N/A|
|生命週期負責人已核准|狀態變更前必填|Pass / Fail / N/A|

---

## 36.12 Change Log and Traceability Checklist

## 36.12 變更記錄與可追蹤性檢查清單

### EN

|Check Item|Requirement|Status|
|---|---|---|
|Relationship index exists|Required for every controlled SKU|Pass / Fail / N/A|
|Change log exists where changes occurred|Required for any controlled change|Pass / Fail / N/A|
|Previous values recorded|Required for change traceability|Pass / Fail / N/A|
|New values recorded|Required for change traceability|Pass / Fail / N/A|
|Change reason recorded|Required for audit|Pass / Fail / N/A|
|Impact areas recorded|Engineering, compliance, manufacturing, packaging, Amazon, sales, support|Pass / Fail / N/A|
|Required evidence linked|Test reports, label proofs, package proofs, approval records, certificates|Pass / Fail / N/A|
|Approval owner recorded|Required for controlled changes|Pass / Fail / N/A|
|Implementation status recorded|Required after change approval|Pass / Fail / N/A|
|Effective date recorded|Required when change is implemented|Pass / Fail / N/A|
|Superseded records preserved|Required for traceability|Pass / Fail / N/A|
|Archive snapshot exists where applicable|Required for archived records|Pass / Fail / N/A|

### ZH-TW

|檢查項目|要求|狀態|
|---|---|---|
|關聯索引存在|每個受控 SKU 必填|Pass / Fail / N/A|
|發生變更時存在變更記錄|任一受控變更必填|Pass / Fail / N/A|
|原值已記錄|變更可追蹤性必填|Pass / Fail / N/A|
|新值已記錄|變更可追蹤性必填|Pass / Fail / N/A|
|變更原因已記錄|稽核必填|Pass / Fail / N/A|
|影響領域已記錄|工程、合規、生產、包裝、Amazon、銷售、支持|Pass / Fail / N/A|
|必要證據已連結|測試報告、標籤 proof、包裝 proof、核准記錄、證書|Pass / Fail / N/A|
|核准負責人已記錄|受控變更必填|Pass / Fail / N/A|
|實施狀態已記錄|變更核准後必填|Pass / Fail / N/A|
|生效日期已記錄|變更實施時必填|Pass / Fail / N/A|
|被取代記錄已保留|可追蹤性必填|Pass / Fail / N/A|
|適用時歸檔快照存在|歸檔記錄必填|Pass / Fail / N/A|

---

## 36.13 Final Release Gate Matrix

## 36.13 最終發布關卡矩陣

### EN

|Release Scenario|Minimum Required Status|
|---|---|
|Internal concept review|CONCEPT record completed|
|Prototype build|PROTO record and engineering owner approval|
|EVT start|Engineering model, EVT plan, prototype evidence|
|DVT start|EVT report, issue log, DVT plan|
|PVT start|DVT report, design freeze, BOM control, manufacturing model|
|Certification submission|Certification model, compliance mapping, sample record, label draft, manual draft|
|Pilot deployment|Pilot scope, support boundary, compliance pre-review, deployment owner|
|Manufacturing release|PVT approval, QC plan, BOM freeze, packaging readiness|
|Package production|Package record, artwork approval, label approval, barcode where applicable|
|Amazon listing|FBA or marketplace package record, barcode / FNSKU, listing content, compliance review|
|Channel release|Region approval, package approval, commercial release, support boundary|
|Public sale|RELEASED or ACTIVE status with compliance, package, support, and claim approval|
|Deprecation|Replacement plan, support boundary, sales transition|
|Discontinuation|Last sale / production decision, support end date, inventory plan|
|Archival closure|Final snapshot, archive approval, no reuse rule|

### ZH-TW

|發布場景|最低必要狀態|
|---|---|
|內部概念審查|CONCEPT 記錄完成|
|原型構建|PROTO 記錄與工程負責人核准|
|EVT 開始|工程型號、EVT 計劃、原型證據|
|DVT 開始|EVT 報告、問題清單、DVT 計劃|
|PVT 開始|DVT 報告、設計凍結、BOM 管控、生產型號|
|認證提交|認證型號、合規映射、樣品記錄、標籤草案、手冊草案|
|試點部署|試點範圍、支持邊界、合規預審、部署負責人|
|生產發布|PVT 核准、QC 計劃、BOM 凍結、包裝準備度|
|包裝生產|包裝記錄、artwork 核准、標籤核准、適用時條碼|
|Amazon 上架|FBA 或 marketplace 包裝記錄、條碼 / FNSKU、上架內容、合規審查|
|渠道發布|區域核准、包裝核准、商業發布、支持邊界|
|公開銷售|RELEASED 或 ACTIVE 狀態，且合規、包裝、支持與宣稱均核准|
|停用|替代計劃、支持邊界、銷售過渡|
|停產|最後銷售 / 生產決策、支持結束日期、庫存計劃|
|歸檔關閉|最終快照、歸檔核准、不得重用規則|

---

## 36.14 High-Risk Blocker Checklist

## 36.14 高風險阻斷項檢查清單

### EN

If any of the following blockers are present, the SKU must not proceed to public release, Amazon listing, commercial shipment, or customer-facing claim.

|Blocker|Required Action|
|---|---|
|SKU code incomplete or duplicated|Correct SKU record before release|
|Product line not approved|Product line approval required|
|Region code not approved|Region review required|
|Unsupported connectivity claim|Remove claim or complete validation|
|Unsupported power architecture|Engineering and safety review required|
|Missing compliance mapping|Complete compliance mapping|
|Missing safety review for AC / load-control product|Stop release until reviewed|
|Missing wireless review for connected product|Stop release until reviewed|
|Certification mark used without authorization|Remove mark and initiate compliance review|
|Package artwork not approved|Stop packaging production|
|Barcode or FNSKU mismatch|Stop marketplace or shipment preparation|
|Amazon listing contains unsupported claim|Correct listing before submission|
|Lifecycle status exceeds evidence|Revert status or complete evidence|
|No support boundary for customer release|Define support before release|
|No change log for controlled change|Create change record before implementation|
|Critical issue remains open|Close or formally accept risk before release|

### ZH-TW

若存在以下任何阻斷項，SKU 不得進入公開發布、Amazon 上架、商業出貨或面向客戶宣稱。

|阻斷項|必要動作|
|---|---|
|SKU 代碼不完整或重複|發布前修正 SKU 記錄|
|產品線未核准|需要產品線核准|
|區域代碼未核准|需要區域審查|
|不支援的連接宣稱|移除宣稱或完成驗證|
|不支援的供電架構|需要工程與安全審查|
|缺少合規映射|完成合規映射|
|AC / 負載控制產品缺少安全審查|審查完成前停止發布|
|連網產品缺少無線審查|審查完成前停止發布|
|未授權使用認證標誌|移除標誌並啟動合規審查|
|包裝 artwork 未核准|停止包裝生產|
|條碼或 FNSKU 不匹配|停止 marketplace 或出貨準備|
|Amazon 上架包含未支援宣稱|提交前修正上架內容|
|生命週期狀態超出證據|回退狀態或補齊證據|
|客戶發布缺少支持邊界|發布前定義支持|
|受控變更缺少變更記錄|實施前建立變更記錄|
|仍存在未關閉關鍵問題|發布前關閉或正式接受風險|

---

## 36.15 Final Approval Roles

## 36.15 最終核准角色

### EN

|Approval Role|Responsibility|
|---|---|
|Product Owner|Confirms product identity, SKU structure, feature scope, and release intent|
|Engineering Owner|Confirms technical readiness, validation status, and unresolved risk|
|Compliance Owner|Confirms certification mapping, safety, wireless, labeling, and claim boundary|
|Operations Owner|Confirms manufacturing, packaging, inventory, and logistics readiness|
|Packaging Owner|Confirms package structure, label, barcode, FNSKU, and artwork|
|Marketplace Owner|Confirms Amazon or marketplace readiness where applicable|
|Commercial Owner|Confirms channel, pricing, release scope, and sales materials|
|Support Owner|Confirms warranty, support boundary, replacement path, and customer support readiness|
|Documentation Owner|Confirms manuals, installation guides, spec sheets, and catalog alignment|
|Final Release Owner|Confirms all gate approvals and authorizes release status movement|

### ZH-TW

|核准角色|責任|
|---|---|
|產品負責人|確認產品身份、SKU 結構、功能範圍與發布意圖|
|工程負責人|確認技術準備度、驗證狀態與未解決風險|
|合規負責人|確認認證映射、安全、無線、標籤與宣稱邊界|
|運營負責人|確認生產、包裝、庫存與物流準備度|
|包裝負責人|確認包裝結構、標籤、條碼、FNSKU 與 artwork|
|Marketplace 負責人|適用時確認 Amazon 或 marketplace 準備度|
|商業負責人|確認渠道、定價、發布範圍與銷售材料|
|支持負責人|確認保固、支持邊界、替代路徑與客戶支持準備度|
|文件負責人|確認手冊、安裝指南、規格書與型錄一致|
|最終發布負責人|確認所有關卡核准並授權發布狀態推進|

---

## 36.16 Final SKU Governance Table Template

## 36.16 最終 SKU 治理表模板

### EN

|Field|Entry|
|---|---|
|Final Governance Record ID|TBD|
|SKU Code|TBD|
|Customer-Facing Name|TBD|
|Product Line|TBD|
|Internal Model|TBD|
|Engineering Model|TBD|
|Certification Model|TBD|
|Manufacturing Model|TBD|
|Package Model|TBD|
|Region Code|TBD|
|Connectivity Code|TBD|
|Power Code|TBD|
|Variant Code|TBD|
|Package Code|TBD|
|Current Lifecycle Status|TBD|
|Intended Release Scenario|Certification / Pilot / Manufacturing / Packaging / Amazon / Channel / Public Sale / Archive|
|Identity Checklist Status|Pass / Fail / N/A|
|Model Record Checklist Status|Pass / Fail / N/A|
|Engineering Checklist Status|Pass / Fail / N/A|
|Compliance Checklist Status|Pass / Fail / N/A|
|Manufacturing Checklist Status|Pass / Fail / N/A|
|Packaging Checklist Status|Pass / Fail / N/A|
|Amazon Checklist Status|Pass / Fail / N/A|
|Commercial Checklist Status|Pass / Fail / N/A|
|Support Checklist Status|Pass / Fail / N/A|
|Change Log Checklist Status|Pass / Fail / N/A|
|Blockers|TBD / None|
|Required Actions|TBD / None|
|Final Approval Owner|TBD|
|Final Approval Status|Draft / Pending / Approved / Rejected / On Hold|
|Approval Date|TBD|
|Next Review Date|TBD|
|Notes|TBD|

### ZH-TW

|欄位|填寫|
|---|---|
|最終治理記錄 ID|TBD|
|SKU 代碼|TBD|
|面向客戶名稱|TBD|
|產品線|TBD|
|內部型號|TBD|
|工程型號|TBD|
|認證型號|TBD|
|生產型號|TBD|
|包裝型號|TBD|
|區域代碼|TBD|
|連接代碼|TBD|
|供電代碼|TBD|
|版本代碼|TBD|
|包裝代碼|TBD|
|當前生命週期狀態|TBD|
|預計發布場景|Certification / Pilot / Manufacturing / Packaging / Amazon / Channel / Public Sale / Archive|
|身份檢查狀態|Pass / Fail / N/A|
|型號記錄檢查狀態|Pass / Fail / N/A|
|工程檢查狀態|Pass / Fail / N/A|
|合規檢查狀態|Pass / Fail / N/A|
|生產檢查狀態|Pass / Fail / N/A|
|包裝檢查狀態|Pass / Fail / N/A|
|Amazon 檢查狀態|Pass / Fail / N/A|
|商業檢查狀態|Pass / Fail / N/A|
|支持檢查狀態|Pass / Fail / N/A|
|變更記錄檢查狀態|Pass / Fail / N/A|
|阻斷項|TBD / None|
|必要動作|TBD / None|
|最終核准負責人|TBD|
|最終核准狀態|Draft / Pending / Approved / Rejected / On Hold|
|核准日期|TBD|
|下一次審查日期|TBD|
|備註|TBD|

---

## 36.17 Completed Example — Artibird Act-E Final Governance Record

## 36.17 完整示例 — Artibird Act-E 最終治理記錄

### EN

|Field|Entry|
|---|---|
|Final Governance Record ID|FG-ACT-G1-E-US-001|
|SKU Code|ATB-ACT-G1-US-WF-AC-E-S|
|Customer-Facing Name|Artibird Act-E|
|Product Line|ACT|
|Internal Model|ACT-G1-E|
|Engineering Model|ACT-G1-E-HW1.0-FW1.2-PCB1.1-DVT|
|Certification Model|ACT-G1-E|
|Manufacturing Model|MFG-ACT-G1-E-BOM1.0-PCB1.1-ASM1.0-SUP01-QC1.1-PKG1.0|
|Package Model|Artibird Act-E Single Pack|
|Region Code|US|
|Connectivity Code|WF|
|Power Code|AC|
|Variant Code|E|
|Package Code|S|
|Current Lifecycle Status|DVT / CERT-PREP|
|Intended Release Scenario|Certification Preparation|
|Identity Checklist Status|Pass|
|Model Record Checklist Status|Pass|
|Engineering Checklist Status|Pending|
|Compliance Checklist Status|Pending|
|Manufacturing Checklist Status|Pending|
|Packaging Checklist Status|Pending|
|Amazon Checklist Status|N/A|
|Commercial Checklist Status|N/A|
|Support Checklist Status|Internal Only|
|Change Log Checklist Status|Pass|
|Blockers|Certification not completed; packaging not final; no public claims approved|
|Required Actions|Complete DVT, compliance mapping, certification sample preparation, label review, package review|
|Final Approval Owner|Product / Engineering / Compliance|
|Final Approval Status|Pending|
|Approval Date|TBD|
|Next Review Date|TBD|
|Notes|No UL / ETL, energy-saving, or certified metering claim before approval|

### ZH-TW

|欄位|填寫|
|---|---|
|最終治理記錄 ID|FG-ACT-G1-E-US-001|
|SKU 代碼|ATB-ACT-G1-US-WF-AC-E-S|
|面向客戶名稱|Artibird Act-E|
|產品線|ACT|
|內部型號|ACT-G1-E|
|工程型號|ACT-G1-E-HW1.0-FW1.2-PCB1.1-DVT|
|認證型號|ACT-G1-E|
|生產型號|MFG-ACT-G1-E-BOM1.0-PCB1.1-ASM1.0-SUP01-QC1.1-PKG1.0|
|包裝型號|Artibird Act-E Single Pack|
|區域代碼|US|
|連接代碼|WF|
|供電代碼|AC|
|版本代碼|E|
|包裝代碼|S|
|當前生命週期狀態|DVT / CERT-PREP|
|預計發布場景|Certification Preparation|
|身份檢查狀態|Pass|
|型號記錄檢查狀態|Pass|
|工程檢查狀態|Pending|
|合規檢查狀態|Pending|
|生產檢查狀態|Pending|
|包裝檢查狀態|Pending|
|Amazon 檢查狀態|N/A|
|商業檢查狀態|N/A|
|支持檢查狀態|Internal Only|
|變更記錄檢查狀態|Pass|
|阻斷項|認證未完成；包裝未最終定稿；未核准任何公開宣稱|
|必要動作|完成 DVT、合規映射、認證樣品準備、標籤審查、包裝審查|
|最終核准負責人|Product / Engineering / Compliance|
|最終核准狀態|Pending|
|核准日期|TBD|
|下一次審查日期|TBD|
|備註|未核准前不得宣稱 UL / ETL、節能或已認證計量|

---

## 36.18 Completed Example — Artibird Switch Scene Final Governance Record

## 36.18 完整示例 — Artibird Switch Scene 最終治理記錄

### EN

|Field|Entry|
|---|---|
|Final Governance Record ID|FG-SW-SCN-US-001|
|SKU Code|ATB-SW-G1-US-BLE-BAT-SCN-S|
|Customer-Facing Name|Artibird Switch Scene|
|Product Line|SW|
|Internal Model|SW-G1-SCN|
|Engineering Model|SW-G1-SCN-HW1.0-FW1.0-PCB1.0-EVT|
|Certification Model|SW-G1-SCN|
|Manufacturing Model|TBD|
|Package Model|Artibird Switch Scene Single Pack|
|Region Code|US|
|Connectivity Code|BLE|
|Power Code|BAT|
|Variant Code|SCN|
|Package Code|S|
|Current Lifecycle Status|EVT|
|Intended Release Scenario|Engineering Validation|
|Identity Checklist Status|Pass|
|Model Record Checklist Status|Pending|
|Engineering Checklist Status|Pending|
|Compliance Checklist Status|Not Started|
|Manufacturing Checklist Status|N/A|
|Packaging Checklist Status|Draft|
|Amazon Checklist Status|N/A|
|Commercial Checklist Status|N/A|
|Support Checklist Status|Internal Only|
|Change Log Checklist Status|Pass|
|Blockers|EVT not completed; certification not started; package not approved|
|Required Actions|Complete BLE event validation, battery profile validation, enclosure review, compliance pre-review|
|Final Approval Owner|Product / Engineering|
|Final Approval Status|Pending|
|Approval Date|TBD|
|Next Review Date|TBD|
|Notes|Must remain event-only; no relay, load-control, dimming, or direct switching claim|

### ZH-TW

|欄位|填寫|
|---|---|
|最終治理記錄 ID|FG-SW-SCN-US-001|
|SKU 代碼|ATB-SW-G1-US-BLE-BAT-SCN-S|
|面向客戶名稱|Artibird Switch Scene|
|產品線|SW|
|內部型號|SW-G1-SCN|
|工程型號|SW-G1-SCN-HW1.0-FW1.0-PCB1.0-EVT|
|認證型號|SW-G1-SCN|
|生產型號|TBD|
|包裝型號|Artibird Switch Scene Single Pack|
|區域代碼|US|
|連接代碼|BLE|
|供電代碼|BAT|
|版本代碼|SCN|
|包裝代碼|S|
|當前生命週期狀態|EVT|
|預計發布場景|Engineering Validation|
|身份檢查狀態|Pass|
|型號記錄檢查狀態|Pending|
|工程檢查狀態|Pending|
|合規檢查狀態|Not Started|
|生產檢查狀態|N/A|
|包裝檢查狀態|Draft|
|Amazon 檢查狀態|N/A|
|商業檢查狀態|N/A|
|支持檢查狀態|Internal Only|
|變更記錄檢查狀態|Pass|
|阻斷項|EVT 未完成；認證未開始；包裝未核准|
|必要動作|完成 BLE 事件驗證、電池功耗驗證、外殼審查、合規預審|
|最終核准負責人|Product / Engineering|
|最終核准狀態|Pending|
|核准日期|TBD|
|下一次審查日期|TBD|
|備註|必須保持 event-only；不得宣稱繼電器、負載控制、調光或直接開關電力|

---

## 36.19 Final Governance Decision Rules

## 36.19 最終治理決策規則

### EN

|Decision|Meaning|Allowed Next Step|
|---|---|---|
|APPROVED|All required checks passed|Proceed to defined release scenario|
|APPROVED WITH CONDITIONS|Minor open items remain but are controlled|Proceed only within stated limits|
|PENDING|Required checks are incomplete|Continue preparation, no release|
|ON HOLD|Blocker exists|Stop release until blocker is resolved|
|REJECTED|SKU or record does not meet governance requirements|Revise or create new record|
|ARCHIVE ONLY|Record is retained only for historical traceability|No release or reuse|

### ZH-TW

|決策|含義|允許下一步|
|---|---|---|
|APPROVED|所有必要檢查已通過|進入已定義發布場景|
|APPROVED WITH CONDITIONS|仍有少量未完成項，但已受控|僅可在限制範圍內推進|
|PENDING|必要檢查尚未完成|繼續準備，不得發布|
|ON HOLD|存在阻斷項|阻斷項解決前停止發布|
|REJECTED|SKU 或記錄不符合治理要求|修訂或建立新記錄|
|ARCHIVE ONLY|記錄僅保留歷史可追蹤性|不得發布或重用|

---

## 36.20 Final Governance Rules

## 36.20 最終治理規則

### EN

|Rule|Requirement|
|---|---|
|No release without complete identity|SKU code and all fields must be approved|
|No release without compliance mapping|Compliance mapping is mandatory before public release|
|No release without lifecycle status|Every SKU must have current lifecycle state|
|No release without support boundary|Customer-facing products must define support|
|No certification claim without proof|Certification wording must match approved records|
|No marketplace release without marketplace review|Amazon and platform listings require separate review|
|No package production without package approval|Artwork, label, barcode, and package content must be approved|
|No production without manufacturing control|BOM, QC, assembly, and lot rules must be defined|
|No claim beyond evidence|Feature, performance, safety, AI, energy, and compatibility claims require support|
|No change without change log|Controlled changes must be recorded|
|No archived identifier reuse|Archived SKU, model, and package identifiers must not be reused|
|No public release if blockers exist|High-risk blockers must be resolved or formally controlled|

### ZH-TW

|規則|要求|
|---|---|
|無完整身份不得發布|SKU 代碼與所有欄位必須核准|
|無合規映射不得發布|公開發布前必須具備合規映射|
|無生命週期狀態不得發布|每個 SKU 都必須有當前生命週期狀態|
|無支持邊界不得發布|面向客戶產品必須定義支持|
|無證據不得宣稱認證|認證文字必須匹配已核准記錄|
|無 marketplace 審查不得上架|Amazon 與平台上架需要獨立審查|
|無包裝核准不得生產包裝|Artwork、標籤、條碼與包裝內容必須核准|
|無生產管控不得生產|BOM、QC、組裝與批次規則必須定義|
|不得超出證據進行宣稱|功能、性能、安全、AI、能源與相容性宣稱需要支持|
|無變更記錄不得變更|受控變更必須記錄|
|不得重用已歸檔識別碼|已歸檔 SKU、型號與包裝識別碼不得重用|
|存在阻斷項不得公開發布|高風險阻斷項必須解決或正式受控|

---

## 36.21 Chapter Conclusion

## 36.21 本章結論

### EN

The Final SKU Governance Checklist is the final control gate of the Artibird SKU and model naming system.

It converts all previous chapters into an actionable release-control tool. It ensures that SKU identity, model records, engineering validation, certification mapping, manufacturing readiness, packaging approval, Amazon readiness, commercial release, support boundary, lifecycle status, change history, and document relationships are all aligned before a SKU moves forward.

A SKU that passes this checklist is not merely named correctly. It is structurally traceable, technically supported, compliance-aware, commercially bounded, operationally controlled, and ready for its approved next step.

### ZH-TW

最終 SKU 治理檢查清單是 Artibird SKU 與型號命名系統的最終控制關卡。

它將前面所有章節轉化為可執行的發布管控工具，確保 SKU 身份、型號記錄、工程驗證、認證映射、生產準備度、包裝核准、Amazon 準備度、商業發布、支持邊界、生命週期狀態、變更歷史與文件關聯，在 SKU 推進之前全部一致。

通過本清單的 SKU 不只是命名正確。它具備結構可追蹤性、技術支持、合規意識、商業邊界、運營管控，並已準備好進入其已核准的下一步。

---

**話題延伸｜互動建議**  
下一步可以做 **《Artibird SKU & Model Naming Specification v1.0｜Final Appendix Package》**，把全書所有代碼表、縮寫表、範例 SKU、檢查清單、Excel 欄位模板與發布表格集中成附錄，方便後續直接轉成正式規格書或表格系統。