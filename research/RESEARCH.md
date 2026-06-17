# Research File — living document

The agent reads this at the **start** of every run and updates it at the **end** whenever
the macro view, a thesis, or the watchlist changes. Always append at least one line to
the Learnings & Observations log each run. Keep it tight and decision-relevant.

---

## Market regime / macro view
_One-paragraph read on the current environment: trend, rates/Fed, inflation, volatility,
risk-on vs risk-off. Update when the picture shifts._

- **As of:** 2026-06-17 (Research Agent)
- **Regime:** **FOMC day** — decision **2:00pm ET**, Warsh's first presser 2:30pm (corrected
  from prior 1:30pm note). ~97% priced for a hold, so the **dot plot is the whole event**:
  consensus erases March's lone 2026 cut, BofA sees ≥3 members dotting 2026 *hikes*, ~70% odds
  of ≥1 hike by year-end — a *hawkish* tail on hot 4.2% May CPI. Backdrop favors value/energy/
  industrials over long-duration growth (2026 rotation: energy +22% YTD leads, tech faltering;
  yesterday S&P −0.6%, Nasdaq −1.1%, Dow record). **New crosscurrent: oil cratered to 3-month
  lows (~$79 Brent, down 4 straight)** as the US–Iran interim deal (signing Fri 6/19, Iranian
  exports resume) unwinds the conflict premium — weakens energy momentum, mixed for refiners.
  **Posture: stay patient into 2pm; first clean deployment window is *post-FOMC* (this afternoon
  or Thursday). Favor beaten-down AI-power quality (CEG) over extended momentum (VST has run);
  energy entries (PSX) need an up-day confirm the oil bleed has stopped.**
- **Key dates ahead:** **TODAY Wed 6/17 FOMC decision (2pm) + dot plot + Warsh presser (2:30pm)**;
  6/17 JBL/KMX, 6/18 ACN/KR/DRI earnings; **Fri 6/19 US–Iran deal signing + Hormuz reopening**
  (watch for slippage); **Mon 6/30 CEG Calpine-lockup share release** (supply overhang); late-June PCE.

## S&P 500 reference
- **Inception baseline level:** 7,449 (close, 2026-06-12) — the line we must beat.
- **Latest level / date:** ~7,509 / 2026-06-16 close (−0.6% on the day off Jun15 actual 7,554.29; **+0.81% since inception**). Dow hit a record but S&P/Nasdaq slipped as Hormuz-reopening hopes faded and the tape de-risked into the Wed FOMC.

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
| CEG | ⭐NEW. Largest US nuclear operator (~55 GW post-Calpine); cleanest carbon-free baseload AI-power play; MSFT/Meta/CyrusOne PPAs; 2026 EPS $11–12, PT ~$404. **Beaten down −32.6% YTD to ~$247** = the value entry VST no longer offers. | Wait for FOMC, then buy ~$240–250 on up-day confirm. Stop −7%. | M-H. Risk: Jun 30 Calpine lockup release + $281 secondary = supply overhang. ~0.50 sh ≈ $124. See INTEL §3. |
| VST | AI data-center power + nuclear scarcity; PPAs w/ Meta & AWS. **Value thesis invalidated — ran +12% to ~$154.** MS PT raised to $212/OW. Now momentum, not a discount. | Wait: pullback to ~$135–140, OR post-FOMC reclaim/hold >$160. Stop −7%. | M (re-rated to momentum). ~0.80 sh ≈ $123. See INTEL §3. |
| PSX | Refiner; energy is 2026 sector leader; refining margins hedge a crude pullback. **Oil now at 3-mo lows — momentum against it.** | Buy on stabilization $168–175 + **up-day confirm** (trigger NOT met). Stop −7%. | M (weakened). Evercore Outperform init. See INTEL §3. |
| VRT | Best-in-class AI data-center power/thermal; FY26 guide raised | **Don't chase (+84% YTD ~$312).** Entry on pullback to high-$270s/$280s or post-FOMC. Stop −7%. | M (quality, wait for price). Fractional sizing. |
| GEV | Electrification/grid + gas + nuclear; data centers 25% of mix; guide raised | Entry on weakness / post-FOMC (~$941, fractional only). Stop −7%. | M. Theme strong, sizing awkward ($941/sh) for this sleeve — off active §3 list. |

## Defensive Deployment Candidates
_Pre-approved fallback names for the §0.9 deployment floor. Use these when no INTEL.md §3
candidate qualifies at current prices. Goal: keep ≥50% of sleeve deployed at all times.
Pick the most attractive available; diversify across names (≤15% each). Refresh this list
as the macro regime shifts._

