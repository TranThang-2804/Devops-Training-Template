##########################
# TAGGING MODULE
##########################

module "tagging" {
  source = "../common_modules/tagging"

  environment    = local.global_tags.environment
  provisioned_by = local.global_tags.provisioned_by
  project        = local.global_tags.project
  owner          = local.global_tags.owner
  name           = local.global_tags.name
}


##########################
# S3 MODULE
##########################

module "s3" {
  source = "../common_modules/s3"

  for_each = local.configuration.s3

  global_variables = local.global_variables
  module_name      = each.value.module_name
  tags             = module.tagging.tags
}