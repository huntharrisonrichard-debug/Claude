# Setup Checklist

Status of the 24/7 trading agent. Check items off as you go.

## ✅ Done
- [x] Repo scaffolding: `CLAUDE.md`, `portfolio/`, `research/`, `journal/`, `reviews/`, `benchmark/`, `routines/`
- [x] Autonomous cash-sleeve mandate encoded (`CLAUDE.md §0`)
- [x] All 5 pre-existing positions recorded as **protected** (COHR, ALL, KTOS, UNCY, CTRI)
- [x] Webull connected (prod) + account reconciled (sleeve = $897.79 cash, 0 agent positions)
- [x] Paper/live kill-switch (`portfolio/TRADING_MODE`, default **paper**)
- [x] EOD recap email (Daily Upside voice) wired into the close check → hhunt@unreleaseparty.com
- [x] Gmail-send permission rule (`.claude/settings.json`)
- [x] Encrypted token persistence built + SessionStart restore hook
- [x] 5 routines created (you)
- [x] `WEBULL_TOKEN_ENC_KEY` env secret set (you)

## ⬜ To do now (one-time, in fresh sessions)
- [ ] **Bootstrap the token.** Fresh session, **Webull app open**: "Pull my Webull balance
      (I'll approve the 2FA), then run `bash scripts/webull-token.sh save` and commit + push."
      → creates the first `.webull/token.enc`.
- [ ] **Verify persistence.** A *second* fresh session, **app closed**: "Pull my Webull
      balance." Success with **no 2FA** = persistence works end-to-end.
- [ ] **Verify the EOD email.** Fresh session: "Send a test EOD recap to
      hhunt@unreleaseparty.com per `routines/email-recap.md`." Confirm it arrives + the voice
      is right. (The send permission now applies in fresh sessions.)
- [ ] **Watch the first scheduled routine run** (or trigger market-open manually) to confirm
      the full pipeline: restore token → read account → 7% scan → journal entry → commit.

## 🔭 Watch / ongoing
- [ ] **Settlement.** Right now $863 of the $897.79 is unsettled and buying power is $0 — even
      in live mode nothing can buy until it settles (likely a day or few). Paper trades are
      unaffected.
- [ ] **Go live when ready.** After you're happy with paper behavior, set the first line of
      `portfolio/TRADING_MODE` to `live` (and commit). Real orders start then, within all §0 limits.
- [ ] **Token renewal (~every 15 days).** Current token expires **2026-06-28**. Near then,
      the agent will email `[Trading Agent] ACTION: re-approve Webull in the app`. Open one
      session with the app to mint a fresh token; unattended resumes automatically.

## Reference
- Routine schedule (ET, Mon–Fri): 9:35 open · 11:00 / 12:45 / 2:15 intraday · 3:50 close (+ Fri weekly review)
- Modes: `portfolio/TRADING_MODE` = `paper` (simulate) | `live` (real orders)
- Webull auth details: `docs/webull-auth.md`
