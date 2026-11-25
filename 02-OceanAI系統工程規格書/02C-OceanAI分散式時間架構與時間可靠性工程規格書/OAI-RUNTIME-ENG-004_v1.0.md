# OAI-RUNTIME-ENG-004

## Distributed Temporal Architecture & Time Reliability｜分散式時間架構與時間可靠性工程規格書

Version 1.0 · Engineering review draft｜第 1.0 版 · 工程審閱稿

## 1. Purpose and scope｜目的與適用範圍

OceanAI uses one time contract for Cloud and Hub deployments. This specification governs when a scene or device command becomes due, how long it remains valid, how its result is ordered and recorded, and how a site resumes after loss of power, connectivity or trusted time. It applies to Home and School sites.

OceanAI 的雲端與 Hub 部署共用時間契約。本規格涵蓋場景與設備命令何時到期、有效多久、結果如何排序與留存，以及場域在斷電、斷線或時鐘失準後如何恢復。適用家庭與校園。

Delivery boundary｜交付邊界 — Requirements and provisional test targets are for implementation and review. Existing firmware support, measured precision and bench results require verification by board revision. 本文提供開發要求及暫定驗收目標。各板型現有韌體能力、實測精度與實機結果須逐版確認。

## 2. Clock model and accuracy｜時鐘模型與精度

| Clock or evidence｜時間種類 | Required use｜用途 |
|---|---|
| UTC instant｜UTC 時刻 | Persist deadlines, dispatch times and audit timestamps as RFC 3339 UTC with Z; retain actual source resolution. 持久化命令期限、發送及稽核時間時使用帶 Z 的 UTC 格式，保留來源實際解析度。 |
| Site civil time｜場域日曆時間 | Author schedules using local date, weekday, time and IANA zone. Convert each occurrence independently. 以當地日期、星期、時刻及 IANA 時區編排，每次執行分別換算。 |
| Monotonic elapsed time｜單調經過時間 | Measure waits, relative budgets and debounce intervals within a boot session. Pick a timer that covers the required sleep modes or suspend the operation explicitly. 同一次開機內的等待、剩餘有效期與去抖使用單調時鐘。計時器須涵蓋所用睡眠模式，否則明確中止計時作業。 |
| Peripheral timing｜周邊精密時序 | Generate IR/RF pulses and sample electrical signals with a suitable peripheral or hardware timer. Validate against the device profile on the actual board. 紅外、射頻脈衝及電氣取樣由適當周邊或硬體計時器負責，按設備規格以實板驗證。 |
| Causal evidence｜因果證據 | Use IDs, boot sessions and counters to relate commands to receipts even when UTC is uncertain. UTC 不可信時，仍以命令識別碼、開機批次與序號關聯回執。 |

Clock quality｜時鐘品質 — Report source, last synchronization, estimated uncertainty, boot ID and quality. Use synchronized, holdover or untrusted. Estimate holdover uncertainty from last sync error plus elapsed time × measured worst-case drift plus a transport margin. After reboot, recover UTC only from a validated retained clock or a new trusted reference. A stored last-known timestamp alone cannot measure time spent powered off.

回報來源、最近校時、估計誤差上界、開機批次及品質，分為已同步、守時與不可信。守時誤差由上次校時誤差、經過時間乘以實測最差漂移率，以及傳輸裕量估算。重啟後須由已驗證且持續走時的時鐘或新的可信來源恢復 UTC。僅保存斷電前時間無法推算停電長度。

Provisional P0 targets｜暫定 P0 指標 — Under nominal test load, Cloud/Hub calendar scheduling requires estimated UTC uncertainty ≤ 1 s. Target dispatch within 2 s after the scheduled instant for at least 99 of 100 occurrences, with no early dispatch against the reference clock. Use a 5 s default expiry for routine lighting commands, configurable per capability. Device receipt latency and physical completion are measured separately. These targets are engineering selections for the first bench run.

正常測試負載下，Cloud／Hub 日曆排程要求 UTC 估計誤差上界 ≤ 1 秒。以參考時鐘比對，100 次排程中至少 99 次於預定時刻後 2 秒內下令，所有樣本均不得提早下令。一般照明命令的預設有效期暫定為 5 秒，可按能力調整。設備回執延遲與實體完成時間分開量測。以上數值為首輪台架測試的設計選值。

