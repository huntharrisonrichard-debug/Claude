# Research File — living document

The agent reads this at the **start** of every run and updates it at the **end** whenever
the macro view, a thesis, or the watchlist changes. Always append at least one line to
the Learnings & Observations log each run. Keep it tight and decision-relevant.

---

## Market regime / macro view
_One-paragraph read on the current environment: trend, rates/Fed, inflation, volatility,
risk-on vs risk-off. Update when the picture shifts._

- **As of:** 2026-06-16 (Research Agent)
- **Regime:** Risk-on but stalling at record highs into the **June FOMC (decision Wed 6/17)** —
  Warsh's first meeting as Chair with a new dot plot. ~97% priced for no change, so the dot
  plot is the pivot: **May CPI 4.2% (hottest since Apr '23, energy-driven)** makes a *hawkish*
  signal the live risk (fewer/zero 2026 cuts). Backdrop favors value/energy/industrials over
  long-duration growth this week (2026 rotation: energy +22% YTD leading, tech/financials
  lagging). US–Iran peace deal is deflating the energy premium on the headline, but the slow
  Hormuz ramp (months) keeps oil structurally bid. **Posture: don't chase extended high-multiple
  names into the FOMC; favor cleanly-priced beaten-down quality (AI power) or value/energy tilt.**
- **Key dates ahead:** Wed 6/17 FOMC decision + dot plot + Warsh presser; 6/17 JBL/KMX,
  6/18 ACN/KR/DRI earnings; Fri 6/19 promised Hormuz "full reopening" (watch for slippage);
  late-June PCE.

## S&P 500 reference
- **Inception baseline level:** 7,449 (close, 2026-06-12) — the line we must beat.
- **Latest level / date:** ~7,560 / 2026-06-15 (estimated from reported +1.49% day move; Webull not connected)

## Holdings theses
_One short block per current holding: why we own it, the thesis, and what would break it._

| Ticker | Thesis (why own) | Invalidation (what breaks it) | Cost basis | 7% stop price |
|---|---|---|---|---|
| _(populate from holdings.csv)_ | | | | |

> 7% stop price = `cost_basis * 0.93`. The agent computes and flags automatically.

## Watchlist
_Names we're considering, with the condition that would make us buy._

| Ticker | Why watching | Entry trigger / target | Notes |
|---|---|---|---|
| VST | AI data-center power + nuclear scarcity; PPAs w/ Meta & AWS; beaten down to ~$135 (near 52-wk low) despite Q1 beat | Buy ~$133–138; add >$140. Street PT ~$220. Stop −7%. | M-H. Cleanest small-account size (~0.87 sh ≈ $118). See INTEL §3. |
| PSX | Refiner; energy is 2026 sector leader; refining margins hedge a crude pullback; sold off −3.45% to ~$173 on peace headline | Buy on stabilization $168–174 (wait for up-day). Stop −7%. | M. Evercore Outperform init. Contrarian dip. See INTEL §3. |
| VRT | Best-in-class AI data-center power/thermal; FY26 guide raised | **Don't chase (+84% YTD ~$312).** Entry on pullback to high-$270s/$280s or post-FOMC. Stop −7%. | M (quality, wait for price). Fractional sizing. |
| GEV | Electrification/grid + gas + nuclear; data centers 25% of mix; guide raised | Entry on weakness / post-FOMC (~$941, fractional only). Stop −7%. | M. Theme strong, sizing awkward for this sleeve. |

## Strategy notes
- **Core rule:** sell any holding down ≥7% from purchase price (cost basis).
- **Objective:** beat the S&P 500 total return since inception.
- _Add refinements here as they're learned — sizing, sector limits, re-entry rules, etc._

## Learnings & Observations (running log)
_Newest at the bottom. Date each entry. Capture what you noticed, what worked, what
didn't, and any hypothesis to test._

- 2026-06-12 — Agent initialized. Operating in advisory mode (no Webull connector in this
  environment; quotes via web search, positions from holdings.csv). Awaiting real
  positions to be populated.
- 2026-06-15 (Mid-2, 15:18 ET) — Webull MCP connected fine at midday but did NOT surface any
  tools on the Mid-2 run (full ~90s window, no connection). Reinforces that connection is
  per-run and not guaranteed; the safe default holds — no live read → no orders. S&P ~7,527,
  ≈+1.05% since inception. Macro: US–Iran peace deal → risk-on, defense premiums compress
  (KTOS protected, irrelevant to sleeve). Still zero sleeve positions and an empty
  watchlist/INTEL §3 — the binding constraint isn't ideas yet, it's (a) buying-power hold +
  (b) paper mode. Pre-staging a triggered watchlist remains the top prep item.
- 2026-06-15 (Close, 16:50 ET) — S&P 500 finished **+1.49%** (~7,560) on the US–Iran peace
  deal; sleeve all-cash so it ends Day 1 **−1.49% vs the index** — pure opportunity cost of
  being uninvested, not a bad pick. Webull again failed to surface tools at close (2 of 3
  runs today). Pattern is clear: per-run Webull connection is unreliable, so on any run
  without a live read the only correct move is journal-and-skip (no stale-data trades). The
  fastest path to actually competing: (1) the BP hold clearing + mode→`live`, and (2) a
  pre-built triggered watchlist — INTEL §3 is still empty, so RESEARCH should seed candidates
  itself if the Research Agent stays quiet. Test next session: does Webull connect more
  reliably if the first call is made immediately at run start, before loading state?
- 2026-06-16 (Research Agent, 08:12 ET) — First full live sweep; INTEL §3 now seeded with 4
  candidates (VST, PSX, VRT, GEV). **Dominant near-term factor: Warsh's first FOMC Wed 6/17 +
  a new dot plot, landing one day after a hot May CPI (4.2%, energy-driven)** → hawkish-surprise
  risk; tilted picks to beaten-down/value over extended growth, and flagged VRT/GEV as
  "wait for pullback / post-FOMC." Theme of record: **AI power & electrification** (VST cleanest,
  beaten-down value expression). Crosscurrent: US–Iran peace deal deflating energy premium, but
  slow Hormuz ramp keeps oil bid → PSX contrarian dip-buy. **Sizing reality:** at a ~$897 sleeve,
  the 15% cap (~$135) forces fractional shares on most quality AI names (VRT $312, GEV $941);
  VST (~$135) and PSX (~$173) are the only clean whole-ish-share sizes — prefer those.
  Discarded CRDO (already +69% on earnings), PLTR (Sell→Hold only), PLAY (miss). RSS feeds
  (WSJ/MW/Barron's) all 403-blocked this run — sweep ran on WebSearch only.
