provider "azurerm" {
  version = "=2.20.0"
  features {}
}

module "az_resource_group" {
  source   = "iankesh/resource-group/azure"
  name     = "ankesh-workspace"
  location = "westeurope"
  team_tag = "DevOps"
  creator  = "ankesh"
}

module "az_public_ip" {
  source              = "../terraform-azure-public-ip"
  name                = "ankesh-public-ip-prod"
  resource_group_name = module.az_resource_group.az_rg_name
  allocation          = "Static"
  ip_version          = "IPv4"
  env                 = "dev"
  team_tag            = "DevOps"
  creator             = "ankesh"
}

output "azure_resource_group_id" {
  value = module.az_resource_group.az_rg_id
}

output "azure_resource_group_name" {
  value = module.az_resource_group.az_rg_name
}

output "azure_public_ip_address" {
  value = module.az_public_ip.az_public_ip_address
}