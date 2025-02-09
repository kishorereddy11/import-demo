terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "5.84.0"

    }
  }
  backend "s3" {
    key = "import_state"
    bucket = "terraform-remote-state-kishor-prod"
    dynamodb_table = "terraform-remote-state-kishor-prod"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
  default_tags {
    tags = {
        env= "dev"
        descrption ="created by terraform"
    }
  }
}