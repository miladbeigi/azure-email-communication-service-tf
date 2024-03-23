module "email_service" {
  source                     = "../"
  resource_group_name        = "Mindro-AI"
  communication_service_name = "RandomCompanyCommunicationService"
  email_service_name         = "RandomCompanyEmailService"
  data_location              = "United States"
}
