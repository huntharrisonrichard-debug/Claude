# Setup Checklist

Status of the 24/7 trading agent. Check items off as you go.

## ✅ Done
- [x] Repo scaffolding: `CLAUDE.md`, `portfolio/`, `research/`, `journal/`, `reviews/`, `benchmark/`, `routines/`
- [x] Autonomous cash-sleeve mandate encoded (`CLAUDE.md §0`)
- [x] All 5 pre-existing positions recorded as **protected** (COHR, ALL, KTOS, UNCY, CTRI)
- [x] Webull connected (prod) + account reconciled (sleeve = $897.79 cash, 0 agent positions)
- [x] Paper/live kill-switch (`portfolio/TRADING_MODE`, default **paper**)
- [x] EOD recap email (Daily Upside voice) → hhunt@unreleaseparty.com AND hunt.harrisonrichard@gmail.com
- [x] Gmail-send permission rule (`.claude/settings.json`)
- [x] 5 routines created (you)

## ⚠️ Reality: Webull requires in-app 2FA on EVERY API session
The agent just makes the Webull call; the approval prompt appears in your app; you approve.
Set phone alarms at the routine times and approve when a check runs. If it isn't approved,
that run falls back to paper/snapshot. (No token caching — Webull forces fresh 2FA regardless.)

## ⬜ To do now (one-time, in fresh sessions)
- [ ] **Verify the EOD email.** Fresh session: "Send a test EOD recap to
      hhunt@unreleaseparty.com and hunt.harrisonrichard@gmail.com per `routines/email-recap.md`."
      Confirm it arrives at both + the voice is right.
- [ ] **Trial a run.** At a routine time (or trigger market-open manually) with the app handy:
      approve the Webull 2FA when prompted, then confirm it reads the account, runs the 7% scan,
      journals, and commits.

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
- Webull auth: in-app 2FA each session (approve in the app; else the run uses paper/snapshot)
