# Service Principal ID used by the CI to authenticate terraform against the Azure API
# Defined in the (private) repository jenkins-infra/terraform-states (in ./azure/main.tf)
data "azuread_service_principal" "terraform_production" {
  display_name = "terraform-production"
}

# Data source used to retrieve the subscription id
data "azurerm_subscription" "jenkins" {
}
