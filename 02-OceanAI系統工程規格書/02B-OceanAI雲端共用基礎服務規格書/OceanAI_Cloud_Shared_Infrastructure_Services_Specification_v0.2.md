# OceanAI Cloud Shared Infrastructure Services Specification v0.2

## OceanAI 雲端共用基礎服務工程規格

Candidate v0.2

2026-11-19

Architecture & Engineering Specification

本規格採用 One Platform + Multiple Domains｜單一平台、多業務場域 架構，規劃 16 項共用基礎服務，涵蓋帳號、通知、安全、稽核、檔案、事件、設備接入、OTA、AI、報告及資料治理。

### 核心架構決策

1. Cloud Shared Services｜雲端共用服務 提供跨 Home、School 等場域可重用的基礎能力。
2. OceanAI Runtime（ORT） 負責跨層運行協同及 Runtime 相關的全局運行能力。
3. ArtiOS Runtime（ART） 負責 Artibird 環境中的本地運行，包括設備狀態、場景、自動化、控制及本地事件。
4. Domain Services｜業務域服務 負責各場域的業務模型與操作流程。
5. Minimize Cloud Dependency｜最小化雲端依賴 保持為系統設計約束。

### 規格範圍與交付

| 項目 | 數量 | 說明 |
| --- | --- | --- |
| 服務能力 | 16 | Shared Infrastructure Services |
| 部署模組 | 4 | Initial Deployable Modules |
| 首期核心服務群 | 6 | S01–S06；另納入 S08、S09、S16 的 M1 最小能力 |

規格狀態：Author Review Required。尚未批准、尚未鎖定。

本版由 GitHub v0.1 原規格與 2026-11-09 的 P0 決策補充及只讀盤點合併而成。保留 One Platform + Multiple Domains 架構與 16 項邏輯服務，將七項 P0 候選決策納入資料、部署、Runtime 邊界與驗收章節。

盤點已抽查既有後端與 ORT Cloud Runtime 的程式碼及 SQL；未完成正式 OpenAPI Diff、資料庫 Schema Diff、正式環境或硬體驗證。服務 API、資料欄位、部署拓撲與政策參數仍為候選設計。2026-11-19 是本版整理日期，盤點證據仍固定於 2026-11-09 所讀取的提交，不代表現況已於本日重新驗證。

「應／必須」描述本候選規格要求，不表示既有系統已實現。授權期限、重試次數、容量及負載數值均為候選預設，須經安全、負載與硬體驗收確認。Author Review Required 不因本次合併而改變。

來源註記：OceanAI 系統架構.txt

## 一、系統架構與部署邊界

**Clients & Applications｜應用入口**

Artibird App · School Control Center · Operations Console · Admin Portal

**OceanAI Cloud Platform**

Shared Infrastructure：Identity · Notification · API · Security · Audit · Storage · Events · Observability

Domain Services：Home · School · Office · Hospital · Commercial

**OceanAI Runtime (ORT)**

跨層運行協同 · 多站點 Runtime 視圖 · 雲端 Runtime 對接

**Edge / Hub — ArtiOS Runtime (ART)**

Local State · Device Binding · Command Routing · Scenes · Automation · Event Bus · Local DB · Sync

**Artibird Physical Device System**

Gate · Sync · Switch · Panel · Sense · Plug-Act · Flow · Vision

### 部署原則

- Logical Service ≠ Microservice｜邏輯服務不等於獨立微服務： 16 項能力可以由少量部署模組承載。
- Cloud Availability Independence｜雲端可用性獨立： ART 本地控制不依賴雲端通知、計費、報告或 AI Gateway。
- Ownership Separation｜資料權責分離： 共用服務擁有自己的資料模型；ORT、ART 保有各自 Runtime 資料的權威來源。
- Secure Cross-Boundary Communication｜安全跨邊界通訊： 所有跨雲端、站點與裝置的連接均需驗證、授權、稽核及失敗處理。
- No Direct Cloud Bypass｜禁止雲端繞過本地控制： Cloud API 不應直接修改 ART 的本地設備狀態資料庫。

## 二、16 項服務的工程規格總表

以下 API 採用候選路徑 `/v1/...`。所有寫入 API 應有授權檢查、必要的冪等控制、錯誤回應及稽核策略。

| ID / Service | 核心職責與資料模型 | API 契約概要 | 依賴、部署邊界及 MVP 驗收 |
| --- | --- | --- | --- |
| S01 Identity & Access 身分與存取 | `User`, `Identity`, `Session`, `Credential`, `Role`, `Permission`。登入、密碼、MFA、Session 與授權 | `POST /auth/login`、`POST /auth/password/reset-requests`、`GET /auth/me` | 依賴機密管理及通知。Cloud；ART 使用本地授權快照。驗收：重設 Token 單次有效、會話撤銷、跨租戶存取拒絕 |
| S02 Organization & Tenant 組織與租戶 | `Tenant`, `Organization`, `Membership`, `SiteRef`, `Invitation`。組織、站點歸屬、成員 | `POST /organizations`、`POST /invitations`、`GET /organizations/{id}/members` | 依賴 S01。Cloud；SiteRef 參照業務域站點。驗收：組織隔離、成員邀請、權限變更有效 |
| S03 Notification 通知 | `Notification`, `Template`, `DeliveryAttempt`, `Preference`。Email、Push、SMS 與站內通知 | `POST /notifications`、`GET /notifications/{id}`、`PUT /notification-preferences` | 依賴 S01、S06、S08。Cloud；ART 只發布適當事件。驗收：模板渲染、重試、去重、投遞狀態 |
| S04 API Gateway API 閘道 | `RoutePolicy`, `ClientPolicy`, `RateLimitRule`。API 路由、驗證整合及限流 | `/v1/*`、`GET /health` | 依賴 S01、S06。Cloud Ingress。驗收：未授權拒絕、租戶上下文可信、限流有效 |
| S05 Audit & Activity 稽核 | `AuditEvent`, `Actor`, `Target`, `EvidenceRef`。重要操作及安全事件紀錄 | `POST /internal/audit-events`、`GET /audit-events` | 依賴 S01、S02、S08。Cloud，接收 ART 同步證據。驗收：事件可追溯、權限受控、重複事件去重 |
| S06 Configuration & Secrets 配置與機密 | `ConfigVersion`, `FeatureFlag`, `SecretRef`。配置、金鑰、環境及版本 | `GET /internal/config/{key}`、內部機密管理介面 | Cloud 安全控制面。驗收：機密不可經一般 API 讀取、輪換有效、配置回滾 |
| S07 File & Object Storage 檔案儲存 | `FileObject`, `ObjectVersion`, `AccessGrant`。檔案、報告、封存及存取 | `POST /files/upload-sessions`、`GET /files/{id}` | 依賴 S01、S02、S06。Cloud 物件儲存。驗收：租戶隔離、檔案完整性、過期授權失效 |
| S08 Event & Task 事件與任務 | `EventEnvelope`, `Task`, `Schedule`, `RetryPolicy`。非同步事件、背景任務與排程 | `POST /internal/events`、`POST /internal/tasks`、`GET /internal/tasks/{id}` | 運行必要依賴為 S06、工作負載身分與持久化設施；S09 為監測整合，不是啟動前提。Cloud 非同步層；不取代 ART Event Bus。最小可靠能力於 M1 交付。驗收：重試、死信、冪等及故障恢復 |
| S09 Observability 可觀測性 | `Metric`, `LogRecord`, `Trace`, `HealthSignal`。監測、診斷資料與告警 | `POST /internal/telemetry`、`GET /observability/health` | 基本收集使用 S06 與獨立有界緩衝；S07、S08 僅供封存、匯出與告警整合。Cloud；接收 ART 彙總資料的能力待聯調。基本健康與追蹤於 M1 交付。驗收：跨服務追蹤、指標可查、斷線補傳 |
| S10 Device Provisioning & Credential 設備身分與憑證 | `DeviceIdentity`, `Enrollment`, `CertificateRef`, `Revocation`。設備註冊及信任管理 | `POST /device-enrollments`、`POST /device-credentials/rotate` | 依賴 S01、S02、S06、ORT。Cloud 身分控制面；ART 管理本地接入。驗收：未授權設備拒絕、憑證撤銷、重新註冊 |
| S11 OTA & Release 更新與發佈 | `Artifact`, `Release`, `Rollout`, `UpdateResult`。版本、韌體簽章、部署追蹤 | `GET /releases`、`POST /rollouts`、`GET /rollouts/{id}` | 依賴 S06、S07、S10。Cloud 發佈控制面；ART 執行本地安全更新流程。驗收：簽章、版本相容性、失敗保護 |
| S12 Subscription & Billing 訂閱與計費 | `Plan`, `Subscription`, `UsageRecord`, `InvoiceRef`。服務方案及用量 | `GET /subscriptions`、`GET /billing/usage` | 依賴 S01、S02、S08。Cloud。驗收：用量不重計、帳務隔離、外部支付事件驗證 |
| S13 AI Gateway & Usage AI 接入與用量 | `ModelRoute`, `AIRequest`, `UsageRecord`, `BudgetPolicy`。模型接入、配額、成本及追蹤 | `POST /ai/inference`、`GET /ai/usage` | 依賴 S01、S02、S05、S06。Cloud；不得繞過 ART 控制授權。驗收：配額限制、敏感資料遮罩、請求追蹤 |
| S14 Reporting & Export 報告與匯出 | `ReportJob`, `ReportArtifact`, `ExportPolicy`。報告產生、排程及匯出 | `POST /reports/jobs`、`GET /reports/jobs/{id}` | 依賴 S07、S08、S09。Cloud；讀取授權資料投影。驗收：可重現、隔離、下載權限與到期處理 |
| S15 Integration & Webhook 外部整合 | `Integration`, `WebhookEndpoint`, `DeliveryRecord`。外部系統接入與事件交換 | `POST /integrations`、`POST /webhooks/subscriptions` | 依賴 S01、S06、S08。Cloud 整合邊界。驗收：簽章、重試、來源驗證及權限控制 |
| S16 Data Governance & Retention 資料治理 | `RetentionPolicy`, `DataClass`, `DeletionRequest`, `LegalHold`。資料保存、刪除及分類 | `GET /data-policies`、`POST /data-requests` | 依賴 S01、S02、S05、S07。Cloud；ART 另有本地資料生命週期。驗收：保留期限執行、刪除證據、合法保存例外 |

