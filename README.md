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