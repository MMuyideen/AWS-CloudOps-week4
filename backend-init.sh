#!/bin/bash

S3_BUCKET_NAME="week4-todo-tf-s3"
DB_TABLE_NAME="week4-todo-tf-db"

# Create S3 bucket
aws s3api create-bucket \
  --bucket $S3_BUCKET_NAME \
  --region us-east-1

# Create Dynamo DB
aws dynamodb create-table \
  --table-name $DB_TABLE_NAME \
  --attribute-definitions AttributeName=LockID,AttributeType=S \
  --key-schema AttributeName=LockID,KeyType=HASH\
  --billing-mode PAY_PER_REQUEST \