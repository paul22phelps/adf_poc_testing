output "adf_id" {
    value = azurerm_data_factory.adf_with_azure_integrated_vnet.id
    description = "The id of the Azure Data Factory"
}

output "adf_principal_id" {
        value = azurerm_data_factory.adf_with_azure_integrated_vnet.identity.0.principal_id
    description = "The Principal Identity of the Azure Data Factory"
}