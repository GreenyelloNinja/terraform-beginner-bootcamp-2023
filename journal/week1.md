# Terraform Beginner Bootcamp 2023 - Week 0

## Root Modute Structure

Root module structure is as follows: 

```
PROJECT_ROOT
│
├── main.tf - everything else
├── variables.tf - stores the structure of input variables
├── providers.tf - defined required providers and their configuration
├── outputs.tf - stores our outputs
├── terraform.tfvars - the data of variables we want to load into our Terraform project
└── README.md - required for root modules
```
https://developer.hashicorp.com/terraform/language/modules/develop/structure