工程約束： 表中的 API 路徑與資料實體沿用 v0.1 作為 v0.2 候選契約；本版未宣告其與既有 API 相容。已完成的原始碼抽查與採用判定見第十一節，正式實作前仍應進行 OpenAPI Diff、資料庫 Schema Diff 與事件格式核對。

## 三、共用 API 與資料契約

為避免各服務自行發展不相容的格式，建議建立統一契約。

### 3.1 API 基本規則

| 項目 | 候選規格 |
| --- | --- |
| Public API | HTTPS REST / JSON；`/v1` 版本路徑 |
| Internal Service API | Private network + workload authentication |
| Authentication | OIDC / OAuth 2.0，依客戶端類型使用適當流程 |
| Authorization | Tenant + Role + Resource + Action |
| Identifier | UUID 或既有系統相容的全域唯一 ID |
| Time | RFC 3339 UTC，顯示時轉換使用者時區 |
| Idempotency | 重要寫入請求使用 `Idempotency-Key` |
| Traceability | `X-Request-ID` 與 `trace_id` |
| Pagination | Cursor-based Pagination｜游標分頁 |
| Errors | 統一 `code`, `message`, `request_id`, `details` |
| API Changes | OpenAPI 規格版本與相容性檢查 |

特別需要避免依賴客戶端任意提交的 `tenant_id` 進行授權。租戶上下文必須由已驗證的身分與資源歸屬關係共同確認。

### 3.2 共用事件資料模型

```json
{
  "event_id": "evt_01",
  "event_type": "identity.password.changed",
  "schema_version": "1.0",
  "source": "identity-service",
  "tenant_id": "tenant_001",
  "site_id": null,
  "actor": {
    "type": "user",
    "id": "user_001"
  },
  "subject": {
    "type": "account",
    "id": "user_001"
  },
  "occurred_at": "2026-11-09T09:00:00Z",
  "correlation_id": "corr_001",
  "trace_id": "trace_001",
  "data": {
    "notification_required": true
  }
}
```

這個模型由 Cloud Event Service 管理。ART Local Event Bus 可採用自身適合低延遲運行的事件模型，跨邊界時透過 Event Adapter｜事件轉接器轉換。

事件傳遞預設應按 At-Least-Once Delivery｜至少一次投遞 設計，消費端透過 `event_id` 和操作冪等鍵避免重複處理。不應假設訊息系統能保證端到端恰好一次執行。

### 3.3 共用資料關聯

Tenant｜租戶 是資料與授權隔離邊界；Organization｜組織、Membership｜成員關係、Site Reference｜站點參照及 Policies｜權限與政策在該邊界內關聯。Shared Service Records 包括 Notifications · Audit · Files · Tasks · AI Usage · Reports。各實體的關係依下列 D04 契約定義，不視為單一線性階層。

`Tenant`、`Organization`、`Site`、`User`、`Device` 必須分別建模，避免將學校、住宅、建築、帳號或設備視為同一種實體。`SiteRef` 只承載引用，具體教室、樓層、建築及空間拓撲由相應 Domain / Runtime 模型管理。

### 3.4 D04 — Tenant／Organization／Site 的關係與遷移

決策：Tenant 是雲端資料與授權的最外層隔離單位。User 為平台身分，可加入多個 Tenant；登入不自動授權所有 Tenant 資源。

- 一個 Organization 屬於一個 Tenant；組織階層不能跨 Tenant。
- 一個 SiteRef 在任一有效時間僅屬於一個 Tenant，可由該 Tenant 的一個管理 Organization 管理；具體空間拓撲仍由 Domain／Runtime 擁有。
- Membership 明確記錄 User、Tenant、作用範圍、角色、有效期及版本。租戶、組織、站點角色不可互相默認繼承。
- 租戶管理員不自動獲得設備控制權；控制仍須檢查操作權限及本地政策。
- 站點／設備轉移是有狀態的撤權與重新授權流程，包含舊綁定失效、憑證處理、資料歸屬與稽核；不能僅更新 `tenant_id`。

既有 `iot_family` 與 `iot_family_x_user` 僅證明家庭、建立者與成員關係，不能直接視為完整 Tenant／Organization 模型。[E04]

候選 Home 遷移：每個既有 family 建立一個 Tenant 與一個 Home SiteRef，保留 family 作為 Home Domain 實體，以 LegacyResourceMap 關聯；既有建立者／成員先形成候選 Membership，完成資料歸屬與權限核對後啟用。不得按相同建立者自動合併不同 family。School 依機構隔離需求建立 Tenant，再配置多站點。

