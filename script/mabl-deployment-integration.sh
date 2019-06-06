#!/bin/bash

MABL_API_BASE="https://api.mabl.com"
POLL_SEC=10

if [ "$#" -ne 2 ]; then
  echo "Usage: $0 <api-key> <environment-id>"
  exit 0
fi

API_KEY="$1"
ENV_ID="$2"

# Create a deployment event, and retrieve its ID:
deployment_event=`curl -s "${MABL_API_BASE}/events/deployment" -u "key:${API_KEY}" -H 'Content-Type:application/json' -d "{\"environment_id\":\"${ENV_ID}\"}"`
event_id=`echo ${deployment_event} | jq -r '.id'`
echo "Deployment Event ID: ${event_id}"

# Poll the Execution Result API until all Plans have completed
complete=false
while [ ${complete} == false ]; do
  echo "Waiting for executions to complete..."
  sleep ${POLL_SEC}
  results=`curl -s "${MABL_API_BASE}/execution/result/event/${event_id}" -u "key:${API_KEY}"`
  plan_metrics=`echo ${results} | jq '.plan_execution_metrics'`
  if [ "${plan_metrics}" == "null" ]; then
    continue
  fi
  total_plans=`echo ${plan_metrics} | jq -r '.total'`
  passed_plans=`echo ${plan_metrics} | jq -r '.passed'`
  failed_plans=`echo ${plan_metrics} | jq -r '.failed'`
  let "passed_and_failed_plans = ${passed_plans} + ${failed_plans}"
  if [ "${passed_and_failed_plans}" -eq "${total_plans}" ]; then
    complete=true
  fi
done

# Print summary:
echo
echo "Full Results:"
echo ${results}
echo ${results} | jq
echo
if [ "${failed_plans}" -gt "0" ]; then
  echo "${failed_plans} plans failed!"
else
  echo "All plans passed."
fi
echo
