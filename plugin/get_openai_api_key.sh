#!/bin/bash

# Check for OPENAI_API_KEY and fallback to OPENAI_API_TOKEN
API_KEY="${OPENAI_API_KEY:-$OPENAI_API_TOKEN}"

# If neither OPENAI_API_KEY nor OPENAI_API_TOKEN is set, read from file
if [ -z "$API_KEY" ]; then
  API_KEY=$(cat ~/.config/openai.token)
fi

echo "$API_KEY"
