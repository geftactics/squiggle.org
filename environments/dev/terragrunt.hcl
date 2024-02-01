# Terraform configuration to use
terraform {
  source = "${get_parent_terragrunt_dir()}/terraform/"
}

# Include all settings from the root terragrunt.hcl file
include {
  path = find_in_parent_folders()
}

# Specfic variables for this environment
inputs = {
  domain_squiggle = "dev.squiggle.org"
  domain_gef = "dev.gef.org.uk"
}
