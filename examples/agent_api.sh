#!/usr/bin/env bash
# Adspirer Analytics through the Perplexity Agent API. Not yet run against a live Project.
# Requires PERPLEXITY_API_KEY and ADSPIRER_CONNECTOR_ID (from the Project connectors page).
# Take the endpoint from Perplexity's Agent API reference if it differs.
set -euo pipefail
: "${PERPLEXITY_API_KEY:?}" "${ADSPIRER_CONNECTOR_ID:?}"

curl -sS "${PERPLEXITY_API_URL:-https://api.perplexity.ai/v1/responses}" \
  -H "Authorization: Bearer $PERPLEXITY_API_KEY" \
  -H "Content-Type: application/json" \
  -d @- <<JSON
{
  "model": "openai/gpt-5.6-terra",
  "input": "Show spend, clicks, conversions, CPA and ROAS by channel for the last 30 days, with a blended total.",
  "max_steps": 12,
  "tools": [
    {
      "type": "connector",
      "id": "$ADSPIRER_CONNECTOR_ID",
      "server_label": "adspirer_analytics"
    }
  ]
}
JSON
