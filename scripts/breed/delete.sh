#!/bin/bash

curl --include --request DELETE "http://localhost:4741/breed_lists/${ID}" \
--header "Authorization: Token token=${TOKEN}" \
