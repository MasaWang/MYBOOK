# Artibird SKU & Model Naming Specification v1.0

# Artibird SKU 與型號命名規範 v1.0

## Chapter 27 — Region and Market Master Table

## 第二十七章｜區域與市場主表

---

## 27.1 Purpose

## 27.1 目的

### EN

This chapter defines the Region and Market Master Table used by Artibird SKU records, model records, certification records, packaging records, Amazon listings, channel documents, and commercial release plans.

The region code controls where a SKU is intended to be sold, deployed, certified, packaged, labeled, supported, and commercially communicated.

The purpose of this chapter is to prevent regional confusion, unsupported certification claims, incorrect labels, wrong packaging language, incompatible electrical configuration, incorrect Amazon marketplace use, and uncontrolled international deployment.

### ZH-TW

本章定義 Artibird SKU 記錄、型號記錄、認證記錄、包裝記錄、Amazon 上架、渠道文件與商業發布計劃中使用的區域與市場主表。

區域代碼用於管控某一 SKU 預計在哪裡銷售、部署、認證、包裝、標籤、支持與商業溝通。

本章目的，是防止區域混淆、未支援認證宣稱、標籤錯誤、包裝語言錯誤、電氣配置不相容、Amazon marketplace 使用錯誤，以及不受控的國際部署。

---

## 27.2 Region Code Definition

## 27.2 區域代碼定義

### EN

A region code identifies the intended market, regulatory environment, packaging requirement, language requirement, electrical configuration, and commercial availability boundary of a SKU.

It answers the following questions:

|Question|Description|
|---|---|
|Where is this SKU intended to be sold?|US, CA, EU, UK, TW, JP, AU, CN, GL, INT|
|Which certification framework may apply?|FCC, UL / ETL, CE, UKCA, NCC, PSE, RCM, etc.|
|Which label language may be required?|English, French, Traditional Chinese, Japanese, etc.|
|Which electrical configuration applies?|Voltage, plug type, adapter, wiring, load rating, installation condition|
|Which Amazon or marketplace region may use it?|Amazon US, Amazon CA, Amazon EU, Amazon JP, etc.|
|Can this SKU be used globally?|Only if the region code and certification scope support it|
|Is this a reference-only region code?|GL may be a global reference, not a certification claim|
|Is this a project-specific market?|INT or PRJ records require deployment-specific review|

### ZH-TW

區域代碼用於識別某一 SKU 的目標市場、法規環境、包裝要求、語言要求、電氣配置與商業可用邊界。

它回答以下問題：

|問題|說明|
|---|---|
|此 SKU 預計在哪裡銷售？|US、CA、EU、UK、TW、JP、AU、CN、GL、INT|
|可能適用哪一套認證框架？|FCC、UL / ETL、CE、UKCA、NCC、PSE、RCM 等|
|可能需要哪一種標籤語言？|英文、法文、繁體中文、日文等|
|適用哪一種電氣配置？|電壓、插頭類型、適配器、接線、負載額定、安裝條件|
|可用於哪一個 Amazon 或 marketplace 區域？|Amazon US、Amazon CA、Amazon EU、Amazon JP 等|
|此 SKU 是否可全球使用？|只有在區域代碼與認證範圍支持時才可以|
|是否為僅參考區域代碼？|GL 可作全球參考，不代表認證宣稱|
|是否為專案特定市場？|INT 或 PRJ 記錄需要依部署地點審查|

---

## 27.3 Region Code Governance Principle

## 27.3 區域代碼治理原則

### EN

The core principle of region code governance is:

```text
One region code = one controlled market or market-reference scope.
```

A region code must not be used as proof of certification.  
A region code defines intended market configuration, not regulatory approval by itself.

For example:

```text
US = United States market configuration
```

It does not automatically mean:

```text
FCC certified
UL listed
ETL listed
Commercially released
Amazon approved
```

Those statuses must be recorded separately in certification, release, and channel records.

### ZH-TW

區域代碼治理的核心原則是：

```text
一個區域代碼 = 一個受控市場或市場參考範圍。
```

區域代碼不得被用作認證證據。  
區域代碼定義的是目標市場配置，本身不等於法規核准。

例如：

```text
US = 美國市場配置
```

它不自動代表：

```text
FCC 已認證
UL 已列名
ETL 已列名
已商業發布
Amazon 已核准
```

這些狀態必須分別記錄於認證、發布與渠道記錄中。

---

## 27.4 Standard Region and Market Master Table

## 27.4 標準區域與市場主表

### EN

|Region Code|Market Scope|Typical Use|Primary Language|Certification Relevance|
|---|---|---|---|---|
|US|United States|U.S. sales, Amazon US, U.S. projects|English|FCC, UL / ETL / NRTL review|
|CA|Canada|Canada sales and deployment|English / French|ISED, cUL / CSA review|
|EU|European Union|EU sales and deployment|Market-specific EU languages|CE, RED, RoHS, REACH review|
|UK|United Kingdom|UK sales and deployment|English|UKCA review|
|TW|Taiwan|Taiwan sales and deployment|Traditional Chinese|NCC and local requirements|
|JP|Japan|Japan sales and deployment|Japanese|MIC / TELEC, PSE where applicable|
|AU|Australia / New Zealand|AU / NZ sales and deployment|English|RCM and electrical / wireless review|
|CN|Mainland China|China market sales and deployment|Simplified Chinese|China market certification review|
|GL|Global reference|Global planning or reference SKU|English reference|Not a certification claim|
|INT|International / project-specific|Project-specific deployment|Defined by project|Region-specific review required|

