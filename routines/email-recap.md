# Email Recap — style & structure (The Daily Upside voice)

The **close check** composes the day's recap using this guide and sends it via the Gmail
Zapier action. One email per market day.

- **Send to:** `hhunt@unreleaseparty.com` **and** `hunt.harrisonrichard@gmail.com` (both)
- **Action:** `gmail_send_email` (`execute_zapier_write_action`, selected_api `GoogleMailV2CLIAPI`)
- **Params:** `to=["hhunt@unreleaseparty.com","hunt.harrisonrichard@gmail.com"]`,
  `subject=<below>`, `body=<below>`, `body_type=html` (simple HTML: `<b>`, `<br>`, `<ul><li>`).
  Plain is fine as a fallback.

## Voice (model on *The Daily Upside*)
Smart, brisk, lightly witty financial-newsletter tone. Lead with a sharp observation, back
every claim with a number, no hype, no jargon soup, no invented data. A dry one-liner or
two is welcome; clichés ("to the moon," "bloodbath") are not. Target **300–450 words**
(expanded for the newsletter sections below). **Always state PAPER (simulated) vs LIVE up top.**

## Subject line
Punchy, with the score in it. Examples:
- `📈 Sleeve Recap — Mon Jun 15: +0.4% (S&P +0.1%, we're ahead) [LIVE]`
- `📉 Sleeve Recap — Tue Jun 16: −0.6% day, still +1.2% vs S&P [LIVE]`
- Quiet day: `😴 Sleeve Recap — Wed Jun 17: no trades, but the Fed isn't done with us [LIVE]`

## Body structure
1. **Lede** — one or two witty sentences tying to the day's market mood or a notable macro
   event. Make it read like a newsletter opening, not a bot report.

2. **The Scorecard** —
   - Sleeve value $____ (cash $____ + positions $____)
   - Day: __._% · Since inception: __._% · S&P since inception: __._% · **Edge: __._%**
   - Mode: PAPER / LIVE · buying-power note if relevant (always use `Option Buying Power`)

3. **The Moves** — bullets, one per trade: `BUY/SELL TICKER — N sh @ $__ (__% of sleeve) — <one-line why>`.
   If none: "No trades today — here's why" + the one-liner.

4. **Position Watch — Upcoming Catalysts** — for each held sleeve position, list any
   known near-term catalyst or event that could materially move the stock. Pull from
   `research/INTEL.md`, `research/RESEARCH.md`, and today's news scan. Format:
   - `TICKER — [catalyst]: [date or timeframe] — [one-line on what to watch for]`
   - Only include real, specific catalysts within the next ~30 days. Skip a name if nothing
     concrete is known — don't pad with vague statements. Examples:
     - `BAC — Q2 earnings: mid-July — watch NII guidance vs higher-for-longer thesis`
     - `NVDA — next earnings: late Aug — AI capex commentary from hyperscalers is the tell`
     - `IONQ — IonQ Forte commercial availability: TBD — milestone that confirms trapped-ion leadership`
   - This section helps the owner know when to pay attention to individual names.

5. **Market Pulse** — 3–5 bullets on what happened in the broader market today and what's
   coming up. Write it like a newsletter sidebar, not a ticker tape. Blend past and forward:
   - **Today:** notable macro prints, Fed speak, geopolitical developments, sector rotation,
     anything that moved the tape meaningfully
   - **On the calendar:** upcoming Fed meetings/minutes, CPI/PPI/PCE, jobs reports,
     major earnings relevant to the macro picture, geopolitical events the owner should track
   - One crisp sentence per bullet. Source from `research/NEWS-FEED.md` and any fresh
     WebSearch done this run. Never invent events or dates.

6. **On Deck** — what the agent is watching or planning for the next session. Specific:
   watchlist entry triggers, pending deployment moves, any open question needing owner input.

7. **Sign-off** — short, dry. e.g. *"We'll be back tomorrow, assuming the market is too."*

## Rules
- Never fabricate prices, fills, P/L, or events — pull from the ledger / Webull / sourced news.
  If a number or event is unavailable, say so.
- Mirror the journal + `sleeve-ledger.csv` exactly; the email is a readable summary, not a
  new source of truth.
- Keep protected holdings (ALL, KTOS, UNCY, CTRI) out of the scorecard — the sleeve is
  cash + agent positions only. Mention a protected name only when the owner would specifically
  want a heads-up (e.g., a major binary catalyst like an FDA decision on a protected holding).
