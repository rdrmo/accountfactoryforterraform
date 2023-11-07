provider "tfc" {
  #hostname = var.hostname # Optional, defaults to Terraform Cloud `app.terraform.io`
  token    = var.terraformtoken
  version  = "~> 0.49.2"
}

# Create an organization
#resource "tfe_organization" "org" {
  # ...
}

provider "aws" {
  region = var.aws_region
}
