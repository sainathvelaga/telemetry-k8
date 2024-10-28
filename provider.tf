terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.48.0"
    }
  }
  backend "s3" {
    bucket = "sainath-devops-practice"
    key    = "expense-dev-k8-ws"
    region = "us-east-1"
    dynamodb_table = "daws78s-locking"
  }
}

#provide authentication here
provider "aws" {
  region = "us-east-1"
}