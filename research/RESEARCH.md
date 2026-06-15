# Research File — living document

The agent reads this at the **start** of every run and updates it at the **end** whenever
the macro view, a thesis, or the watchlist changes. Always append at least one line to
the Learnings & Observations log each run. Keep it tight and decision-relevant.

---

## Market regime / macro view
_One-paragraph read on the current environment: trend, rates/Fed, inflation, volatility,
risk-on vs risk-off. Update when the picture shifts._

- **As of:** 2026-06-15
- **Regime:** **Risk-on.** US–Iran ceasefire (announced Sun 6/14 night) reopens the Strait
  of Hormuz → equities rip, crude sinks. Mon 6/15: S&P +1.3%, Nasdaq +2.38% (chip/tech led),
  Dow +1.2%. Counter-current: sticky inflation prints and rate-cut-timing jitters cap
  euphoria. Net: constructive but headline-driven; a deal that stalls (talks to finalize
  within 60 days) could unwind the oil-down/stocks-up trade fast.
- **Key dates ahead:** Fri **2026-06-19 Juneteenth — market CLOSED** (4-day trading week).
  Watch for follow-through on the Iran deal and any energy→consumer/airline rotation as
  crude falls. (Fed/CPI/jobs dates to confirm next run.)

## S&P 500 reference
- **Inception baseline level:** 7,449 (close, 2026-06-12) — the line we must beat.
- **Latest level / date:** ≈7,546 intraday / 2026-06-15 (+1.3% day; ≈+1.3% since inception).
  _(Sources also show a 6/12 close near 7,431; benchmark inception stays locked at 7,449.)_

## Holdings theses
_One short block per current holding: why we own it, the thesis, and what would break it._

| Ticker | Thesis (why own) | Invalidation (what breaks it) | Cost basis | 7% stop price |
|---|---|---|---|---|
| _(populate from holdings.csv)_ | | | | |

> 7% stop price = `cost_basis * 0.93`. The agent computes and flags automatically.

## Watchlist
_Names we're considering, with the condition that would make us buy. Seeded 2026-06-15;
quotes/levels NOT yet live-confirmed — confirm on a connected run before any entry. Sleeve
≈$898, 15% cap ≈ $135/name (fractional shares OK), so price level isn't the constraint —
liquidity + a real setup is. Long stock only._

| Ticker | Why watching | Entry trigger / target | Notes |
|---|---|---|---|
| SPY/IVV | Broad-market beta; simplest way to stop lagging the index while we lack single-name conviction | Buy a partial (~10% of sleeve) on the first calm pullback / green-to-red fade that holds; not chasing a +1.3% gap-up | Pairs the mandate (beat S&P) by tracking it; low single-name risk |
| Energy (XLE or a major) | Iran ceasefire is sinking crude → energy is the obvious *loser*; watching for an oversold bounce OR a clean short-thesis-free entry once oil stabilizes | Only after crude finds a floor; avoid catching a falling knife | Contrarian; needs confirmation, not a day-1 buy |
| Airlines / consumer (e.g. JETS, DAL) | Lower oil = margin tailwind for fuel-heavy names; classic beneficiary of the same catalyst hurting energy | Buy on a pullback after the initial pop fades, if crude stays down | Cleaner long thesis than energy here |
| Semis (SMH/NVDA-complex) | Leadership today (+2.38% Nasdaq) but already extended on the gap | Wait — do NOT chase the gap; revisit on a multi-day consolidation | Momentum, but entry discipline matters at these levels |

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
- 2026-06-15 (Open) — Webull MCP did **not** connect this run (no tools exposed after the
  2FA window — expected for an unattended scheduled routine). Ran in paper/snapshot mode →
  **no orders** (mandate §3: never trade on stale data; also `TRADING_MODE=paper`). Market
  ripped +1.3% on the US–Iran ceasefire; our all-cash sleeve now lags the S&P by ~1.3%
  since inception. Takeaway: cash drag is real even on day 2 — seed a researched watchlist
  with conditional triggers so the next *live + settled* run can deploy quickly instead of
  starting from a blank page. Also: at inception buying power was $0 (unsettled deposit) —
  confirm settled buying power before sizing any first buy; don't assume the $898 is
  spendable.
