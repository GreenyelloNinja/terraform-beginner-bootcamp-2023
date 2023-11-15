terraform {
 # cloud {
  #  organization = "Greenyelloninja"
#
 #   workspaces {
  #    name = "terra-house-san"
   # }
  #}
}

module "terrahouse_aws" {
    source = "./modules/terrahouse_aws"
    user_uuid = var.user_uuid
    bucket_name = var.bucket_name
}