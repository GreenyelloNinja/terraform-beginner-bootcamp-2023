terraform {
  cloud {
    organization = "Greenyelloninja"

    workspaces {
      name = "terra-house-san"
    }
  }
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.5.1"
    }
    
    aws = {
      source = "hashicorp/aws"
      version = "5.22.0"
    }
  }
  }

provider "aws" {
}
provider "random" {
  # https://registry.terraform.io/providers/hashicorp/random/latest
}

resource "random_string" "bucket_name" {
  length = 42
  lower = true
  upper = false
  special = false
}

resource "aws_s3_bucket" "example" {
  # Bucket Naming Rules
  # https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucketnamingrules.html
  bucket = random_string.bucket_name.result
 }


output "random_bucket_name" {
    value = random_string.bucket_name.result
}