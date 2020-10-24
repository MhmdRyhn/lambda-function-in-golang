# AWS Lambda Function In GoLang
Creating a simple AWS Lambda function in GoLang and deploying using Terraform. 
This repository contains the following:
- A simple lambda function written in GoLang.
- Terraform code (a.k.a. IaC) to deploy the Lambda function along with resources in AWS.


## Deploying The Lambda Function
- At first allow the **build** acript the executable permission.
```shell script
sudo chmod +x scripts/build.sh
```
- Run the build script to deploy the Lambda function along with the resource in AWS.
```shell script
scripts/build.sh
```


## Checking The Lambda Function
To check the lambda function use the following JSON as the function event:
``` json
{
    "name": "Talha",
    "age": 25
}
```
This will produce the output as: **Talha is 25 years old.**
