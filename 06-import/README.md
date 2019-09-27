#Importing Resources
Create resources outside of Terraform: https://docs.microsoft.com/en-us/azure/aks/kubernetes-walkthrough

```shell script
$ az group create --name import-rg --location eastus
```
Observe Terraform's plan
```shell script
$ terraform init
$ terraform plan
```
Hmm, plan is to create both resource group and the vnet.  However, we already created the resource group - this could be a problem.  
Run `terraform import` to add them to Terraform state file, then re-evaluate the plan
```shell script
$ terraform import azurerm_resource_group.rg /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myresourcegroup
$ terraform plan
```
Aha! Not creating the resource group...just the vnet.
###Additional resources
[Terraform Import Docs](https://www.terraform.io/docs/import/index.html)  
[azurerm_resource_group](https://www.terraform.io/docs/providers/azurerm/r/resource_group.html)
[azurerm_resource_group](https://www.terraform.io/docs/providers/azurerm/r/resource_group.html)    