### ZH-TW

|區域代碼|市場範圍|典型用途|主要語言|認證相關性|
|---|---|---|---|---|
|US|美國|美國銷售、Amazon US、美國專案|英文|FCC、UL / ETL / NRTL 審查|
|CA|加拿大|加拿大銷售與部署|英文 / 法文|ISED、cUL / CSA 審查|
|EU|歐盟|歐盟銷售與部署|依各 EU 市場語言|CE、RED、RoHS、REACH 審查|
|UK|英國|英國銷售與部署|英文|UKCA 審查|
|TW|台灣|台灣銷售與部署|繁體中文|NCC 與本地要求|
|JP|日本|日本銷售與部署|日文|MIC / TELEC，適用時 PSE|
|AU|澳洲 / 紐西蘭|AU / NZ 銷售與部署|英文|RCM 與電氣 / 無線審查|
|CN|中國大陸|中國市場銷售與部署|簡體中文|中國市場認證審查|
|GL|全球參考|全球規劃或參考 SKU|英文參考|不代表認證宣稱|
|INT|國際 / 專案特定|專案特定部署|依專案定義|需要依區域審查|

---

## 27.5 Region Code Usage in SKU Format

## 27.5 區域代碼在 SKU 格式中的使用

### EN

The region code appears in the fourth field of the official SKU structure:

```text
ATB-[PRODUCT]-[GEN]-[REGION]-[CONNECTIVITY]-[POWER]-[VARIANT]-[PACKAGE]
```

Example:

```text
ATB-ACT-G1-US-WF-AC-E-S
```

This means:

|Field|Value|Meaning|
|---|---|---|
|Brand|ATB|Artibird|
|Product|ACT|Artibird Act|
|Generation|G1|First generation|
|Region|US|United States market configuration|
|Connectivity|WF|Wi-Fi|
|Power|AC|AC powered|
|Variant|E|Energy-aware version|
|Package|S|Single unit|

The region field must match the intended market, package language, rating label, certification plan, and commercial release record.

### ZH-TW

區域代碼出現在官方 SKU 結構的第四個欄位：

```text
ATB-[產品]-[世代]-[區域]-[連接]-[供電]-[版本]-[包裝]
```

示例：

```text
ATB-ACT-G1-US-WF-AC-E-S
```

表示：

|欄位|數值|含義|
|---|---|---|
|品牌|ATB|Artibird|
|產品|ACT|Artibird Act|
|世代|G1|第一代|
|區域|US|美國市場配置|
|連接|WF|Wi-Fi|
|供電|AC|AC 供電|
|版本|E|能源感知版本|
|包裝|S|單品|

區域欄位必須匹配目標市場、包裝語言、額定標籤、認證計劃與商業發布記錄。

---

## 27.6 U.S. Market Code — US

## 27.6 美國市場代碼 — US

### EN

The US region code is used for products intended for the United States market.

|Field|Requirement|
|---|---|
|Region Code|US|
|Market Scope|United States|
|Primary Language|English|
|Common Marketplace|Amazon US, direct website, U.S. channel, U.S. project|
|Certification Relevance|FCC, UL / ETL / NRTL review where applicable|
|Label Consideration|English label, electrical rating, responsible party where required|
|Packaging Consideration|U.S. packaging language and safety instructions|
|Electrical Consideration|U.S. voltage, plug, wiring, load, and installation condition|
|Claim Boundary|Do not imply FCC / UL / ETL unless completed and approved|

US should be the first primary commercial region for U.S.-market Artibird hardware planning.

### ZH-TW

US 區域代碼用於面向美國市場的產品。

|欄位|要求|
|---|---|
|區域代碼|US|
|市場範圍|美國|
|主要語言|英文|
|常見 Marketplace|Amazon US、官網、美國渠道、美國專案|
|認證相關性|適用時 FCC、UL / ETL / NRTL 審查|
|標籤考量|英文標籤、電氣額定、必要時責任方資訊|
|包裝考量|美國包裝語言與安全說明|
|電氣考量|美國電壓、插頭、接線、負載與安裝條件|
|宣稱邊界|FCC / UL / ETL 未完成並核准前不得暗示|

US 應作為 Artibird 硬體面向美國市場規劃的第一主要商業區域。

---

## 27.7 Canada Market Code — CA

## 27.7 加拿大市場代碼 — CA

### EN

The CA region code is used for products intended for the Canadian market.

|Field|Requirement|
|---|---|
|Region Code|CA|
|Market Scope|Canada|
|Primary Language|English / French where required|
|Common Marketplace|Amazon CA, Canadian channel, Canadian project|
|Certification Relevance|ISED, cUL, CSA-related review where applicable|
|Label Consideration|English / French requirements where applicable|
|Packaging Consideration|Bilingual packaging may be required|
|Electrical Consideration|Canada-specific electrical and wireless review|
|Claim Boundary|U.S. approval must not be treated as Canada approval unless applicable|

