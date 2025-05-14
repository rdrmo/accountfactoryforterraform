module "aft" {
  #source = "github.com/aws-ia/terraform-aws-control_tower_account_factory"
  source  = "aws-ia/control_tower_account_factory/aws"
  version = "1.14.1"
  ct_management_account_id    = var.ct_management_account_id
  log_archive_account_id      = var.log_archive_account_id
  audit_account_id            = var.audit_account_id
  aft_management_account_id   = var.aft_management_account_id
  ct_home_region              = var.ct_home_region
  tf_backend_secondary_region = var.tf_backend_secondary_region

  vcs_provider                                  = "github"
  #commented out terraform settings bellow as it is only used when TFC manages remote workspace
  #terraform_distribution                        = "tfc"
  #terraform_org_name                            = "Amazon_rdrmo"
  #terraform_api_endpoint                        = "https://app.terraform.io/api/v2/"
  #terraform_token                               = var.terraformtoken 
  account_request_repo_name                     = "${var.github_username}/aft-account-request"
  account_provisioning_customizations_repo_name = "${var.github_username}/aft-account-provisioning-customizations"
  global_customizations_repo_name               = "${var.github_username}/aft-global-customizations"
  account_customizations_repo_name              = "${var.github_username}/aft-account-customizations"
}



# Configure the AWS provider
provider "aws" {
  region = "us-east-1"
}
 
