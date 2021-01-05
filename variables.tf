variable "subnet_id" {
  description = "The subnet id to attach to the bastion host. Subnet name must be AzureBastionSubnet"
  type        = string
}

variable "name" {
  description = "A global name"
  type        = string

  default = "bastion"
}

variable "environment" {
  description = "The environment name on which these resources are deployed"
  type        = string

  default = "dev"
}

variable "az_location" {
  description = "The azure location on which the resources will be deployed"
  type        = string

  default = "West Europe"
}

variable "allocation_method" {
  description = "The allocation method the bastion host"
  type        = string

  default = "Static"
}

variable "sku" {
  description = "The SKU of the bastion host"
  type        = string

  default = "Standard"
}