資源授權採「驗證主體 → 選定租戶 → 查有效 Membership → 核對資源歸屬 → 判定 Resource＋Action」。Gateway、服務端、Worker、MQTT ACL、檔案及報告均須覆蓋；加一個 `tenant_id` 欄位本身不構成隔離。

驗收：多租戶使用者切換、被撤銷成員、同 ID 異租戶資源、跨站點控制、Worker 重放與站點轉移。舊固定 Token 不得作為個人身分或權限證明。

### 3.5 D06 — 業務更新、會話撤銷與 Outbox 的一致性

決策：帳號憑證更新、適用會話撤銷、授權版本變更與 Outbox 寫入，在同一個資料庫交易完成。交易失敗全部回滾；提交成功即回報密碼操作成功，通知由 Worker 非同步處理。

Outbox 包含事件 ID、聚合實體 ID／版本、事件型別／版本、租戶上下文、發生時間及經最小化的內容。不得包含密碼、完整重設 Token 或其他機密。Worker 採具租約的領取與失敗恢復，候選重試為指數退避加抖動、最多 10 次或 24 小時，以先到者為準；之後進入可查詢死信。

消費端的事件處理紀錄與本地資料副作用在同一交易提交。外部寄信、付款與硬體控制另以目的端冪等或結果查詢處理；不能用資料庫 Inbox 宣稱外部副作用恰好一次。

重設 Token 須以用途、帳號與到期時間綁定，安全隨機產生、僅存雜湊，並在更新憑證的交易中條件式單次消耗。重複提交不得重設第二次；請求介面不得洩漏帳號是否存在。

現有 Refresh Token 輪換、重放撤銷及密碼更新撤銷可沿用其設計與測試基礎。[E01][E02] 但撤銷 Refresh Token 不代表已簽發 access JWT 即時失效；新版受保護 API 必須檢查 Session／使用者授權版本。候選 access JWT 有效期縮短為 15 分鐘；高風險操作要求最新撤權檢查，不能只等 Token 到期。

驗收：交易各階段中斷、Worker 領取後崩潰、同一重設 Token 並行使用、舊 access token 使用、Provider 成功但回應遺失、死信重放。事件監測故障不得改變已提交密碼變更的結果。

## 四、服務依賴與部署架構

建議首期採 Modular Deployment｜模組化部署，在邏輯上維持 16 項服務契約，以以下四組作為目標部署分組。可由既有應用分階段承載，不要求立即新建四個微服務、四套資料庫或一次拆分既有系統。

| Deployable | 包含服務 | 部署形式 |
| --- | --- | --- |
| `identity-service` | S01、S02 | Cloud API + Identity DB |
| `notification-service` | S03 | Cloud Workers + Mail Provider |
| `platform-core` | S04、S05、S06、S08 的部分能力 | API Ingress + Audit / Events |
| `platform-operations` | S07、S09 與報告基礎能力 | Storage + Telemetry + Workers |

S10–S16 依產品成熟度逐步加入現有模組或拆分成獨立服務；S16 的初始治理規則於 M1 建立。API Gateway、Secrets Manager、Event Broker、Object Storage、Database 可以採用受管理的基礎設施，無須自行編寫相同能力。既有 `iot-backend` 與 `emqxMP` 共用資料庫的遷移約束見第 11.2 節。

部署邊界建議：

- Public Zone｜公開入口：API Gateway、必要的登入端點。
- Private Application Zone｜私有應用區：服務 API、背景 Workers、ORT Cloud Components。
- Data Zone｜資料區：Database、Object Storage、Audit Store、Telemetry Store。
- Site Zone｜站點區：ART、Hub、Gate、Sync 及設備。

Cloud 與站點之間採取驗證的雙向通訊契約，並維護連線生命週期、版本相容性、事件同步及權限有效期。

### 4.1 D01 — M1 納入最小可靠事件能力

決策：M1 包含 S01–S06 的 P0 能力，加上 S08 的 Outbox、持久化任務、重試、消費去重、死信及人工重放工具；S09 的基本結構化日誌、健康檢查與追蹤；S16 的初始分類、保存及刪除規則。

M1 不要求先建通用排程平台或獨立 Event Broker。可先由同一資料庫的 Outbox 與 Worker 承載，保持邏輯契約獨立。四個部署名稱是邏輯部署分組，不能解讀為必須立即建立四個獨立微服務或四套資料庫。

既有依據：後端已有提交後的 MQTT 通知，但發送失敗只記錄日誌，不能滿足持久化重試要求。[E03]

驗收：資料提交後、發布前中止程序，重啟仍可送達；重送不重複建立邏輯通知；無效事件可隔離、查詢及受控重放。郵件供應商若不支援冪等，不能承諾絕不重複寄信，應記錄結果不明並限制重送。

### 4.2 D02 — 移除 S08／S09 的必要循環依賴

決策：S08 的運行必要依賴為配置／工作負載身分及持久化設施；S09 是監測整合，不是啟動前提。S09 的基本收集不依賴 S08、S07 或通知成功；匯出、封存與告警投遞才可使用這些能力。

服務在遠端遙測失效時寫入有界本地緩衝並暴露退化狀態。不得以遙測故障阻止本地控制。Liveness 反映程序健康；Readiness 反映該服務提供承諾功能所需的依賴，不因非必要監測失效而一律拒絕流量。

驗收：關閉遙測匯入端，事件與通知任務仍可處理；關閉事件 Worker，健康及錯誤日誌仍可取得。緩衝容量、滿載策略須列入部署參數。

## 五、ORT／ART 職責逐項核對

這一部分是本規格的重要架構邊界。

表中「ORT」代表 OceanAI Runtime 的跨層運行責任，「ART」代表 ArtiOS Runtime 的本地執行責任。共用服務可以支援 ORT／ART，但不取得其核心 Runtime 職責。

| 服務 | ORT 關係 | ART 關係 | 邊界判定 |
| --- | --- | --- | --- |
| S01 Identity | 全局授權上下文 | 本地授權快照與檢查 | Cloud 管帳號；ART 執行本地授權 |
| S02 Tenant | 跨站點歸屬 | 本地站點識別 | 學校組織結構不由 ART 管理 |
| S03 Notification | 發出運行通知事件 | 發出本地告警事件 | 發信失敗不阻塞控制 |
| S04 API Gateway | 提供雲端入口 | 保持獨立 Local API | Cloud Gateway 不接管本地 API |
| S05 Audit | 跨站點操作追溯 | 本地操作與命令稽核 | 雙方保留來源與關聯 ID |
| S06 Configuration | 雲端配置與策略分發 | 本地已批准配置 | 雲端不可任意覆寫安全配置 |
| S07 Storage | 歷史與封存資料 | Local DB 與必要快取 | Local DB 保有本地運行資料權威 |
| S08 Event & Task | 跨服務事件與任務 | Local Event Bus、Automation | Cloud Task 不取代 Local Automation |
| S09 Observability | 全局運行監測 | 本地健康監測及日誌 | Cloud 訂閱或接收彙總資料 |
| S10 Provisioning | 全局設備身分及歸屬 | Device Registry / Binding | 身分註冊與本地 Binding 分離 |
| S11 OTA | 更新策略及協調 | 本地更新執行與安全檢查 | 雲端發佈；ART 安全執行 |
| S12 Billing | 使用量及商業權益資訊 | 不承載帳單邏輯 | 本地基本控制不因計費失聯中斷 |
| S13 AI Gateway | 雲端 AI 服務接入 | Local SLM/VLM 及規則 | AI 建議不直接獲得設備執行權 |
| S14 Reporting | 全局及歷史報告 | 本地事件與狀態資料來源 | 報告可追溯至 Runtime 證據 |
| S15 Integration | 外部系統事件交換 | 本地協議及設備接入 | Webhook 不取代 Gate / Sync |
| S16 Governance | 雲端資料生命週期 | 本地資料保留及清理 | 跨邊界刪除與同步須有明確政策 |

