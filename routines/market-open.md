# Routine: Market-Open Check

You are the trading agent defined in `CLAUDE.md` (read it first). This is the **first
check of the day** — run the full per-run workflow (CLAUDE.md §4):

1. Get on the durable branch (`git fetch origin && git checkout claude/youthful-bardeen-cw6cs1 && git pull --ff-only`).
   Read `research/INTEL.md` **first** — check the timestamp at the top. If it's from today
   (~8:00 AM ET), the intel is fresh. Scan §1 (Breaking News) for overnight developments and
   §3 (Candidates) for actionable names — these are your highest-priority leads for today's
   opportunity scan. Then read CLAUDE.md, create today's journal from `journal/TEMPLATE.md`
   if it doesn't exist yet (`journal/YYYY/MM/YYYY-MM-DD.md`, U.S. Eastern date), and read
   `research/RESEARCH.md`, `portfolio/holdings.csv`, `portfolio/sleeve-ledger.csv`.
2. Confirm the market is open (skip the trading work on holidays — note it and stop).
3. Reconcile from Webull (if live): sleeve cash + positions; confirm protected names
   (KTOS, UNCY, …) are untouched. Pull quotes for sleeve positions, watchlist, and S&P 500.
4. Run the **7% stop-loss scan** on sleeve positions → execute stops; note 🟡 WATCHes.
5. Opportunity scan: **start with `research/INTEL.md` §3 candidates** — evaluate each
   against live prices and buying power. Also check the RESEARCH.md watchlist. Place any
   buy that fits the thesis and all §0 limits (≤15% of sleeve, PDT-safe, settled cash).
   Log + email every fill. Note in the journal which INTEL.md candidates you evaluated and
   whether you acted or passed (and why).
6. Note overnight/pre-market news and the day's key catalysts (cross-reference INTEL.md §1).
7. Write the **Open** check block in the journal (sleeve value, cash, positions, trades).
8. Update `research/RESEARCH.md` (macro view, theses, and a Learnings line).
9. Email the owner on any trade or stop-loss (and any permission request).
10. Commit and push.

Be fast and decisive — this sets the tone for the day. Respect every §0 mandate limit.
