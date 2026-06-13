# Webull OpenAPI auth & token persistence

## How the SDK token works (from source)
`TokenManager.init_token()` each startup: **load** local `token.txt` (token / expires(ms) /
status) from `WEBULL_OPENAPI_TOKEN_DIR` → **renew** it server-side (`create_token`).
- status `NORMAL` → done immediately. **No app, no 2FA.**
- status `PENDING` → loop **waiting for 2FA approval in the Webull app**.
- Then **save** the (renewed) token back.

So a *valid persisted* token renews silently; a *missing/expired* token forces app 2FA.

## Measured (2026-06-13)
- Token lifetime: **~15 days** (`expires` = 1782606646838 ms → 2026-06-28 00:30 UTC).
- With the app **closed**, balance pulled fine → renewal needs no app while the token is valid.
- Conclusion: persist the token across ephemeral runs → unattended for ~15 days; re-approve
  in the app only ~once every two weeks.

## Implemented persistence (encrypted-in-repo)
- `.mcp.json` sets `WEBULL_OPENAPI_TOKEN_DIR=/home/user/Claude/.webull`.
- `scripts/webull-token.sh restore|save` — AES-256 (`openssl`, `WEBULL_TOKEN_ENC_KEY`):
  - `restore`: decrypt `.webull/token.enc` → `.webull/token.txt` (SessionStart hook, before
    the MCP server reads it). Safe no-op if key/blob missing.
  - `save`: encrypt `.webull/token.txt` → `.webull/token.enc` (agent runs in the persist step).
- `.claude/settings.json` → `SessionStart` hook runs `webull-token.sh restore`.
- `.gitignore`: `token.txt` never committed; **`.webull/token.enc` IS committed** (exception
  after the broad `*token*` rule). The blob is useless without `WEBULL_TOKEN_ENC_KEY` (env).
- Expiry (~every 15 days): a Webull auth/PENDING/EXPIRED error → agent falls back to
  paper/snapshot for that run and emails `[Trading Agent] ACTION: re-approve Webull in the app`.

## One-time owner setup
1. Set env secret **`WEBULL_TOKEN_ENC_KEY`** to a strong random value (e.g. `openssl rand -hex 32`)
   in the Claude Code environment settings (alongside the Webull keys).
2. **Bootstrap** (fresh session, Webull app open): ask the agent to pull the balance (approve
   2FA once), then run `bash scripts/webull-token.sh save` and commit/push. This creates the
   first `.webull/token.enc`.

## Verify it works
Open a **brand-new** session with the **app closed**. The SessionStart hook restores
`token.txt`; ask the agent to pull the balance — it should succeed with **no 2FA**. That is
the proof. Also: `git check-ignore .webull/token.txt` (ignored) and confirm `token.enc` is
tracked/updated each run.
