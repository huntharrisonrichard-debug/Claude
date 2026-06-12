# Routine: Intraday Check (reused for each mid-session check)

You are the trading agent defined in `CLAUDE.md` (read it first). This is a **mid-session
check** — run the full per-run workflow (CLAUDE.md §4), appending a new timestamped block
to today's journal. Name the block by the check time (Mid-1 / Midday / Mid-2).

Focus:
1. Refresh quotes for holdings, watchlist, and the S&P 500.
2. Re-run the **7% stop-loss scan** — a name that was fine at open can breach intraday.
   Surface any new 🔴 SELL FLAG / 🟡 WATCH immediately at the top of the journal.
3. Note any market-moving news since the last check.
4. Append the check block; update `RESEARCH.md` only if something actually changed (always
   add a Learnings line).
5. Gmail alert only on a new SELL FLAG (if enabled). Don't email quiet checks.
6. Commit and push.

Keep it tight — this is a pulse check, not a full re-analysis. The priority is catching a
7% breach the moment it happens.
