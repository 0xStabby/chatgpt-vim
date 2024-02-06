#!/bin/bash

API_KEY=$(sh $(dirname $0)/get_openai_api_key.sh)

# Construct the payload using jq
payload=$(jq -n \
  --arg model "gpt-4" \
  --arg role_system "system" \
  --arg content_system "You are a skilled programming assistant and snippet engine" \
  --arg role_user "user" \
  --arg content_user "$1" \
  '{"model":$model, "messages": [{"role":$role_system, "content":$content_system}, {"role":$role_user, "content":$content_user}]}'
)

curl -s -X POST \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer $API_KEY" \
  -d "$payload" \
  https://api.openai.com/v1/chat/completions | jq -r '.choices[0].message.content'
