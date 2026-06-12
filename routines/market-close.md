# Routine: Market-Close Check

You are the trading agent defined in `CLAUDE.md` (read it first). This is the **last check
of the day** — run the full per-run workflow (CLAUDE.md §4), then close out the day:

1. Final closing quotes for sleeve positions, watchlist, and the S&P 500.
2. Final **7% stop-loss scan** on sleeve positions → execute any stop.
3. Reconcile the sleeve ledger: cash, positions value, sleeve_total, realized P/L. Confirm
   protected names untouched and no §0 limit was breached today.
4. Write the **Close** check block.
5. Write the **End-of-day roll-up**: sleeve value, day's move, sleeve return since
   inception, S&P 500 since inception, relative outperformance, and confirmation that every
   mandate limit (≤15%, PDT, stocks-only, protected untouched) held.
6. Append today's row to `benchmark/performance.csv` (sleeve value vs S&P 500).
7. Update `research/RESEARCH.md` with the day's learnings.
8. **If today is Friday** (or the last market day of the week), also run
   `routines/weekly-review.md`.
9. **Send the EOD recap email** to hhunt@unreleaseparty.com — compose it in the Daily Upside
   voice per `routines/email-recap.md` and send via the Gmail action `gmail_send_email`.
   Send every market day (quiet days get a 2-line note). Label PAPER vs LIVE.
10. Commit and push.
