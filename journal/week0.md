# Terraform Beginner Bootcamp 2023 - Week 0


   * [Semantic Versioning ](#semantic-versioning)
   * [check if aws credentials are configured correctly](#check-if-aws-credentials-are-configured-correctly)
- [Terraform basics](#terraform-basics)
   * [Terraform Registry](#terraform-registry)
   * [Terraform Console](#terraform-console)
         - [Terraform init](#terraform-init)
         - [Terraform Plan](#terraform-plan)
         - [Terraform apply](#terraform-apply)
         - [Terraform Destroy](#terraform-destroy)

<!-- TOC end -->

<!-- TOC --><a name="semantic-versioning"></a>
## Semantic Versioning 

This project will use semantic versioning :mage:


Given a version number MAJOR.MINOR.PATCH, increment the:

- MAJOR version when you make incompatible API changes
- MINOR version when you add functionality in a backward compatible manner
- PATCH version when you make backward compatible bug fixes
Additional labels for pre-release and build metadata are available as extensions to the MAJOR.MINOR.PATCH format.

<!-- TOC --><a name="check-if-aws-credentials-are-configured-correctly"></a>
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

<!-- TOC --><a name="terraform-basics"></a>
# Terraform basics

<!-- TOC --><a name="terraform-registry"></a>
## Terraform Registry

Providers and modules can be found here
registry.terraform.io

Providers are interfaces to APIs that allow you to make changes
Modules are templates

<!-- TOC --><a name="terraform-console"></a>
## Terraform Console

<!-- TOC --><a name="terraform-init"></a>
#### Terraform init
- run after each change

<!-- TOC --><a name="terraform-plan"></a>
#### Terraform Plan

Tells what changes will be made on apply. 
Can be outputted 

<!-- TOC --><a name="terraform-apply"></a>
#### Terraform apply

<!-- TOC --><a name="terraform-destroy"></a>
#### Terraform Destroy
This will destroy resources
you can also use the auto approve here


This will run a plan

--auto-approve