A US SKU should not automatically be used in Canada without CA market review.

### ZH-TW

CA 區域代碼用於面向加拿大市場的產品。

|欄位|要求|
|---|---|
|區域代碼|CA|
|市場範圍|加拿大|
|主要語言|適用時英文 / 法文|
|常見 Marketplace|Amazon CA、加拿大渠道、加拿大專案|
|認證相關性|適用時 ISED、cUL、CSA 相關審查|
|標籤考量|適用時英文 / 法文要求|
|包裝考量|可能需要雙語包裝|
|電氣考量|加拿大特定電氣與無線審查|
|宣稱邊界|不得將美國核准自動視為加拿大核准，除非適用|

US SKU 不應在未經 CA 市場審查前自動用於加拿大。

---

## 27.8 European Union Market Code — EU

## 27.8 歐盟市場代碼 — EU

### EN

The EU region code is used for products intended for European Union markets.

|Field|Requirement|
|---|---|
|Region Code|EU|
|Market Scope|European Union|
|Primary Language|Market-specific EU languages|
|Common Marketplace|Amazon EU, EU distributors, EU projects|
|Certification Relevance|CE, RED, EMC, LVD, RoHS, REACH review where applicable|
|Label Consideration|CE marking and EU declaration alignment where applicable|
|Packaging Consideration|Local language, safety, recycling, and compliance markings|
|Electrical Consideration|EU voltage, plug / adapter, wiring, load, and installation conditions|
|Claim Boundary|CE or EU compliance claims require technical file and declaration review|

EU is not a single-language packaging environment. Local market language review may be required.

### ZH-TW

EU 區域代碼用於面向歐盟市場的產品。

|欄位|要求|
|---|---|
|區域代碼|EU|
|市場範圍|歐盟|
|主要語言|依各 EU 市場語言|
|常見 Marketplace|Amazon EU、歐盟分銷商、歐盟專案|
|認證相關性|適用時 CE、RED、EMC、LVD、RoHS、REACH 審查|
|標籤考量|適用時 CE 標誌與 EU 聲明一致|
|包裝考量|當地語言、安全、回收與合規標誌|
|電氣考量|EU 電壓、插頭 / 適配器、接線、負載與安裝條件|
|宣稱邊界|CE 或 EU 合規宣稱需要技術文件與聲明審查|

EU 不是單一語言包裝環境，可能需要依具體市場進行本地語言審查。

---

## 27.9 United Kingdom Market Code — UK

## 27.9 英國市場代碼 — UK

### EN

The UK region code is used for products intended for the United Kingdom market.

|Field|Requirement|
|---|---|
|Region Code|UK|
|Market Scope|United Kingdom|
|Primary Language|English|
|Common Marketplace|Amazon UK, UK distributors, UK projects|
|Certification Relevance|UKCA review where applicable|
|Label Consideration|UKCA and UK-specific label requirements where applicable|
|Packaging Consideration|UK packaging language and regulatory information|
|Electrical Consideration|UK plug / adapter and electrical configuration review|
|Claim Boundary|EU CE records should not automatically be treated as UK approval|

UK records should remain separate from EU records when UK-specific compliance or marketplace requirements apply.

### ZH-TW

UK 區域代碼用於面向英國市場的產品。

|欄位|要求|
|---|---|
|區域代碼|UK|
|市場範圍|英國|
|主要語言|英文|
|常見 Marketplace|Amazon UK、英國分銷商、英國專案|
|認證相關性|適用時 UKCA 審查|
|標籤考量|適用時 UKCA 與英國特定標籤要求|
|包裝考量|英國包裝語言與法規資訊|
|電氣考量|英國插頭 / 適配器與電氣配置審查|
|宣稱邊界|不應將 EU CE 記錄自動視為 UK 核准|

當存在英國特定合規或 marketplace 要求時，UK 記錄應與 EU 記錄分開管理。

---

## 27.10 Taiwan Market Code — TW

## 27.10 台灣市場代碼 — TW

### EN

The TW region code is used for products intended for the Taiwan market.

|Field|Requirement|
|---|---|
|Region Code|TW|
|Market Scope|Taiwan|
|Primary Language|Traditional Chinese|
|Common Marketplace|Taiwan channel, project deployment, local e-commerce|
|Certification Relevance|NCC and local requirements where applicable|
|Label Consideration|Traditional Chinese label and local certification requirements|
|Packaging Consideration|Traditional Chinese packaging and safety information|
|Electrical Consideration|Taiwan voltage, plug, adapter, wireless, and installation conditions|
|Claim Boundary|Taiwan-specific certification claims require local approval|

TW records should use Traditional Chinese language control and local certification mapping where applicable.

### ZH-TW

TW 區域代碼用於面向台灣市場的產品。

|欄位|要求|
|---|---|
|區域代碼|TW|
|市場範圍|台灣|
|主要語言|繁體中文|
|常見 Marketplace|台灣渠道、專案部署、本地電商|
|認證相關性|適用時 NCC 與本地要求|
|標籤考量|繁體中文標籤與本地認證要求|
|包裝考量|繁體中文包裝與安全資訊|
|電氣考量|台灣電壓、插頭、適配器、無線與安裝條件|
|宣稱邊界|台灣特定認證宣稱需要本地核准|