## 3. Clock sources and responsibilities｜時鐘來源與分層責任

| Layer｜層級 | Source and responsibility｜來源與責任 |
|---|---|
| Cloud Runtime | Use the host's monitored UTC synchronization. Own cloud-site schedules, inter-site correlation and UTC audit records. 採用受監測的主機 UTC 校時，負責雲端場域排程、跨場域關聯與稽核。 |
| Hub / ArtiOS Runtime | Prefer a configured trusted network time source. Use a validated battery-backed RTC for cold-start holdover when fitted. Keep local rules, zone data, pending ends and receipts on durable storage. 優先使用設定的可信網路時間來源。配有並已驗證備援電源 RTC 時，可用於冷啟動守時。本地持久化規則、時區資料、待執行結束動作與回執。 |
| Gate | Obtain a bounded UTC estimate from the active Runtime when available. Track round-trip delay, remaining command lifetime and receipt waits. 由當前執行端取得含誤差界限的時間估計，追蹤往返延遲、命令剩餘期限與回執等待。 |
| App / Panel | Render site time and the active schedule revision. Timestamp user input with available quality; the owner records acceptance. 顯示場域時間與生效排程版次，記錄使用者輸入時間及可信度，由執行端記錄受理時刻。 |
| Device firmware｜設備韌體 | Use local timers, persistent configuration where needed and a new boot ID on restart. Publish time quality and capability-specific receipts. 使用本機計時器，依需要持久化設定，重啟後產生新開機批次，回報時間品質及能力支援的回執。 |

For Gate synchronization, retain the measured request/response interval with the offset estimate and discard stale or high-delay samples. Set the quality budget per capability. A phone connected directly to Gate can issue an authorized immediate action; persistent calendar scheduling on Gate requires its own clock, storage and recovery qualification.

Gate 校時須保留請求與回應的量測區間及偏移估計，捨棄過舊或高延遲樣本，依能力設定誤差預算。手機直連 Gate 可送出已授權的即時動作；若要在 Gate 執行持久日曆排程，須另行驗證時鐘、儲存與恢復能力。

## 4. Shared contracts｜共用資料契約

| Record｜紀錄 | Minimum fields｜最少欄位 |
|---|---|
| Site clock｜場域時鐘 | siteId, timeZone, configRevision, clockSource, clockQuality, uncertaintyMs, lastSyncAtUtc, zoneDataVersion |
| Rule｜規則 | ruleId, revision, siteId, enabled, ownerId, ownerEpoch, localStart, recurrence, repeatUntilLocalDate (inclusive／含當日), optional endLocalTime + endDayOffset + endAction／可選結束時刻、跨日數及動作 |
| Occurrence｜單次排程 | occurrenceId, ruleId, startLocalDate, startLocalTime, appliedRevision, zone, offsetAtStart, startAtUtc, endAtUtc, status |
| Command｜命令 | commandId, occurrenceId, phase (start/end／開始或結束), actionId, ownerEpoch, issuedAtUtc, expiresAtUtc, target, capability, requestedValue |
| Receipt / event｜回執與事件 | eventId, commandId (when applicable／適用時), deviceId, bootId, sequence, observedAtUtc (nullable／可空), clockQuality, receivedAtUtc, evidenceType, result |

Persist the occurrence and its due actions transactionally before sending. Use a separate deterministic command ID for each occurrence, phase, target and action. A start and its end have distinct command IDs and share an occurrence ID. Preserve the schedule's zone revision and resolved instants for audit.

下令前，以同一交易持久化本次排程及其到期動作。每次排程依開始／結束、設備及動作產生穩定且獨立的命令 ID。開始與結束共用單次排程 ID，各自有命令 ID。保存所採用的時區版次與換算時刻供稽核。

## 5. Site Time Zone & Local Scheduling｜場域時區與本地排程

### Site and schedule｜場域與排程

Each Home or Campus owns an IANA time zone identifier. A room inherits its site's zone. At setup, the app may suggest a zone from the site city or phone settings. The administrator confirms the site zone. Travel by a household member does not change the schedule.

每個家庭或校區保存一個 IANA 時區識別碼，房間沿用所屬場域時區。建立場域時，App 可依城市或手機設定建議時區，由管理員確認。成員出差時，家中排程仍依住宅當地時間執行。

