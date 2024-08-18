#!/bin/bash

FRONTEND_URL="http://localhost:8080"

# Test the frontend application
echo "Testing Frontend Application..."
FRONTEND_RESPONSE=$(curl -s -o /dev/null -w "%{http_code}" $FRONTEND_URL)

if [ "$FRONTEND_RESPONSE" -eq 200 ]; then
  echo "Frontend Application is accessible (HTTP 200)"
else
  echo "Frontend Application is not accessible. HTTP Status: $FRONTEND_RESPONSE"
  exit 1
fi

echo "Test passed successfully."
