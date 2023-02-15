terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>4.54.0"
    }
  }

  #   backend "s3" {
  #     bucket = "my-tf-state"
  #     key    = "network/terraform.tfstate"
  #     region = "eu-west-1"

  #     dynamodb_table = "my-tf-lock"
  #     encrypt        = true
  #   }
}

provider "aws" {

}