# Module - Azure Email Communication Service with Managed Domain

[![HCL](https://img.shields.io/badge/language-HCL-blueviolet)](https://www.terraform.io/)
[![Azure](https://img.shields.io/badge/provider-Azure-blue)](https://registry.terraform.io/providers/hashicorp/azurerm/latest)


## Description

This module creates an Azure Communication Service with an Email Communication Service and an Azure Managed Domain.

## Resources

| Name | Type |
|------|------|
| azurerm_email_communication_service | azurerm |
| azapi_resource (Azure Managed Domain) | azapi |
| azapi_resource (Communication Service) | azapi |


## Input variables

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| resource_group_name | The resource group name where the resource(s) will be created | `string` | n/a | `Yes` |
| data_location | The location where the communication service stores its data at rest | `string` | `United States` | `No` |
| email_service_name | The name of the email communication service | `string` | `Random` | `No` |
| communication_service_name | The name of the communication service | `string` | `Random` | `No` |
| tags | A mapping of tags to assign to the resource | `map(string)` | `{ ENV = "Dev" }` | `No` |

## Output variables

| Name | Description |
|------|-------------|
| domain_name | The domain name of the email communication service |
| primary_key | The primary key of the email communication service |
| host_name | The host name of the email communication service |


## Documentation

Quickstart: How to add Azure Managed Domains to Email Communication Service: <br>
[https://learn.microsoft.com/en-us/azure/communication-services/quickstarts/email/add-azure-managed-domains](https://learn.microsoft.com/en-us/azure/communication-services/quickstarts/email/add-azure-managed-domains)<br>