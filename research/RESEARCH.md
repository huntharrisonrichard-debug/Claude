# Research File — living document

The agent reads this at the **start** of every run and updates it at the **end** whenever
the macro view, a thesis, or the watchlist changes. Always append at least one line to
the Learnings & Observations log each run. Keep it tight and decision-relevant.

---

## Market regime / macro view
_One-paragraph read on the current environment: trend, rates/Fed, inflation, volatility,
risk-on vs risk-off. Update when the picture shifts._

- **As of:** 2026-06-12
- **Regime:** Risk-on into the weekend; S&P 500 +0.74% on the day. Full macro read (rates,
  Fed, inflation, key dates) to be filled on the first live routine run once positions and
  watchlist are loaded.
- **Key dates ahead:** (Fed meetings, CPI, jobs, major earnings — populate on first run)

## S&P 500 reference
- **Inception baseline level:** 7,449 (close, 2026-06-12) — the line we must beat.
- **Latest level / date:** ~7,527 / 2026-06-15 12:05 ET (intraday, +1.05% since inception)

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
| | | | |

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
- 2026-06-15 (Midday) — Webull connected live (2FA approved 1st try). Cash now **fully
  settled** ($897.81), but broker **Buying Power still $0.00** — the blocker shifted from
  cash settlement to an account-side BP hold. Until BP > $0, nothing is deployable
  regardless of paper/live mode. Sleeve still 0 positions; protected names all reconcile.
  Webull market-data snapshots need a paid quote subscription (use position last-price +
  WebSearch for indices). **Action item:** build a researched watchlist with concrete entry
  triggers so we can act immediately once BP frees up — currently empty = nothing teed up.