### 與 ART Local Runtime P0 的目標責任核對

以下描述目標責任歸屬，不是現有 Hub 實作完成清單。Hub／hubServer 與韌體原始碼尚未取得，本地授權、場景、自動化及同步能力須另行驗證。

| ART 目標能力 | 是否由 ART 承擔 | Cloud 對接方式 |
| --- | --- | --- |
| Device Registry | 是 | S10 / ORT 只同步所需的識別與歸屬資料 |
| Device State | 是 | 發布帶時間及版本的狀態更新 |
| Capability Model | 是 | Cloud 可持有相容的能力描述投影 |
| Device Binding | 是 | 本地綁定；雲端記錄必要關聯 |
| Command Routing | 是 | Cloud Command Request 由 ART 驗證及路由 |
| Local Control API | 是 | 保留站點內獨立控制入口 |
| Scene Engine | 是 | Cloud 可管理經批准的場景配置版本 |
| Automation Engine | 是 | 自動化持續在本地運行 |
| Event Bus | 是 | 透過 Event Adapter 選擇性同步 |
| Local DB | 是 | Cloud 持有必要同步資料與歷史投影 |
| Cloud Sync | 是 | 與 ORT 的同步契約及衝突處理銜接 |

新增 Shared Infrastructure Services 的架構目標是保留 ART 核心控制責任；是否需要改造既有 Hub 的控制引擎，須在取得原始碼與硬體驗證後判定。既有雲端場景與定時不得直接視為 ART 本地實作。

### 5.1 D03 — ORT 擁有跨邊界命令契約，ART 裁決本地執行

決策：跨邊界命令屬於 ORT／ART Boundary Contract，不新增為第 17 項共用服務。ORT Cloud Runtime 負責接收、授權、持久化、派送及彙整結果；ART 負責站點身分檢查、當地政策、安全前提、去重、路由與執行證據。S08 只提供傳遞基礎能力。

候選部署承載：既有 `emqxMP` 作為 ORT Cloud Runtime 的遷移起點；ART 端待取得 Hub 原始碼後確認。角色責任已提出，工程負責人尚未指派。

命令必要欄位：`command_id`、`schema_version`、`tenant_id`、`site_id`、`target`、`action`、`parameters`、經驗證的 `actor`、`authorization_ref`、`policy_version`、`issued_at`、`expires_at`、`preconditions`、`correlation_id`、`trace_id`。接收方須從可信連線與資源歸屬核對上下文，不信任任意字串。

狀態契約：

- `ACCEPTED → DISPATCHED → EXECUTING → SUCCEEDED / FAILED`。
- 可在執行前轉為 `REJECTED` 或 `EXPIRED`；執行開始後逾時表示結果待查，不代表設備已停止或必然失敗。
- `UNKNOWN` 是結果未能確認的觀測狀態，可由後續可信證據解析；不得自動轉成成功或觸發重新執行。
- 每次狀態更新具有來源、來源序號、時間及證據引用；終態衝突必須保留並告警，不能用抵達時間覆寫。

Cloud HTTP 回應 `202` 只表示持久化接受。Broker ACK、發布成功與時間窗匹配均不等於設備執行成功。ART 與設備回執的證據強度應分別記錄。

ART 在執行前持久化命令去重紀錄。同一 ID、相同內容回傳已知結果；同一 ID、不同內容拒絕。去重至少覆蓋命令有效期與允許重送期間；候選最低為 7 日。過期命令不得重新執行。物理副作用與資料庫記錄不能假設原子提交：執行中崩潰時，非冪等操作進入結果待查，先查設備再裁決，禁止盲目重試。

既有依據：`SwitchTraceRegistry` 以設備、通道與時間窗匹配回報，並使用 `TIME_WINDOW`／`UNMATCHED` 標記。[E06] Adapter 必須保留此證據強度，不能生成虛假的端到端成功。

路由規則：對已知 Hub 管理的設備，Hub 歸屬未恢復或不明時應拒絕／暫緩派送；不得因記憶體中的 `connectHub` 暫缺就自動視為直連。合法直連設備仍走 ORT 授權路徑。

驗收：回執遺失、重送、ART 重啟、命令過期、政策撤銷、未知路由與執行中斷電。舊協定無法提供去重及回執時，只能列為受限相容模式，不能通過新版命令保證驗收。

### 5.2 D05 — 本地授權快照及離線政策

決策：ART 只接受可驗證簽章且綁定站點的授權快照。必要欄位包含 `snapshot_id`、單調遞增版本、租戶／站點、主體與權限、操作分類、簽發／生效／到期時間及金鑰 ID。快照只是授權依據，客戶端仍須證明自己持有相應本地身分憑證。

候選預設：在線每 5 分鐘檢查政策更新；互動式本地一般控制授權最長有效 24 小時，過期後拒絕新的使用者操作。此值不等同目前 access JWT 的 24 小時設定，兩者是獨立契約。

| 情境 | 離線處理 |
| --- | --- |
| 一般本地控制 | 有效本地身分、未到期授權、資源歸屬與安全檢查皆通過時允許 |
| 已批准場景／自動化 | 由獨立持久政策授權，明訂有效期與允許動作；不可借用過期使用者 Session。安全規則持續有效 |
| 租戶／站點轉移、設備認領、權限提升 | 禁止；須完成在線信任及歸屬驗證 |
| 離線新收到的 Cloud 命令 | 不接受；恢復連線後重新檢查有效期與最新授權 |
| OTA | 禁止開始新的更新；已開始者依本地安全更新狀態機完成或恢復 |
| 計費失聯 | 不停止已批准的本地基本控制；付費擴充能力依有效權益快照處理 |
| 緊急安全保護 | 由預先批准的本地安全策略執行，不依賴雲端通知或使用者 Session |

離線期間無法保證即時得知雲端撤權。一般互動控制的撤權風險上限為快照剩餘有效期；更高風險操作必須在線，不能套用 24 小時例外。重連後先更新撤銷／政策，再恢復待派送命令。

時鐘倒退或無法建立可信時間時，拒絕建立新的時效性授權；已批准的安全自動化按獨立政策繼續。使用可信時間錨點與單調時計防止延長快照壽命，重啟恢復策略需由 Hub 實證。

驗收：快照到期、撤權後斷線、舊版本重放、簽章錯誤、跨站點快照、時鐘倒退及重連順序。Hub 未核查前，不得宣稱已有本地授權快照能力。

### 5.3 D07 — 設備信任引導與首次註冊

決策：雲端 DeviceIdentity 管理信任與歸屬；ART Device Registry 管理本地能力與接入。MAC、CPU serial 與可複印的 QR 識別字串不得單獨作為設備身分證明。