TW 記錄應使用繁體中文語言管控，並在適用時映射本地認證。

---

## 27.11 Japan Market Code — JP

## 27.11 日本市場代碼 — JP

### EN

The JP region code is used for products intended for the Japanese market.

|Field|Requirement|
|---|---|
|Region Code|JP|
|Market Scope|Japan|
|Primary Language|Japanese|
|Common Marketplace|Amazon JP, Japanese channel, project deployment|
|Certification Relevance|MIC / TELEC, PSE where applicable|
|Label Consideration|Japanese label and certification requirements|
|Packaging Consideration|Japanese packaging, safety text, recycling, and local compliance|
|Electrical Consideration|Japan voltage, plug, adapter, wireless, and installation review|
|Claim Boundary|Japanese regulatory and marketplace claims must be reviewed|

JP should not reuse US or GL packaging without Japanese language and compliance review.

### ZH-TW

JP 區域代碼用於面向日本市場的產品。

|欄位|要求|
|---|---|
|區域代碼|JP|
|市場範圍|日本|
|主要語言|日文|
|常見 Marketplace|Amazon JP、日本渠道、專案部署|
|認證相關性|適用時 MIC / TELEC、PSE|
|標籤考量|日文標籤與認證要求|
|包裝考量|日文包裝、安全文字、回收與本地合規|
|電氣考量|日本電壓、插頭、適配器、無線與安裝審查|
|宣稱邊界|日本法規與 marketplace 宣稱必須審查|

JP 不應在未完成日文語言與合規審查前，直接重用 US 或 GL 包裝。

---

## 27.12 Australia / New Zealand Market Code — AU

## 27.12 澳洲 / 紐西蘭市場代碼 — AU

### EN

The AU region code is used for products intended for Australia and, where applicable, New Zealand.

|Field|Requirement|
|---|---|
|Region Code|AU|
|Market Scope|Australia / New Zealand where applicable|
|Primary Language|English|
|Common Marketplace|Amazon AU, AU / NZ channel, project deployment|
|Certification Relevance|RCM and applicable electrical / wireless requirements|
|Label Consideration|RCM and local label requirements where applicable|
|Packaging Consideration|English packaging and local compliance references|
|Electrical Consideration|AU / NZ plug, adapter, voltage, wireless, and installation review|
|Claim Boundary|AU / NZ compliance claims require applicable review|

AU should not be treated as equivalent to US or EU without electrical and compliance review.

### ZH-TW

AU 區域代碼用於面向澳洲市場，並在適用時涵蓋紐西蘭市場。

|欄位|要求|
|---|---|
|區域代碼|AU|
|市場範圍|澳洲 / 適用時紐西蘭|
|主要語言|英文|
|常見 Marketplace|Amazon AU、AU / NZ 渠道、專案部署|
|認證相關性|RCM 與適用電氣 / 無線要求|
|標籤考量|適用時 RCM 與本地標籤要求|
|包裝考量|英文包裝與本地合規引用|
|電氣考量|AU / NZ 插頭、適配器、電壓、無線與安裝審查|
|宣稱邊界|AU / NZ 合規宣稱需要適用審查|

AU 不應在未完成電氣與合規審查前，被視為等同於 US 或 EU。

---

## 27.13 Mainland China Market Code — CN

## 27.13 中國大陸市場代碼 — CN

### EN

The CN region code is used for products intended for the Mainland China market.

|Field|Requirement|
|---|---|
|Region Code|CN|
|Market Scope|Mainland China|
|Primary Language|Simplified Chinese|
|Common Marketplace|China e-commerce, local channel, project deployment|
|Certification Relevance|China market certification and labeling requirements where applicable|
|Label Consideration|Simplified Chinese label and local regulatory information|
|Packaging Consideration|Simplified Chinese packaging, safety text, and local claims|
|Electrical Consideration|China voltage, plug, wireless, and installation review|
|Claim Boundary|China-specific certification and marketplace claims require local review|

CN records should be separated from TW records because language, market, certification, and labeling requirements differ.

### ZH-TW

CN 區域代碼用於面向中國大陸市場的產品。

|欄位|要求|
|---|---|
|區域代碼|CN|
|市場範圍|中國大陸|
|主要語言|簡體中文|
|常見 Marketplace|中國電商、本地渠道、專案部署|
|認證相關性|適用時中國市場認證與標籤要求|
|標籤考量|簡體中文標籤與本地法規資訊|
|包裝考量|簡體中文包裝、安全文字與本地宣稱|
|電氣考量|中國電壓、插頭、無線與安裝審查|
|宣稱邊界|中國特定認證與 marketplace 宣稱需要本地審查|

CN 記錄應與 TW 記錄分開，因為語言、市場、認證與標籤要求不同。

---

## 27.14 Global Reference Code — GL

## 27.14 全球參考代碼 — GL

### EN

The GL region code is used for global reference planning, global design reference, or non-market-specific documentation.

