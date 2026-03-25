#!/bin/bash
set -euo pipefail

cleanup() {
  if [[ -n "${APP_PID:-}" ]]; then
    kill "$APP_PID" >/dev/null 2>&1 || true
    wait "$APP_PID" >/dev/null 2>&1 || true
  fi
}

trap cleanup EXIT

PYTHON_BIN="${PYTHON_BIN:-}"
if [[ -z "$PYTHON_BIN" ]]; then
  if command -v python3 >/dev/null 2>&1; then
    PYTHON_BIN="python3"
  else
    PYTHON_BIN="python"
  fi
fi

echo "Starting app..."
"$PYTHON_BIN" app.py &
APP_PID=$!

sleep 3

echo "Testing /health endpoint..."
STATUS=$(curl -fsS http://localhost:5000/health)

echo "Response: $STATUS"

if [[ "$STATUS" == *"ok"* ]]; then
  echo "Test passed"
  exit 0
else
  echo "Test failed"
  exit 1
fi
