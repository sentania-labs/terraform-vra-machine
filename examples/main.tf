provider "vra" {
  url           = var.vcfa_url
  organization  = var.vcfa_organization
  refresh_token = var.vcfa_refresh_token
  insecure      = var.insecure
}

module "machine" {
  source                      = "../../"
  virtual_machine_name        = var.virtual_machine_name
  virtual_machine_description = var.virtual_machine_description
  project_name                = var.project_name
  image                       = var.image
  flavor                      = var.flavor
  constraints                 = var.constraints
  image_disk_constraints      = var.image_disk_constraints
  tags                        = var.tags
}
