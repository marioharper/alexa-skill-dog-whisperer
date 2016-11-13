#!/bin/bash

export AWS_REGION="us-east-1"

cd ./infrastructure/dev-pre
terraform plan
terraform apply

sleep 2

cd ../../
apex deploy --set FITBARK_API_TOKEN=$FITBARK_API_TOKEN
apex infra plan
apex infra apply