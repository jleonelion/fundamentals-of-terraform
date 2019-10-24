# Module 5 - Variables
## Input variables
To help organize your code, recommend define Terraform variables in a [variables.tf](variables.tf) file
## Override inputs values in a file
Override environment variable defaults by define values in a .tfvars file
```bash
$ terraform init
$ terraform apply -var-file="customer1.tfvars"
```
## Override inputs values through the environment
Another option, use environment variables to override values
```bash
$ export TF_VAR_location=centralus
```
### Additional Resources
[Terraform Input Variables](https://www.terraform.io/docs/configuration/variables.html)
## Output values
Pass along details of a deployment in an [output file](outputs.tf)
### Additional Resources
[Terraform Output Values](https://www.terraform.io/docs/configuration/outputs.html)
## Local values
Use [local variables](locals.tf) to hold values not being passed in or being passed out
### Additional Resources
[Terraform Local Values](https://www.terraform.io/docs/configuration/locals.html)