新硬體優先使用製造端逐設備金鑰／憑證；註冊採設備持有私鑰的挑戰回應。操作人先以有效站點權限取得短效認領授權，設備再以獨立的出廠身分證明交換站點範圍憑證。候選認領授權有效期為 10 分鐘、單次消耗；憑證私鑰在設備產生，雲端僅接收公鑰／CSR。

流程狀態：`PENDING → VERIFIED → CREDENTIAL_ISSUED → BINDING_PENDING → ACTIVE`。只有 ART 回覆綁定確認後才顯示可用。發證後綁定失敗須撤銷／作廢未完成憑證，並保留可恢復狀態；跨 Cloud／ART 不假設分散式交易。

舊設備缺少逐設備金鑰時，採「受限舊設備」模式：由受信任 Hub 在現場認領流程證明接入關係，權限與可用能力受限。此方式不等同逐設備密碼學身分；未完成 Hub 信任評估的型號不得開放遠端自助認領。轉移、重置及重新註冊不得復用舊認領授權。

設備連線需驗證站點憑證及操作範圍；撤銷必須影響新連線，並關閉已建立的受影響雲端連線。離線撤銷仍受 D05 的政策限制，不得宣稱全系統即時撤銷。

驗收：複製 QR、重放挑戰、錯誤租戶／站點、並行認領、簽章錯誤、已撤銷憑證、長連線撤銷、發證後 ART 拒絕綁定，以及所有權轉移。舊掃碼綁定流程只能當作 Adapter 起點。[E08]

## 六、MVP 驗收標準與測試矩陣

以下是候選測試門檻。每一項都需要對應自動化測試、操作紀錄或可重現的驗收證據。

| 服務 | MVP 驗收測試 | 必須取得的證據 |
| --- | --- | --- |
| S01 | 正常登入、錯誤密碼、Token 過期、MFA、Session 撤銷；跨租戶請求全部拒絕 | Auth API 測試、Security Tests |
| S02 | 邀請、加入、退出組織；不同租戶資料互不可見 | Tenant Isolation Tests |
| S03 | 驗證郵件成功；重試不重複建立邏輯通知；可查成功、失敗、退信 | Provider Sandbox 與 Delivery Logs |
| S04 | 未驗證 API 回應 401；無權限回應 403；限流產生 429 | Gateway Integration Tests |
| S05 | 重要安全事件具有 actor、時間、來源、correlation ID；禁止一般使用者修改稽核紀錄 | Audit Evidence Tests |
| S06 | 機密輪換後服務可繼續運行；機密不出現在 API 或 Logs；配置可回滾 | Secrets Rotation Tests |
| S07 | 授權使用者可上傳下載；跨租戶拒絕；下載連結到期 | Object Access Tests |
| S08 | 消費端中斷後可重試；毒性事件進入 DLQ；本地交易副作用可去重；外部副作用須有目的端冪等或結果不明處理 | Worker Failure Tests |
| S09 | 能以 trace ID 關聯 API、任務及通知；ART 離線後恢復同步 | Telemetry & Recovery Tests |
| S10 | 未授權設備不可註冊；已撤銷憑證不可重新建立受保護連線 | Device Identity Tests |
| S11 | 未簽章韌體拒絕；不相容版本拒絕；失敗時安全恢復或保持可運行版本 | OTA Hardware Tests |
| S12 | 重複用量事件只計一次；跨租戶不可查帳單；付款事件簽章通過 | Billing Reconciliation Tests |
| S13 | 超配額請求拒絕；敏感資料按政策處理；AI 成本可歸屬租戶 | AI Gateway Tests |
| S14 | 指定時間段產生報告；來源證據可查；跨租戶匯出拒絕 | Report Reproducibility Tests |
| S15 | Webhook 簽章失敗拒絕；接收端暫時故障可安全重試 | Integration Contract Tests |
| S16 | 保留期限到期執行清理；刪除流程具有結果和例外紀錄 | Retention & Deletion Tests |

### 系統級必過測試

### Runtime Independence Test｜Runtime 獨立運行驗證

這一項應列為 OceanAI 系統級驗收，而非僅檢查個別 Cloud Service。

1. 將測試站點的 Cloud Uplink 斷開。
2. 在既有授權與本地策略允許下，驗證 ART 的 Local Control API、Device State、Scene Engine 與 Automation Engine 持續運行。
3. 產生本地事件與操作紀錄，確認可在容量限制內持續保存。
4. 恢復 Cloud Uplink，驗證事件補傳、去重、順序相關處理及同步結果。
5. 檢查 Cloud Notification、Reporting 與 Observability 的資料一致性及延遲狀態。

通過條件：雲端不可達期間，既有有效授權下的本地核心控制仍可完成；同步恢復後不得產生未授權控制、重複控制或錯誤成功回報。

涉及計費、憑證撤銷、OTA 安全、緊急授權變更及跨站點指令時，需要分別設計離線政策。不能以「離線持續運作」概括所有安全與授權情境。

### 6.1 M1 與系統驗收閘門

| 閘門 | 必須提供的證據 | 目前狀態 |
| --- | --- | --- |
| 帳號沿用 | 帳號 ID／登入名／第三方映射、密碼遷移及會話相容測試 | 待資料與實測 |
| API 授權 | 新舊所有可達入口、逐請求身分驗證及跨租戶負向測試 | 程式碼已確認存在差距 |
| 通知可靠性 | Outbox 故障注入、去重、死信、Provider 結果不明處理 | 待實作與測試 |
| 部署可重建 | 遷移清單、空白環境建置、機密注入、回滾及還原演練 | 未實證 |
| Runtime 邊界 | 版本化命令／同步契約、證據強度及舊協定限制 | 已提出候選，待聯調 |
| 本地獨立運行 | Hub 程式碼核查與硬體斷網／恢復測試 | 尚缺 Hub 來源 |
| 設備信任 | 型號信任能力矩陣、認領／撤銷／轉移測試 | 尚缺 Hub／韌體來源 |

候選系統測試基準：站點斷線 24 小時、100 個設備、每秒平均 1 筆同步事件，共至少 86,400 筆；緩衝容量依實際序列化大小另加 30% 裕量。恢復後在持續新事件每秒 1 筆及補傳每秒至少 100 筆條件下，30 分鐘內完成積壓接收與去重。這是測試負載，不是產品支援上限或已測性能。

滿載時先停止低優先遙測、合併可覆蓋的狀態投影；命令及安全稽核須預留獨立容量。無法持久化必需證據時拒絕新的非緊急控制並告警，已批准的安全保護依獨立本地政策執行。任何丟棄均記錄缺口，不可回報完整同步。

操作授權需覆蓋測試全程；24 小時快照測試須另包含到期前可用與到期後拒絕，不以斷線測試延長授權。只讀盤點可確認結構與缺口，不能代替以上測試。

## 七、具體業務流程驗證

### Flow A — Password Change｜密碼變更通知

1. App / Web 提交密碼變更請求
2. Identity Service 驗證帳號身分及重新驗證要求
3. Identity Service 安全更新憑證，處理既有 Session 策略
4. Event Service 接收 `identity.password.changed`
5. Notification Service 建立安全通知並透過 Email Provider 發送
6. Audit Service 保留操作與通知關聯；使用者可查安全活動

密碼變更依第 3.5 節 D06，在同一交易完成憑證更新、適用會話撤銷、授權版本變更、重設 Token 單次消耗及 Outbox 寫入，再由通知 Worker 非同步發信。郵件寄送故障不可造成已完成密碼變更被誤判為失敗。

### Flow B — School Runtime Incident｜學校 Runtime 異常

