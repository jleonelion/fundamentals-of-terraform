# Module 4.1 - Basics
## A simple Terraform file
Examine [main.tf](main.tf)  

### Additional References
[Terraform.io Provider Reference](https://www.terraform.io/docs/providers/index.html)

## Exploring the CLI
```shell script
$ terraform -help
$ terraform init -help
```
## Initialize providers
```sh
$ terraform init
```
## What's the plan?
```sh
$ terraform plan
```
## Authenticate with Azure
```bash
$ az login
```
## Check again
```sh
$ terraform plan
```
## Let's do it
```sh
$ terraform apply
```
## Make a change
Change resource group in [main.tf](main.tf)  
```sh
$ terraform plan
$ terraform apply
```