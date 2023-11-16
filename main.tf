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
    error_html_filepath = var.error_html_filepath
    index_html_filepath = var.index_html_filepath
    content_version = var.content_version
    assets_path = "/workspace/terraform-beginner-bootcamp-2023/public/assets"
}