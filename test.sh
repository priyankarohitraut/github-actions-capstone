#!/bin/bash

echo "Starting app..."
python app.py &

sleep 3

echo "Testing /health endpoint..."
STATUS=$(curl -s http://localhost:5000/health)

echo "Response: $STATUS"

if [[ "$STATUS" == *"ok"* ]]; then
  echo "Test passed ✅"
  exit 0
else
  echo "Test failed ❌"
  exit 1
fi