| Record｜紀錄 | Required semantics｜欄位與語意 |
|---|---|
| Site｜場域 | Persist siteId, timeZone and configuration revision. 重慶家庭保存 Asia/Shanghai，舊金山住宅保存 America/Los_Angeles，並保存場域 ID 與設定版次。 |
| Rule｜規則 | Store siteId, ruleId, enabled, localTime and recurrence. A one-time rule includes a local date. A weekly rule includes weekdays, Monday = 1. 保存場域、規則識別碼、啟用狀態、當地時刻及重複方式。單次排程指定日期，每週排程指定星期，週一為 1。 |
| Scheduled occurrence｜單次排程 | Derive scheduledAtUtc from the intended local date, local time and site zone. Record the zone and offset used. 依預定當地日期、時刻及場域時區換算本次 UTC 時刻，記錄採用的時區與偏移量。 |
| Run history｜執行歷程 | Record scheduled time, dispatch time, receipt time and receipt type separately. Keep original timestamps across zone changes. 分別記錄預定時刻、實際下令時刻、回執接收時刻及回執類型。場域時區變更後保留歷史紀錄。 |

### Runtime responsibilities｜時間分層與執行責任

The time layer supplies clock quality, calendar conversion and monotonic elapsed time. The Automation Engine selects the next eligible local date and requests conversion to UTC. It must calculate each occurrence from the recurrence rule across daylight-saving transitions.

時間層提供時鐘可信度、當地日曆與 UTC 換算，以及單調經過時間。自動化引擎依規則選出下一個符合條件的當地日期，再換算為 UTC。即使跨越夏令時間切換，也須依原規則重新計算每次排程。

Cloud Runtime owns the schedule for a cloud site. ArtiOS Runtime on Hub owns it for a local-first site. Persist the active revision, zone rules and execution records on the owner. For local actions, a Hub with a trusted clock and reachable devices can execute with the internet disconnected. Gate enforces command validity and measures receipt waits with a monotonic clock. Devices supply the supported acknowledgement or state report.

雲端場域由 Cloud Runtime 執行排程，本地優先場域由 Hub 上的 ArtiOS Runtime 執行。執行端保存生效版次、時區規則與執行紀錄。本地動作所需設備可達且時鐘可信時，Hub 可在外網中斷期間執行。Gate 檢查命令有效性，並以單調時鐘計算回執等待時間。設備依能力提供命令回執或狀態回報。

### Scheduling behavior｜排程行為

Clock recovery｜時鐘恢復 — Suspend new calendar triggers while the clock is untrusted. On recovery, skip missed routine lighting runs, record the reason and calculate the next occurrence. 時鐘尚未可信時暫緩日曆觸發。恢復後，日常照明預設略過錯過的排程，留下原因並計算下一次。

Daylight saving｜夏令時間 — Skip a nonexistent local time. For a repeated local time, select the first occurrence only. Record the outcome. 當地時刻因撥快而不存在時，略過並記錄；因撥慢而出現兩次時，僅選第一次。

Duplicate prevention｜防止重複 — Before dispatch, durably claim the occurrence by site, rule and intended local date/time. Reuse its command ID on supported retries. After a crash, reconcile an uncertain dispatch before retrying. 下令前以場域、規則與預定當地日期時刻持久登記本次執行。支援重試的設備沿用命令 ID；若重啟後發送結果不明，先核對紀錄。對無法確認且不支援去重的單向命令，保留結果未知。 For one-way commands without deduplication, retain an unknown outcome if reconciliation is inconclusive.

Zone changes｜變更時區 — Preview affected schedules. When the owner applies the new revision, invalidate future starts from the old revision and recalculate future starts at the same local clock time. Preserve end actions of active intervals. While the Hub is unreachable, display the pending change separately from its active configuration. 修改前預覽受影響的排程。執行端套用新版時，使舊版待啟動項目失效，沿用原當地鐘點重算未來啟動時刻，並保留執行中時段的結束動作。Hub 尚未套用時，App 分別呈現待同步與實際生效的設定。

### Overnight intervals and recurrence end dates｜跨午夜時段與重複截止日

The inclusive recurrence end date applies to the start date in the site time zone. For an overnight interval, calculate the end on the following local calendar date. When the interval starts, persist its end action and due time under the same occurrence ID. Reaching the recurrence cutoff stops future starts and preserves the pending end action.

