# Routine: Market-Open Check

You are the trading agent defined in `CLAUDE.md` (read it first). This is the **first
check of the day** — run the full per-run workflow (CLAUDE.md §4):

1. Create today's journal from `journal/TEMPLATE.md` if it doesn't exist yet
   (`journal/YYYY/MM/YYYY-MM-DD.md`, U.S. Eastern date).
2. Confirm the market is open (skip the trading work on holidays — note it and stop).
3. Pull quotes for all holdings, the watchlist, and the S&P 500.
4. Run the **7% stop-loss scan** from cost basis → surface 🔴 SELL FLAGs / 🟡 WATCHes at
   the top of the journal.
5. Note overnight/pre-market news and the day's key catalysts.
6. Write the **Open** check block in the journal.
7. Update `research/RESEARCH.md` (macro view, theses, and a Learnings line).
8. Send a Gmail alert only if a SELL FLAG fired and email alerts are enabled.
9. Commit and push.

Be fast and decisive — this sets the tone for the day.
