# Routine: Intraday Check (reused for each mid-session check)

You are the trading agent defined in `CLAUDE.md` (read it first). This is a **mid-session
check** — run the full per-run workflow (CLAUDE.md §4), appending a new timestamped block
to today's journal. Name the block by the check time (Mid-1 / Midday / Mid-2).

Focus:
1. Refresh quotes for your **sleeve** positions, the watchlist, and the S&P 500.
2. Re-run the **7% stop-loss scan** on sleeve positions — a name fine at open can breach
   intraday. **Execute the stop sell** the moment it triggers; note 🟡 WATCHes. Never scan
   or sell protected names (KTOS, UNCY, etc.).
3. Quick opportunity check: if a watchlist buy now qualifies (fits thesis, ≤15% of sleeve,
   PDT-safe, settled cash), size and place it. Log + email every fill.
4. Note any market-moving news since the last check.
5. Append the check block; update `RESEARCH.md` if something changed (always add a
   Learnings line).
6. Commit and push.

Keep it tight — this is a pulse check. The priority is catching a 7% breach the moment it
happens and respecting every §0 limit.
