#!/usr/bin/env bash
export ENVIRONMENT=$1
export AWS_ACCOUNT_ID=$(cat ${ENVIRONMENT}.auto.tfvars.json | jq -r .aws_account_id)
export AWS_ASSUME_ROLE=$(cat ${ENVIRONMENT}.auto.tfvars.json | jq -r .aws_assume_role)

aws sts assume-role --output json --role-arn arn:aws:iam::${AWS_ACCOUNT_ID}:role/${AWS_ASSUME_ROLE} --role-session-name psk-aws-iam-profiles > credentials

export AWS_ACCESS_KEY_ID=$(cat credentials | jq -r ".Credentials.AccessKeyId")
export AWS_SECRET_ACCESS_KEY=$(cat credentials | jq -r ".Credentials.SecretAccessKey")
export AWS_SESSION_TOKEN=$(cat credentials | jq -r ".Credentials.SessionToken")
export AWS_DEFAULT_REGION=$(cat ${ENVIRONMENT}.auto.tfvars.json | jq -r .aws_region)

# test roles
rspec test/psk_aws_iam_roles_spec.rb --format documentation

# if this is the state account then test the profiles
if [[ ${ENVIRONMENT} == "nonprod" ]]; then
  rspec test/state-account/psk_aws_iam_profiles_spec.rb --format documentation
fi