重複截止日包含當日，依場域時區核對每次時段的開始日期。跨午夜時段的結束時刻按下一個當地日曆日計算。時段啟動時，執行端須以同一次排程識別碼保存結束動作及其到期時刻。重複到期後停止建立新的時段，已啟動時段的結束動作仍須執行。

### Acceptance scenarios｜驗收情境

| Scenario｜情境 | Expected outcome｜預期結果 |
|---|---|
| Home member travels｜成員跨區 | A Chongqing light scheduled for Tue 22:55 runs at 2026-11-24 14:55 UTC. A phone in San Francisco shows Tue 06:55 as a secondary time. 重慶住宅週二 22:55 的閱讀燈排程對應上述 UTC 時刻，舊金山手機次要顯示週二 06:55。 |
| Campus loses internet｜校區外網中斷 | A trusted Hub with a cached rule and reachable switch dispatches the 07:30 classroom lighting command once and stores the result locally. 校園 Hub 在時鐘可信、已保存規則且開關可達時，於校區時間 07:30 下令一次並在本地記錄結果。 |
| US Pacific clock change｜美國太平洋時區換時 | A spring 02:30 gap produces a skipped entry. A fall 01:30 overlap produces one run, including after scheduler restart. 春季缺少的 02:30 留下略過紀錄；秋季重複的 01:30 只產生一次執行，排程器重啟後仍成立。 |
| Hub restarts late｜Hub 延遲恢復 | For a missed reading-light schedule, verify zero late commands, a missed-run record and the next eligible run. 睡前開燈排程錯過後，應能查到略過紀錄與下次排程，延遲發出的開燈命令數為零。 |
| Zone revision pending｜時區變更待套用 | While Hub is disconnected, show its active zone. On acknowledgement of the new revision, show the recalculated next run. Hub 失聯時顯示現行時區；收到新版套用回執後，更新下次執行預覽。 |
| Final overnight reading interval｜最後一次閱讀時段跨午夜 | Set the rule to Mondays through 2026-11-23 inclusive. The app displays “Mon 22:55 → Tue 00:30”. Verify one ON dispatch on Nov 23 at 22:55 and one OFF dispatch on Nov 24 at 00:30 under the same occurrence ID, with no new start on Nov 30. 設定每週一執行，截止日為 2026-11-23（含）。App 顯示「週一 22:55 → 週二 00:30」。核對同一次排程於 11 月 23 日 22:55 下達一次開燈命令、11 月 24 日 00:30 下達一次關燈命令；11 月 30 日不再啟動。 |

### App behavior for time ranges｜App 時段操作

Offer a point in time or an interval. For an interval, require explicit start and end actions and display both weekdays across midnight. Available-hours conditions on sensor rules only gate new triggers. Reaching the end of an availability window dispatches an action only if explicitly scheduled. Capture the intended end time of a started occurrence; changing site zone or reaching the recurrence cutoff affects future starts. Display a pending end independently of the next start.

提供「指定時刻」與「指定時段」。時段須明確選擇開始及結束動作，跨午夜時顯示兩端星期。感測規則的有效時段僅限制何時接收新觸發，若需要在時段截止時操作設備，須明確設定該動作。已啟動時段保存其結束時刻；更改場域時區或重複到期只影響未來啟動。App 分別顯示待執行的結束動作與下一次啟動。

## 6. Deadlines, delivery and ordering｜命令期限、傳遞與排序

Validate｜檢查。 The owner checks its clock and active epoch, assigns a deadline, then dispatches. Every queue consumes the same lifetime. A retry retains its original ID and deadline. 執行端確認時鐘及執行權版次後設定期限並下令，各層排隊均消耗同一有效期。重試沿用原 ID 與截止時刻。

Admit｜接收。 Gate forwards only while its latest plausible current UTC precedes expiry and the downstream path can enforce the remaining budget. Use monotonic time for elapsed waits. If remaining life cannot be bounded, reject the expiring action and record the reason. Gate 以估計誤差上界檢查期限，確認下游能執行剩餘期限才轉送。等待使用單調時間；剩餘期限無法可靠判斷時拒絕該命令並記錄原因。

Acknowledge｜回執。 Distinguish acceptance, transmission, device-reported state and independent physical observation. A timeout means unknown completion. Sync transmission alone supports “IR command sent.” 區分受理、發射、設備狀態回報與獨立實體觀測。等待逾時代表完成狀態未知。僅有 Sync 發射回執時，介面顯示「紅外命令已發送」。