1. ART 偵測到設備或服務異常並產生本地事件
2. 依本地規則採取已授權的運行應對，並持續記錄狀態
3. Cloud Sync 將適當事件同步至 ORT
4. ORT 將事件與站點、設備及運行上下文關聯
5. Operations Agent 讀取證據、分析故障並產生診斷候選
6. Notification Service 按通知策略提醒授權管理員
7. 人工審批恢復方案；經授權的控制請求由 Runtime 執行

對這條流程，Notification Service 僅承擔告知責任。Operations Agent 的 AI 分析、人工審批、Runtime 命令狀態，以及控制執行結果應保留獨立契約。控制請求依第 5.1 節 D03；已接受、已派送、執行中與設備執行成功必須分別呈現，結果不明不得誤報成功或盲目重送。

### Flow C — Device Enrollment｜設備註冊

設備首次註冊應經過設備身分驗證、租戶及站點歸屬確認、憑證發放與 ART Device Binding。雲端的 `DeviceIdentity` 和本地的 `Device Registry` 可以互相關聯，但必須保留不同的責任：前者管理信任與雲端歸屬，後者管理本地設備能力、接入、綁定及操作狀態。首次註冊與受限舊設備模式依第 5.3 節 D07；ART 確認綁定前不得顯示為可用。

## 八、工程實施順序

建議以四個 Milestones｜工程里程碑推進。完成一個階段後先驗收，再擴展下一階段。

**M1 — Identity & Notification Foundation**

帳號、通知與共用安全基礎。S01–S06 的 P0 能力；登入、組織、郵箱驗證、密碼重設、安全通知、API 驗證、稽核。同階段納入 S08 的最小可靠事件與任務能力、S09 的基本健康檢查與追蹤，以及 S16 的初始資料分類、保留與刪除規則。S08 的通用排程與擴充、S09 的完整監測平台仍於 M2 推進。ART 本地授權對接以簽章快照與離線政策契約為前提，驗收結果另列。

交付： Home / School 共用帳號與通知流程；正式 App 的相容驗收、逐請求可信身分與資源授權、密碼遷移、Outbox 故障恢復及跨租戶負向測試。未升級的舊入口不得宣稱已滿足新租戶隔離契約。

**M2 — Cloud Operations Foundation**

事件、檔案與監測。S07 與 S08–S09 的擴充能力；在 M1 最小可靠能力上，加入通用事件與任務、排程、檔案儲存、完整監測與 Runtime Telemetry 接入。

交付： Operations Agent 可取得受控的 Cloud / ART 運行資料。

**M3 — Device Lifecycle Integration**

設備註冊與更新。S10–S11；設備雲端身分、ART Binding 對接、OTA 發佈控制與安全測試。

交付： 完成真實 Hub / Gate 測試設備的註冊與版本管理驗證。

**M4 — Commercial & Intelligence Expansion**

商業化、AI 與資料治理擴展。S12–S16；計費、AI Gateway、報告、整合、資料治理。

交付： 支援多租戶商業營運及 Operations Agent 的進階工作流程。

注意：S16 的基本資料分類、刪除與保留政策，應在 M1 啟動時同步建立；M4 才擴充為完整的治理服務。

## 九、工程審閱與風險

| 風險 | 等級 | 建議措施 |
| --- | --- | --- |
| 新 Identity 與現有 App 帳號不相容 | 高 | 先完成現有帳號表及 Token 流程盤點 |
| Cloud / ART Device Registry 權責重疊 | 高 | 確認設備身分、綁定、能力與狀態資料的權威來源 |
| 跨租戶資料外洩 | 高 | 全部 API、事件、檔案及報告執行租戶隔離測試 |
| Cloud Sync 產生重複控制 | 高 | 命令 ID、冪等策略、狀態機、執行回執 |
| OTA 更新失敗造成設備不可運行 | 高 | 硬體實測、安全回滾與相容性檢查 |
| 過早拆分微服務造成工程負擔 | 中 | 先採四組模組化部署 |
| 通知與 AI 產生高額運行成本 | 中 | 配額、用量指標、限流及預算策略 |

## 十、批准前尚需核對

正式批准 v0.2 前，應依第十一節的只讀盤點繼續補齊四類證據：

1. Existing Backend Inventory｜現有後端盤點：已完成部分原始碼／SQL 抽查；仍需核對完整帳號、組織、通知、設備及資料權責。
2. API Compatibility Review｜API 相容性審閱：已提出沿用與 Adapter 候選；仍需正式 OpenAPI Diff、事件格式核對及客戶端相容測試。
3. Runtime Ownership Review｜Runtime 權責審閱：已提出 D03、D05、D07；仍缺 Hub／韌體證據與本地控制實測。
4. Deployment Readiness Review｜部署就緒審閱：仍需目前資料庫、MQTT、佇列、憑證、儲存、安全配置與部署驗證。

### 10.1 尚需取得的資料

1. Hub／hubServer 與設備韌體的儲存庫、分支／版本、型號對應，以及可讀原始碼或等效工程證據。
2. iot-infra 可讀版本與目前正式／School 部署的脫敏清單：映像 digest、環境變數名稱與是否設定、網路／TLS／ACL、掛載與備份狀態。不要提供機密值。
3. 目前資料庫的脫敏 schema／索引／約束／事件排程與遷移紀錄；不需要使用者資料或憑據內容。
4. 正式 API 的 OpenAPI 匯出、App 發行版本及 MQTT 契約樣本，用來完成機器可比對的 Diff。2026-11-09 的工作是原始碼契約盤點，未完成 OpenAPI Diff 或正式 Schema Diff。

目前可判定：帳號／會話、家庭模型、通知供應商、儲存與 Runtime／AI 日報均有可沿用基礎；平台級可信授權、可靠事件及完整租戶模型需新增或補強。設備信任、OTA 及 ART 核心能力仍須證據後才能作最終沿用／Adapter／新建決定。

### REVIEW — Specification v0.2

| 項目 | 審閱結果 |
| --- | --- |
| 16 項服務能力 | 已完成候選規格 |
| API 與資料模型 | 已完成初版契約 |
| 服務依賴與部署邊界 | 已納入 M1 最小能力與 S08／S09 解耦候選決策 |
| ORT／ART 職責矩陣 | 已納入命令、離線授權與設備信任候選契約；Hub 實證未完成 |
| MVP 驗收標準 | 已提出可測試條件 |
| 現有程式碼相容性 | 已完成部分靜態盤點與 16 項採用候選判定；正式 Diff／聯調待完成 |
| 安全與性能實測 | 待執行 |
| Author Approval | 未批准 |

### 最終工程建議

本規格 v0.2 可作為 OceanAI Cloud Platform 的 Shared Infrastructure 候選基準；整合 P0 設計不代表工程批准或實作完成。

首要任務是依本版盤點補齊現有帳號與資料權責，再完成 M1 的 Identity & Notification Foundation，並與正式 App、School Domain 及 Runtime 對接。優先沿用已證實可用的帳號 ID、會話基礎、家庭實體、供應商連接及日報能力，依新授權與可靠事件契約補強。

本版已完成原規格與七項 P0 決策的候選合併，並納入 2026-11-09 的靜態盤點證據。正式 API／Schema 相容性、實際部署、安全性能與硬體驗證仍待完成；證據齊備後再提交作者批准為工程基準。

## 十一、現有系統只讀盤點與遷移判定

### 11.0 證據範圍與可信度

