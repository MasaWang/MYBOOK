## 4. Runtime functional services｜Runtime 功能服務

|ID|Service｜服務|Required behavior｜要求行為|
|---|---|---|
|RT-01|Device Registry｜設備註冊表|Track identity, site, model, firmware, ownership and lifecycle.｜追蹤身份、站點、型號、韌體、歸屬及生命週期。|
|RT-02|Capability Model｜能力模型|Version commands, properties, events, feedback and limits per model.｜按型號管理指令、屬性、事件、回饋及限制版本。|
|RT-03|Device Binding｜設備綁定|Record device, space, adapter and authorized access relationships.｜記錄設備、空間、轉接器及授權存取關係。|
|RT-04|Event Bus｜事件匯流排|Validate, route, correlate and observe events with bounded queues.｜驗證、路由、關聯及觀察事件，使用有界佇列。|
|RT-05|Device State｜設備狀態|Maintain desired, reported and observed state with provenance and age.｜維護期望、回報及觀測狀態與來源及新鮮度。|
|RT-06|Command Routing｜指令路由|Authorize, deduplicate, expire, route and track outcomes.｜授權、去重、期限判斷、路由及追蹤結果。|
|RT-07|Scene Engine｜場景引擎|Track each step and summarize success, failure or partial result.｜追蹤每步並彙整成功、失敗或部分結果。|
|RT-08|Automation Engine｜自動化引擎|Evaluate enabled, versioned rules against valid inputs.｜以有效輸入判斷啟用且有版本的規則。|
|RT-09|Control API｜控制介面|Expose scoped commands, configuration, state and execution queries.｜提供有範圍的指令、配置、狀態及執行查詢。|
|RT-10|Operational Store｜運行儲存|Persist configuration and required execution / recovery evidence.｜保存配置及必要執行／恢復證據。|
|RT-11|Cloud Sync｜雲端同步|Synchronize selected data without creating a second execution authority.｜同步選定資料，不產生第二執行權威。|
|RT-12|Health and Recovery｜健康與恢復|Expose faults, affected functions, recovery progress and final condition.｜呈現故障、受影響功能、恢復進度及最後狀態。|

**EN**  
These are logical responsibilities. Existing processes may implement several services. This specification does not require twelve microservices, twelve repositories, or a new broker. The deployment record names where each responsibility resides and how it is verified.

**ZH-TW**  
以上為邏輯責任。現有程序可承擔多項服務。本規格不要求十二個微服務、十二個儲存庫或新 Broker。部署記錄須列出各責任位置及驗證方式。
