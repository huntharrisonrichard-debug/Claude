# 24/7 Trading Agent

An **autonomous stock-trading** agent that runs on market days via the Claude **Routines**
feature. It trades a **ring-fenced cash sleeve** in the owner's Webull account, aiming to
**beat the S&P 500** with that sleeve, while keeping a living research file, a daily
journal, and a weekly scorecard.

The agent's full behavior is defined in **[`CLAUDE.md`](./CLAUDE.md)** — start there.

## The trading mandate (hard rules — see `CLAUDE.md` §0)
- **Trades the cash sleeve only** (~$800 + its own realized P/L). Never the rest of the account.
- **Protected holdings are off-limits:** KTOS, UNCY, and all pre-existing positions are
  never sold, trimmed, or added to.
- **Stocks only, long only.** No options, no margin, no shorting.
- **≤ 15% of the sleeve per position** — to exceed, the agent emails a case and waits for
  the owner's yes.
- **Swing-trade, PDT-safe** (≤3 day-trades / 5 business days; respects cash settlement).
- **7% stop-loss** on every sleeve position (auto-executed).
- **Fully autonomous within those limits**; every trade is logged and emailed.

## How it works
On every check the agent reconciles positions + cash from Webull, runs the 7% stop-loss
scan on its sleeve positions, scans for buys that fit the limits, executes within the
mandate, journals what it did, updates research, and commits — so the next (ephemeral) run
picks up exactly where it left off.

## Layout
```
CLAUDE.md                   Operating manual (the agent's brain; §0 is the mandate)
portfolio/
  holdings.csv              Positions tagged `protected` (off-limits) or `sleeve` (tradeable)
  sleeve-ledger.csv         Cash-sleeve accounting: cash, positions value, realized P/L
  transactions.log          Append-only buy/sell log
research/RESEARCH.md        Living research: macro, theses, watchlist, learnings
journal/                    Daily journal, one entry per check (journal/YYYY/MM/YYYY-MM-DD.md)
reviews/                    Weekly review vs the S&P 500
benchmark/performance.csv   Daily SLEEVE value vs S&P 500 tracking
routines/                   The prompts you paste into the Routines feature
```

## Setup
1. **Positions** in `portfolio/holdings.csv` carry a `bucket` (`protected` | `sleeve`).
   KTOS and UNCY are seeded as `protected`; on Webull connect the agent snapshots all
   pre-existing holdings as `protected` and confirms the exact sleeve cash. The 7% stop and
   all trading apply only to `sleeve` rows.
2. **Create the routines.** In the Routines feature, create 5 scheduled runs on the
   **Webull-connected environment**, Mon–Fri (U.S. Eastern). Each prompt: `You are the
   trading agent. Read CLAUDE.md, then run routines/<file> now.`

   | Time (ET) | Routine file |
   |---|---|
   | 9:35 AM | `routines/market-open.md` |
   | 11:00 AM | `routines/intraday.md` |
   | 12:45 PM | `routines/intraday.md` |
   | 2:15 PM | `routines/intraday.md` |
   | 3:50 PM | `routines/market-close.md` (sends EOD email; runs weekly review on Fridays) |

   The agent skips market holidays itself; no separate weekly routine is needed.

3. **Email recap.** The close check emails a once-daily **EOD recap** to
   **hhunt@unreleaseparty.com** via Gmail (Zapier) — Daily Upside voice, every market day.
   Safety-critical events (a 7% stop sell, a 15%-permission request) also send an immediate
   email. Voice/structure live in `routines/email-recap.md`; behavior in `CLAUDE.md` §7.

4. **Go live when ready.** The agent runs in **paper** mode (`portfolio/TRADING_MODE`) — it
   simulates and emails but places no real orders. Set the file's first line to `live` to
   enable real execution within the §0 mandate.

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
4. **Network policy:** in the environment's **Custom** allowed domains, add the runtime
   hosts below and **tick "Also include default list of common package managers"** so
   `uvx` can install the server from PyPI. The egress proxy denies anything not listed
   (`x-deny-reason: host_not_allowed`), and a single-level `*.webullbroker.com` does **not**
   match the multi-level UAT host, so list these explicitly:
   - `*.webullbroker.com`        (prod API/OAuth/quotes, e.g. `quotes-gw.webullbroker.com`)
   - `*.uat.webullbroker.com`    (UAT API/OAuth, e.g. `us-openapi-alb.uat.webullbroker.com`)
   - `*.webull.com`              (prod API host `api.webull.com`)

   `developer.webull.com` is only the docs portal — the server never connects there at
   runtime. **Allowlist changes only take effect in a new session** (the egress cache is
   rebuilt at session start).

5. **TLS interception:** all outbound HTTPS is MITM'd by Anthropic's egress proxy. The
   Webull SDK uses its own `certifi` bundle, which rejects the proxy cert
   (`CERTIFICATE_VERIFY_FAILED: self-signed certificate`). Fixed in `.mcp.json` via
   `WEBULL_API_CA_BUNDLE=/etc/ssl/certs/ca-certificates.crt` (the system bundle, which
   includes the proxy's `TLS Inspection CA`). The SDK reads this env var specifically;
   `REQUESTS_CA_BUNDLE`/`SSL_CERT_FILE` are ignored by it.

> **Secrets note:** Claude Code on the web has no dedicated secrets store yet — environment
> variables are the only mechanism and are visible to anyone who can edit the environment.
> Keep your Webull keys *only* in those env settings (never in the repo; `.gitignore` blocks
> stray key files). Stay in `uat` and prefer a read-only/data-only key until verified.

`.mcp.json` ships with `WEBULL_ENVIRONMENT=uat` (sandbox) — verify there first, then flip
to `prod` for live trading. Once `mcp__webull__*` tools appear, the agent prefers them
automatically and reconciles live positions back into `holdings.csv` (see `CLAUDE.md` §3).
Order placement always stays **confirmation-required** — the agent proposes, you approve.

## Important
This agent is a research and monitoring tool, not financial advice, and it does not place
trades on its own. You review and execute. Markets carry risk; past performance does not
guarantee future results.
