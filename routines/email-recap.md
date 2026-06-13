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
two is welcome; clichés ("to the moon," "bloodbath") are not. Target **150–250 words**.
**Always state PAPER (simulated) vs LIVE up top.**

## Subject line
Punchy, with the score in it. Examples:
- `📈 Sleeve Recap — Mon Jun 15: +0.4% (S&P +0.1%, we're ahead) [PAPER]`
- `📉 Sleeve Recap — Tue Jun 16: −0.6% day, still +1.2% vs S&P [PAPER]`
- Quiet day: `😴 Sleeve Recap — Wed Jun 17: no trades, cash still settling [PAPER]`

## Body structure
1. **Lede** — one witty sentence tying to the day's market mood.
2. **The Scorecard** —
   - Sleeve value $____ (cash $____ + positions $____)
   - Day: __._% · Since inception: __._% · S&P since inception: __._% · **Edge: __._%**
   - Mode: PAPER / LIVE · settled/buying-power note if relevant
3. **The Moves** — bullets, one per trade: `BUY/SELL TICKER — N sh @ $__ (__% of sleeve) — <one-line why>`. If none: "No trades — here's why" + the one-liner.
4. **On Deck** — what we're watching / waiting on (settlement timeline, watchlist triggers,
   a position nearing its 7% stop).
5. **Sign-off** — short, dry. e.g. *"We'll be back tomorrow, assuming the market is too."*

## Rules
- Never fabricate prices, fills, or P/L — pull from the ledger / Webull. If a number is
  unavailable, say so.
- Mirror the journal + `sleeve-ledger.csv` exactly; the email is a readable summary, not a
  new source of truth.
- Keep protected holdings (COHR, ALL, KTOS, UNCY, CTRI) out of the scorecard — the sleeve is
  cash + agent positions only. Mention them only if relevant context (e.g., "untouched, as
  mandated").
