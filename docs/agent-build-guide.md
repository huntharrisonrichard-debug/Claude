# Building a 24/7 Autonomous Trading Agent with Claude Code — A Field Guide

*How I set up a cloud-based agent that watches a Webull account, trades a ring-fenced cash
sleeve on its own, and emails me a daily recap — plus every hiccup we hit and how we solved
it. Written so a friend can replicate it.*

---

## 1. The goal (what I asked for on day one)
A **24/7 autonomous stock-trading agent** that:
- **Beats the S&P 500** with a small, ring-fenced pot of cash.
- Enforces my one hard rule: **sell anything that drops 7% below what I paid.**
- Keeps a **living research file**, a **daily journal**, and a **weekly review**.
- Runs on a schedule (the Claude **Routines** feature), ~5 checks per market day.
- Trades my real **Webull** account — but only a defined slice of it.

That's it. Everything below is how that turned into a working system.

## 2. What got built (the system)
A Git repo that *is* the agent. The key pieces:

| File / folder | Role |
|---|---|
| `CLAUDE.md` | The operating manual — auto-loaded every run. §0 is the **mandate** (hard rules). |
| `portfolio/holdings.csv` | Positions tagged `protected` (off-limits) or `sleeve` (tradeable). |
| `portfolio/sleeve-ledger.csv` | Cash-sleeve accounting: cash, positions, realized P/L. |
| `portfolio/TRADING_MODE` | Kill-switch: `paper` (simulate) or `live` (real orders). |
| `research/RESEARCH.md` | Living research: macro view, theses, watchlist, learnings. |
| `journal/YYYY/MM/*.md` | One dated journal file per market day, one block per check. |
| `reviews/` | Weekly review vs the S&P 500. |
| `benchmark/performance.csv` | Daily sleeve value vs the S&P 500. |
| `routines/*.md` | The prompts the scheduled routines run (open / intraday / close / weekly). |
| `.mcp.json` | Wires up the Webull connector for every session. |
| `.claude/settings.json` | Pre-approved tool permissions (so routines run unattended). |

**Why a repo?** Each cloud run is a fresh, ephemeral container. The agent commits its state
every run, so the next run picks up exactly where it left off. Uncommitted work is lost.

## 3. The trading mandate (the safety constitution — `CLAUDE.md §0`)
This is the part to get right, because it's real money:
- **Cash sleeve only.** It trades only my uninvested cash (~$800) plus/minus its own realized
  profit. Never the rest of the account.
- **Protected positions are untouchable.** Every pre-existing holding is tagged `protected`
  and can never be sold, trimmed, or added to.
- **Stocks only, long only.** No options, no margin, no shorting.
- **≤ 15% of the sleeve per position.** To go bigger it must email me a case and wait for a yes.
- **Swing-trade, PDT-safe.** Holds across days; ≤3 day-trades per 5 business days; respects
  cash settlement.
- **7% stop-loss** on every sleeve position.
- **Paper/live kill-switch.** Defaults to `paper` — it simulates and emails but places no real
  orders until I flip the switch.

The mandate (not the permission prompts) is the real safety layer.

## 4. The setup steps you'll take (owner-side)
These are the things only *you* can do — Claude builds the repo, you handle the accounts/config.

1. **Use Claude Code on the web** (claude.ai/code) connected to a GitHub repo. Routines run in
   Anthropic's cloud — **your laptop never needs to be on.**
2. **Webull OpenAPI access:** at developer.webull.com, create an app → get `WEBULL_APP_KEY` and
   `WEBULL_APP_SECRET`; enable a market-data subscription; register your device in the Webull
   mobile app.
3. **Put the keys in the environment settings** (not the repo) as environment variables. The
   repo's `.mcp.json` references them as `${WEBULL_APP_KEY}` / `${WEBULL_APP_SECRET}`.
4. **Network allowlist** (environment → Custom allowed domains): add `*.webullbroker.com`,
   `*.uat.webullbroker.com`, `*.webull.com`, and **tick "include common package managers"**
   (so the Webull server can install from PyPI). See hiccup #2.
5. **Create the routines** in the Routines feature — one per check time, on the Webull-connected
   environment, each pointing at the matching `routines/*.md` prompt.
6. **Load your positions / cash** (or let the agent pull them from Webull on first connect).
7. **Stay in `paper`** while you build confidence; flip `TRADING_MODE` to `live` when ready.

## 5. The hiccups we hit (and how we solved them)
This is where most of the time went. Save your friend the pain:

**#1 — Webull isn't a normal cloud connector.**
Webull's API runs through a local "MCP server" (`uvx webull-openapi-mcp`) meant for Claude
*Desktop*. We had to wire it into the cloud environment via a committed `.mcp.json`. (Zapier
has no Webull integration — only email/calendar.)

**#2 — Network egress blocked everything (`host_not_allowed`).**
The cloud sandbox blocks outbound traffic by default. Three gotchas: (a) `developer.webull.com`
is just the docs site — the *real* API hosts are on `webullbroker.com`/`webull.com`; (b) a
single-level wildcard (`*.webullbroker.com`) does **not** match a multi-level host like
`us-openapi-alb.uat.webullbroker.com`, so we listed the sub-wildcards explicitly; (c) you must
also allow the package registries or the server can't even install.

**#3 — TLS handshake failed (`CERTIFICATE_VERIFY_FAILED: self-signed certificate`).**
The sandbox inspects all HTTPS through a proxy with its own certificate. The Webull SDK shipped
its own cert bundle that didn't trust the proxy. Fix: point the SDK at the system bundle via
`WEBULL_API_CA_BUNDLE=/etc/ssl/certs/ca-certificates.crt` (added in `.mcp.json`).

**#4 — The "frozen session" trap (the sneakiest one).**
A running session locks in its network rules *and* tool permissions at startup. We'd change a
setting, re-test in the same session, and see no change — for ages. **Any config change only
takes effect in a brand-new session.** Once we understood this, everything got easier.

**#5 — sandbox vs. prod.**
The API has a `uat` (sandbox) mode that shows fake data. To see and trade the real account you
must set `WEBULL_ENVIRONMENT=prod`. (We kept a `paper` software kill-switch separate from this,
so "connected to the real account" never means "allowed to place real orders.")

**#6 — Webull demands 2FA on EVERY session, and runs are ephemeral.**
This was the big one. Each cloud run is a fresh machine, and Webull forces an in-app 2FA
approval per session. We tried caching/encrypting the login token to skip it — but Webull
enforces fresh 2FA regardless, so we removed all that complexity. **Accept it: you approve a
phone prompt at each routine time** (set alarms). It's the price of Webull's security model.

**#7 — The agent gave up before I could approve the 2FA.**
At first it would hit Webull, get "not approved yet" instantly, and fall back to a *stale*
snapshot in under a second — no time to tap approve. Fix: a **wait-and-retry loop** — the agent
announces "🔔 approve the 2FA now," then re-checks every 15 seconds for ~90 seconds. The moment
you approve, it connects. Paired with a hard rule: **never trade on stale data** — if it can't
get a live connection, it places no orders and just skips that check (safe).

**#8 — Permission prompts would block unattended routines.**
Claude asks "allow this tool?" the first time. A routine has no human to click allow, so we
**pre-approved** the Webull tools and the Gmail-send action in `.claude/settings.json`. (The
software kill-switch + mandate remain the real safety net — not the prompt.)

**#9 — Don't commit secrets.**
There's no dedicated secrets vault — environment variables are the mechanism. Keys live in the
environment settings, never the repo; `.gitignore` blocks any stray key files; `.mcp.json` only
holds `${PLACEHOLDER}` references.

## 6. How it runs now (the daily rhythm)
Per market day, 5 scheduled cloud runs (≈ 9:35 / 11:00 / 12:45 / 2:15 / 3:50 ET):
1. Routine fires in the cloud (laptop off, fine).
2. Agent announces it's connecting → **you approve the Webull 2FA on your phone** (~90s window).
3. It reconciles the account, runs the 7% scan on sleeve positions, looks for buys within the
   mandate, executes (or simulates, in paper mode), and writes a journal entry.
4. The close run emails a concise, witty **end-of-day recap** (modeled on *The Daily Upside*)
   and, on Fridays, writes the weekly review.
5. It commits everything so the next run resumes cleanly.

## 7. Honest caveats
- **The phone tap is unavoidable** with Webull today — plan for ~5 approvals per trading day.
- **Settlement matters:** a cash account can't re-spend unsettled proceeds, and buying power
  can read $0 even when the balance looks fine. The agent respects this.
- **Start in paper.** Watch it for a while. Real money only moves when you flip the switch.
- **It's an agent, not a guarantee.** Markets carry risk; this is a disciplined tool, not a
  promise of returns.

---

*Built with Claude Code over two days. The whole system is a Git repo — clone it, set your keys,
wire the routines, and you've got the same thing.*