Order｜排序。 Deduplicate by event ID; order one source within a boot by sequence. Keep gaps and late arrivals in history. Prevent an older report from overwriting a newer state. Across sources, use causality or nonoverlapping uncertainty intervals; preserve ambiguity otherwise. 依事件 ID 去重，同一來源同一次開機依序號排序。歷程保留缺號與晚到事件，較舊回報不得覆蓋較新狀態。跨來源以因果關係或不重疊的時間誤差區間判序，證據不足時保留順序未定。

Notify｜通知。 Push messages carry the occurrence/event ID and original event time. Record enqueue, provider acceptance and client receipt separately when observable. 推播攜帶原事件或排程 ID 與發生時間，依可觀測證據分別保存入列、服務商受理及終端接收時刻。

## 7. Device timing profiles｜設備計時要求

| Device｜設備 | Time-critical operation and acceptance evidence｜計時作業與驗收證據 |
|---|---|
| Sync | Measure IR/RF pulse widths and frame spacing against each supported encoding profile with a logic analyzer; retain the trace and board revision. 使用邏輯分析儀依各編碼規格量測紅外／射頻脈寬與幀間距，保留波形與板型版次。 |
| Switch | Distinguish debounced input, command application and state report. Replay the same command ID and check for one logical action. 分開記錄去抖輸入、命令套用與狀態回報；重送相同 ID 時查核僅一次邏輯動作。 |
| Plug-A | Timestamp relay state and power samples independently. Mark sample age on reconnect; verify against the configured reporting interval. 繼電器狀態與功率取樣分開計時，重連時標示樣本新鮮度，依設定回報週期驗證。 |
| Sense | Record sample time or boot-relative ticks plus quality. Keep delayed uploads distinguishable from fresh observations. 記錄取樣時刻或開機相對計數及其品質，延後上傳的舊樣本須可辨識。 |
| Panel | Debounce presses locally and attach a unique input event ID. Verify that reconnecting does not replay an expired press. 本地去抖並給按鍵事件唯一 ID，驗證重連後不會重播已過期按鍵。 |
| Flow-I | Enforce the configured maximum run duration locally. Validate cutoff with the network disconnected and verify the board-specific restart state before release. 由設備本地限制設定的最長運行時間，斷網驗證到時截止，並在發布前按板型驗證重啟狀態。 |

The firmware owner must publish timer resolution, tolerated error, sleep/reboot behavior and measured results for each enabled capability. The P0 lighting dispatch target does not supply the pulse tolerance or actuator limit. 韌體負責人須就每項啟用能力提交計時解析度、容許誤差、睡眠／重啟行為與量測結果。脈衝容差及執行器上限由各設備規格提供。

## 8. Recovery and observability｜恢復與運維

On startup, validate clock quality and ownership, load durable occurrences, reconcile dispatched commands, then resume eligible future actions. If Monday's reading interval started and Hub recovers Tuesday at 00:20, restore its 00:30 end. If recovery occurs after the end deadline, apply the configured missed-end policy and report the observed state. The default for routine lighting is to record a missed end and surface the unknown or latest reported state. Device-local maximum runtime limits remain independently enforced.

啟動時依序檢查時鐘品質與執行權、載入持久排程、核對已下令項目，再恢復仍有效的後續動作。若週一閱讀時段已啟動，Hub 於週二 00:20 恢復，須還原 00:30 的關燈動作。若恢復時已超過結束命令期限，依錯過結束動作策略處理。一般照明預設記錄「錯過結束動作」，並顯示狀態未知或最近一次設備回報。設備本地最長運行時間另行強制執行。

Use a single authorized owner per site schedule. A connectivity loss alone does not transfer ownership. On controlled transfer, revoke or fence the old owner's ability to dispatch before activating the new owner; migrate active intervals and reconcile pending receipts. In particular, a zone revision invalidates future starts from the old revision while retaining end actions for already started intervals.

每份場域排程指定單一授權執行端。斷線本身不會移轉執行權。受控切換時先撤銷或隔離舊端發令權，再啟用新端，並移轉執行中時段、核對待收回執。時區版次變更時舊版待啟動項目失效，已啟動時段的結束動作須保留。

