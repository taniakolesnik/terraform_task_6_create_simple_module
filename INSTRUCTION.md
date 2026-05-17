# resource_group_storage Module Usage Instructions

## Module Location
The `resource_group_storage` module is located in `modules/resource_group_storage` folder.

## Module Overview
This module creates a simple Azure resource group and storage account in it.

## Input Variables

### `resource_group_name`
- **Type**: `string`
- **Description**: Name for the resource group and storage account
- **Required**: `true`

### `location`
- **Type**: `string`
- **Description**: Azure region where resources will be created
- **Required**: `true`

### `storage_account_name`
- **Type**: `string`
- **Description**: Azure region where resources will be created
- **Required**: `true`

## Output

### `resource_group_id`
- **Type**: `string`
- **Description**: The ID of the created resource group

### `storage_account_id`
- **Type**: `string`
- **Description**: The ID of the created storage account

## Usage Example

```hcl
module "resource_group_storage" {
  source  = "taniakolesnik/resource-group-storage/azurerm"
  version = "1.1.0"
  # insert the required variables here
}

output "resource_group_id" {
  value = module.resource_group_storage.resource_group_id
}

output "storage_account_id" {
  value = module.resource_group_storage.storage_account_id
}
```
