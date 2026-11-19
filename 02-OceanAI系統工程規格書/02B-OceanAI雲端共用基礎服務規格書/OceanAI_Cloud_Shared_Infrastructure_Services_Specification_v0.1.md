# OceanAI Cloud Shared Infrastructure Services Specification v0.1

## OceanAI 雲端共用基礎服務工程規格

Candidate v0.1

2026-11-09

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
| 首期優先能力 | 6 | P0 Service Groups |

規格狀態：Author Review Required。尚未批准、尚未鎖定。

本版以目前對話確認的架構方向為基礎。已提供的 OceanAI 架構資料主要支援 Cloud／Edge／Hub／Gate／Sync 的系統分層；服務 API、資料欄位及部署拓撲屬於本次提出的工程候選設計，尚未經現有程式碼與資料庫實證。

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
| S08 Event & Task 事件與任務 | `EventEnvelope`, `Task`, `Schedule`, `RetryPolicy`。非同步事件、背景任務與排程 | `POST /internal/events`、`POST /internal/tasks`、`GET /internal/tasks/{id}` | 依賴 S06、S09。Cloud 非同步層；不取代 ART Event Bus。驗收：重試、死信、冪等及故障恢復 |
| S09 Observability 可觀測性 | `Metric`, `LogRecord`, `Trace`, `HealthSignal`。監測、診斷資料與告警 | `POST /internal/telemetry`、`GET /observability/health` | 依賴 S06、S07、S08。Cloud；接收 ART 彙總資料。驗收：跨服務追蹤、指標可查、斷線補傳 |
| S10 Device Provisioning & Credential 設備身分與憑證 | `DeviceIdentity`, `Enrollment`, `CertificateRef`, `Revocation`。設備註冊及信任管理 | `POST /device-enrollments`、`POST /device-credentials/rotate` | 依賴 S01、S02、S06、ORT。Cloud 身分控制面；ART 管理本地接入。驗收：未授權設備拒絕、憑證撤銷、重新註冊 |
| S11 OTA & Release 更新與發佈 | `Artifact`, `Release`, `Rollout`, `UpdateResult`。版本、韌體簽章、部署追蹤 | `GET /releases`、`POST /rollouts`、`GET /rollouts/{id}` | 依賴 S06、S07、S10。Cloud 發佈控制面；ART 執行本地安全更新流程。驗收：簽章、版本相容性、失敗保護 |
| S12 Subscription & Billing 訂閱與計費 | `Plan`, `Subscription`, `UsageRecord`, `InvoiceRef`。服務方案及用量 | `GET /subscriptions`、`GET /billing/usage` | 依賴 S01、S02、S08。Cloud。驗收：用量不重計、帳務隔離、外部支付事件驗證 |
| S13 AI Gateway & Usage AI 接入與用量 | `ModelRoute`, `AIRequest`, `UsageRecord`, `BudgetPolicy`。模型接入、配額、成本及追蹤 | `POST /ai/inference`、`GET /ai/usage` | 依賴 S01、S02、S05、S06。Cloud；不得繞過 ART 控制授權。驗收：配額限制、敏感資料遮罩、請求追蹤 |
| S14 Reporting & Export 報告與匯出 | `ReportJob`, `ReportArtifact`, `ExportPolicy`。報告產生、排程及匯出 | `POST /reports/jobs`、`GET /reports/jobs/{id}` | 依賴 S07、S08、S09。Cloud；讀取授權資料投影。驗收：可重現、隔離、下載權限與到期處理 |
| S15 Integration & Webhook 外部整合 | `Integration`, `WebhookEndpoint`, `DeliveryRecord`。外部系統接入與事件交換 | `POST /integrations`、`POST /webhooks/subscriptions` | 依賴 S01、S06、S08。Cloud 整合邊界。驗收：簽章、重試、來源驗證及權限控制 |
| S16 Data Governance & Retention 資料治理 | `RetentionPolicy`, `DataClass`, `DeletionRequest`, `LegalHold`。資料保存、刪除及分類 | `GET /data-policies`、`POST /data-requests` | 依賴 S01、S02、S05、S07。Cloud；ART 另有本地資料生命週期。驗收：保留期限執行、刪除證據、合法保存例外 |

工程約束： 表中的 API 路徑與資料實體屬於 v0.1 候選契約，尚未確認與現有 `iot-backend`、Hub Server 或其他既有 API 相容。正式實作前應進行 OpenAPI Diff、資料庫 Schema Diff 與事件格式核對。

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

Tenant｜租戶 → Organization｜組織 → Membership｜成員關係 → Site Reference｜站點參照 → Policies｜權限與政策 → Shared Service Records：Notifications · Audit · Files · Tasks · AI Usage · Reports

`Tenant`、`Organization`、`Site`、`User`、`Device` 必須分別建模，避免將學校、住宅、建築、帳號或設備視為同一種實體。`SiteRef` 只承載引用，具體教室、樓層、建築及空間拓撲由相應 Domain / Runtime 模型管理。

## 四、服務依賴與部署架構

建議首期採 Modular Deployment｜模組化部署，在邏輯上維持 16 項服務契約，物理部署先收斂成四組。

| Deployable | 包含服務 | 部署形式 |
| --- | --- | --- |
| `identity-service` | S01、S02 | Cloud API + Identity DB |
| `notification-service` | S03 | Cloud Workers + Mail Provider |
| `platform-core` | S04、S05、S06、S08 的部分能力 | API Ingress + Audit / Events |
| `platform-operations` | S07、S09 與報告基礎能力 | Storage + Telemetry + Workers |

