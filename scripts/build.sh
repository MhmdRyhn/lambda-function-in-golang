#!/bin/bash

set -x
set -e

BASE_DIR="$(pwd)"
BUILD_DIR="$BASE_DIR/.build"

rm -rf "$BASE_DIR/.build"
mkdir "$BASE_DIR/.build"

GOOS=linux go build -o $BUILD_DIR/main cmd/main.go
# zip function.zip "$BUILD_DIR/main"

cd $BASE_DIR/deploy/terraform
terraform init
terraform plan --var-file input.tfvars --out plan.tfplan
terraform apply plan.tfplan
cd $BASE_DIR
