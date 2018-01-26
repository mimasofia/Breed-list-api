#!/bin/bash

curl --include --request PATCH "http://localhost:4741/breed_lists/${ID}" \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "breed_list": {
      "breed": "'"${BREED}"'",
      "gender": "'"${GENDER}"'",
      "weight": "'"${WEIGHT}"'",
      "height": "'"${HEIGHT}"'"
    }
  }'