Expose clock quality, uncertainty, last sync, active owner and revision, next start, pending end, dispatch lateness, expired-command count, skipped occurrences and duplicate suppression. Missing synchronization is a diagnostic signal; decide eligibility from the uncertainty bound. 顯示時鐘品質、誤差上界、最後校時、執行端與版次、下次開始、待執行結束、下令延遲、過期命令數、略過排程及去重紀錄。失去校時來源時產生診斷訊號，依守時誤差上界決定能否繼續排程。

## 9. Integration acceptance｜整合驗收

Run the six scheduling cases in §5 and the following integration checks. Preserve configuration, board and firmware revisions, reference-clock trace, command/receipt IDs, raw logs and pass/fail per run. Execute shared cases against both deployment modes where applicable.

執行第 5 節六項排程案例及下列整合驗收。每次保留設定、板型與韌體版次、參考時鐘紀錄、命令與回執 ID、原始日誌及通過／失敗結果。共用案例分別於適用的雲端及本地部署執行。

| Test｜測項 | Stimulus → required evidence｜操作與通過條件 |
|---|---|
| T01 Precision｜精度 | Run 100 occurrences per deployment, record independent reference and dispatch times; meet §2 target. 每種部署執行 100 次，保存獨立參考與下令時間，符合第 2 節指標。 |
| T02 Clock step｜時鐘跳變 | Adjust UTC during a 3 s receipt wait. The monotonic wait retains its duration within the declared timer tolerance. 回執等待 3 秒期間調整 UTC，等待長度在公布計時容差內。 |
| T03 Deadline｜命令過期 | Hold a command past expiry at Gate, then reconnect. Observe zero forwards and one traceable expiry. 在 Gate 滯留命令至過期再重連，轉送數為零且可追溯過期原因。 |
| T04 Evidence｜證據 | Inject duplicate, delayed and reordered reports; preserve history, deduplicate and prevent state regression. 注入重複、延遲及亂序回報，歷程可追查、重複可辨識、現況不倒退。 |
| T05 Cold start｜冷啟動 | Disconnect upstream time and invalidate RTC. Record blocked calendar triggers; restore time and verify recovery without replaying stale lighting commands. 中斷上游校時並使 RTC 無效，確認暫緩日曆觸發；恢復時間後不重播過期照明命令。 |
| T06 Active interval｜進行中時段 | Restart Hub between Monday ON and Tuesday OFF, restore trusted time before 00:30. Verify one OFF command under the original occurrence and its receipt. 週一開燈後重啟 Hub，週二 00:30 前恢復可信時間，查核原排程僅一次關燈下令及對應回執。 |
| T07 Ownership｜執行權 | Transfer an active interval, inject a stale-owner command, verify rejection and one authorized end. 移轉執行中時段並注入舊端命令，確認舊命令遭拒且僅一次授權結束動作。 |
| T08 Device timing｜設備計時 | Execute §7 on each supported board, including loss of network for Flow-I. Attach timing captures against the approved device profile. 各支援板型逐項執行第 7 節，含 Flow-I 斷網測試，依已審核設備規格附量測證據。 |

## 10. Implementation order and review｜實作順序與審閱

Shared contract｜共用契約 — Implement clock quality, site zone, recurrence expansion and time fixtures. 實作時鐘品質、場域時區、排程展開與時間測試資料。

Cloud and Hub｜雲端與本地 — Integrate ownership, durable occurrences, end actions and recovery. 對接執行權、持久化排程、結束動作與恢復流程。

Gate and devices｜網關與設備 — Enforce command expiry, monotonic waits, receipt semantics and board-specific limits. 實作期限、單調等待、回執語意與板型時序限制。

App and operations｜介面與運維 — Render schedule previews, active revision and execution evidence, then run §§5, 7 and 9. 呈現排程預覽、生效版次與執行證據，執行第 5、7、9 節驗收。

Review status｜審閱狀態 — The full draft incorporates the six reviewed scheduling scenarios and adds the cross-layer requirements and eight integration tests. Open for engineering sign-off: per-board tolerances, hardware clock retention, nominal test load and measured P0 accuracy. Implementation and hardware acceptance are pending.

完整稿承接六項已討論的排程情境，補齊跨層工程要求與八項整合測試。各板型容差、硬體斷電守時能力、正常測試負載及 P0 實測精度待工程審定。開發與實機驗收待執行。
