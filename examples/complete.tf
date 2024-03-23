module "email_service" {
  source                     = "../"
  resource_group_name        = "RandomCompanyResourceGroup"
  communication_service_name = "RandomCompanyCommunicationService"
  email_service_name         = "RandomCompanyEmailService"
  email_data_location        = "United States"
}
