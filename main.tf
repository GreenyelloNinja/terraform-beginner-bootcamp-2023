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

   #tags = {
    #UserUuid = var.user_uuid
    
  #}
}

