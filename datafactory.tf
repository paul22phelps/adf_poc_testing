module "datafactory" {
    source = "./modules/adf"
    application_name = var.application_name
    environment = var.environment
    resource_group_name = var.resource_group_name
}