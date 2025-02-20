#!/bin/bash

API_URL=https://chatapi.akash.network/api/v1

RESPONSE=$(curl --silent -X "POST" "https://chatapi.akash.network/api/users/claim-api-key" \
    -H "Content-Type: application/json" \
    -H 'Referer: https://chatapi.akash.network/' \
    -d $'{
  "email": "",
  "acceptToS": true,
  "name": "testchatapi",
  "description": ""
}'
)

API_KEY=$(echo $RESPONSE | grep -o '"apikey":"[^"]*"' | sed 's/"apikey":"\(.*\)"/\1\n/' | head -n 1)

cat <<EOF > .env
# API URL
OPENAI_API_BASE_URL=$API_URL

# API Key
OPENAI_API_KEY=$API_KEY
EOF
