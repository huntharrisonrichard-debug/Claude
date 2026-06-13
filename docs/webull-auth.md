# Webull OpenAPI auth — how it works & the persistence plan

## What the SDK actually does (from source)
`TokenManager.init_token()` each startup:
1. **Load** the local token file (`token.txt`: line1=token, line2=expires(epoch), line3=status)
   from the directory set by env var **`WEBULL_OPENAPI_TOKEN_DIR`** (default `./conf/`).
2. **Renew**: send the loaded token to the server (`create_token`).
   - status `NORMAL` → done immediately. **No app, no 2FA.**
   - status `PENDING` → loop (`check_token`) **waiting for 2FA approval in the Webull app**,
     until `NORMAL`, or `INVALID`/`EXPIRED` (error), or timeout.
3. **Save** the (renewed) token back to `token.txt`.

**Implication:** a *valid persisted* token renews silently; a *missing/expired* token forces
app 2FA. Claude Code routine containers are ephemeral → no persisted token → app needed every
run. Fixing that = persist `token.txt` across runs.

## The open question (decides viability)
The token **lifetime** (`expires`). Unknown until measured.
- If long (hours/days): persistence bridges the 5 daily routine runs → unattended works.
- If ~30 min: token dies between runs regardless → use an always-on host instead.

## Test protocol (run in a FRESH session with the Webull app OPEN)
1. Ask the agent to connect Webull and pull the balance (this creates `token.txt`; approve
   2FA in the app once).
2. Ask it to run: `cat /home/user/Claude/.webull/token.txt` and report **line 2 (expires)**.
   Convert to a time: `date -d @<expires>`. Compare to now → that's the token lifetime.
3. **Close the Webull app.** Immediately ask it to pull the balance again → should still work
   (renew off the cached token, no app).
4. Wait ~35 min (past a typical access-token window), pull again → if it STILL works without
   the app, the renewal window is long → persistence is viable. If it returns PENDING/needs
   the app, the window is short → always-on host.

Report the `expires` value + the 35-min result back to the main session to decide.

## Persistence plan (only if the test says viable)
`token.txt` must survive between ephemeral runs. Options, least→most exposure:
- **Encrypted-in-repo:** agent stores `token.txt` encrypted (symmetric key in an env secret,
  ciphertext committed); decrypts to `WEBULL_OPENAPI_TOKEN_DIR` at session start, re-encrypts
  + commits at session end. Repo leak alone ≠ token (need the env key). Preferred.
- **External store via Zapier** (e.g., a private Drive file): similar exposure, more moving parts.
- **Plain-in-repo:** simplest but commits a live trading credential — not recommended.

Config already in place: `.mcp.json` sets `WEBULL_OPENAPI_TOKEN_DIR=/home/user/Claude/.webull`;
`.gitignore` blocks `.webull/` and `token.txt` so the raw token is never committed by accident.