2026-11-09 盤點透過 GitHub 連接器只讀檢視文件、原始碼、SQL 與目錄樹；未修改遠端儲存庫、未執行 SQL、未連線正式環境、未運行應用或硬體測試。

| 來源 | 2026-11-09 盤點基線 | 使用方式 |
| --- | --- | --- |
| `KristampsWong/iot-docs` | `5868530ca2fb34ee72b938acab92d4de0b2e1930` | 已有系統盤點、部署摘要、未確認事項 |
| `KristampsWong/iot-backend` | `298009e049234a2fdd9c2ffb042fe432ff5356d3` | 原始碼與手工遷移腳本抽查 |
| `KristampsWong/emqxMP` | `e41ce3533918cf3beb2330eb666269fea931a855` | 原始碼抽查及既有 Runtime 盤點 |
| `KristampsWong/artibird-app` | 2026-11-09 盤點僅讀根目錄與 AGENTS.md | App 狀態引用 iot-docs，未重新逐檔核查。AGENTS.md 指定的 Windows 本地工作區本環境不可用 |
| `KristampsWong/iot-infra` | 2026-11-09 盤點 GitHub tree 讀取回傳 404 | 部署資訊僅引用 iot-docs 所記錄的 `2a97830`；404 不足以判定儲存庫不存在 |
| Hub／hubServer、設備韌體 | 未取得 | 本地授權、命令去重、OTA 與獨立運行皆未實證 |

證據分級：A＝2026-11-09 盤點原始碼／SQL 直接核對；B＝既有盤點文件記載；C＝本版候選設計。A 亦不代表已部署或測試通過。文件列舉的歷史設備量與表數不得當作目前正式環境數值。

### 11.1 逐服務採用判定

判定針對能力，不等同獨立新服務。沿用仍須通過新契約驗收；「未證實」不得直接轉成「不存在」或「必須重寫」。

| 服務 | 已有證據 | 候選採用判定 | 尚需核對 |
| --- | --- | --- | --- |
| S01 Identity | A：帳號登入、Refresh Token 雜湊／輪換／撤銷。業務攔截器仍僅比對固定 Token；登入仍用 MD5；第三方登入未見供應商驗證 [E01][E02] | 沿用帳號 ID 與會話基礎；新建／補強逐請求身分與資源授權、單次重設、MFA、OIDC 驗證及安全密碼遷移。以 Adapter 保持舊 API 欄位 | 實際帳號資料、唯一性、密碼格式、App 發行版本與 JWT／表部署情況 |
| S02 Tenant | A：family、建立者、成員關聯 [E04] | 沿用 Home 業務實體；新增 Tenant／Membership／SiteRef 與映射層，依 D04 遷移 | School 現有模型、孤兒資料、共享家庭及資料歸屬 |
| S03 Notification | A：後端同步寄送郵件驗證碼；B：SMTP、短信供應商 [E05][E08] | 沿用可用供應商連接；Adapter 包裝；新建持久通知、投遞嘗試、模板版本、偏好與狀態回呼 | 供應商帳號、退信／回呼與冪等支援，不能僅由方法回傳成功判定投遞 |
| S04 API Gateway | A：固定 Token 攔截器 [E01] | 新建可信認證入口及授權傳遞；業務端仍檢查權限。舊 API 放入明確過渡邊界 | 目前 Ingress／TLS／限流配置與外部可達路徑 |
| S05 Audit | A：emqxMP 的命令追蹤；B：JSONL 日誌及操作紀錄 [E06][E09] | 沿用事件來源與脫敏邏輯；Adapter 轉標準事件。新增使用者安全稽核、租戶範圍與防竄改／存取控制 | 日誌掛載、保存、時間同步、操作者可信度與稽核缺口 |
| S06 Config／Secrets | A：JWT 從設定取得；B：多個設定檔含明文憑據與部署缺項 [E01][E10] | 使用受管理或等效機密設施；既有設定項 Adapter 化。輪換、最小權限及禁止機密打包屬 M1 必做 | 實際憑據位置與輪換影響；2026-11-09 盤點未讀出或複製機密值 |
| S07 Storage | A：頭像上傳程式；B：S3／school 本地模式 [E05][E08] | 沿用儲存後端與頭像資料；新增通用物件中繼資料、租戶授權、完整性及到期下載 | Bucket ACL、物件鍵、公開存取及既有檔案引用 |
| S08 Event／Task | A：Spring AFTER_COMMIT 通知，失敗僅記日誌 [E03] | 沿用事件觸發位置；新增 Outbox／Inbox／Worker／死信。既有 MQTT 保持 Runtime 傳遞用途 | 新增設備通知是否仍在交易內、全部發布路徑、Broker 持久化設定 |
| S09 Observability | A：Runtime 追蹤程式；B：健康檢查、運維看板、日誌分析 [E06][E09] | 沿用看板與分析來源；Adapter 統一追蹤。補強服務健康、指標與補傳；ART 遙測未證實 | 正式環境掛載、告警及容量；Hub 資料來源 |
| S10 Provisioning | B：掃碼綁定、CPU serial／設備識別及 Hub 同步 [E08] | 沿用業務關聯與識別映射；新建信任引導、逐設備憑證及撤銷契約 | 出廠身分能力、Hub／韌體程式、所有權證明 |
| S11 OTA | B：App OTA 存在 runtime 相容性待確認；未取得設備更新實作 [E10] | 設備簽章發佈與 rollout 列為待核查後的新建候選；App OTA 分開管理 | bootloader、更新槽、簽章根、斷電恢復與型號相容矩陣 |
| S12 Billing | 2026-11-09 盤點資料未證實完整實作 | 新建候選，先列契約；不改本地基本控制的失聯政策 | 現有商業方案、外部支付與用量來源 |
| S13 AI Gateway | A：既有 AI 日報調用鏈、重試及輸出驗證 [E07] | 沿用 Provider Client／脫敏／輸出驗證；Adapter 接平台授權。新增租戶用量、配額與預算 | 服務端金鑰配置、供應商政策、跨租戶分攤；既有 Client 不是完整平台 Gateway |
| S14 Reporting | A：日報生成、文件儲存介面與清理鏈 [E07] | 沿用日報流程，Adapter 成 ReportJob；新增租戶匯出、來源快照與下載授權 | 重現性、並行／多副本、原始證據保存及匯出權限 |
| S15 Integration | B：既有 HTTP／MQTT 與供應商連接 [E08][E09] | 沿用連接器；通用 Webhook 訂閱、簽章、SSRF 防護及重送列新建候選 | 是否有其他未納入的整合庫、來源認證及出站網路政策 |
| S16 Governance | A：Refresh Token 清理 SQL；B：稽核及日報保存期限 [E02][E09] | 沿用局部清理規則；新增資料分類、刪除編排、Legal Hold 與刪除證據 | 所有副本、備份、檔案、ART 本地保存與跨邊界刪除 |

### 11.2 跨服務遷移約束

