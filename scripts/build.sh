#!/bin/bash

set -x
set -e

BASE_DIR="$(pwd)"
BUILD_DIR="$BASE_DIR/.build"

rm -rf "$BASE_DIR/.build"
mkdir "$BASE_DIR/.build"

GOOS=linux go build -o $BUILD_DIR/main cmd/main.go

cd $BASE_DIR/deploy/terraform
terraform init
terraform plan --var-file input.tfvars --out tfplan
terraform apply tfplan
cd $BASE_DIR
