output "bucket_name" {
    description = "Bucket Name for our static website hosting"
    value = module.terrahouse_aws.bucket_name
  
}
output "s3_website_endpoint" {
    description = "S# Static Website hosting endpoint"
    value = module.terrahouse_aws.website_endpoint
}
