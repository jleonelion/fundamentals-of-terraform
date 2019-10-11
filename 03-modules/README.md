# Modules
## Local Modules
* Create directory to hold custom module, like our [local module](./modules/rg)
* Reference module through relative path as in [main.tf](modules/rg/main.tf)
## Community Modules
Execute examples using AzureRM published modules: [compute](https://registry.terraform.io/modules/Azure/compute/azurerm/1.3.0) and [vnet](https://registry.terraform.io/modules/Azure/vnet/azurerm/1.2.0)
### Additional resources
[Terraform Module Registry](https://registry.terraform.io/)
## Lab Activity
### Objective
Use a Terraform community module to create an [Azure Container Instance](https://azure.microsoft.com/en-us/services/container-instances/)
### Procedure
1. Create a new directory on your system that you will use to store that Terraform files you create in this lab (for example, create a subdirectory called `lab`)
1. Search the [Terraform Module Registry](https://registry.terraform.io/) to locate the Azure provided module that deploys Azure Container Instances (also referred to as "aci" instances)
1. Create Terraform files that use the ACI module and deploy the container using image `microsoft/aci-helloworld` on `port 80`
1. Your Terraform files should output the fully qualified domain name (fqdn) and the ip address of the created container group 
1. Prove success by accessing the module through your web browser at `http://<whatever the fqdn is>`
   
__Note: the DNS name of the deployed container needs to be unique so choose a DNS name that you feel is not already used__

### Results
When you open your browser to the fully qualified domain name of the container you deployed, you should see something like this.

![Running Container](https://docs.microsoft.com/en-us/azure/container-instances/media/container-instances-quickstart/aci-app-browser.png)


