#!/bin/bash

###################

# Author : Vasanthi
# Date : 13th march
#version : v1

# this script will report aws resources usage
# AWS ec2
# aws s3
# aws lambda
# aws IAM users
# refer aws cli reference for all resource to list or launch or terminate.

# listing s3 buckets 
echo "list the s3 buckets"

aws s3 ls

# listing ec2 instances

aws ec2 describe-instances | jq '.Reservations[].Instances[].InstancesId'


# listing lambda

aws lambda list-functions

# listing IAM users

aws iam list-users
