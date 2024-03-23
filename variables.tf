variable "resource_group_name" {
  description = "The name of the resource group in which to create the resources."
  type        = string
}

variable "email_data_location" {
  description = "The location of the email data."
  type        = string
  default     = "United States"
}

variable "email_service_name" {
  description = "The name of the email service."
  type        = string
  default     = "Default"
}

variable "communication_service_name" {
  description = "The name of the communication service."
  type        = string
  default     = "Default"
}

