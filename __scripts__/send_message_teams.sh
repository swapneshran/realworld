#!/usr/bin/env bash

 NODE_SETUP_LINT_URL= NODE_SETUP_LINT_URL
 NODE_SETUP_STATUS= NODE_SETUP_STATUS
 CYPRESS_LOG_URL=  CYPRESS_LOG_URL
 CYPRESS_STATUS= CYPRESS_STATUS
 BUILD_URL= BUILD_URL
 BUILD_STATUS= BUILD_STATUS

 WEBHOOK_URL = 'https://webhook.site/ef9498ad-328a-4367-8d7d-3023268e7c00'

   if [ $NODE_SETUP_STATUS == 'failure' ]
   then
      echo "node set up is failed"
      MESSAGE='node set up is failed. for the branch'
      curl -H 'Content-Type: application/json' -d '{"text": '"$MESSAGE"'}' \
        $WEBHOOK_URL
   elif [ $CYPRESS_STATUS == 'failure' ]
   then
      echo "cypress test is failed"
      MESSAGE='node set up is failed. for the branch'
      curl -H 'Content-Type: application/json' -d '{"text": '"$MESSAGE"'}' \
       $WEBHOOK_URL
    elif [  $BUILD_STATUS == 'failure' ]
    then
       echo "build is failed"
       MESSAGE='node set up is failed. for the branch'
       curl -H 'Content-Type: application/json' -d '{"text": '"$MESSAGE"'}' \
       $WEBHOOK_URL
     else
       echo "all the jobs are successful"
       curl -H 'Content-Type: application/json' -d '{"text": '"$MESSAGE"'}'  \
                 $WEBHOOK_URL
     fi
