# Routine: Market-Open Check

You are the trading agent defined in `CLAUDE.md` (read it first). This is the **first
check of the day** — run the full per-run workflow (CLAUDE.md §4):

1. Create today's journal from `journal/TEMPLATE.md` if it doesn't exist yet
   (`journal/YYYY/MM/YYYY-MM-DD.md`, U.S. Eastern date).
2. Confirm the market is open (skip the trading work on holidays — note it and stop).
3. Reconcile from Webull (if live): sleeve cash + positions; confirm protected names
   (KTOS, UNCY, …) are untouched. Pull quotes for sleeve positions, watchlist, and S&P 500.
4. Run the **7% stop-loss scan** on sleeve positions → execute stops; note 🟡 WATCHes.
5. Opportunity scan: place any watchlist buy that fits the thesis and all §0 limits
   (≤15% of sleeve, PDT-safe, settled cash). Log + email every fill.
6. Note overnight/pre-market news and the day's key catalysts.
7. Write the **Open** check block in the journal (sleeve value, cash, positions, trades).
8. Update `research/RESEARCH.md` (macro view, theses, and a Learnings line).
9. Email the owner on any trade or stop-loss (and any permission request).
10. Commit and push.

Be fast and decisive — this sets the tone for the day. Respect every §0 mandate limit.
