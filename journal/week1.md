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


## Dealing with Configuration Drift

## What happens when you lose your state file

If you lose your state file then you will need to remove your infrastructure manually and start from scratch. 

Terraform import will allow you to restore some of the statefile but isn't always availabe. see Terraform import link below

### Fix missing Resources with Terraform Import

'terraform import aws_s3_bucket.bucket bucket-name'
'terraform import aws_s3_bucket.example'

[Terraform Import]{https://developer.hashicorp.com/terraform/language/import}
[AWS S3 Bucket Import](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket#import)


### Fix Manual Configuration 

Running TF plan will put Inf back into expected state

### Fix using Terraform Refresh

```tf
terraform apply -refresh-only -auto-approve
```

## Terraform Modules 

Modules have to be declared in the Main.tf file

```tf

module "terrahouse_aws" {
    source = "./modules/terrahouse_aws"
    user_uuid = var.user_uuid
    bucket_name = var.bucket_name
}
```

### Terraform Module Structure

It is recommended to place modules  in a modules directory

## Passing Input Variables

```tf
module "terrahouse_aws" {
    source = "./modules/terrahouse_aws"
    user_uuid = var.user_uuid
    bucket_name = var.bucket_name
}


```

## Module Sources

Using the source we can import the module from various places, e.g. local, Git, TF reg
```tf

module "terrahouse_aws" {
    source = "./modules/terrahouse_aws"
}


```


[Module sources](https://developer.hashicorp.com/terraform/language/modules/sources)


## Considerations when using ChatGPT with TF

LLMs may not have the most updated information. Examples may use deprecated commands. 

## working with files in TF

### Path Variable

```tf
resource "aws_s3_object" "index_html" {
  bucket = aws_s3_bucket.website_bucket.bucket
  key    = "index.html"
  source = ${path.root}/public/index.html

```
In terraform there is a 'path' variable that allows us to acess local paths

path.module
path.root


https://developer.hashicorp.com/terraform/language/expressions/references#filesystem-and-workspace-info


### Terraform Data Sources

https://developer.hashicorp.com/terraform/language/data-sources


### Lifecycle
{Meta Arguments}(https://developer.hashicorp.com/terraform/language/meta-arguments/lifecycle)


## Terraform Data
Plain data values such as Local Values and Input Variables don't have any side-effects to plan against and so they aren't valid in replace_triggered_by. You can use terraform_data's behavior of planning an action each time input changes to indirectly use a plain value to trigger replacement.

https://developer.hashicorp.com/terraform/language/resources/terraform-data