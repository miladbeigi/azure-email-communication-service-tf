output "domain_name" {
  description = "The domain name of the managed domain."
  value       = jsondecode(azapi_resource.managed_domain.output).properties.mailFromSenderDomain
}

output "primary_key" {
  description = "The primary key of the communication service."
  value       = data.azurerm_communication_service.this.primary_key
  sensitive   = true
}

output "host_name" {
  description = "The host name of the communication service."
  value       = jsondecode(azapi_resource.communication_service.output).properties.hostName
}
