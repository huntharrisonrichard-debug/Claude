# Cowork News Scan — Prompt Template

Paste this entire prompt into the Claude Cowork tab in Claude Desktop to run a news scan.
Update the `REPO_PATH` line at the bottom to match your local clone location.

---

## Prompt

You are scanning financial news for my stock trading bot. Open Chrome and visit the following pages using my logged-in accounts:

1. **Wall Street Journal** — https://www.wsj.com/markets
2. **Barron's** — https://www.barrons.com/market-data
3. **MarketWatch** — https://www.marketwatch.com and https://www.marketwatch.com/markets

For each site:
- Scroll through the front page and markets section
- Click into any article that mentions a specific stock ticker, earnings surprise, analyst upgrade/downgrade, macro shift (Fed/rates/oil/inflation), sector rotation, M&A, or product/contract announcement
- Read the full article (you have access via my login)

**Inclusion criteria — add an entry for any article that:**
- Names a specific US-listed stock with a clear catalyst
- Reports an earnings beat/miss with guidance change
- Contains an analyst upgrade, downgrade, or price-target revision
- Signals a macro shift relevant to equities (rate decision, CPI, jobs report, oil supply)
- Covers a sector rotation theme (e.g., value vs growth, energy leadership, AI spending)
- Mentions geopolitical risk with a clear equity impact

**Skip:** opinion columns with no specific tickers, articles older than 48 hours, articles about crypto/futures/options.

---

## Output format

For each qualifying article, write one entry block in this exact format:

```
**[YYYY-MM-DD HH:MM ET] | [SOURCE] | [HEADLINE]**
Tickers: TICK1, TICK2
Summary: 2–4 sentences. What happened, why it matters for the stock/sector, and what the likely near-term price impact is.
Conviction: HIGH / MEDIUM / LOW
Action hint: BUY candidate / WATCH / AVOID / MACRO context only
```

Conviction guide:
- **HIGH** — clear catalyst, specific ticker, near-term price mover
- **MEDIUM** — relevant but uncertain timing or magnitude
- **LOW** — background context, thematic, no near-term trigger

Action hint guide:
- **BUY candidate** — stock likely to move up; worth evaluating for a swing trade entry
- **WATCH** — on radar but not actionable yet (waiting for confirmation, pullback, etc.)
- **AVOID** — negative catalyst; skip or exit
- **MACRO context only** — no single stock trade, but affects the portfolio environment

---

## After writing all entries

1. Open a terminal
2. Run the following commands (update `REPO_PATH` to your local clone):

```bash
REPO_PATH=~/Claude   # <-- UPDATE THIS to your local repo path

cd "$REPO_PATH"
git checkout claude/youthful-bardeen-cw6cs1
git pull --ff-only origin claude/youthful-bardeen-cw6cs1
```

3. Open `research/NEWS-FEED.md` in the repo and **prepend** your new entry blocks immediately above the `---` separator line (keep newest entries at the top).

4. Save the file, then commit and push:

```bash
cd "$REPO_PATH"
git add research/NEWS-FEED.md
git commit -m "cowork: news scan $(date '+%Y-%m-%d %H:%M')"
git push origin claude/youthful-bardeen-cw6cs1
```

The trading bot will pick up your entries on its next routine run (it pulls the branch at the start of every check).

---

## Tips

- Run this scan once in the morning before 9:30 AM ET for maximum impact on the open check.
- A second scan around midday captures any intraday analyst notes or breaking news.
- You don't need to scan all three sites every time — WSJ Markets + MarketWatch is a solid
  10-minute scan; add Barron's when you have more time or want deeper analysis.
- If an article is behind a "subscribe to continue" wall even with your login, skip it and
  note the headline only (no summary, Conviction: LOW, Action hint: WATCH).
