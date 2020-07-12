#!/bin/bash

# pass the previous step output to script

echo "getting Log URL"
echo "ACTION_ID: $GITHUB_ACTION"
echo "$GITHUB_TOKEN"

SHA_ID=$(curl -X  GET  https://api.github.com/repos/swapneshran/realworld/actions/runs  -H 'Authorization: token ${{ secrets.GITHUB_TOKEN }}' \
                    -H "Accept: application/vnd.github.v3+json" | jq '.workflow_runs[0].head_sha' \
                     | sed 's/"//g' ) \


echo "work flow id $SHA_ID"


SHA_ID2=$(curl -X  GET  https://api.github.com/repos/swapneshran/realworld/commits/$SHA_ID/check-runs -H 'Authorization: token ${{ secrets.GITHUB_TOKEN }}' \
                     -H "Accept: application/vnd.github.antiope-preview+json" \
                      | jq '.check_runs[0].id'
                      )

echo "Check suite id is $SHA_ID2"
LOG_URL=("https://github.com/swapneshran/realworld/commit/$SHA_ID/checks/$SHA_ID2/logs")
echo $LOG_URL
echo "##[set-output name=log_url;]$LOG_URL"
