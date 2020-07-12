#!/bin/bash
SHA_ID=$(curl -X  GET \
          https://api.github.com/repos/swapneshran/realworld/actions/runs \
           -H 'Authorization: tokenw aa764d6e580385ad81f7ae380b60576f57aa0f83' \
            -H "Accept: application/vnd.github.v3+json" \
             | jq '.workflow_runs[0].head_sha') \
             | sed 's/"//g'

echo $SHA_ID

CHECK_RUN_ID=$(curl -X  GET \
          https://api.github.com/repos/swapneshran/realworld/commits/254d81d2b03a29791384145072b5d26548097451/check-runs \
           -H 'Authorization: tokenw aa764d6e580385ad81f7ae380b60576f57aa0f83' \
            -H "Accept: application/vnd.github.v3+json" \
             | jq '.check_runs.id')

echo "Log url is"
echo "https://github.com/swapneshran/realworld/commit/$SHA_ID/checks/$CHECK_RUN_ID/logs"
