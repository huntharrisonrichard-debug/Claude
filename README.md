# 24/7 Trading Agent

An autonomous trading **research & monitoring** agent that runs on market days via the
Claude **Routines** feature. Its single objective: **outperform the S&P 500**, while
enforcing the owner's core rule — **sell any holding that falls 7% below its purchase
price**. It keeps a living research file, a daily journal, and a weekly scorecard.

The agent's full behavior is defined in **[`CLAUDE.md`](./CLAUDE.md)** — start there.

## How it works
On every check the agent reads its state, gets quotes for your holdings + watchlist + the
S&P 500, runs the 7%-from-cost-basis stop-loss scan, journals what it saw, updates
research, and commits — so the next (ephemeral) run picks up exactly where it left off.

## Layout
```
CLAUDE.md              Operating manual (the agent's brain)
portfolio/
  holdings.csv         Your positions + cost basis — SOURCE OF TRUTH (edit this)
  transactions.log     Append-only buy/sell log
research/RESEARCH.md   Living research: macro, theses, watchlist, learnings
journal/               Daily journal, one entry per check (journal/YYYY/MM/YYYY-MM-DD.md)
reviews/               Weekly review vs the S&P 500
benchmark/performance.csv   Daily portfolio vs S&P 500 tracking
routines/              The prompts you paste into the Routines feature
```

## Setup
1. **Add your positions** to `portfolio/holdings.csv` (ticker, shares, cost_basis,
   purchase_date). The 7% rule measures loss from `cost_basis`.
2. **Create the routines.** In the Routines feature, create scheduled runs that each use
   the matching prompt file. Suggested schedule (U.S. Eastern, **market days only**):

   | Time (ET) | Routine prompt |
   |---|---|
   | 09:35 | `routines/market-open.md` |
   | 11:00 | `routines/intraday.md` |
   | 12:45 | `routines/intraday.md` |
   | 14:15 | `routines/intraday.md` |
   | 15:50 | `routines/market-close.md` (runs the weekly review on Fridays) |

3. **(Optional) Email alerts.** Gmail is connected via Zapier. Turn alerts on by saying so
   — the agent will email you on SELL FLAGs (see `CLAUDE.md` §7).

## Connecting Webull (optional, recommended)
Right now the agent runs in **advisory mode**: it reads positions from `holdings.csv` and
gets quotes via web search. It does **not** have Webull access in this environment — your
Webull "chat" link lives in Claude **Desktop**, not here.

To give the *agent* live positions/quotes and (confirmation-gated) order capability, the
**[Webull OpenAPI MCP server](https://github.com/webull-inc/webull-openapi-mcp)** is wired
up via the committed **`.mcp.json`** at the repo root (Claude Code auto-loads it every
session). It runs as a local stdio process inside the container. To activate it, complete
these owner-side steps — they can't be done from inside the container:

1. **Credentials:** at developer.webull.com, create an app → copy `WEBULL_APP_KEY` and
   `WEBULL_APP_SECRET`; enable a market-data subscription; register your device in the
   Webull mobile app.
2. **Secrets:** add `WEBULL_APP_KEY` and `WEBULL_APP_SECRET` as environment variables in
   the **Claude Code web environment settings** (NOT the repo). `.mcp.json` references them
   via `${...}`.
3. **Container prereqs:** ensure the environment's setup script installs `uv` / Python
   3.10+ (needed to run `uvx webull-openapi-mcp`).
4. **Network policy:** allow outbound access to `developer.webull.com`.

`.mcp.json` ships with `WEBULL_ENVIRONMENT=uat` (sandbox) — verify there first, then flip
to `prod` for live trading. Once `mcp__webull__*` tools appear, the agent prefers them
automatically and reconciles live positions back into `holdings.csv` (see `CLAUDE.md` §3).
Order placement always stays **confirmation-required** — the agent proposes, you approve.

## Important
This agent is a research and monitoring tool, not financial advice, and it does not place
trades on its own. You review and execute. Markets carry risk; past performance does not
guarantee future results.
