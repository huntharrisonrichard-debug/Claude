#!/usr/bin/env bash
# Encrypt/decrypt the Webull token for safe git storage.
# Usage: webull-token.sh save | restore
# Requires WEBULL_TOKEN_ENC_KEY in environment (32-byte hex string).
set -euo pipefail

TOKEN_DIR="$(cd "$(dirname "$0")/.." && pwd)/.webull"
PLAIN="$TOKEN_DIR/token.txt"
ENC="$TOKEN_DIR/token.enc"

if [[ -z "${WEBULL_TOKEN_ENC_KEY:-}" ]]; then
  echo "ERROR: WEBULL_TOKEN_ENC_KEY is not set." >&2
  exit 1
fi

case "${1:-}" in
  save)
    if [[ ! -f "$PLAIN" ]]; then
      echo "ERROR: $PLAIN not found — nothing to save." >&2
      exit 1
    fi
    openssl enc -aes-256-cbc -pbkdf2 -iter 100000 \
      -pass "pass:${WEBULL_TOKEN_ENC_KEY}" \
      -in "$PLAIN" -out "$ENC"
    echo "Token saved → $ENC"
    ;;
  restore)
    if [[ ! -f "$ENC" ]]; then
      echo "ERROR: $ENC not found — cannot restore." >&2
      exit 1
    fi
    openssl enc -d -aes-256-cbc -pbkdf2 -iter 100000 \
      -pass "pass:${WEBULL_TOKEN_ENC_KEY}" \
      -in "$ENC" -out "$PLAIN"
    echo "Token restored → $PLAIN"
    ;;
  *)
    echo "Usage: $0 save | restore" >&2
    exit 1
    ;;
esac
