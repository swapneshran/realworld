#!/usr/bin/env bash

echo "setting up log url and branch name"

RUN_ID=$(curl   GET \
                                    https://api.github.com/repos/swapneshran/realworld/actions/runs \
                                    -H "Authorization: token $GITHUB_TOKEN" \
                                    -H "Accept: application/vnd.github.v3+json" \
                                    | jq -r --arg GITHUB_RUN_ID "GITHUB_RUN_ID"  -c '.workflow_runs[] | select( .id | contains('$GITHUB_RUN_ID')) | .head_sha' \
                                    | sed 's/"//g')
CHECK_SUITE_ID=$(curl GET \
                                      https://api.github.com/repos/swapneshran/realworld/commits/$RUN_ID/check-runs \
                                     -H "Authorization: token $GITHUB_TOKEN" \
                                     -H "Accept: application/vnd.github.antiope-preview+json" \
                                      | jq '.check_runs[0].id')
LOG_URL=("https://github.com/swapneshran/realworld/commit/$RUN_ID/checks/$CHECK_SUITE_ID/logs")
echo $LOG_URL
echo "##[set-output name=log_url;]$LOG_URL"
echo "##[set-output name=branch;]$BRANCH_NAME"
