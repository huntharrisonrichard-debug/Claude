# Webull auth (simple)

Webull's OpenAPI requires **in-app 2FA on every new API session**. There is no headless
workaround — the owner approves each session in the Webull mobile app.

How it works in practice:
- When the agent makes its first Webull call, an approval request appears in the Webull app.
- The owner approves it; the session is then authenticated for the rest of that run.
- If it isn't approved (or Webull is unavailable), the run falls back to paper/snapshot mode
  (`holdings.csv` + WebSearch) and notes it.

Operational note: the owner sets phone alarms at the routine times (9:35 / 11:00 / 12:45 /
2:15 / 3:50 ET) and approves the prompt when a check runs.

Config: `.mcp.json` sets `WEBULL_REGION_ID=us`, `WEBULL_ENVIRONMENT=prod`, and
`WEBULL_API_CA_BUNDLE=/etc/ssl/certs/ca-certificates.crt` (the latter so the SDK trusts the
sandbox's TLS-inspection proxy — required for the connection to work at all).

> No token-encryption/persistence is used. (An earlier experiment with caching/encrypting the
> token was removed — Webull enforces fresh 2FA per session regardless.)
