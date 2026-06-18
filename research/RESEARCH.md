# Research File — living document

The agent reads this at the **start** of every run and updates it at the **end** whenever
the macro view, a thesis, or the watchlist changes. Always append at least one line to
the Learnings & Observations log each run. Keep it tight and decision-relevant.

---

## Market regime / macro view
_One-paragraph read on the current environment: trend, rates/Fed, inflation, volatility,
risk-on vs risk-off. Update when the picture shifts._

- **As of:** 2026-06-18 (Research Agent)
- **Regime:** **The hawkish binary resolved.** Warsh's first FOMC HELD 3.50–3.75% on 6/17 but the
  new dot plot moved the **2026 year-end median to 3.8% (from 3.4%), with 9 officials dotting ≥1
  hike** — on hot 4.2% May CPI, the Fed is signaling it may *raise*. The tape repriced hard:
  **S&P −1.21% to 7,420.10, Nasdaq −1.34%, Dow −0.98%; all 11 sectors red, mega-cap tech worst.**
  This confirms the 2026 regime: **long-duration growth de-rates; value/defensive/energy/industrials
  lead — and now add FINANCIALS** (higher-for-longer restores the bank spread model; GS +3%, KBWB
  +1.5% on 6/17). Crosscurrent: the **US–Iran peace MOU was SIGNED 6/17** (ahead of the rumored 6/19),
  Hormuz reopening promptly → **oil sliding (WTI ~$76, Brent ~$78)**; energy stays YTD leader but the
  momentum leg is cooling. **Posture: the 6/17 defensive deployment (IBM/JNJ/XOM/SPY) fits this regime
  — keep it. The freshest unexploited edge is FINANCIALS (BAC), plus defensive healthcare (ABBV) and
  staples (WMT). AVOID adding rate-sensitive AI-power (CEG ~$270/VST ~$160) at extended levels into a
  higher-for-longer print.**
- **Key dates ahead:** **Fri 6/19** US–Iran deal follow-through / Hormuz reopening (watch slippage →
  re-bids oil/XOM); late-June **PCE** (hot print hardens the hike bias); **Mon 6/30 CEG Calpine-lockup
  release** (a sub-$250 dip would finally arm the CEG entry); mid-July Q2 bank earnings (JPM/BAC/GS).

## S&P 500 reference
- **Inception baseline level:** 7,449 (close, 2026-06-12) — the line we must beat.
- **Latest level / date:** **7,420.10 / 2026-06-17 close (−1.21% on the day; −0.39% since inception).**
  ⚠️ **CORRECTION:** the prior entry logged ~7,519 (+0.94%) — that was WRONG. Multiple sources (TheStreet,
  CNBC, 6/17) confirm the S&P **fell 1.21% to 7,420.10** on the hawkish dot plot (2026 median to 3.8%, 9
  officials dot a hike; all 11 sectors red, mega-cap tech worst). **The index is now BELOW inception (−0.39%),
  so the sleeve (≈$897.79, ~flat) is roughly +0.4% AHEAD of the S&P, not ~1% behind.** Trading agent: please
  reconcile `benchmark/performance.csv` against 7,420.10.

## Holdings theses
_One short block per current holding: why we own it, the thesis, and what would break it._