S10–S16 依產品成熟度逐步加入現有模組或拆分成獨立服務。API Gateway、Secrets Manager、Event Broker、Object Storage、Database 可以採用受管理的基礎設施，無須自行編寫相同能力。

部署邊界建議：

- Public Zone｜公開入口：API Gateway、必要的登入端點。
- Private Application Zone｜私有應用區：服務 API、背景 Workers、ORT Cloud Components。
- Data Zone｜資料區：Database、Object Storage、Audit Store、Telemetry Store。
- Site Zone｜站點區：ART、Hub、Gate、Sync 及設備。

Cloud 與站點之間採取驗證的雙向通訊契約，並維護連線生命週期、版本相容性、事件同步及權限有效期。

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

### 與 ART Local Runtime P0 的相容性檢查

| ART 既有能力 | 是否保留在 ART | Cloud 對接方式 |
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

這表示新增 Shared Infrastructure Services 並不需要重構 ART 的核心控制引擎。

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
| S08 | 消費端中斷後可重試；毒性事件進入 DLQ；重複投遞不產生重複副作用 | Worker Failure Tests |
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

## 七、具體業務流程驗證

### Flow A — Password Change｜密碼變更通知

1. App / Web 提交密碼變更請求
2. Identity Service 驗證帳號身分及重新驗證要求
3. Identity Service 安全更新憑證，處理既有 Session 策略
4. Event Service 接收 `identity.password.changed`
5. Notification Service 建立安全通知並透過 Email Provider 發送
6. Audit Service 保留操作與通知關聯；使用者可查安全活動

密碼變更應先完成可信的資料庫更新與事件持久化，再由通知 Worker 非同步發信。郵件寄送故障不可造成已完成密碼變更被誤判為失敗。

### Flow B — School Runtime Incident｜學校 Runtime 異常

1. ART 偵測到設備或服務異常並產生本地事件
2. 依本地規則採取已授權的運行應對，並持續記錄狀態
3. Cloud Sync 將適當事件同步至 ORT
4. ORT 將事件與站點、設備及運行上下文關聯
5. Operations Agent 讀取證據、分析故障並產生診斷候選
6. Notification Service 按通知策略提醒授權管理員
7. 人工審批恢復方案；經授權的控制請求由 Runtime 執行

對這條流程，Notification Service 僅承擔告知責任。Operations Agent 的 AI 分析、人工審批、Runtime 命令狀態，以及控制執行結果應保留獨立契約。

### Flow C — Device Enrollment｜設備註冊

設備首次註冊應經過設備身分驗證、租戶及站點歸屬確認、憑證發放與 ART Device Binding。雲端的 `DeviceIdentity` 和本地的 `Device Registry` 可以互相關聯，但必須保留不同的責任：前者管理信任與雲端歸屬，後者管理本地設備能力、接入、綁定及操作狀態。

## 八、工程實施順序

建議以四個 Milestones｜工程里程碑推進。完成一個階段後先驗收，再擴展下一階段。

**M1 — Identity & Notification Foundation**

帳號、通知與共用安全基礎。S01–S06 的 P0 能力；登入、組織、郵箱驗證、密碼重設、安全通知、API 驗證、稽核。

交付： Home / School 共用帳號與通知流程。

**M2 — Cloud Operations Foundation**

事件、檔案與監測。S07–S09；非同步事件、Worker、檔案儲存、監測與 Runtime Telemetry 接入。

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

正式批准 v0.1 前，建議使用現有工程儲存庫執行一次只讀驗證，集中在四項工作：

1. Existing Backend Inventory｜現有後端盤點： 帳號、認證、組織、通知、設備及日誌現有功能。
2. API Compatibility Review｜API 相容性審閱： 列出已實作 API、候選新 API、重複契約及需要 Adapter 的部分。
3. Runtime Ownership Review｜Runtime 權責審閱： 對照 ART P0 能力，確認 Cloud Shared Services、ORT、ART 的資料權威及操作權限。
4. Deployment Readiness Review｜部署就緒審閱： 核實目前資料庫、MQTT、佇列、憑證、儲存、安全配置及部署條件。

### REVIEW — Specification v0.1

| 項目 | 審閱結果 |
| --- | --- |
| 16 項服務能力 | 已完成候選規格 |
| API 與資料模型 | 已完成初版契約 |
| 服務依賴與部署邊界 | 已完成候選架構 |
| ORT／ART 職責矩陣 | 已完成邏輯核對 |
| MVP 驗收標準 | 已提出可測試條件 |
| 現有程式碼相容性 | 待實證 |
| 安全與性能實測 | 待執行 |
| Author Approval | 未批准 |

### 最終工程建議

本規格可作為 OceanAI Cloud Platform 的 Shared Infrastructure 候選基準。

首要任務是完成 M1 的 Identity & Notification Foundation，並與既有 Artibird App、School Domain 及 Runtime 對接。正式開發前先做現有系統盤點，避免重新建立已有的帳號、組織、事件或設備服務。

本輪已完成 16 項服務的規格化與 ORT／ART 邏輯核對；尚未完成的是對現有程式碼、API、資料庫及實際部署的驗證。建議在這些證據齊備後，再將候選規格提交批准為工程基準。