|Field|Requirement|
|---|---|
|Region Code|GL|
|Market Scope|Global reference only|
|Primary Language|English reference unless otherwise defined|
|Common Use|Planning, internal reference, global SKU draft, non-market-specific documentation|
|Certification Relevance|Not a certification claim|
|Label Consideration|Not final label language|
|Packaging Consideration|Not final market packaging|
|Electrical Consideration|Must be reviewed before region-specific release|
|Claim Boundary|“Global” must not imply global certification or global commercial availability|

GL is useful for planning, but it must be converted into market-specific region codes before commercial release.

### ZH-TW

GL 區域代碼用於全球參考規劃、全球設計參考或非市場特定文件。

|欄位|要求|
|---|---|
|區域代碼|GL|
|市場範圍|僅全球參考|
|主要語言|除非另行定義，否則為英文參考|
|常見用途|規劃、內部參考、全球 SKU 草案、非市場特定文件|
|認證相關性|不代表認證宣稱|
|標籤考量|不是最終標籤語言|
|包裝考量|不是最終市場包裝|
|電氣考量|區域特定發布前必須審查|
|宣稱邊界|“Global” 不得暗示全球認證或全球商業可用|

GL 適合用於規劃，但在商業發布前必須轉換為市場特定區域代碼。

---

## 27.15 International / Project-Specific Code — INT

## 27.15 國際 / 專案特定代碼 — INT

### EN

The INT region code is used for international or project-specific deployment where the final market scope is not represented by a standard region code or requires custom review.

|Field|Requirement|
|---|---|
|Region Code|INT|
|Market Scope|International or project-specific|
|Primary Language|Defined by project|
|Common Use|B2B project, pilot deployment, institutional deployment, custom region|
|Certification Relevance|Must be reviewed by deployment location|
|Label Consideration|Must follow project and local requirements|
|Packaging Consideration|Must define language, label, manual, and safety requirements|
|Electrical Consideration|Must define voltage, plug, adapter, wireless, and installation requirements|
|Claim Boundary|No broad international claim without defined market approvals|

INT must not be used as a shortcut to avoid market-specific compliance review.

### ZH-TW

INT 區域代碼用於國際或專案特定部署，適用於最終市場範圍無法由標準區域代碼表示，或需要客製審查的情況。

|欄位|要求|
|---|---|
|區域代碼|INT|
|市場範圍|國際或專案特定|
|主要語言|依專案定義|
|常見用途|B2B 專案、試點部署、機構部署、客製區域|
|認證相關性|必須依部署地點審查|
|標籤考量|必須符合專案與當地要求|
|包裝考量|必須定義語言、標籤、手冊與安全要求|
|電氣考量|必須定義電壓、插頭、適配器、無線與安裝要求|
|宣稱邊界|未定義市場核准前，不得使用寬泛國際宣稱|

INT 不得被用作避免市場特定合規審查的捷徑。

---

## 27.16 Region Code and Certification Mapping

## 27.16 區域代碼與認證映射

### EN

|Region Code|Certification Mapping Rule|
|---|---|
|US|Map to FCC and safety review records where applicable|
|CA|Map to ISED and Canadian safety review where applicable|
|EU|Map to CE, RED, RoHS, REACH, and EU declaration records where applicable|
|UK|Map to UKCA and UK declaration records where applicable|
|TW|Map to NCC and local Taiwan records where applicable|
|JP|Map to MIC / TELEC and PSE records where applicable|
|AU|Map to RCM and AU / NZ compliance records where applicable|
|CN|Map to China market certification records where applicable|
|GL|No certification mapping unless converted to market-specific record|
|INT|Must map to project-specific local certification review|

### ZH-TW

|區域代碼|認證映射規則|
|---|---|
|US|適用時映射至 FCC 與安全審查記錄|
|CA|適用時映射至 ISED 與加拿大安全審查|
|EU|適用時映射至 CE、RED、RoHS、REACH 與 EU 聲明記錄|
|UK|適用時映射至 UKCA 與 UK 聲明記錄|
|TW|適用時映射至 NCC 與台灣本地記錄|
|JP|適用時映射至 MIC / TELEC 與 PSE 記錄|
|AU|適用時映射至 RCM 與 AU / NZ 合規記錄|
|CN|適用時映射至中國市場認證記錄|
|GL|除非轉換為市場特定記錄，否則不映射認證|
|INT|必須映射至專案特定本地認證審查|

---

## 27.17 Region Code and Packaging Language Rules

## 27.17 區域代碼與包裝語言規則

### EN

|Region Code|Packaging Language Rule|
|---|---|
|US|English packaging and safety information|
|CA|English / French where applicable|
|EU|Market-specific EU language review required|
|UK|English packaging and UK-specific compliance information|
|TW|Traditional Chinese packaging and local label requirements|
|JP|Japanese packaging and local safety information|
|AU|English packaging with AU / NZ compliance references|
|CN|Simplified Chinese packaging and local label requirements|
|GL|Reference language only; not final market packaging|
|INT|Project-defined language and label requirements|

Packaging language must match the actual commercial market. A region code must not be changed without reviewing packaging, labels, manuals, warnings, and compliance text.

### ZH-TW

