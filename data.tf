data "azurerm_resource_group" "rg" {
  name = var.resource_group_name
}

data "azurerm_communication_service" "this" {
  name                = var.communication_service_name == "Default" ? random_id.name.hex : var.communication_service_name
  resource_group_name = data.azurerm_resource_group.rg.name
  depends_on          = [azapi_resource.communication_service]
}