1. 既有 `iot-backend`／`emqxMP` 共用 MySQL 是目前實作事實；新規格的權責分離是目標。先逐表記錄讀寫者與權威來源，再透過 API／事件遷移，不立刻拆庫，也不新增跨服務直接寫入。[E08][E09]
2. 舊 MQTT 欄位 `opKye`、`opClinet` 與 Topic 是相容契約，保留於 Adapter；新版標準事件不沿用錯拼，也不能改舊欄位導致設備失聯。[E08]
3. 既有場景與定時目前由雲端後端觸發；不能直接宣稱已在 ART 本地運行。必須取得 Hub 能力證據後，決定哪些流程下移、哪些保持雲端服務。[E08]
4. `artibird-app main` 依盤點文件為 mock；正式既有 App 為 IOTControl 的 `2.1` 分支。M1 相容驗收須納入正式 App，不能只驗新 App。[E08]
5. API Adapter 不能把客戶端提交的 userId／familyId 轉成可信身分。舊客戶端必須完成可信登入與逐請求驗證升級，或在受限舊環境維持原能力；不能聲稱新版租戶隔離已覆蓋未升級路徑。
6. 既有帳號不重新編號；採穩定身分映射。舊 MD5 密碼僅在已驗證登入／重設時遷移至經校準的 Argon2id 等現代雜湊，不把 MD5 值當成使用者密碼再次雜湊。第三方帳號以驗證後的 issuer＋subject 關聯，不只按 email 自動合併。

## 十二、證據索引

以下連結固定至2026-11-09 盤點讀取的提交。文件證據與原始碼證據分別標示。

- E01（A）：[WebConfig.java](https://github.com/KristampsWong/iot-backend/blob/298009e049234a2fdd9c2ffb042fe432ff5356d3/src/main/java/com/iot/mobile/config/WebConfig.java)、[LoginController.java](https://github.com/KristampsWong/iot-backend/blob/298009e049234a2fdd9c2ffb042fe432ff5356d3/src/main/java/com/iot/mobile/controller/LoginController.java)、[LoginService.java](https://github.com/KristampsWong/iot-backend/blob/298009e049234a2fdd9c2ffb042fe432ff5356d3/src/main/java/com/iot/mobile/services/LoginService.java)、[AuthSessionService.java](https://github.com/KristampsWong/iot-backend/blob/298009e049234a2fdd9c2ffb042fe432ff5356d3/src/main/java/com/iot/mobile/auth/AuthSessionService.java)。
- E02（A）：[Refresh Token SQL](https://github.com/KristampsWong/iot-backend/blob/298009e049234a2fdd9c2ffb042fe432ff5356d3/database/migrations/2026-10-28-auth-refresh-token.sql)、[IotUserinfoService.java](https://github.com/KristampsWong/iot-backend/blob/298009e049234a2fdd9c2ffb042fe432ff5356d3/src/main/java/com/iot/mobile/services/IotUserinfoService.java)。
- E03（A）：[DeviceDeleteNotificationListener.java](https://github.com/KristampsWong/iot-backend/blob/298009e049234a2fdd9c2ffb042fe432ff5356d3/src/main/java/com/iot/mobile/services/DeviceDeleteNotificationListener.java)。
- E04（A）：[IotFamily.java](https://github.com/KristampsWong/iot-backend/blob/298009e049234a2fdd9c2ffb042fe432ff5356d3/src/main/java/com/iot/mobile/entity/IotFamily.java)、[IotFamilyXUser.java](https://github.com/KristampsWong/iot-backend/blob/298009e049234a2fdd9c2ffb042fe432ff5356d3/src/main/java/com/iot/mobile/entity/IotFamilyXUser.java)。
- E05（A）：[IotUserinfoService.java](https://github.com/KristampsWong/iot-backend/blob/298009e049234a2fdd9c2ffb042fe432ff5356d3/src/main/java/com/iot/mobile/services/IotUserinfoService.java)。
- E06（A）：[SwitchTraceRegistry.java](https://github.com/KristampsWong/emqxMP/blob/e41ce3533918cf3beb2330eb666269fea931a855/src/main/java/com/mp/audit/SwitchTraceRegistry.java)、[Runtime WebConfig.java](https://github.com/KristampsWong/emqxMP/blob/e41ce3533918cf3beb2330eb666269fea931a855/src/main/java/com/mp/config/WebConfig.java)。
- E07（A）：[AiReportService.java](https://github.com/KristampsWong/emqxMP/blob/e41ce3533918cf3beb2330eb666269fea931a855/src/main/java/com/mp/ops/report/AiReportService.java)。
- E08（B）：[系統總覽](https://github.com/KristampsWong/iot-docs/blob/5868530ca2fb34ee72b938acab92d4de0b2e1930/docs/architecture/system-overview.md)、[Backend 介面](https://github.com/KristampsWong/iot-docs/blob/5868530ca2fb34ee72b938acab92d4de0b2e1930/docs/projects/iot-backend/interface/interface.md)、[Backend 設計](https://github.com/KristampsWong/iot-docs/blob/5868530ca2fb34ee72b938acab92d4de0b2e1930/docs/projects/iot-backend/design/design-summary.md)。
- E09（B）：[Runtime 設計](https://github.com/KristampsWong/iot-docs/blob/5868530ca2fb34ee72b938acab92d4de0b2e1930/docs/projects/emqxmp/design/design-summary.md)、[Runtime 介面](https://github.com/KristampsWong/iot-docs/blob/5868530ca2fb34ee72b938acab92d4de0b2e1930/docs/projects/emqxmp/interface/interface.md)。
- E10（B）：[已知風險](https://github.com/KristampsWong/iot-docs/blob/5868530ca2fb34ee72b938acab92d4de0b2e1930/docs/status/risks-and-open-questions.md)、[部署設計摘要](https://github.com/KristampsWong/iot-docs/blob/5868530ca2fb34ee72b938acab92d4de0b2e1930/docs/projects/iot-infra/design/design-summary.md)。

## 附錄 A — v0.2 變更摘要與候選參數

| 決策 | 整合位置 | 變更 |
| --- | --- | --- |
| D01 | 4.1、第八節 | M1 納入 S08、S09、S16 最小能力 |
| D02 | S08／S09 服務列、4.2 | 解除運行必要循環依賴 |
| D03 | 5.1、Flow B | 命令狀態、證據、去重及未知路由 |
| D04 | 3.3–3.4 | Tenant／Organization／Site 與 family 遷移 |
| D05 | 5.2、系統驗收 | 本地授權、撤權風險及離線政策 |
| D06 | 3.5、Flow A | 憑證／會話／Outbox 交易一致性 |
| D07 | 5.3、Flow C | 設備信任引導與綁定確認 |
| 盤點 | 第十至十二節 | 已知實作、採用候選、缺口與固定提交證據 |

候選預設參數集中列示如下，均未代表已批准或已測通過：

| 參數 | 候選值 | 位置 |
| --- | --- | --- |
| 命令去重保存 | 至少覆蓋有效期與允許重送期間，最低 7 日 | 5.1 |
| 在線政策更新檢查 | 每 5 分鐘 | 5.2 |
| 一般互動控制離線授權 | 最長 24 小時 | 5.2 |
| Worker 重試界限 | 最多 10 次或 24 小時，以先到者為準 | 3.5 |
| 新版 access JWT 有效期 | 15 分鐘；撤權檢查另行適用 | 3.5 |
| 設備認領授權 | 10 分鐘、單次消耗 | 5.3 |
| 系統測試負載 | 斷線 24 小時、100 個設備、每秒 1 筆同步事件 | 6.1 |
| 補傳與容量 | 補傳每秒至少 100 筆，30 分鐘內完成；容量另加 30% | 6.1 |

本版未新增服務編號，未宣稱既有 API 相容，未將靜態盤點等同正式環境、安全或硬體驗收。原規格未受本次合併影響的段落以原文保留；精確替換清單與來源雜湊另見同名合併紀錄。
