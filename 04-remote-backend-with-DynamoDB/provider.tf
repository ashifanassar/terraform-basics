# Declaring the provider information
provider "aws" {}

## declaring the remote backend as s3
terraform {
  backend "s3" {
    bucket            = "terraformbasicdevopsstatebucket"
    key               = "dev/dynamodb/terraform.tfstate"
    region            = "us-east-1"
    dynamodb_table    = "terraform-locking"
  }
}