# azurerm_backend_storage_container
A Terraform module for initializing a storage container that can host azurerm backends.

## Requirements
The Principal using this module MUST have permissions for the following data actions

- Microsoft.Storage/storageAccounts/blobServices/containers/read
- Microsoft.Storage/storageAccounts/blobServices/containers/write
- Microsoft.Storage/storageAccounts/blobServices/containers/delete


## Example Usage
```shell
PS F:\github\Zymus\commitments\public\azurerm_backend_storage_container> tofu plan
var.storage_account_name
  Enter a value: studiohummingbird

var.storage_container_name
  Enter a value: azurerm-examples


OpenTofu used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

OpenTofu will perform the following actions:

  # azurerm_storage_container.azurerm_backend will be created
  + resource "azurerm_storage_container" "azurerm_backend" {
      + container_access_type             = "private"
      + default_encryption_scope          = (known after apply)
      + encryption_scope_override_enabled = true
      + has_immutability_policy           = (known after apply)
      + has_legal_hold                    = (known after apply)
      + id                                = (known after apply)
      + metadata                          = (known after apply)
      + name                              = "azurerm-examples"
      + resource_manager_id               = (known after apply)
      + storage_account_name              = "studiohummingbird"
    }

Plan: 1 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + resource_manager_id    = (known after apply)
  + storage_account_name   = "studiohummingbird"
  + storage_container_name = "azurerm-examples"
```

## [main.tf](main.tf)
Creates an Azure Storage Container using the storage account and name provided in [the variables](variables.tf).

## [outputs.tf](outputs.tf)
- [the storage_account_name](variables.tf#L1)
- [the storage_container_name](variables.tf#L5)
- [the resource_manager_id of the storage container](main.tf)

## [providers.tf](providers.tf)
azurerm provider. Blank features. Skips provider registration since it never seems to work.

## [terraform.tf](terraform.tf)
Requires hashicorp/azurerm, [3.114.0, 4).

## [variables.tf](variables.tf)
- the storage_account_name
- the storage_container_name
