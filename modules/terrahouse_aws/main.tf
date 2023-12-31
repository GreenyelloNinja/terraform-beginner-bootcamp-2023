terraform {
  
 required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "5.22.0"
        }
    }
}

resource "aws_s3_bucket" "website_bucket" {
  # Bucket Naming Rules
  # https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucketnamingrules.html
  bucket = var.bucket_name

   #tags = {
    #UserUuid = var.user_uuid
    
  #}
}

#https://developer.hashicorp.com/terraform/language/data-sources
data "aws_caller_identity" "current" {}