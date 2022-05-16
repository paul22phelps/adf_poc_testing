# data resources let you read data from Azure

# get the subscription information from the current runner (tool/user running terraform commands)
data "azurerm_subscription" "current" {}
# get the client configuration from the current runner (tool/user running terraform commands)
data "azurerm_client_config" "current" {}
