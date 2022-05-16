locals {
  tags = {
    environment = var.environment
    cost-center = var.cost-center
    owner       = var.owner
    lob         = var.lob
    spm-id      = var.spm_id
  }
}