| Ticker | Type | Why it qualifies | Notes |
|---|---|---|---|
| SPY | ETF | S&P 500 index; default floor position when no better idea exists | Lowest-conviction fallback; captures market beta |
| QQQ | ETF | Nasdaq-100; use when tech/growth regime intact | Slightly higher beta than SPY |
| VTI | ETF | Total US market; broadest diversification | Interchangeable with SPY as a floor hold |
| XOM | Dividend / Energy | Energy is 2026 sector leader (+22% YTD); dividend provides downside cushion | Watch crude direction; also a regime hedge |
| CVX | Dividend / Energy | Same thesis as XOM; diversify energy exposure | Pair with XOM or use alone |
| JNJ | Dividend / Defensive | Consumer/healthcare staple; very low beta; dividend yield | Classic defensive; holds in rate-scare environments |
| PG | Dividend / Defensive | Consumer staples; pricing power; near-zero correlation to Fed surprises | Very slow growth but capital-preserving |
| KO | Dividend / Defensive | Beverage staple; high dividend; textbook inflation-resilient | Ultra-low volatility; appropriate in risk-off weeks |

> **Sizing reminder:** ≤15% per name (hard cap from §0.4). Hitting the 50% floor requires
> deploying into **at least 4 names** at ~12–13% each. Spread across different types
> (e.g., 1 ETF + 1 energy + 1 staple + 1 INTEL candidate) to avoid concentration risk.

## Strategy notes
- **Core rule:** sell any holding down ≥7% from purchase price (cost basis).
- **Objective:** beat the S&P 500 total return since inception.
- **Deployment floor:** ≥50% of sleeve must be invested at all times (§0.9). Use
  Defensive Deployment Candidates above when no opportunistic play is available.
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
- 2026-06-17 (Research Agent, 08:05 ET) — **FOMC day.** Three material shifts vs yesterday:
  (1) corrected FOMC time to **2:00pm ET / presser 2:30pm**; (2) **oil cratered to 3-mo lows
  (~$79 Brent, down 4 straight)** on the imminent US–Iran deal (signing Fri 6/19) → PSX
  energy-momentum leg weakened, trigger not met; (3) **VST ran +12% to ~$154 — its ~$135 value
  thesis is dead** (MS PT→$212/OW, now momentum), demoted to wait-for-pullback/post-FOMC reclaim.
  **Surfaced CEG as the new top beaten-down AI-power value lead** — largest US nuclear op (~55 GW),
  MSFT/Meta PPAs, EPS $11–12, PT ~$404, but −32.6% YTD on a *technical* supply overhang (Jun 30
  Calpine lockup + $281 secondary), not a thesis break. Dropped GEV from active §3 ($941/sh
  awkward for sleeve; kept on watchlist). All candidates rate-sensitive → first deployment is
  **post-FOMC** (today after 2:30 or Thursday), priority CEG > PSX ≈ VST. Binding constraint
  remains the unreliable Webull connector (live only 1 of 4 runs 6/16). RSS feeds still blocked.
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
- 2026-06-17 (Open, 09:40 ET) — **FOMC day, market-open check.** Webull MCP **failed to register tools
  again** across the full retry window → no live read, **no orders** (can't trade on stale data, §3); §0.9
  deployment floor **suspended** (condition b). S&P ~7,519–7,536 this morning (~+1.05% since inception,
  sources split; index +0.33% pre-noon). Evaluated all four INTEL §3 candidates (CEG/VST/PSX/VRT) — **all
  PASS pre-FOMC**: CEG (top lead) and VST are rate-sensitive (wait for 2pm print), PSX's up-day-confirm
  trigger isn't met (oil still bleeding), VRT extended. Disciplined call holds: first deployment is the
  **post-FOMC window (after 2:30pm today, or Thursday)**, re-screened against fresh live levels, priority
  **CEG > PSX ≈ VST** — and only on a confirmed live Webull connection. Into a known binary (dot plot +
  Warsh presser, hawkish tail on 4.2% CPI), all-cash is a deliberate position. Connector remains THE
  binding constraint — flag to owner at EOD if it stays dark all day.
- 2026-06-16 (Close, 16:05 ET) — Day 3 ends **all-cash**; the tape de-risked into the Fed exactly as
  the macro posture warned: **Dow record but S&P −0.6% (~7,509), Nasdaq −1.1%**, Hormuz "swift
  reopening" hopes fading. **The disciplined hold paid a small relative dividend:** sleeve flat while
  the index fell → relative gap **narrowed −1.49% → −0.80%** since inception. Webull MCP **failed to
  register tools again** (live only 1 of 4 runs today — Mid-2), so no execution path at close anyway.
  Two durable takeaways: (a) the connector is unreliable run-to-run — worth flagging to the owner that
  the `live` switch is moot without a registered connection; (b) being uninvested is only "behind" on
  up days — into a known binary risk (FOMC/dot-plot) cash is a *position*. Plan unchanged: hold through
  Wed's print, first deployment **post-FOMC Thursday**, re-screening VST/PSX against fresh live levels.
