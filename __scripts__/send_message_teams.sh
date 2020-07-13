#!/usr/bin/env bash

   if [ ${{needs.node-setup-lint-check.outputs.status}} == 'failure' ]
   then
      echo "node set up is failed"
      MESSAGE='node set up is failed. for the branch'
      curl -H 'Content-Type: application/json' -d '{"text": $MESSAGE}' \
      https://webhook.site/ef9498ad-328a-4367-8d7d-3023268e7c00
   elif [ ${{needs.cypress-test.outputs.status}} == 'failure' ]
   then
          echo "cypress test is failed"
             MESSAGE='node set up is failed. for the branch'
             curl -H 'Content-Type: application/json' -d '{"text": $MESSAGE}' \
             https://webhook.site/ef9498ad-328a-4367-8d7d-3023268e7c00
          elif [ ${{needs.build.outputs.status}} == 'failure' ]
          then
             echo "build is failed"
             MESSAGE='node set up is failed. for the branch'
             curl -H 'Content-Type: application/json' -d '{"text": $MESSAGE}' \
             https://webhook.site/ef9498ad-328a-4367-8d7d-3023268e7c00
          else
             echo "all the jobs are successful"
             curl -H 'Content-Type: application/json' -d '{"text": $MESSAGE}' \
                       https://webhook.site/ef9498ad-328a-4367-8d7d-3023268e7c00
          fi
