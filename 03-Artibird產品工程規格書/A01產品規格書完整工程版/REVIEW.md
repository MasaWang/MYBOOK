# Gate Specification Revision — REVIEW
# Gate 規格修訂 — 成果紀錄

Date｜日期：2026-11-06（America/Los_Angeles）
Base commit｜底稿提交：d80bedafc8f9ccd885414926c3103f3578766d3d
Scope｜範圍：Gate 商業版、工程版及本成果紀錄。

## Summary｜摘要

Applied the user's approved Gate revision recommendations. Keep the ESP32-C6 baseline and existing product responsibilities. Commercial v1.2-Candidate references engineering v1.1-Candidate. Candidate refers to product-specification maturity; approval to edit does not certify hardware or approve manufacturing.

已套用使用者同意的 Gate 修改建議。保留 ESP32-C6 基準及既有產品分工。商業 v1.2-Candidate 對應工程 v1.1-Candidate。候選狀態表示產品規格成熟度；同意修訂不代表硬體認證或製造批准。

## Changes｜變更

- Commercial: clarify role, customer value, Runtime dependencies, compatibility, model data and publication evidence; replace Yes / Partial with a dependency matrix.
- 商業版：釐清角色、客戶價值、Runtime 依賴、相容性、型號資料與發布證據；以依賴矩陣取代 Yes／Partial。
- Engineering: separate device protocols and upstream links; pin firmware inputs; specify capacity metrics, command results, authority, recovery and model-specific variants.
- 工程版：分開設備協議及上行；固定韌體建置資料；補容量、指令結果、權威、恢復及型號版本。
- Appendix D: operating record, authority, metrics, fault behavior, acceptance scenarios and official implementation references.
- 附錄 D：運行記錄、權威、指標、故障行為、驗收情境與官方實作參照。

## Verification｜核對

Both local baselines matched their GitHub Git blob SHA before patching. Exact replacements were applied with SHA-256 guards. The patch tool reported byte preservation outside the selected ranges for both files. Cross-document version references, command-priority correction, appendix presence, document-end uniqueness and code-fence balance were checked. Review is static document verification; firmware compilation, hardware testing and certification were not performed.

套用前，兩份本地底稿均與 GitHub Git blob SHA 相符。精確替換採 SHA-256 保護。工具確認兩份文件在選定範圍外的 bytes 保留。已核對跨文件版本引用、指令優先規則修正、附錄存在、文件結尾唯一及程式碼圍欄平衡。此為靜態文件核對，未執行韌體編譯、硬體測試或認證。

## Completion and limitations｜完成度與限制

Approved text changes are applied. No capacity, power, range, warranty, availability or certification result was invented. Hardware configuration and test thresholds remain to be completed from actual engineering evidence. Existing family-wide indexes and other products remain outside this revision; they must not be assumed synchronized with the new candidate versions.

已套用核准文字改動，未填造容量、功耗、距離、保固、供貨或認證結果。硬體配置及測試門檻仍須由實際工程證據補齊。產品線總索引及其他產品不在本次範圍內，不視為已同步新候選版本。

## Inherit and improve｜繼承與改進

Keep the C6 baseline, Gate access role and evidence-based claims. Complete one actual model record, validate the mixed workload / fault cases, then fill the customer data sheet from reviewed results.

繼承 C6 基準、Gate 接入角色及依證據宣稱原則。先完成一個實際型號記錄，驗證混合負載及故障情境，再由已審結果回填客戶資料表。

## Patch record｜修訂記錄

- `01 Gate 商業.md`: 16 exact replacements; base SHA-256 `0ba7eec17d5634355eb9ba9af5d63a4d4c9619cdb650e7d8133f2891bf2e7146`; result SHA-256 `7bfb05d3fc8d88bf6018df675f940b6a214d3a23c4c57b6b680c09e4edf01197`.
- `01 Gate.md`: 20 exact replacements; base SHA-256 `56893530171e82a15487ff34b4ffd875661da34c9ddd2fe1eb41b09b8aebb7cd`; result SHA-256 `e986f690b37098b3251d569570341befff7685254f7a600c15173a31e158525c`.
