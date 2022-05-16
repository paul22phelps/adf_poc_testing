#Set Providers
provider "azurerm" {
  skip_provider_registration = "true"
  subscription_id            = var.subscription_id
  features {
  }
}

#Create ADF
resource "azurerm_data_factory" "adf_with_azure_integrated_vnet" {
  name                            = "hw-${var.application_name}-adf-${var.environment}"
  location                        = var.location
  resource_group_name             = var.resource_group_name
  managed_virtual_network_enabled = true

  dynamic "github_configuration" {
    for_each = var.github_configuration == "dev" ? [1] : [] #set env. via variable.tf
    content {
      account_name    = var.value.gh_acct_name
      branch_name     = var.value.gh_branch_name
      repository_name = var.value.gh_repo_name
      root_folder     = var.value.gh_root_folder
      git_url         = var.value.git_url
    }
  }

  identity {
    type = "SystemAssigned"
  }
}

#Create Azure Integrated Vnet IR
resource "azurerm_data_factory_integration_runtime_azure" "adf_azure_integrated_vnet_ir" {
  name                    = "hw-${var.application_name}-ir-${var.environment}"
  data_factory_id         = azurerm_data_factory.adf_with_azure_integrated_vnet.id
  location                = var.location
  virtual_network_enabled = true
}