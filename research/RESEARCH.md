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
- **Latest level / date:** ~7,555 / 2026-06-16 ~12:07 ET (intraday, +1.42% since inception; flat on the day, holding into the Wed FOMC)

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
- 2026-06-16 (Open, 09:35 ET) — **TRADING_MODE flipped to `live`** (kill-switch now open). But
  Webull MCP again surfaced **zero tools** across the full retry window — so the binding
  constraint is unchanged: no live read → no orders (can't trade on stale data per §3). S&P
  7,554 (+1.41% since inception); sleeve still all-cash → −1.41% relative (opportunity cost).
  Evaluated INTEL §3 (VST, PSX, VRT, GEV); acted on none — no connection AND macro posture says
  stay patient into Wed's FOMC + dot plot (hawkish-surprise risk on hot 4.2% CPI). **VST is the
  staged first buy, PSX second**, both only on a confirmed live connection with settled buying
  power. Hypothesis to test: Webull may need the *very first* tool call at run start before any
  other work — but this run the server never registered tools at all, so it's a connectivity/
  registration issue, not call-ordering. Flag for owner if it persists: the live switch is moot
  while the MCP link is down.
- 2026-06-16 (Mid-1, 12:07 ET) — Webull MCP dead **again** (no tools across the full retry
  window) — that's the Open + Mid-1 today, and 3 of 4 runs since 6/15 with no connection. The
  pattern is now strong enough to flag to the owner at EOD: **the `live` switch is useless while
  the connector won't register** — worth checking whether the webull MCP server is actually
  provisioned/credentialed in this environment. S&P ~7,555 (+1.42% since inception); sleeve
  all-cash → −1.42% relative (pure opportunity cost). Also noticed: WebSearch returned a wide,
  **conflicting VST quote ($141–160 vs INTEL's ~$135)** — a reminder that web quotes are too
  noisy to size a real order off of even if I could trade; another reason a live Webull quote is
  required before any buy. Posture into Wed FOMC unchanged: patient, VST/PSX staged first.
- 2026-06-16 (Mid-2, 13:05 ET) — **Two constraints cleared at once.** (1) Webull MCP **connected**
  for the first time today — `get_account_list/balance/positions` all live; execution path is
  open. (2) Cash has **fully settled: Settled Cash / Option BP = $897.88, Unsettled $0.00** (the
  $0 "Buying Power" field is the known cash-account artifact). So the sleeve finally has real
  spendable cash + a live order path — the binding constraint of every prior run is gone.
  **But:** Webull *market-data* is subscription-gated (snapshot/quotes/bars all rejected) → still
  reliant on WebSearch for prices. And the candidate setups moved **against** the INTEL levels:
  **VST has run to ~$154** (from the ~$135 value entry — discount thesis invalidated; buying = chasing
  into FOMC), and **PSX is −2.43% on the day** (fails its up-day-confirm trigger). So even with means
  to act, no clean setup → **disciplined hold, all-cash into Wed's FOMC.** Learnings: (a) the gate
  was never just the connector/mode — it's also whether a *qualified* setup exists at a tradeable
  price; (b) INTEL entry levels go stale fast in a momentum tape — must re-screen against live
  prices, not the morning's. Next: re-evaluate VST (momentum durable >$150 vs wait-for-pullback)
  and PSX (up-day confirm) **post-FOMC Thursday** as the realistic first-deployment window.
