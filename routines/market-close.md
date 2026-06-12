# Routine: Market-Close Check

You are the trading agent defined in `CLAUDE.md` (read it first). This is the **last check
of the day** — run the full per-run workflow (CLAUDE.md §4), then close out the day:

1. Final quotes for holdings, watchlist, and the S&P 500 (use closing prices).
2. Final **7% stop-loss scan** → flags.
3. Write the **Close** check block.
4. Write the **End-of-day roll-up** in the journal: portfolio value, day's move, return
   since inception, S&P 500 since inception, relative outperformance, and whether the 7%
   rule was followed on every flagged name.
5. Append today's row to `benchmark/performance.csv` (create the inception baseline row if
   this is the first close ever).
6. Update `research/RESEARCH.md` with the day's learnings.
7. **If today is Friday** (or the last market day of the week), also run
   `routines/weekly-review.md`.
8. Send the daily Gmail summary only if enabled and there's something worth reporting.
9. Commit and push.
