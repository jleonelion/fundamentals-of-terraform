# Terraform state file
[Terraform state file documentation](https://www.terraform.io/docs/state/index.html)
## Bootstrapping the remote backend
```bash 
$ cd bootstrap
$ terraform init
$ terraform plan
$ terraform apply -var-file="../dev.tfvars"
```
### Examine local state file 
Look in `./bootstrap/.terraform`

### Update variables to point to new storage
1. Update `setenv` script to set ARM_ACCESS_KEY environment variable
1. Update `storage_account_name` and `container_name` in [main.tf](main.tf)

## Using remote backend
```bash 
$ cd ..
$ terraform init -backend-config="dev.tfvars"
$ terraform plan -var-file="dev.tfvars"
$ terraform apply -var-file="dev.tfvars"
```
### Examine remote state file 
Look in Azure storage container 