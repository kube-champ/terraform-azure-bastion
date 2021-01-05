# Terraform Azure K8S Infra
[![CircleCI](https://circleci.com/gh/kube-champ/terraform-azure-bastion/tree/master.svg?style=shield)](https://circleci.com/gh/kube-champ/terraform-azure-bastion/tree/master) [![MIT License](https://img.shields.io/apm/l/atomic-design-ui.svg?)](https://github.com/tterb/atomic-design-ui/blob/master/LICENSEs) [![GitHub Release](https://img.shields.io/github/release/kube-champ/terraform-azure-bastion.svg?style=flat)]() [![PR's Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat)](http://makeapullrequest.com)

This is a terraform module which contains the infrastructure needed when setting up Kubernetes clusters on Azure (AKS)
## Module Info
Check the module documentation [here](https://registry.terraform.io/modules/kube-champ/bastion/azure/latest)

The naming convention of the resources are based on the [Azure Naming Convention](https://docs.microsoft.com/en-us/azure/cloud-adoption-framework/ready/azure-best-practices/naming-and-tagging)

## Usage

```terraform
module "bastion" {
  source  = "kube-champ/bastion/azure"
  ...
}
```

## Contributing
See contributing docs [here](./docs/CONTRIBUTING.md)## Requirements

No requirements.Error: Argument or block definition required: An argument or block definition is required here. To set an argument, use the equals sign "=" to introduce the argument value.
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| azurerm | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| allocation\_method | The allocation method the bastion host | `string` | `"Static"` | no |
| az\_location | The azure location on which the resources will be deployed | `string` | `"West Europe"` | no |
| environment | The environment name on which these resources are deployed | `string` | `"dev"` | no |
| name | A global name | `string` | `"bastion"` | no |
| sku | The SKU of the bastion host | `string` | `"Standard"` | no |
| subnet\_id | The subnet id to attach to the bastion host. Subnet name must be AzureBastionSubnet | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| fqdn | n/a |
| id | n/a |

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| azurerm | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| allocation\_method | The allocation method the bastion host | `string` | `"Static"` | no |
| az\_location | The azure location on which the resources will be deployed | `string` | `"West Europe"` | no |
| environment | The environment name on which these resources are deployed | `string` | `"dev"` | no |
| name | A global name | `string` | `"bastion"` | no |
| sku | The SKU of the bastion host | `string` | `"Standard"` | no |
| subnet\_id | The subnet id to attach to the bastion host. Subnet name must be AzureBastionSubnet | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| fqdn | n/a |
| id | n/a |
| public\_ip | n/a |

