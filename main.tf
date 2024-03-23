resource "random_id" "name" {
  byte_length = 8
}

resource "azurerm_email_communication_service" "this" {
  name                = var.email_service_name == "Default" ? random_id.name.hex : var.email_service_name
  resource_group_name = data.azurerm_resource_group.rg.name
  data_location       = var.data_location
  tags                = var.tags
}

resource "azapi_resource" "managed_domain" {
  type      = "Microsoft.Communication/emailServices/domains@2023-03-31"
  name      = "AzureManagedDomain"
  location  = "global"
  parent_id = azurerm_email_communication_service.this.id
  body = jsonencode({
    "properties" = {
      "domainManagement"       = "AzureManaged"
      "userEngagementTracking" = "Disabled"
    }
  })
  response_export_values = ["properties.mailFromSenderDomain"]
  tags                   = var.tags
}

resource "azapi_resource" "communication_service" {
  type      = "Microsoft.Communication/communicationServices@2023-03-31"
  name      = var.communication_service_name == "Default" ? random_id.name.hex : var.communication_service_name
  parent_id = data.azurerm_resource_group.rg.id
  location  = "global"
  body = jsonencode({
    "properties" = {
      "dataLocation" = "${var.data_location}"
      "linkedDomains" = [
        "${azapi_resource.managed_domain.id}"
      ]
    }
  })
  response_export_values = ["properties.hostName"]
  tags                   = var.tags
}
