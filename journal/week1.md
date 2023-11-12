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


## Terraform Variables

### Terraform Cloud Envar

in TF we can set environment vars and terraform vars

Env - those that would be entered in bash
TF - those in the tfvars files

The variables can be set to sensitive so they are not visible

### Loading TF input Variables

#### Var Flag
We can use the '-var' flag to set an variable or override a preset var. 

#### Var File flag

- document

#### terraform.tfvars

this is the default variable folder

#### auto.tfvars

- document

#### Order of variables

- document which variables take precidents



