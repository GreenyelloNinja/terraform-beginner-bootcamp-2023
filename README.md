# Terraform Beginner Bootcamp 2023

## Semantic Versioning 

This project will use semantic versioning :mage:


Given a version number MAJOR.MINOR.PATCH, increment the:

- MAJOR version when you make incompatible API changes
- MINOR version when you add functionality in a backward compatible manner
- PATCH version when you make backward compatible bug fixes
Additional labels for pre-release and build metadata are available as extensions to the MAJOR.MINOR.PATCH format.

## check if aws credentials are configured correctly

```sh
aws sts get-caller-identity
```

```
identity
{
    "UserId": "AIDA324P5QAXMR",
    "Account": "123456789",
    "Arn": "arn:aws:iam::22232434995:user/terraform-beginner-bootcamp"
}
```

# Terraform basics

## Terraform Registry

Providers and modules can be found here
registry.terraform.io

Providers are interfaces to APIs that allow you to make changes
Modules are templates

## Terraform Console

#### Terraform init
- run after each change

#### Terraform Plan

Tells what changes will be made on apply. 
Can be outputted 

#### Terraform apply

#### Terraform Destroy
This will destroy resources
you can also use the auto approve here


This will run a plan

--auto-approve