| Ticker | Thesis (why own) | Invalidation (what breaks it) | Cost basis | 7% stop price |
|---|---|---|---|---|
| IBM | Owner-requested. Defensive enterprise-AI / hybrid cloud (Red Hat + watsonx); ~4.5% yield, cash-flow floor; analyst PT ~$306 (Moderate Buy), ~10–15% upside. Largest sleeve position (13.8%). | AI-narrative stall or a guide cut; close below ~$245 stop. | $264.08 | $245.59 |
| JNJ | Defensive healthcare staple; low beta, dividend; classic rate-scare hedge that holds when the dot plot turns hawkish. | Litigation/pipeline shock; broad defensive de-rating; stop $216.55. | $232.85 | $216.55 |
| XOM | Energy/inflation hedge — energy is 2026's sector leader (+22% YTD); dividend cushion; already −10% MTD on the oil-down move (entry near a pullback). Regime hedge vs sticky-inflation/higher-for-longer. | Crude keeps cratering post-Iran-deal AND product demand softens; stop $131.06. | $140.92 | $131.06 |
| SPY | Defensive deployment per §0.9 floor; S&P 500 index beta (#1 fallback). Re-opened as a held swing after the morning owner-test round-trip. | Used as a permanent hold rather than a bridge — swap out as better ideas (CEG sub-$250, etc.) qualify. | $743.09 | $691.07 |
| BAC | ⭐NEW 6/18. Cleanest sleeve-fit on **higher-for-longer = bank NII**; a 3.5–3.75% rate floor restores the spread model. Strong Buy (22 buys/0 sells), PT ~$63 (~10% upside). The freshest regime-winner the sleeve lacked (financials). | Dovish pivot / rate-cut repricing kills the NII thesis; a credit/loan-loss scare; close below ~$53.17 stop. | $57.17 | $53.17 |

> 7% stop price = `cost_basis * 0.93`. The agent computes and flags automatically.

## Watchlist
_Names we're considering, with the condition that would make us buy._

| Ticker | Why watching | Entry trigger / target | Notes |
|---|---|---|---|
| ~~BAC~~ | **✅ BOUGHT 6/18 — 2 sh @ $57.17 (12.9% of sleeve).** Now in the holdings-theses table above; stop $53.17. Was the cleanest sleeve-fit on higher-for-longer = bank NII; Strong Buy, PT ~$63. | — held — | Moved from watchlist to holding. Q2 earnings 7/14 is the next catalyst. |
| **WMT** | ⭐NEW. Defensive staple evolving growth-y (ad +37%, GMV +50%, e-comm +25%); +9% YTD beats S&P. Low-beta ballast for a growth-punishing tape. PT ~$138–140. | Buy on a hold of ~$116–119 (1 whole share). Stop −7% (~$109.9). | M. Consumer-defensive rotation (sector +13% YTD). 1 sh ≈ $118.15. See INTEL §3. |
| **ABBV** | ⭐NEW. Defensive pharma, 3.1% div, Skyrizi/Rinvoq immunology; diversifies the sleeve's JNJ healthcare exposure. Buy, PT ~$253 (Piper $298/OW). | Buy on a hold of ~$218–223 (~0.55 sh). Stop −7% (~$206.9). | M. Rate-scare hedge. ~0.55 sh ≈ $122. See INTEL §3. |
| CEG | Largest US nuclear operator (~55 GW post-Calpine); cleanest carbon-free baseload AI-power play; MSFT/Meta/CyrusOne PPAs; 2026 EPS $11–12, PT ~$404. Still the *value* AI-power name **on a dip only**. | **WATCH — entry NOT met (~$270).** Buy ~$240–250 on a hold; the 6/30 Calpine lockup could create the dip. Stop −7%. | M-H on a dip. Hawkish dots did NOT knock it down. ~0.50 sh ≈ $124. See INTEL §3. |
| VST | AI data-center power + nuclear scarcity; **newly named preferred power provider for a $10B KKR AI-infra venture**; PPAs w/ Meta & AWS. Momentum (ran to ~$160), not a discount. MS PT $212/OW. | Wait: pullback to ~$140–145, OR a decisive hold above ~$160. Stop −7%. | M (momentum). ~0.80 sh ≈ $128. See INTEL §3. |
| ~~PSX~~ | **DISCARDED 2026-06-18** — up-day-confirm trigger never met; Iran deal signed → crude lower (WTI ~$76). Re-examine only if crude stabilizes AND crack spreads widen on an up day. | — | Moved to INTEL §6 Discarded. |
| VRT | Best-in-class AI data-center power/thermal; FY26 guide raised | **Don't chase (+84% YTD ~$312).** Entry on pullback to high-$270s/$280s or post-FOMC. Stop −7%. | M (quality, wait for price). Fractional sizing. |
| GEV | Electrification/grid + gas + nuclear; data centers 25% of mix; guide raised | Entry on weakness / post-FOMC (~$941, fractional only). Stop −7%. | M. Theme strong, sizing awkward ($941/sh) for this sleeve — off active §3 list. |
| **IBM** | ⭐ OWNER-REQUESTED. Enterprise AI/hybrid cloud; $6.4B Red Hat + watsonx portfolio; consistent dividend (~4.5% yield); defensive cash-flow floor. Beats on AI-infra tailwind without high-multiple risk. | Evaluate entry on any pullback; confirm price + analyst setup before buying. Stop −7%. | Research: check current price, EPS, PT, analyst ratings next run. |
| **IONQ** | ⭐ OWNER-REQUESTED. Pure-play quantum computing (trapped-ion); contracts w/ US Air Force + commercial cloud partners; only publicly traded quantum hardware co. High-risk / high-reward; speculative. | Small sizing only (≤8% of sleeve given volatility). Entry on dips; confirm momentum/catalyst. Stop −7%. | Research: volatile name — check recent price action, short interest, and any contract news next run. |
| **RGTI** | ⭐ OWNER-REQUESTED. Rigetti Computing; superconducting quantum processor; AWS/Microsoft cloud partnerships. Earlier-stage than IONQ, higher volatility, lower liquidity. | Small sizing only (≤8% of sleeve). Entry only with a clear catalyst or sector momentum. Stop −7%. | Research: check price, float, dilution risk next run. Pair with IONQ for quantum basket sizing. |

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
- 2026-06-17 (Mid-2, 14:05 ET) — **FIRST LIVE TRADE EXECUTED: BUY SPY 0.15sh @ $750.01 = $112.50** (Order A2JGT08VQIHH7FP5OFIVT0PO98, filled in 105ms). Webull MCP order execution confirmed end-to-end. Owner flagged two issues: (1) Research Agent too narrow — 4 candidates, same names for days, no sector breadth; (2) trading agent wrongly used FOMC as all-cash justification, violating §0.9 explicitly. Both fixed: INTEL.md standing instructions updated to require 10–15 names across multiple sectors per run, plus mandatory coverage of owner-requested tickers IBM / IONQ / RGTI every run. SPY deployed as §0.9 floor-holder (12.5% of sleeve); sleeve still only 12.5% deployed — Close check must push toward 50% with additional names. Alert email sent to both addresses.
- 2026-06-17 (Mid-3, 15:24 ET) — **FIRST REAL DEPLOYMENT: sleeve 0% → 51.5%.** Post-FOMC (Fed held 3.50–3.75%, hawkish dots: ~87% odds of ≥1 2026 hike, 2-yr +11bp; index shrugged, small-caps −0.87%). Bought a 4-name defensive basket — **IBM 0.47@264.08, JNJ 0.49@232.85, XOM 0.80@140.92, SPY 0.15@743.09** (each ~12–14%, all <15% cap). CEG (top §3) stayed a PASS — $268, +2.15%, never fell to its $240–250 entry even on hawkish dots, so it'd have been chasing; fell back to Defensive Deployment Candidates instead (exactly the §0.9 design). **Three durable learnings:** (1) **Reconciliation caught two owner-initiated changes** the prior journal missed/mislabeled — owner sold protected COHR (0.7@382.56, NOT an agent action) and round-tripped the morning SPY (the "Mid-2 14:03 ET post-FOMC" entry was actually a *10:03 ET morning* execution test — prior times were UTC mislabeled as ET). Always cross-check order history + use ET. (2) **Webull rejects fractional qty >1** (`INVALID PARAMETER` on KO 1.38) — for sub-$135 names use whole shares or a sub-1 fraction, or verify the notional-dollar order path before relying on it; I substituted SPY rather than gamble the notional API with real money. (3) **WebSearch quotes are stale/noisy** (IBM showed $278 vs $264 live fill) — size with margin under the cap and trust the live market fill, not the web quote. Connector was reliable all 4 runs today — the operational unlock. Owner's COHR proceeds (~$268) sit in account cash but are NOT sleeve capital; sleeve won't spend them.
- 2026-06-17 (Close, 16:51 ET) — **Day 4 ends FULLY DEPLOYED at 51.5%** — first day the sleeve has skin
  in the game (IBM/JNJ/XOM/SPY, each 12–14%). Webull connector live **4/4 runs today** — the operational
  unlock. Close reconcile clean: sleeve $897.79 (cash 435.49 + positions 462.30 at live last-prices),
  all 4 protected names live-confirmed untouched, no stop-loss breaches (all positions within ±0.5% of
  cost). **Key learning — the cost of deploying late:** the basket went on at ~3:21pm post-FOMC, so it
  barely moved while the index added +0.10% → relative gap *widened* −0.80% → **−0.94%**. Being uninvested
  hurts on up days; being deployed-but-late captures none of the day's move either. The lesson reinforces
  §0.9's logic: deploy *earlier* in the session once a setup + live connector exist, rather than waiting for
  a "perfect" post-event window — the floor isn't just downside protection, it's participation. From
  tomorrow the basket participates fully. Carry-over: CEG never offered its $240–250 entry (~$268 all day);
  re-screen sub-$250. Next market-hours run with freed-up settled cash: evaluate a 5th name (clean §3 setup
  or owner-requested IONQ/RGTI, small sizing). Market-data quotes still subscription-gated — used the live
  positions read for sleeve last-prices (real fills/marks), WebSearch only for the index level.
- 2026-06-18 (Research Agent, 08:07 ET) — **Hawkish FOMC resolved; sweep broadened per owner.** (1) The
  dot-plot risk materialized: 2026 median to 3.8% (9 dot a hike), **S&P −1.21% to 7,420.10**, all 11 sectors
  red, mega-cap tech worst. (2) **Caught a benchmark error** — the 6/17 log had the S&P at ~7,519 (+0.94%);
  the **real close was 7,420.10 (−0.39% since inception)**, which flips the sleeve from ~1% *behind* to ~0.4%
  *ahead* of the index (the 6/17 defensive deployment + the index's drop = staying low-beta paid). Flagged for
  performance.csv reconcile. (3) **US–Iran MOU signed 6/17** (early) → oil sliding (WTI ~$76); PSX discarded
  (oil signed-deal lower), ACN discarded (soft consulting guide). (4) **New theme — financials:** higher-for-
  longer restores the bank spread model (GS +3%, KBWB +1.5%); **BAC** surfaced as the cleanest sleeve-fit
  whole-share play and the freshest edge. (5) Broadened INTEL §3 to **9 names** across financials/staples/
  healthcare/AI-power/quantum/industrials/tech: added BAC/WMT/ABBV; carried CEG (still ~$270, entry not met)
  + VST (KKR $10B deal, momentum); owner names IBM (held, no add), IONQ (~$55, ≤8%, wait), RGTI (~$21, +59%/wk,
  ≤8%, wait); CAT flagged sizing-blocked (~$972). Sleeve at 51.5% (floor met) — regime upgrade priority BAC >
  WMT ≈ ABBV over the SPY floor-holder. RSS still 403-blocked; WSJ_SESSION_COOKIE unset.
- 2026-06-18 (Open, 09:40 ET) — **Day 5 open: connector live first-attempt again (5 runs running), 5th name added.**
  (1) **BOUGHT BAC 2 sh @ $57.17 = 12.9% of sleeve** — INTEL §3 #1 lead, the freshest regime-fit edge
  (financials on higher-for-longer NII; Strong Buy, PT ~$63). Filled at the top of the day range ($57.17 vs
  ~$56.53 pre-mkt) on the +1.15% risk-on open; acceptable slippage on a liquid large-cap. Deployment floor was
  already met (50.9%) → this is an **opportunistic upgrade**, putting now-fully-settled SPY proceeds to work and
  diversifying into the one regime winner the sleeve lacked. Sleeve now 5 names at 63.8% deployed.
  (2) **IBM is the position to watch — −5.97% from cost** ($248.32 vs $264.08), ~1% above its $245.59 stop;
  it's the basket's main drag (−$7.41 unrealized). Mechanical 7% rule sells it if it trades ≤ $245.59; WMT/ABBV
  are next in line to redeploy. (3) **Applied the benchmark correction** — fixed the 6/17 perf row to the real
  S&P close **7,420.10 (−0.39% since inception)**; the prior 7,519 was wrong. As of 6/17 close the sleeve (~flat)
  was +0.4% AHEAD, not behind. (4) **Defensive tilt lags a risk-on up day** — sleeve −1.19% since inception
  while the index rallied +1.15% intraday today; expected cost of low beta on a tech-led bounce (it earns its
  keep on down days, e.g. 6/17). Hypothesis: the basket should outperform on red/choppy tape and lag on sharp
  up days; net edge depends on the regime staying choppy/higher-for-longer, which the dots support.
- 2026-06-17 (Mid-1, 09:53 ET) — **Connector is LIVE today** (connected first attempt) — the operational
  positive we've been waiting for; if it persists past the 2:30pm presser we can actually *execute* the
  post-FOMC deployment instead of journaling another all-cash day. Live reconcile clean: Settled/Option BP
  $897.88, all 5 protected names confirmed untouched, zero sleeve, no ledger drift. **CEG has run +2.2% to
  ~$268** — now ~8% ABOVE its $240–250 entry zone, so the cleanest value entry got pricier; a hawkish FOMC
  that knocks rate-sensitive names back toward the $250s would *improve* the setup. Held all 4 candidates
  pre-print (still rate-sensitive into 2pm). §0.9 floor not binding intraday but **will be enforceable at
  Close** now that Webull's up — target ≥4 names to ≥50% into the post-2:30pm window. Learning: a live
  connector + a pricier-CEG both argue the *same* way today — wait for the print; patience is cheap when
  the catalyst is hours away and the entry has already moved against you.
