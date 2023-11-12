terraform {
 # cloud {
  #  organization = "Greenyelloninja"
#
 #   workspaces {
  #    name = "terra-house-san"
   # }
  #}

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