|區域代碼|包裝語言規則|
|---|---|
|US|英文包裝與安全資訊|
|CA|適用時英文 / 法文|
|EU|需要依具體 EU 市場審查語言|
|UK|英文包裝與英國特定合規資訊|
|TW|繁體中文包裝與本地標籤要求|
|JP|日文包裝與本地安全資訊|
|AU|英文包裝與 AU / NZ 合規引用|
|CN|簡體中文包裝與本地標籤要求|
|GL|僅參考語言；不是最終市場包裝|
|INT|依專案定義語言與標籤要求|

包裝語言必須匹配實際商業市場。區域代碼變更時，必須同步審查包裝、標籤、手冊、警告與合規文字。

---

## 27.18 Region Code and Electrical Configuration Rules

## 27.18 區域代碼與電氣配置規則

### EN

|Region Code|Electrical Review Requirement|
|---|---|
|US|U.S. voltage, plug / adapter, load rating, wiring, installation review|
|CA|Canada electrical and label requirements review|
|EU|EU voltage, plug / adapter, wiring, load, and directive review|
|UK|UK plug / adapter, voltage, wiring, and safety review|
|TW|Taiwan voltage, plug, adapter, wireless, and installation review|
|JP|Japan voltage, plug, adapter, wireless, and installation review|
|AU|AU / NZ plug, adapter, voltage, electrical and wireless review|
|CN|China voltage, plug, wireless, and installation review|
|GL|Electrical configuration must remain reference-only until region-specific review|
|INT|Electrical configuration must be defined by deployment location|

Electrical configuration differences may require new SKU, new certification model, new packaging, or new product label records.

### ZH-TW

|區域代碼|電氣審查要求|
|---|---|
|US|美國電壓、插頭 / 適配器、負載額定、接線與安裝審查|
|CA|加拿大電氣與標籤要求審查|
|EU|歐盟電壓、插頭 / 適配器、接線、負載與指令審查|
|UK|英國插頭 / 適配器、電壓、接線與安全審查|
|TW|台灣電壓、插頭、適配器、無線與安裝審查|
|JP|日本電壓、插頭、適配器、無線與安裝審查|
|AU|AU / NZ 插頭、適配器、電壓、電氣與無線審查|
|CN|中國電壓、插頭、無線與安裝審查|
|GL|在區域特定審查前，電氣配置只能作參考|
|INT|電氣配置必須依部署地點定義|

電氣配置差異可能需要新 SKU、新認證型號、新包裝或新產品標籤記錄。

---

## 27.19 Region Code and Commercial Channel Rules

## 27.19 區域代碼與商業渠道規則

### EN

|Region Code|Channel Rule|
|---|---|
|US|May be used for U.S. website, Amazon US, U.S. distributors, and U.S. projects after approval|
|CA|May be used for Canada channel after Canada review|
|EU|May be used for EU channel after EU and market-language review|
|UK|May be used for UK channel after UK review|
|TW|May be used for Taiwan channel after local review|
|JP|May be used for Japan channel after local review|
|AU|May be used for AU / NZ channel after local review|
|CN|May be used for China channel after local review|
|GL|Not for final commercial sale unless converted to approved market SKU|
|INT|Project-specific only; not general commercial sale|

A commercial channel must not use a SKU outside its approved region scope.

### ZH-TW

|區域代碼|渠道規則|
|---|---|
|US|核准後可用於美國官網、Amazon US、美國分銷商與美國專案|
|CA|加拿大審查後可用於加拿大渠道|
|EU|EU 與具體市場語言審查後可用於歐盟渠道|
|UK|英國審查後可用於英國渠道|
|TW|本地審查後可用於台灣渠道|
|JP|本地審查後可用於日本渠道|
|AU|本地審查後可用於 AU / NZ 渠道|
|CN|本地審查後可用於中國渠道|
|GL|除非轉換為已核准市場 SKU，否則不可用於最終商業銷售|
|INT|僅限專案特定用途；不作一般商業銷售|

商業渠道不得使用超出已核准區域範圍的 SKU。

---

## 27.20 Region Change Rules

## 27.20 區域變更規則

### EN

Changing a SKU’s region code is a controlled action. In many cases, a new SKU is required instead of editing the existing SKU.

|Change Scenario|New SKU Required?|Notes|
|---|--:|---|
|US SKU adapted for CA market|Usually yes|Packaging, label, certification review required|
|US SKU adapted for EU market|Yes|Electrical, language, CE / RED review required|
|EU SKU adapted for UK market|Usually yes|UKCA and UK packaging review may apply|
|GL reference converted to US release|Yes|Region-specific SKU required|
|GL reference converted to EU release|Yes|Region-specific SKU required|
|INT project converted to public market SKU|Yes|Commercial SKU required|
|Same product used in another country without commercial release|Project review required|May remain INT if project-controlled|
|Region typo in draft SKU|No, if unreleased|Correct draft record|
|Region typo in released SKU|Change request required|Correction record may be needed|

### ZH-TW

變更 SKU 的區域代碼是一項受控動作。在許多情況下，應建立新 SKU，而不是直接修改既有 SKU。

