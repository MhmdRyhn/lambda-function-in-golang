variable "aws_profile" {
  type        = string
  description = "Name of teh profile. Usually stored in ~/.aws/credentials"
}

variable "aws_region" {
  type        = string
  description = "Aws region where the resources to be provisioned."
}

variable "prefix" {
  type        = string
  description = "A name that is to be used as the resource name prefix. Usually it's the project name."
}

variable "environment" {
  type        = string
  description = "Name of the environment, e.g., dev, test, stable, staging, uat, prod etc."
}
