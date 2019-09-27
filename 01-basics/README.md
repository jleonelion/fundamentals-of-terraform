#Basics
##A simple Terraform file
Examine [main.tf](main.tf)  
##Exploring the CLI
```shell script
$ terraform -help
$ terraform init -help
```
##Initialize providers
```sh
$ terraform init
```
##What's the plan?
```sh
$ terraform plan
```
##Authenticate with Azure
```bash
$ az login
```
##Check again
```sh
$ terraform plan
```
##Let's do it
```sh
$ terraform apply
```
##Make a change
Change resource gorup in [main.tf](main.tf)  
```sh
$ terraform plan
$ terraform apply
```
##Cleanup
```sh
$ terraform destroy
```
###Additional References
[Terraform.io Provider Reference](https://www.terraform.io/docs/providers/index.html)