|變更場景|是否需要新 SKU？|備註|
|---|--:|---|
|US SKU 調整為 CA 市場|通常是|需要包裝、標籤、認證審查|
|US SKU 調整為 EU 市場|是|需要電氣、語言、CE / RED 審查|
|EU SKU 調整為 UK 市場|通常是|可能需要 UKCA 與 UK 包裝審查|
|GL 參考轉換為 US 發布|是|需要區域特定 SKU|
|GL 參考轉換為 EU 發布|是|需要區域特定 SKU|
|INT 專案轉換為公開市場 SKU|是|需要商業 SKU|
|同一產品用於另一國家但非商業發布|需要專案審查|若受專案管控，可維持 INT|
|草案 SKU 中區域拼寫錯誤|若未發布則不需要|修正草案記錄|
|已發布 SKU 中區域拼寫錯誤|需要變更申請|可能需要修正記錄|

---

## 27.21 Region Claim Boundary Rules

## 27.21 區域宣稱邊界規則

### EN

|Claim Type|Rule|
|---|---|
|“For U.S. market”|Use only when US region configuration is approved|
|“For global use”|Avoid unless every claimed market is approved|
|“Works worldwide”|Do not use without region, power, wireless, and certification validation|
|“Certified for North America”|Do not use unless US and CA approvals are both reviewed and approved|
|“EU compliant”|Use only with completed EU technical file and declaration|
|“UK approved”|Use only with applicable UK review and approval|
|“International version”|Must define actual supported markets|
|“Global SKU”|Use only as internal planning language unless commercially approved|
|“Universal plug”|Use only when adapter and safety scope are clearly defined|
|“Multi-region compatible”|Requires compatibility, power, and compliance evidence|

### ZH-TW

|宣稱類型|規則|
|---|---|
|“For U.S. market”|僅在 US 區域配置已核准時使用|
|“For global use”|除非每個宣稱市場均已核准，否則避免使用|
|“Works worldwide”|未完成區域、供電、無線與認證驗證前不得使用|
|“Certified for North America”|除非 US 與 CA 均完成審查並核准，否則不得使用|
|“EU compliant”|僅在 EU 技術文件與聲明完成後使用|
|“UK approved”|僅在完成適用 UK 審查與核准後使用|
|“International version”|必須定義實際支援市場|
|“Global SKU”|除非商業核准，否則僅作內部規劃用語|
|“Universal plug”|只有在適配器與安全範圍清楚定義時使用|
|“Multi-region compatible”|需要相容性、供電與合規證據|

---

## 27.22 Region Master Table Template

## 27.22 區域主表模板

### EN

|Field|Entry|
|---|---|
|Region Code|TBD|
|Market Scope|TBD|
|Primary Language|TBD|
|Secondary Language|TBD / N/A|
|Common Marketplace|TBD|
|Certification Framework|TBD|
|Electrical Configuration Notes|TBD|
|Label Language Requirement|TBD|
|Packaging Language Requirement|TBD|
|Manual Language Requirement|TBD|
|Amazon / E-Commerce Requirement|TBD|
|Channel Availability|TBD|
|Commercial Release Boundary|TBD|
|Certification Claim Boundary|TBD|
|Compliance Owner|TBD|
|Product Owner|TBD|
|Approval Status|Draft / Pending / Approved / Deprecated / Archived|
|Revision Date|TBD|
|Change Log Reference|TBD|

### ZH-TW

|欄位|填寫|
|---|---|
|區域代碼|TBD|
|市場範圍|TBD|
|主要語言|TBD|
|第二語言|TBD / N/A|
|常見 Marketplace|TBD|
|認證框架|TBD|
|電氣配置備註|TBD|
|標籤語言要求|TBD|
|包裝語言要求|TBD|
|手冊語言要求|TBD|
|Amazon / 電商要求|TBD|
|渠道可用性|TBD|
|商業發布邊界|TBD|
|認證宣稱邊界|TBD|
|合規負責人|TBD|
|產品負責人|TBD|
|核准狀態|Draft / Pending / Approved / Deprecated / Archived|
|修訂日期|TBD|
|變更記錄引用|TBD|

---

## 27.23 Completed Example — US Region Record

## 27.23 完整示例 — US 區域記錄

### EN

|Field|Entry|
|---|---|
|Region Code|US|
|Market Scope|United States|
|Primary Language|English|
|Secondary Language|N/A|
|Common Marketplace|Amazon US / Direct Website / U.S. Distributor / U.S. Project|
|Certification Framework|FCC / UL / ETL / NRTL review where applicable|
|Electrical Configuration Notes|U.S. voltage, plug / adapter, wiring, load, and installation review required|
|Label Language Requirement|English|
|Packaging Language Requirement|English|
|Manual Language Requirement|English|
|Amazon / E-Commerce Requirement|Amazon US listing and compliance review required before release|
|Channel Availability|U.S. channel only after release approval|
|Commercial Release Boundary|US use only unless another region record is approved|
|Certification Claim Boundary|No FCC / UL / ETL claim unless certification is completed and claim wording is approved|
|Compliance Owner|TBD|
|Product Owner|TBD|
|Approval Status|Pending Review|
|Revision Date|TBD|
|Change Log Reference|CR-REG-US-001|

### ZH-TW

