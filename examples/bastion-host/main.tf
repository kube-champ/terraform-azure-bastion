provider "azurerm" {
  features {}
}

module "bastion" {
  source = "../../../terraform-azure-bastion"

  name      = "bastion"
  subnet_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-dev-k8s-infra/providers/Microsoft.Network/virtualNetworks/vnet-dev-k8s-infra/subnets/snet-dev-bastion"
}