|欄位|填寫|
|---|---|
|區域代碼|US|
|市場範圍|美國|
|主要語言|英文|
|第二語言|N/A|
|常見 Marketplace|Amazon US / 官網 / 美國分銷商 / 美國專案|
|認證框架|適用時 FCC / UL / ETL / NRTL 審查|
|電氣配置備註|需要美國電壓、插頭 / 適配器、接線、負載與安裝審查|
|標籤語言要求|英文|
|包裝語言要求|英文|
|手冊語言要求|英文|
|Amazon / 電商要求|發布前需要 Amazon US 上架與合規審查|
|渠道可用性|發布核准後僅限美國渠道|
|商業發布邊界|僅限 US 使用，除非另一區域記錄已核准|
|認證宣稱邊界|FCC / UL / ETL 未完成並且文字未核准前，不得宣稱|
|合規負責人|TBD|
|產品負責人|TBD|
|核准狀態|Pending Review|
|修訂日期|TBD|
|變更記錄引用|CR-REG-US-001|

---

## 27.24 Region Master Governance Rules

## 27.24 區域主表治理規則

### EN

|Rule|Requirement|
|---|---|
|Region codes must be approved before SKU creation|No SKU should use an undefined region code|
|Region code must match intended market|Do not use US for non-U.S. release|
|Region code is not certification proof|Certification status must be tracked separately|
|GL is reference-only|Do not treat GL as global commercial approval|
|INT is project-specific|Do not use INT for general commercial release|
|Packaging language must match region|Region changes require packaging and manual review|
|Electrical configuration must match region|Region changes may require new hardware or adapter review|
|Certification mapping must be explicit|No implied market approval|
|Channel use must match region|Amazon or distributor use requires region approval|
|Retired region records must remain archived|Historical SKU traceability must be preserved|

### ZH-TW

|規則|要求|
|---|---|
|區域代碼必須在 SKU 建立前核准|不得使用未定義區域代碼建立 SKU|
|區域代碼必須匹配目標市場|不得將 US 用於非美國發布|
|區域代碼不是認證證據|認證狀態必須分開追蹤|
|GL 僅作參考|不得將 GL 視為全球商業核准|
|INT 為專案特定|不得將 INT 用於一般商業發布|
|包裝語言必須匹配區域|區域變更需要審查包裝與手冊|
|電氣配置必須匹配區域|區域變更可能需要新硬體或適配器審查|
|認證映射必須明確|不得暗示市場核准|
|渠道使用必須匹配區域|Amazon 或分銷使用需要區域核准|
|已退役區域記錄必須歸檔|必須保留歷史 SKU 可追蹤性|

---

## 27.25 Spreadsheet Column Recommendation

## 27.25 表格欄位建議

### EN

For Excel, Google Sheets, Airtable, ERP staging tables, or PLM reference tables, the following column order is recommended:

```text
Region Code
Market Scope
Primary Language
Secondary Language
Common Marketplace
Certification Framework
Electrical Configuration Notes
Label Language Requirement
Packaging Language Requirement
Manual Language Requirement
Amazon / E-Commerce Requirement
Channel Availability
Commercial Release Boundary
Certification Claim Boundary
Compliance Owner
Product Owner
Approval Status
Revision Date
Change Log Reference
```

### ZH-TW

對於 Excel、Google Sheets、Airtable、ERP 暫存表或 PLM 參考表，建議使用以下欄位順序：

```text
Region Code
Market Scope
Primary Language
Secondary Language
Common Marketplace
Certification Framework
Electrical Configuration Notes
Label Language Requirement
Packaging Language Requirement
Manual Language Requirement
Amazon / E-Commerce Requirement
Channel Availability
Commercial Release Boundary
Certification Claim Boundary
Compliance Owner
Product Owner
Approval Status
Revision Date
Change Log Reference
```

---

## 27.26 Chapter Conclusion

## 27.26 本章結論

### EN

The Region and Market Master Table controls how Artibird SKUs are connected to markets, certifications, packaging languages, electrical configurations, labels, manuals, Amazon marketplaces, channels, and commercial release boundaries.

A region code is not a certification claim and not a global sales permission. It is a controlled market configuration field.

By maintaining a clear region master table, Artibird can prevent market confusion, incorrect labeling, unsupported compliance claims, packaging-language errors, electrical mismatch, and uncontrolled international sales or deployment.

### ZH-TW

區域與市場主表管控 Artibird SKU 如何連接至市場、認證、包裝語言、電氣配置、標籤、手冊、Amazon marketplace、渠道與商業發布邊界。

區域代碼不是認證宣稱，也不是全球銷售許可。它是一個受控市場配置欄位。

透過維持清晰的區域主表，Artibird 可以防止市場混淆、標籤錯誤、未支援合規宣稱、包裝語言錯誤、電氣不匹配，以及不受控的國際銷售或部署。

---

**話題延伸｜互動建議**  
下一章可以繼續寫 **Chapter 28 — Connectivity Master Table｜第二十八章｜連接方式主表**，把 WF、ETH、BLE、IR、RF、IRRF、HYB、CLD、NA 等連接代碼的使用條件、產品線適配、認證影響與宣稱邊界整理成一張主表。